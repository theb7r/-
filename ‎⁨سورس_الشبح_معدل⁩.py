import os
import requests
import telebot
from telebot import types
from datetime import date, timedelta

# توكن البوت
TOKEN = "8185475102:AAGbblpm--CRaSxPmOscmh4onXCgjrn-FxE"
bot = telebot.TeleBot(TOKEN)

# رسالة ترحيب
@bot.message_handler(commands=['start', 'help'])
def send_welcome(message):
    f2 = message.from_user.first_name or "مستخدم"
    t2 = message.from_user.username or "NoUsername"
    msg = f"*اهلا بك عزيزي - *[{f2}](https://t.me/{t2})،\n* في بوت الاوامر، \nلمعرفة اوامر البوت ارسل الاوامر*"
    try:
        bot.reply_to(
            message,
            text=msg,
            disable_web_page_preview=True,
            parse_mode="Markdown"
        )
    except Exception:
        bot.reply_to(message, "حدث خطأ أثناء عرض رسالة الترحيب.")

# ✅ أمر الحماية
@bot.message_handler(commands=['حماية'])
def protection_commands(message):
    msg = (
        "🛡️ *اوامر الحماية:*\n"
        "🔒 /قفل - لقفل الميديا أو الروابط\n"
        "🔓 /فتح - لفتح المحظورات\n"
        "🚫 /طرد [رد أو معرف] - لطرد عضو\n"
        "🚷 /حظر [رد أو معرف] - لحظر عضو\n"
        "👮‍♂️ /رفع ادمن - لرفع عضو كأدمن\n"
        "📛 /تعطيل - لتعطيل الحماية\n"
        "✅ /تفعيل - لتفعيل الحماية"
    )
    bot.reply_to(message, msg, parse_mode="Markdown")

# ✅ أمر اختبار
@bot.message_handler(commands=['ping'])
def ping_command(message):
    bot.reply_to(message, "البوت شغال ✅")

# تشغيل البوت
if __name__ == "__main__":
    bot.infinity_polling()
