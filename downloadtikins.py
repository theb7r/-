import telebot
import yt_dlp
import os

TOKEN = "token"
bot = telebot.TeleBot(TOKEN)

def download_video(url, platform):
    try:
        ydl_opts = {
            'format': 'best',  
            'outtmpl': f'{platform}_video.mp4',  
            'quiet': True,  
        }

        with yt_dlp.YoutubeDL(ydl_opts) as ydl:
            ydl.download([url])

        if os.path.exists(f'{platform}_video.mp4'):
            return f'{platform}_video.mp4'
        else:
            return None
    except Exception as e:
        print(f"Error: {e}")
        return None

@bot.message_handler(commands=['start'])
def send_welcome(message):
    bot.reply_to(message, "مرحبًا! أرسل لي رابط فيديو من إنستغرام أو تيك توك لتحميله.")

@bot.message_handler(func=lambda message: True)
def handle_message(message):
    url = message.text.strip()
    
    if 'instagram.com' in url:
        platform = 'instagram'
    elif 'tiktok.com' in url:
        platform = 'tiktok'
    else:
        bot.reply_to(message, "يرجى إرسال رابط صحيح من إنستغرام أو تيك توك.")
        return

    loading_message = bot.reply_to(message, f"جارٍ التحميل...")
    video_file = download_video(url, platform)
    
    if video_file:
        with open(video_file, 'rb') as video:
            bot.send_video(message.chat.id, video, caption="تم التحميل بنجاح")      
        os.remove(video_file)       
        bot.delete_message(message.chat.id, loading_message.message_id)
    else:
        bot.reply_to(message, "حدث خطأ أثناء تحميل الفيديو. يرجى المحاولة لاحقاً.")
        bot.delete_message(message.chat.id, loading_message.message_id)

bot.polling(timeout=60, long_polling_timeout=60)