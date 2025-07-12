import os 
import json
import asyncio
from pyrogram import Client, filters, enums
from pyrogram.types import InlineKeyboardMarkup, InlineKeyboardButton, Message

'''
# احترم قوانين المجتمع وتعهَّد بحماية حقوق النشر  
# تذكَّر دائمًا:  
# "كل محتوىً هنا هو ملكٌ لأصحابه، وحقوق النشر محفوظة لـ VEGA©"  
# دعم المبدعين ليس خيارًا... بل واجبٌ أخلاقي وقانوني  
# - لأن إبداعهم ثمرة جهدٍ وعناء  
# - ولأن احترام الحقوق يُنمِّي الإبداع ويُحقق العدالة  
# كن شريكًا في الحماية... ولا تكن سببًا في الانتهاك!
'''

BOT_TOKEN = os.getenv("BOT_TOKEN", "8005707124:AAHAzdYZnTOHoeEu7ouzGCoS7ZaJT2Bo7PY")
API_ID = int(os.getenv("API_ID", 8186557))
API_HASH = os.getenv("API_HASH", "efd77b34c69c164ce158037ff5a0d117")
ADMIN_ID = 8122544723

DB_FILE = "db.json"

admin_context = {}


app = Client(
    "contest_bot", 
    api_id=API_ID, 
    api_hash=API_HASH, 
    bot_token=BOT_TOKEN
)

def load_db():
    try:
        with open(DB_FILE, "r") as f:
            return json.load(f)
    except FileNotFoundError:
        return {"contestants": {}, "votes": {}}

def save_db(db):
    with open(DB_FILE, "w") as f:
        json.dump(db, f, ensure_ascii=False, indent=2)

@app.on_message(filters.command("set_channel") & filters.user(ADMIN_ID))
async def set_channel(client, message: Message):
    args = message.text.split()
    if len(args) < 2 or not args[1].startswith("@"):
        await message.reply(" استخدم الأمر هكذا:\n/set_channel @username")
        return    
    admin_context[message.from_user.id] = admin_context.get(message.from_user.id, {})
    admin_context[message.from_user.id]["channel"] = args[1]
    await message.reply(f" تم تعيين القناة: {args[1]}")

@app.on_message(filters.command("set_emoji") & filters.user(ADMIN_ID))
async def set_emoji(client, message: Message):
    args = message.text.split()
    if len(args) < 2:
        await message.reply(" استخدم الأمر هكذا:\n/set_emoji ❤️")
        return    
    admin_context[message.from_user.id] = admin_context.get(message.from_user.id, {})
    admin_context[message.from_user.id]["emoji"] = args[1]
    await message.reply(f" تم تعيين الإيموجي: {args[1]}")

@app.on_message(filters.command("add_contestant") & filters.user(ADMIN_ID))
async def add_contestant(client, message: Message):
    user_id = message.from_user.id
    args = message.text.split(maxsplit=1)    
    if len(args) < 2:
        await message.reply(" استخدم الأمر هكذا:\n/add_contestant الاسم")
        return    
    ctx = admin_context.get(user_id)
    if not ctx or "channel" not in ctx or "emoji" not in ctx:
        await message.reply(" يجب استخدام /set_channel و /set_emoji أولاً!")
        return    
    name = args[1]
    emoji = ctx["emoji"]
    channel = ctx["channel"]    
    db = load_db()
    contestant_id = str(len(db["contestants"]) + 1)    
    try:
        msg = await client.send_message(
            chat_id=channel,
            text=f"المتسابق: {name}\n\nصوّت له بالإعجاب {emoji}",
            reply_markup=InlineKeyboardMarkup([[
                InlineKeyboardButton(
                    f"{emoji} التصويت (0)", 
                    callback_data=f"vote|{contestant_id}|{emoji}"
                )
            ]])
        )
        db["contestants"][contestant_id] = {
            "name": name,
            "emoji": emoji,
            "channel": channel,
            "message_id": msg.id,
            "votes": 0
        }        
        save_db(db)
        await message.reply(f" تم نشر المتسابق: {name} في {channel}")        
    except Exception as e:
        await message.reply(f" فشل في إضافة المتسابق: {str(e)}")

@app.on_callback_query(filters.regex(r"^vote\|"))
async def handle_vote(client, callback_query):
    user_id = str(callback_query.from_user.id)
    _, contestant_id, emoji = callback_query.data.split("|")    
    db = load_db()
    contestant = db["contestants"].get(contestant_id)    
    if not contestant:
        await callback_query.answer(" المتسابق غير موجود.", show_alert=True)
        return    
    try:
        member = await client.get_chat_member(contestant["channel"], user_id)
        if member.status in (enums.ChatMemberStatus.LEFT, enums.ChatMemberStatus.BANNED):
            await callback_query.answer(" يجب الاشتراك في القناة للتصويت.", show_alert=True)
            return
    except Exception as e:
        print(f"Error checking membership: {e}")
        await callback_query.answer(" يجب الاشتراك في القناة للتصويت.", show_alert=True)
        return
    if user_id in db["votes"].get(contestant_id, []):
        await callback_query.answer(" لقد صوتت لهذا المتسابق مسبقاً.", show_alert=True)
        return
    if contestant_id not in db["votes"]:
        db["votes"][contestant_id] = []    
    db["votes"][contestant_id].append(user_id)
    contestant["votes"] = len(db["votes"][contestant_id])
    save_db(db)    
    try:
        await client.edit_message_reply_markup(
            chat_id=contestant["channel"],
            message_id=contestant["message_id"],
            reply_markup=InlineKeyboardMarkup([[
                InlineKeyboardButton(
                    f"{emoji} التصويت ({contestant['votes']})", 
                    callback_data=f"vote|{contestant_id}|{emoji}"
                )
            ]])
        )
    except Exception as e:
        print(f"Error updating vote: {e}")    
    await callback_query.answer(" تم تسجيل صوتك!", show_alert=True)

