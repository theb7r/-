from telethon import TelegramClient, events, errors
from telethon.tl.functions.channels import InviteToChannelRequest
import asyncio
# ekhbari.github.io
api_id = ايبي
api_hash = 'هاش'
bot_token = 'توكن'

client = TelegramClient('session_bot', api_id, api_hash).start(bot_token=bot_token)

# عوف الاعدادات مثل ما هي حتى ما تنحظر
from_chat = None
to_chat = None
batch_size = 5  # عدد الأعضاء في كل دفعة
delay_between_batches = 20  # ثواني تأخير بين كل دفعة

@client.on(events.NewMessage(pattern='/setfrom (.+)'))
async def set_from_chat(event):
    global from_chat
    from_chat = event.pattern_match.group(1)
    await event.reply(f"✅ تم تعيين كروب المصدر: {from_chat}")

@client.on(events.NewMessage(pattern='/setto (.+)'))
async def set_to_chat(event):
    global to_chat
    to_chat = event.pattern_match.group(1)
    await event.reply(f"✅ تم تعيين كروب الهدف: {to_chat}")

@client.on(events.NewMessage(pattern='/setbatch (\d+)'))
async def set_batch(event):
    global batch_size
    batch_size = int(event.pattern_match.group(1))
    await event.reply(f"✅ تم تعيين عدد الأعضاء في كل دفعة: {batch_size}")

@client.on(events.NewMessage(pattern='/setdelay (\d+)'))
async def set_delay(event):
    global delay_between_batches
    delay_between_batches = int(event.pattern_match.group(1))
    await event.reply(f"✅ تم تعيين تأخير بين الدفعات: {delay_between_batches} ثانية")

@client.on(events.NewMessage(pattern='/starttransfer'))
async def start_transfer(event):
    global from_chat, to_chat, batch_size, delay_between_batches

    if not from_chat or not to_chat:
        await event.reply("❌ يجب تعيين كلا من كروب المصدر وكروب الهدف أولاً باستخدام /setfrom و /setto")
        return

    await event.reply(f"🔄 جاري نقل الأعضاء من {from_chat} إلى {to_chat}...")
    try:
        participants = await client.get_participants(from_chat)
    except Exception as e:
        await event.reply(f"❌ خطأ في جلب الأعضاء: {e}")
        return

    await event.reply(f"✅ تم جلب {len(participants)} عضو.")

    success_count = 0
    fail_count = 0

    
    for i in range(0, len(participants), batch_size):
        batch = participants[i:i+batch_size]

        for user in batch:
            try:
                await client(InviteToChannelRequest(to_chat, [user.id]))
                success_count += 1
                print(f"✅ تم إضافة: {user.username or user.id}")
            except errors.FloodWaitError as flood_error:
                wait_time = flood_error.seconds
                await event.reply(f"⚠️ تم الوصول للحد المسموح به، الانتظار {wait_time} ثانية...")
                await asyncio.sleep(wait_time + 5)
                
                try:
                    await client(InviteToChannelRequest(to_chat, [user.id]))
                    success_count += 1
                    print(f"✅ تم إضافة بعد انتظار: {user.username or user.id}")
                except Exception as e:
                    fail_count += 1
                    print(f"❌ خطأ مع {user.username or user.id} بعد الانتظار: {e}")
            except Exception as e:
                fail_count += 1
                print(f"❌ خطأ مع {user.username or user.id}: {e}")

        await event.reply(f"✅ تم إضافة دفعة من {len(batch)} عضو. الانتظار {delay_between_batches} ثانية قبل الدفعة التالية...")
        await asyncio.sleep(delay_between_batches)

    await event.reply(f"✅ الانتهاء من النقل!\nتمت إضافة {success_count} عضو بنجاح.\nفشل إضافة {fail_count} عضو.")

print("اشتغلت روح للبوت")

client.run_until_disconnected()