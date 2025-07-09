import os
import requests
import telebot
from telebot import types
from datetime import date, timedelta

# توكن البوت مضاف مباشرة
TOKEN = "8185475102:AAGbblpm--CRaSxPmOscmh4onXCgjrn-FxE"

bot = telebot.TeleBot(TOKEN)

# إعداد الأزرار
p3 = types.InlineKeyboardMarkup()
p5 = types.InlineKeyboardButton(text="[!] 𝗚𝗛𝗢𝗦𝗧 ^ 𝗦𝗢𝗨𝗥𝗖𝗘 🇰🇼", url="https://t.me/pjpppppp")
A1 = types.InlineKeyboardButton(text="اوامر الحماية .", callback_data="A1")
A2 = types.InlineKeyboardButton(text="اوامر التسلية .", callback_data="A2")
A3 = types.InlineKeyboardButton(text="اوامر الالعاب .", callback_data="A3")
A4 = types.InlineKeyboardButton(text="اوامر الموسيقى ", callback_data="A4")

# رسالة الترحيب
@bot.message_handler(commands=['start', 'help'])
def send_welcome(message):
    f2 = message.from_user.first_name or "مستخدم"
    t2 = message.from_user.username or "NoUsername"
    msg = f"*اهلا بك عزيزي - *[{f2}](https://t.me/{t2})،\\n*  في بوت الاوامر، \\nلمعرفة اوامر البوت ارسل الاوامر*"
    try:
        bot.reply_to(
            message,
            text=msg,
            disable_web_page_preview=True,
            parse_mode="Markdown"
        )
    except Exception:
        bot.reply_to(message, "حدث خطأ أثناء عرض رسالة الترحيب.")

# بدء البوت
if __name__ == "__main__":
    bot.infinity_polling()
