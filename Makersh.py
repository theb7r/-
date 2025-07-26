import asyncio
import datetime
import os
import platform
import re
import sys
import psutil
import requests
from pyrogram import Client as app
from pyrogram import filters, Client
from pyrogram.enums import ChatType
from pyrogram.errors import FloodWait
from pyrogram.types import InlineKeyboardMarkup, InlineKeyboardButton, ReplyKeyboardMarkup, Message, ChatPrivileges
from config import API_ID, API_HASH, Bots, appp, moo
from Yousef.data import dev
from OWNER import OWNER, OWNER_ID, OWNER_NAME, CHANNEL, GROUP, PHOTO
Done = []
OFF = True
developers = set()
async def auto_bot():
    async for i in Bots.find({}):
        bot_username = i.get("bot_username")
        if not bot_username or bot_username in Done:
            continue
        try:
            TOKEN = i.get("token")
            devo = i.get("dev")
            if not TOKEN or not devo:
                continue
            bot = Client(
                f"bot_{bot_username}",
                api_id=API_ID,
                api_hash=API_HASH,
                bot_token=TOKEN,
                in_memory=True,
                plugins=dict(root="Yousef") 
            )
            await bot.start()
            appp[bot_username] = bot

            await Bots.update_one(
                {"bot_username": bot_username},
                {"$set": {
                    "token": TOKEN,
                    "dev": devo
                }},
                upsert=True
            )

            Done.append(bot_username)
            print(f"✅ تم تشغيل بوت @{bot_username}")

        except Exception as e:
            print(f"❌ خطأ في تشغيل @{bot_username}: {e}")



async def get_users(usersdb) -> list:
    return [user async for user in usersdb.find({"user_id": {"$gt": 0}})]

@app.on_message(filters.private)
async def botooott(client, message):
    try:
        user_id = message.from_user.id
        if (
                not message.chat.username or message.chat.username not in OWNER
        ) and user_id not in OWNER_ID and str(user_id) not in developers and user_id != client.me.id:
            await client.forward_messages(OWNER[0], message.chat.id, message.id)
    except Exception as e:
        print(e)
        pass
    message.continue_propagation() 
                       
@app.on_message(filters.command("⦗ تشغيل البوتات ⦘", ""))
async def turnon(client, message):
    if message.from_user.id in OWNER_ID:
        m = await message.reply_text("**↯︰انتظر قليلا ... **")
        try:
            await auto_bot()
            await m.edit_text("**↯︰تم تشغيل جميع البوتات المصنوعه**")
        except Exception as e:
            await m.edit_text(f"**حدث خطأ أثناء تشغيل البوتات:**\n`{e}`") 
            
@app.on_message(filters.command("⦗ تحديث الصانع ⦘", ""))
async def update(client, message):
    if message.from_user.id in OWNER_ID:
        try:
            msg = await message.reply_text("**↯︰جاري تحديث الصانع .**", quote=True)
            args = [sys.executable, "main.py"]
            environ = os.environ
            os.execle(sys.executable, *args, environ)
        except Exception as e:
            await message.reply_text(f"فشل تحديث الصانع: {e}", quote=True)
    else:
        await message.reply_text("**↯︰هذا الأمر مخصص لمطوري السورس فقط .**", quote=True)            
 
             
@app.on_message(filters.command("⦗ البوتات المصنوعه ⦘", ""))
async def botsmaked(client, message):
    if message.from_user.id in OWNER_ID:
        bots_list = []
        async for i in Bots.find({}):  
            try:
                bot_username = i["bot_username"]
                bots_list.append(bot_username)
            except Exception as es:
                print(es)
        
        b = len(bots_list)
        
        if b == 0:
            await message.reply_text("**لا يوجد بوتات مصنوعه حالياً.**")
        else:
            text = f"**↯︰عدد البوتات المصنوعه ↫ ⦗ {b} ⦘ **"
            for idx, bot_username in enumerate(bots_list, start=1):
                text += f"\n{idx}↯︰@{bot_username}"
            await message.reply_text(text)
 
