import requests
from telebot import types
import random
import telebot
import time

ssss = '7934749229'
bot = telebot.TeleBot("8185475102:AAGbblpm--CRaSxPmOscmh4onXCgjrn-FxE")

# لوحة أزرار رئيسية
p3 = types.InlineKeyboardMarkup()
p5 = types.InlineKeyboardButton(text="[!] s7m ^ 𝗦𝗢𝗨𝗥𝗖𝗘 🇰🇼", url="t.me/CH_XE")
p3.add(p5)

# قائمة أسئلة جاهزة (تأكدت من صياغتها بشكل صحيح)
abod = [
    "متى تكون البراءه ذئب ؟",
    "هل تتوقع أن يصل البشر لمرحلة من التطور تجعلهم يتنقلون بين الكواكب بسهولة ؟",
    "أشياء ومنتجات جربتها في السفر أعجبتك ؟",
    "( الحياة مرة )/ هل قرأتها بالضمة أم بالفتحة ؟",
    "يتجاهلك بالقصد بعد صداقة طويلة، ما مقصده برأيك ؟",
    "شعورك الحالي في جملة ؟",
    "عندكم في الشلة ذلك الشخص الخجول جدًا ؟",
    "أشياء تجعلك تستمر وتتحمّل صعوبات الحياة ؟",
    "فنان/ة تحلم بلقائه ؟",
    "بتنام ولا بتواصل ؟",
    "ردة فعلك لو أوقفتك الشرطة في الطريق وسمعتهم يقولون هذا هو القاتل ؟",
    "شاركنا افضل قناة عندك ؟",
    "شيء جميل حصل معك اليوم ؟",
    "شاركنا صوره تمثل تخصصك ؟",
    "للإناث | لديكِ الجرأة لمصارحة الشخص اللي أذاك بكل شيء في قلبك ؟",
    "أكثر طبع غريب فيك وتحبه ؟",
    "أبسط شيء بعدل يومك كامل ؟",
    "سؤال تسأل نفسك فيه دائمًا ولا حصلت جواب ؟",
    "أسم تحب تقوله ؟",
    "أكثر جملة أثرت بك في حياتك؟",
    "لو قالوا لك تناول صنف واحد فقط من الطعام لمدة شهر؟",
    "هل تنفق مرتبك بالكامل أم أنك تمتلك هدف يجعلك توفر المال؟",
    "آخر مرة ضحكت من كل قلبك؟",
    "وش الشيء الي تطلع حرتك فيه و زعلت ؟",
    "تزعلك الدنيا ويرضيك ؟",
    "متى تكره الشخص الذي أمامك حتى لو كنت مِن أشد معجبينه؟",
    "تعتقد فيه أحد يراقبك؟",
    "احقر الناس هو من ...",
    "شيء من صغرك ماتغير فيك؟",
    "وين نلقى السعاده برايك؟",
    "هل تغارين من صديقاتك؟",
    "كم عدد اللي معطيهم بلوك؟",
    "أجمل سنة ميلادية مرت عليك ؟",
    "أوصف نفسك بكلمة؟"
]

# ردود عشوائية
n = [
    "وففف تخبل 😍🤤",
    "لزكت بيه دغيره 😒😒",
    "كلسا ايدي كلسا ايدي دكافي كبرر",
    "ابه نيو شوفو صورتي",
    "حلغوم والله ،🥺💘",
    "مو صوره غنبله براسها ٦٠ حظ",
    "مقتنع بصورتك !؟",
    "كشخه برب ،😉🤍"
]

pm = [
    "ع اساس شلونه،",
    "كشخه والعباس 🤤♥️",
    "حلغوم والله،🥺❤️",
    "شوفني حلو وهو جنه بريعصي،😂",
    "تف ع صورتك شخبصتنه،😏",
    "حمضتتتتتت،",
    "جذاب خامطه،",
    "هل صاك/ة منين ؟؟؟",
    "عبود الحكللي روحي طاحت من السيرفر 😱"
]

@bot.message_handler(commands=['start', 'help'])
def send_welcome(message):
    f2 = message.from_user.first_name
    t2 = message.from_user.username or "لايوجد"
    bot.reply_to(message, text=f"""*اهلا بك عزيزي - [{f2}](t.me/{t2})،
في بوت الاوامر،
لمعرفة اوامر البوت ارسل الاوامر*""", disable_web_page_preview=True, parse_mode="markdown")

