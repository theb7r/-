#'‹ ٰ💸 ⇣ سورس ماثيو ⇣ 💸 › .'#
import os
from pyrogram import Client, filters
from pyrogram.types import InlineKeyboardMarkup, InlineKeyboardButton, ReplyKeyboardMarkup
from bot import DEVS

API_ID = int("23090097")
API_HASH = "3fb3746ba526a5b95fc8205d7015c0e5"
Bots = []
off =None


@Client.on_message(filters.command("start") & filters.private)
async def start(client, message):
   if message.from_user.username in DEVS:
     kep = ReplyKeyboardMarkup([["صنع بوت", "حذف بوت"], ["البوتات المصنوعه"], ["تعطيل المجاني", "تفعيل المجاني"], ["السورس"]], resize_keyboard=True)
     return await message.reply_text("اهلا بيك ف مصنع بوتات جوجل ميوزك", reply_markup=kep)
   kep = ReplyKeyboardMarkup([["صنع بوت", "حذف بوت"], ["السورس"]], resize_keyboard=True)
   await message.reply_text("اهلا بك ف مصنع بوتات ماثيو ميوزك", reply_markup=kep)

@Client.on_message(filters.command(["السورس"], ""))
async def alivehi(client: Client, message):
    keyboard = InlineKeyboardMarkup(
        [
            [
                InlineKeyboardButton("𝙶𝚁𝙾𝚄𝙿️", url=f"https://t.me/CV_SS"),
                InlineKeyboardButton("𝚂𝙾𝚄𝚁𝙲𝙴️", url=f"https://t.me/CV_SS"),
            ],
            [
                 InlineKeyboardButton(f"𝗗𝗘𝗩 S7M 💎", url=f"https://t.me/CH_XE")
            ]
        ]
    )

    await message.reply_photo(
        photo="",
        caption="",
        reply_markup=keyboard,
    )
@Client.on_message(filters.command(["تفعيل المجاني", "تعطيل المجاني"], "") & filters.private)
async def onoff(client, message):
  if not message.from_user.username in DEVS:
    return
  global off
  if message.text == "تفعيل المجاني":
    off = None
    return await message.reply_text("تم تفعيل المجاني بنجاح .")
  else:
    off = True
    await message.reply_text("تم تعطيل المجاني بنجاح .")
@Client.on_message(filters.command("صنع بوت", "") & filters.private)
async def makedhelal(client, message):
  if not message.from_user.username in DEVS:
    for x in Bots:
        if x[1] == message.from_user.id:
          return await message.reply_text("لقد قمت بصنع بوت من قبل . ")
  try:
    ask = await client.ask(message.chat.id, "ارسل توكن البوت", timeout=300)
  except:
      return
  TOKEN = ask.text
  try:
    ask = await client.ask(message.chat.id, "ارسل كود الجلسه", timeout=300)
  except:
      return
  SESSION = ask.text
  try:
    ask = await client.ask(message.chat.id, "ارسل الان ايدي قروب السجل وتاكد من تشغيل مكالمه صوتيه", timeout=300)
  except:
      return
  LOG = ask.text
  Dev = message.from_user.id
  if message.from_user.username in DEVS:
    try:
       ask = await client.ask(message.chat.id, "ارسل ايدي المطور", timeout=300)
    except:
      return
    try:
      Dev = int(ask.text)
    except:
      return await message.reply_text("قم بارسال الايدي بشكل صحيح")#'‹ ٰ💸 ⇣ سورس ماثيو ⇣ 💸 › .'#
  bot = Client(":memory:", api_id=API_ID, api_hash=API_HASH, bot_token=TOKEN)
  user = Client(api_id=API_ID, api_hash=API_HASH, session_name=str(SESSION))
  try:
    await bot.start()
    username = await bot.get_me()
    username = username.username
    await bot.stop()
    await user.start()
    await user.stop()
  except:
    return await message.reply_text("تاكد من التوكن أو الجلسة")
  id = username
  for x in Bots:
        if x[0] == id:
          return await message.reply_text("لقد قمت بصنع هذا البوت من قبل . ")
  os.system(f"cp -a source users/{id}")
  env = open(f"users/{id}/.env", "w+", encoding="utf-8")
  x = f'ID = {id}\nBOT_TOKEN = {TOKEN}\nSTRING_SESSION = {SESSION}\nOWNER_ID = {Dev}\nLOG_GROUP_ID = {LOG}'
  env.write(x)
  env.close()
  os.system(f"cd users/{id} && screen -d -m -S {id} python3 -m YukkiMusic")
  oo = [id, Dev]
  Bots.append(oo)
  await message.reply_text("تم صنع بوتك بنجاح 🌿♥️")

@Client.on_message(filters.command("حذف بوت", "") & filters.private)
async def deletbothelal(client, message):
   if not message.from_user.username in DEVS:
     for x in Bots:
         bot = x[0]
         if x[1] == message.from_user.id:       
           os.system(f"sudo rm -fr users/{bot}")
           os.system(f"screen -XS {bot} quit")
           Bots.remove(x)
           return await message.reply_text("تم حذف بوتك من الصانع .")
     return await message.reply_text("لم تقم بصنع بوتات")
   try:
      bot = await client.ask(message.chat.id, "هات يوزر البوت", timeout=200)
   except:
      return
   bot = bot.text.replace("@", "")
   for x in Bots:
       if x[0] == bot:
          Bots.remove(x)
   os.system(f"sudo rm -fr users/{bot}")
   os.system(f"screen -XS {bot} quit")
   await message.reply_text("تم حذف البوت بنجاح")


@Client.on_message(filters.command("البوتات المصنوعه", ""))
async def bothelal(client, message):
  if not message.from_user.username in DEVS:
   return
  o = 0
  text = "قايمه البوتات\n"
  for x in Bots:#'‹ ٰ💸 ⇣ سورس ماثيو ⇣ 💸 › .'#
      o += 1
      text += f"{o}- @{x[0]}\n"
  if o == 0:
    return await message.reply_text("لا يوجد بوتات مصنوعه")
  await message.reply_text(text)