@app.on_message(filters.command(["⦗ صنع بوت ⦘"], ""))
async def cloner(app: app, message):
    user_id = message.from_user.id
    if OFF and user_id not in OWNER_ID:
        return await message.reply_text(f"**↯︰الصانع معطل حالياً، تواصل مع المطور\n↯ Dev: @{OWNER[0]}**")
    if user_id not in OWNER_ID:
        user_bots_count = await Bots.count_documents({"dev": user_id})
        if user_bots_count >= 1:
            return await message.reply_text("**↯︰لا يمكنك صنع أكثر من بوت واحد.**")
    token_msg = await app.ask(user_id, "**↯︰أرسل توكن البوت الآن**", filters=filters.text)
    token = token_msg.text
    await token_msg.reply_text("**↯︰جاري فحص التوكن ...**")
    try:
        bot = Client("Cloner", api_id=API_ID, api_hash=API_HASH, bot_token=token, in_memory=True)
        await bot.start()
        bot_info = await bot.get_me()
        bot_username = bot_info.username
        await bot.stop()
    except Exception as e:
        print(e)
        return await message.reply_text("**↯︰التوكن غير صالح أو البوت محظور.**")
    if bot_username in Done:
        return await message.reply_text("**↯︰تم تنصيب هذا البوت سابقًا.**")
    if user_id in OWNER_ID:
        dev_msg = await app.ask(user_id, "**↯︰أرسل آيدي المطور (أرسل 'انا' إذا كنت أنت)**", filters=filters.text)
        dev = user_id if dev_msg.text.strip() == "انا" else int(dev_msg.text.strip())
    else:
        dev = user_id
    await Bots.insert_one({
        "bot_username": bot_username,
        "token": token,
        "dev": dev
    })
    try:
        await auto_bot()
    except Exception as e:
        print(f"❌ auto_bot error: {e}")
    await message.reply_text(
        f"**↯︰تم حفظ بيانات البوت بنجاح!**\n\n"
        f"↯︰معرف البوت: @{bot_username}\n"
        f"↯︰توكن البوت:\n`{token}`\n"
        f"↯︰معرف المطور: `{dev}`"
    )
    await app.send_message(
        OWNER[0],
        f"**↯︰تنصيب بوت جديد:**\n\n"
        f"↯︰بواسطة: {message.from_user.mention}\n"
        f"↯︰@{bot_username}\n"
        f"↯︰توكن:\n`{token}`\n"
        f"↯︰المطور: `{dev}`"
    )                       

@app.on_message(filters.command(["⦗ حذف بوت ⦘"], ""))
async def delbot(client: app, message):
    if message.from_user.id in OWNER_ID:
        ask = await client.ask(message.chat.id, "**↯︰ارسل الان يوزر البوت **", timeout=200)
        if not ask.text:
            return await message.reply_text("↯︰انتهى الوقت أو لم يتم الرد")
        bot_username = ask.text.replace("@", "")
        found = False

        async for i in Bots.find({}):
            if i["bot_username"] == bot_username:
                found = True
                break
        if not found:
            return await message.reply_text("**↯︰البوت مو مصنوع من قبل **")
        try:
            await Bots.delete_one({"bot_username": bot_username})
            try:
                Done.remove(bot_username)
            except:
                pass
            try:
                boot = appp[bot_username]
                await asyncio.wait_for(boot.stop(), timeout=10)
            except Exception as e:
                print(f"Error stopping bot: {e}")
            await message.reply_text("**↯︰تم حذف البوت بنجاح **")
        except Exception as es:
            await message.reply_text(f"**↯︰هناك خطأ حدث\n↯︰نوع الخطأ : {es} **")

    else:
        found = False
        async for i in Bots.find({"dev": message.chat.id}):
            found = True
            bot_username = i["bot_username"]
            try:
                Done.remove(bot_username)
            except:
                pass
            try:
                boot = appp[bot_username]
                await asyncio.wait_for(boot.stop(), timeout=10)
                await asyncio.wait_for(user.stop(), timeout=10)
            except Exception as e:
                print(f"Error stopping bot/user: {e}")
        if not found:
            return await message.reply_text("**↯︰لا يوجد بوت لحذفه **")
        try:
            await Bots.delete_one({"dev": message.chat.id})
            await message.reply_text("**↯︰تم حذف بوتك بنجاح **")
        except Exception as e:
            await message.reply_text(f"**↯︰حدث خطأ ، تواصل مع المطور ⚡\n↯︰المطور : @{OWNER[0]} **")    
                           
@app.on_message(filters.command(["⦗ تفعيل الصانع ⦘", "⦗ تعطيل الصانع ⦘"], ""))
async def bye(client, message):
    if message.from_user.id in OWNER_ID:
        global OFF
        text = message.text
        if text == "⦗ تفعيل الصانع ⦘":
            OFF = None
            await message.reply_text("**↯︰تم تفعيل الصانع عمࢪي**")
        elif text == "⦗ تعطيل الصانع ⦘":
            OFF = True
            await message.reply_text("**↯︰تم تعطيل الصانع عمࢪي**")
                                                                         