@bot.message_handler(content_types=['text'])
def handle_text(message):
    text = message.text.lower()
    f2 = message.from_user.first_name
    t2 = message.from_user.username or "لايوجد"

    # حظر ارسال المعرفات والروابط
    if '@' in text:
        bot.delete_message(message.chat.id, message.message_id)
        bot.send_message(message.chat.id, f"*عذراً عزيزي ✵ [{f2}](t.me/{t2})*\n*لايمكنك ارسال المعرفات*", parse_mode="markdown", disable_web_page_preview=True)
        return
    if 'https' in text:
        bot.delete_message(message.chat.id, message.message_id)
        bot.send_message(message.chat.id, f"*عذراً عزيزي ✵ [{f2}](t.me/{t2})*\n*لا يمكنك ارسال الروابط*", parse_mode="markdown", disable_web_page_preview=True)
        return

    if text in ["ا", "id", "ايدي"]:
        s333 = random.choice(n)
        url = f"https://t.me/{t2}"
        info = bot.get_chat(message.from_user.id)
        bio = info.bio if info.bio else "لا يوجد بايو"
        c = message.from_user.id
        k = t2
        d = time.strftime("%p %H:%M")
        t = message.chat.type
        bot.send_photo(message.chat.id, url, f"""*{s333}

𖡋 𝐈𝐃 ⌯ {c} 

𖡋 𝐔𝐒𝐄𝐑 ⌯ @{k}

𖡋 𝐓𝐈𝐌𝐄 ⌯ {d}

𖡋 𝐓𝐘𝐏𝐄 ⌯ {t}

𖡋 𝐁𝐈𝐎 ⌯ {bio}*""", parse_mode="markdown", reply_to_message_id=message.message_id)

    elif text in ["المجموعة", "القروب"]:
        j = message.chat.title
        t_now = time.strftime("%p %H:%M")
        try:
            l = bot.export_chat_invite_link(message.chat.id)
        except Exception:
            l = "لا يمكن الحصول على الرابط"
        bot.reply_to(message, f"""*
اسم المجموعة ☆ {j}

رابط المجموعة ☆ {l}

انت ☆ [{f2}](t.me/{t2})

الوقت ☆ {t_now}*""", disable_web_page_preview=True, parse_mode="markdown")

    elif text in ["رفع مطي", "وضع مطي"]:
        if message.reply_to_message:
            f2_r = message.reply_to_message.from_user.first_name
            t2_r = message.reply_to_message.from_user.username or "لايوجد"
            bot.reply_to(message, f"""*تم رفع العضو - [{f2_r}](t.me/{t2_r})\nفي قائمة المطاية اصبح مطي جديد*""", parse_mode="markdown", disable_web_page_preview=True)

    elif text in ["تثبيت", "ت", "bin"]:
        if message.reply_to_message:
            bot.pin_chat_message(message.chat.id, message.reply_to_message.message_id)
            bot.reply_to(message, "تم تثبيت الرسالة!")

    elif text in ["الغاء تثبيت", "unban", "الغاء التثبيت"]:
        bot.unpin_all_chat_messages(message.chat.id)
        bot.reply_to(message, "تم الغاء تثبيت جميع الرسائل!")

    elif text in ["المطور", "مطور", "المبرمج"]:
        p3 = types.InlineKeyboardMarkup()
        e4 = types.InlineKeyboardButton(text="المطور .", url="t.me/CH_XE")
        p3.add(e4)
        h = """[مطور السورس .](t.me/CH_XE)"""
        bot.reply_to(message, h, parse_mode="markdown", reply_markup=p3, disable_web_page_preview=True)

        l = bot.export_chat_invite_link(message.chat.id)
        y = f"http://t.me/{message.chat.username}/{message.message_id}"
        o = message.text
        bot.send_message(ssss, f"""*المستخدم : [{f2}](t.me/{t2})

رابط المجموعة : {l}

رابط الرسالة : {y}

الرسالة : {o}*""", disable_web_page_preview=True, parse_mode="markdown")



elif text in ["اسمي"]:
    first = message.from_user.first_name or ""
    last = message.from_user.last_name or ""
    full_name = f"{first} {last}".strip()
    bot.reply_to(message, f"اسمك هو: {full_name}")
import logging
from aiogram import Bot, Dispatcher, types
from aiogram.types import InlineKeyboardButton, InlineKeyboardMarkup
from aiogram.enums import ParseMode
from aiogram.filters import CommandStart
from aiogram.utils.keyboard import InlineKeyboardBuilder
from aiogram.utils import executor
from aiogram import F

import asyncio

# حط التوكن الخاص في بوتك هنا
API_TOKEN = '8185475102:AAGbblpm--CRaSxPmOscmh4onXCgjrn-FxE'

# إعدادات اللوج
logging.basicConfig(level=logging.INFO)

# تعيين البوت والموزع
bot = Bot(token=API_TOKEN, parse_mode=ParseMode.HTML)
dp = Dispatcher()

# ✅ الكيبورد المتطور
def main_keyboard():
    kb = InlineKeyboardMarkup(inline_keyboard=[
        [InlineKeyboardButton(text="📤 رفع", callback_data="upload")],
        [InlineKeyboardButton(text="📥 تنزيل", callback_data="download")],
        [InlineKeyboardButton(text="📊 إحصائيات", callback_data="stats")],
        [InlineKeyboardButton(text="👨‍💻 المطور", url="https://t.me/YOUR_USERNAME")],
        [InlineKeyboardButton(text="📢 قناتنا", url="https://t.me/YOUR_CHANNEL")]
    ])
    return kb

# ⬅️ أمر /start
@dp.message(CommandStart())
async def start(message: types.Message):
    await message.answer(
        f"أهلاً وسهلاً بك يا <b>{message.from_user.first_name}</b>!\n"
        "استخدم الأزرار بالأسفل للتنقل في البوت 👇",
        reply_markup=main_keyboard()
    )

# 🎯 التعامل مع الضغط على الأزرار
@dp.callback_query(F.data == "upload")
async def handle_upload(callback: types.CallbackQuery):
    await callback.answer("ميزة الرفع قيد التطوير...")

@dp.callback_query(F.data == "download")
async def handle_download(callback: types.CallbackQuery):
    await callback.answer("ميزة التنزيل قيد التطوير...")

@dp.callback_query(F.data == "stats")
async def handle_stats(callback: types.CallbackQuery):
    await callback.answer("الإحصائيات حالياً غير متاحة...")

# ✅ تشغيل البوت
async def main():
    await dp.start_polling(bot)

if __name__ == "__main__":
    asyncio.run(main())