@app.on_message(filters.command("reset_channel") & filters.user(ADMIN_ID))
async def reset_channel(client, message: Message):
    admin_context.setdefault(message.from_user.id, {}).pop("channel", None)
    await message.reply(" تم حذف القناة من الإعدادات.")

@app.on_message(filters.command("reset_emoji") & filters.user(ADMIN_ID))
async def reset_emoji(client, message: Message):
    admin_context.setdefault(message.from_user.id, {}).pop("emoji", None)
    await message.reply(" تم حذف الإيموجي من الإعدادات.")

@app.on_message(filters.command("delete_contestant") & filters.user(ADMIN_ID))
async def delete_contestant(client, message: Message):
    args = message.text.split()
    if len(args) < 2:
        await message.reply(" استخدم: /delete_contestant <id>")
        return    
    contestant_id = args[1]
    db = load_db()
    contestant = db["contestants"].get(contestant_id)    
    if not contestant:
        await message.reply(" المتسابق غير موجود.")
        return    
    try:
        await client.delete_messages(contestant["channel"], [contestant["message_id"]])
    except:
        pass    
    db["contestants"].pop(contestant_id, None)
    db["votes"].pop(contestant_id, None)
    save_db(db)    
    await message.reply(" تم حذف المتسابق.")

@app.on_message(filters.command("lock_votes") & filters.user(ADMIN_ID))
async def lock_votes(client, message: Message):
    args = message.text.split()
    if len(args) < 2:
        await message.reply(" استخدم: /lock_votes <id>")
        return    
    contestant_id = args[1]
    db = load_db()
    contestant = db["contestants"].get(contestant_id)    
    if not contestant:
        await message.reply(" المتسابق غير موجود.")
        return    
    try:
        await client.edit_message_reply_markup(
            contestant["channel"],
            contestant["message_id"],
            reply_markup=None
        )
        await message.reply(f" تم قفل التصويت لـ {contestant['name']}")
    except Exception as e:
        await message.reply(f" فشل في قفل التصويت: {str(e)}")

@app.on_message(filters.command("lock_votes_timer") & filters.user(ADMIN_ID))
async def lock_votes_timer(client, message: Message):
    args = message.text.split()
    if len(args) < 3:
        await message.reply(" استخدم: /lock_votes_timer <id> <ثواني>")
        return    
    contestant_id = args[1]
    try:
        seconds = int(args[2])
    except ValueError:
        await message.reply(" يجب أن تكون الثواني رقماً صحيحاً")
        return    
    db = load_db()
    contestant = db["contestants"].get(contestant_id)    
    if not contestant:
        await message.reply(" المتسابق غير موجود.")
        return    
    await message.reply(f" سيتم قفل التصويت لـ {contestant['name']} خلال {seconds} ثانية...")
    await asyncio.sleep(seconds)    
    try:
        await client.edit_message_reply_markup(
            contestant["channel"],
            contestant["message_id"],
            reply_markup=None
        )
        await message.reply(f" تم قفل التصويت تلقائيًا لـ {contestant['name']}")
    except Exception as e:
        await message.reply(f" فشل في قفل التصويت: {str(e)}")

@app.on_message(filters.command("lock_all_timer") & filters.user(ADMIN_ID))
async def lock_all_timer(client, message: Message):
    args = message.text.split()
    if len(args) < 2:
        await message.reply(" استخدم: /lock_all_timer <ثواني>")
        return    
    try:
        seconds = int(args[1])
    except ValueError:
        await message.reply(" يجب أن تكون الثواني رقماً صحيحاً")
        return    
    db = load_db()
    contestants = db["contestants"]    
    if not contestants:
        await message.reply(" لا يوجد متسابقون")
        return    
    await message.reply(f" سيتم قفل جميع التصويتات خلال {seconds} ثانية...")
    await asyncio.sleep(seconds)    
    for cid, data in contestants.items():
        try:
            await client.edit_message_reply_markup(
                data["channel"],
                data["message_id"],
                reply_markup=None
            )
        except:
            continue    
    await message.reply(" تم قفل جميع التصويتات.")

@app.on_message(filters.command("total_votes") & filters.user(ADMIN_ID))
async def total_votes(client, message: Message):
    db = load_db()
    total = sum(contestant["votes"] for contestant in db["contestants"].values())
    await message.reply(f" إجمالي الأصوات: {total}")

@app.on_message(filters.command("show_results") & filters.user(ADMIN_ID))
async def show_results(client, message: Message):
    db = load_db()
    contestants = db["contestants"]    
    if not contestants:
        await message.reply(" لا يوجد متسابقون.")
        return
    sorted_contestants = sorted(
        contestants.items(), 
        key=lambda x: x[1]["votes"], 
        reverse=True
    )    
    text = " نتائج المسابقة:\n\n"
    for i, (cid, data) in enumerate(sorted_contestants, 1):
        text += f"{i}. {data['emoji']} {data['name']} — {data['votes']} صوت\n"    
    await message.reply(text)

if __name__ == "__main__":
    try:
        with open(DB_FILE, "x") as f:
            json.dump({"contestants": {}, "votes": {}}, f)
    except FileExistsError:
        pass    
    print("Bot is running...")
    app.run()