@app.on_message(filters.command("start") & filters.private)
async def stratmaked(client, message):
    if OFF and message.from_user.id not in OWNER_ID:
        return await message.reply_text(f"**↯︰الصانع معطل حالياً تواصل مع المطور لتنصيب بوتك \nDev : @{OWNER[0]}**")
    if message.from_user.id in OWNER_ID:
        kep = ReplyKeyboardMarkup([
            ["⦗ حذف بوت ⦘", "⦗ صنع بوت ⦘"],
            ["⦗ تفعيل الصانع ⦘", "⦗ تعطيل الصانع ⦘"],
            ["⦗ تشغيل البوتات ⦘", "⦗ تحديث الصانع ⦘"],
            ["⦗ البوتات المصنوعه ⦘", "⦗ احصائيات البوتات ⦘"],
            ["⦗ فلتره البوتات ⦘", "⦗ فحص البوتات ⦘"],
            ["⦗ رفع مطور ⦘", "⦗ تنزيل مطور ⦘"],
            ["⦗ اذاعه للمطورين ⦘", "⦗ المطورين ⦘"],
            ["⦗ توجيه عام بجميع البوتات ⦘", "⦗ اذاعه عام بجميع البوتات ⦘"],
            ["⦗ السورس ⦘", "⦗ معلومات السورس ⦘"],
        ], resize_keyboard=True)
        await message.reply_text(f"**↯︰مرحباً بك عمࢪي المطور\n↯︰اليك كيبورد اوامر المصنع**", reply_markup=kep)
    else:
        kep = ReplyKeyboardMarkup([
            ["⦗ حذف بوت ⦘", "⦗ صنع بوت ⦘"],
            ["⦗ شرح انشاء توكن ⦘"],
            ["⦗ السورس ⦘", "⦗ معلومات السورس ⦘"],
        ], resize_keyboard=True)
        await message.reply_text(
            f"**↯︰مرحبا بك ⦗ {message.from_user.mention} ⦘**\n"
            f"**↯︰اليك كيب المصنع **", reply_markup=kep
        )                                             
        
        
@app.on_message(filters.command(["⦗ توجيه عام بجميع البوتات ⦘", "⦗ اذاعه عام بجميع البوتات ⦘"], ""))
async def casttoall(client: app, message):
    if message.from_user.id in OWNER_ID or str(message.from_user.id) in developers:
        sss = "التوجيه" if message.command[0] == "⦗ توجيه عام بجميع البوتات ⦘" else "الاذاعه"

        try:
            ask = await client.ask(message.chat.id, f"**↯︰ارسل لي {sss} **", timeout=30)
        except asyncio.TimeoutError:
            return await message.reply_text("↯︰انتهى الوقت، لم يتم الرد على الطلب الأول.")

        if ask.text == "الغاء":
            return await ask.reply_text("↯︰تم الغاء الامر")

        try:
            pn = await client.ask(message.chat.id, "↯︰هل تريد تثبيت الاذاعه\n↯︰ارسل ⦗ نعم ⦘ او ⦗ لا ⦘", timeout=10)
        except asyncio.TimeoutError:
            return await message.reply_text("↯︰انتهى الوقت، لم يتم الرد على خيار التثبيت.")

        h = await message.reply_text("**↯︰انتظر لحين انتهاء الاذاعه**")
        b = s = c = u = 0
        y = message.chat.id
        x = ask.id

        async for bott in Bots.find({}):
            try:
                b += 1
                bot_username = bott["bot_username"]
                bot = appp[bot_username]
                db = moo[bot_username]
                users = await get_users(db.users)
                all_ids = [int(i["user_id"]) for i in users]

                for i in all_ids:
                    try:
                        if message.command[0] == "⦗ توجيه عام بجميع البوتات ⦘":
                            m = await bot.forward_messages(i, y, x)
                        else:
                            m = await bot.send_message(i, ask.text)

                        if m.chat.type == ChatType.PRIVATE:
                            u += 1
                        else:
                            c += 1

                        if pn.text.lower() == "نعم":
                            try:
                                await m.pin(disable_notification=False)
                            except:
                                continue
                    except FloodWait as e:
                        if e.value > 200:
                            continue
                        await asyncio.sleep(e.value)
                    except:
                        continue
            except Exception as es:
                print(es)
                await message.reply_text(str(es))

        try:
            await message.reply_text(
                f"**↯︰تم الاذاعه في جميع البوتات**\n"
                f"**↯︰تم الاذاعه في ↫⦗ {b} ⦘ بوت**\n"
                f"**↯︰اذيعت الى ⦗ {c} ⦘ مجموعة ⦗ {u} ⦘ مستخدم**"
            )
            return None
        except Exception as es:
            await message.reply_text(str(es))
            return None
    return None


@app.on_message(filters.command(["⦗ اذاعه للمطورين ⦘"], ""))
async def cast_dev(client, message):
    if message.from_user.id in OWNER_ID or str(message.from_user.id) in developers:
        ask = await client.ask(message.chat.id, "**↯︰ارسل لي المراد اذاعته**", timeout=30)
        if ask.text == "الغاء":
            return await ask.reply_text("↯︰تم الغاء الامر")
        d = 0
        f = 0
        async for i in Bots.find({}):
            try:
                dev = i["dev"]
                bot_username = i["bot_username"]
                bot = appp[bot_username]
                try:
                    await bot.send_message(dev, ask.text)
                    d += 1
                except Exception as es:
                    print(es)
                    f += 1
            except Exception as e:
                print(e)
                f += 1
        return await ask.reply_text(f"**↯︰نجح الارسال الى ⦗ {d} ⦘ مطور\n**↯︰فشل الارسال الى ⦗ {f} ⦘ مطور**")


@app.on_message(filters.command("⦗ احصائيات البوتات ⦘", ""))
async def botstatus(client, message):
    if message.from_user.id in OWNER_ID or str(message.from_user.id) in developers:
        total_bots = 0
        total_users = 0
        try:
            async for i in Bots.find({}):
                try:
                    bot_username = i["bot_username"]
                    database = moo[bot_username]
                    usersdb = database.users
                    users_count = len(await get_users(usersdb))
                    total_users += users_count
                    total_bots += 1
                except Exception as e:
                    print(e)
        except:
            return await message.reply_text("**↯︰لا يوجد بوتات مصنوعه**")

        await message.reply_text(
            f"**↯︰عدد البوتات ↫⦗ {total_bots} ⦘**\n"
            f"**↯︰جميع المشتركين ↫⦗ {total_users} ⦘**"
        )

@app.on_message(filters.command(["⦗ فحص البوتات ⦘"], ""))
async def testbots(client, message):
    if message.from_user.id in OWNER_ID or str(message.from_user.id) in developers:
        text = "↯︰احصائيات البوتات"
        count = 0
        async for i in Bots.find({}):
            try:
                bot_username = i["bot_username"]
                database = moo[bot_username]
                usersdb = database.users
                user_count = len(await get_users(usersdb))
                count += 1
                text += f"\n**{count}↯︰@{bot_username} ، Users ↬ {user_count}**"
            except Exception as e:
                print(e)
        await message.reply_text(text)

@app.on_message(filters.command(["⦗ فلتره البوتات ⦘"], ""))
async def checkbot(client: app, message):
    if message.from_user.id in OWNER_ID or str(message.from_user.id) in developers:
        ask = await client.ask(message.chat.id, "**↯︰ارسل الحد الادنى للاحصائيات**", timeout=30)
        if ask.text == "الغاء":
            return await ask.reply_text("↯︰تم الغاء الامر")

        try:
            m = int(ask.text)
        except ValueError:
            return await ask.reply_text("↯︰يجب أن يكون رقماً صحيحاً")

        text = f"↯︰تم حذف البوتات التي تحتوي على اقل من ↫ ⦗ {m} ⦘ شخص"
        b = 0

        async for i in Bots.find({}):
            try:
                bot_username = i["bot_username"]
                database = moo[bot_username]
                chatsdb = database.chats
                g = len(await get_users(usersdb))
                if g < m:
                    b += 1
                    boot = appp[bot_username]
                    await boot.stop()
                    await Bots.delete_one({"bot_username": bot_username})
                    try:
                        Done.remove(bot_username)
                    except:
                        pass
                    try:
                        await boot.stop()
                    except:
                        pass
                    text += f"\n**{b}↯︰@{bot_username} ، Group ↬ {g}**"
            except Exception as es:
                print(es)

        await message.reply_text(text)       
        
@app.on_message(filters.command(["⦗ السورس ⦘"], ""))
async def alivehi(client: Client, message):
    chat_id = message.chat.id
    keyboard = InlineKeyboardMarkup(
        [
            [
                InlineKeyboardButton("⦗ Help Group ⦘", url=f"{GROUP}"),
                InlineKeyboardButton("⦗ Source Ch ⦘", url=f"{CHANNEL}"),
            ],
            [
                InlineKeyboardButton(f"{OWNER_NAME}", url=f"https://t.me/{OWNER[0]}")
            ]
        ]
    )
    await message.reply_photo(
        photo=PHOTO,
        caption="↯︰Welcome to Source Music Source",
        reply_markup=keyboard,
    )
    
@app.on_message(filters.command(["⦗ معلومات السورس ⦘"], ""))
async def source_info(client: Client, message: Message):
    try:
        bot_info = await client.get_me()
        bot_username = bot_info.username

        keyboard = InlineKeyboardMarkup([
            [
                InlineKeyboardButton(f"{OWNER_NAME}", url=f"https://t.me/{OWNER[0]}")
            ],
            [
                InlineKeyboardButton("⦗ Help Group ⦘", url=f"{GROUP}"),
                InlineKeyboardButton("⦗ Source Ch ⦘", url=f"{CHANNEL}"),
            ],
            [
                InlineKeyboardButton("⦗ Add To Your Group ⦘", url=f"https://t.me/{bot_username}?startgroup=true")
            ]
        ])

        alive_msg = f"""**↯︰معلومات السورس

↯︰أهلاً بك، عمࢪي إليك معلومات السورس ⦂
↯︰مطور السورس ⦂ @Y_o_V
↯︰مالك المصنع ⦂ @{OWNER[0]}
↯︰الإصدارات ⦂
↯︰إصدار البوت ⦂ 25.06.19M1 (beta 4)
↯︰إصدار البايروجرام ⦂ 2.2.6
↯︰إصدار تيليبوت ⦂ 4.27.0
↯︰إصدار مكتبة المكالمات ⦂ 2.2.3
↯︰يوزر المصنع ⦂ @{bot_username}**"""

        await message.reply_text(alive_msg, reply_markup=keyboard)
    except Exception as e:
        print(e)
        pass        

@app.on_message(filters.command(["⦗ شرح انشاء توكن ⦘"], ""))
async def yyyo(client, message):
    await message.reply_text(
        f"""**↯︰شرح مبسط لانشاء التوكن 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ 
1 - اذهب لبوت فاذر  @BotFather
2 - اضغط امر : /newbot
3 - ارسل اسم البوت كمثال :- بلاك
4 - ارسل معرف البوت الي تريده 
- لازم معرف البوت ينتهي ب bot 
- كمثال : @F6Z_bot
5 - راح يدزلك رساله طويله اخذ منها التوكن 
- التوكن راح يبدي بارقام 
- كمثال : 188996559:AAFe61
6- ارجع للمصنع وانشأ بوتك**""",
        reply_markup=InlineKeyboardMarkup(
            [[
                InlineKeyboardButton("⦗ Help Group ⦘", url=f"{GROUP}"),
                InlineKeyboardButton("⦗ Source Ch ⦘", url=f"{CHANNEL}"),
            ],
                [
                    InlineKeyboardButton(f"{OWNER_NAME}", url=f"https://t.me/{OWNER[0]}")
                ]]
        ),
        disable_web_page_preview=True
    )        

@app.on_message(filters.command(["⦗ رفع مطور ⦘"], ""))
async def promote_developer(client: app, message):
    if message.from_user.id in OWNER_ID:
        ask = await client.ask(message.chat.id, "**↯︰ارسل ايدي المستخدم الذي تريد رفعه مطوراً**", timeout=30)
        if ask.text == "الغاء":
            return await ask.reply_text("**↯︰تم الغاء الامر**")

        developer_id = ask.text.strip()
        developers.add(developer_id)
        await ask.reply_text(f"**↯︰تم رفع {developer_id} كمطور بنجاح**")

@app.on_message(filters.command(["⦗ تنزيل مطور ⦘"], ""))
async def demote_developer(client: app, message):
    if message.from_user.id in OWNER_ID:
        ask = await client.ask(message.chat.id, "**↯︰ارسل ايدي المستخدم الذي تريد تنزيله من المطورين**", timeout=30)
        if ask.text == "الغاء":
            return await ask.reply_text("**↯︰تم الغاء الامر**")

        developer_id = ask.text.strip()
        if developer_id in developers:
            developers.remove(developer_id)
            await ask.reply_text(f"**↯︰تم تنزيل {developer_id} من قائمة المطورين**")
        else:
            await ask.reply_text(f"**↯︰المستخدم {developer_id} ليس مطوراً حاليا**")

@app.on_message(filters.command(["⦗ المطورين ⦘"], ""))
async def show_developers(client: app, message):
    if message.from_user.id in OWNER_ID:
        if developers:
            developer_list = "\n".join(developers)
            await message.reply_text(f"**↯︰قائمة المطورين:\n{developer_list}**")
        else:
            await message.reply_text("**↯︰لا يوجد مطورين في القائمة**")    