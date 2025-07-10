import os
import telebot
import youtube_search
import yt_dlp
import time
import re
import requests
from io import BytesIO

BOT_TOKEN = "توكن"
bot = telebot.TeleBot(BOT_TOKEN)

search_results = {}
CHANNEL_LINK = "https://t.me/priknm"
BOT_NAME = "𝑴𝒊𝒌𝒆𝒚"

@bot.message_handler(commands=['start', 'help'])
def send_welcome(message):
    bot.reply_to(message, 
                f"*▶️ | مرحباً بك في بوت {BOT_NAME} للصوتيات*\n\n"
                f"*◈ | للبحث عن فيديو:*\n"
                f"`يوت` + كلمة البحث\n\n"
                f"*◈ | مثال:* `يوت أغنية جميلة`\n\n"
                f"*◈ | البوت يدعم المجموعات أيضاً*",
                parse_mode="Markdown")

@bot.message_handler(func=lambda message: message.text and message.text.startswith('يوت '))
def search_youtube(message):
    chat_id = message.chat.id
    query = message.text[4:]

    if not query:
        bot.send_message(chat_id, 
                        "*⚠️ | يرجى إدخال كلمة بحث بعد* `يوت`", 
                        parse_mode="Markdown")
        return

    status_message = bot.send_message(chat_id, 
                                    f"*🔍 | جاري البحث عن:* `{query}`\n*⏳ | انتظر قليلاً...*", 
                                    parse_mode="Markdown")

    try:
        results = youtube_search.YoutubeSearch(query, max_results=5).to_dict()

        if not results:
            bot.edit_message_text("*⚠️ | لم يتم العثور على نتائج للبحث*", 
                                chat_id, 
                                status_message.message_id, 
                                parse_mode="Markdown")
            return

        search_results[chat_id] = results

        markup = telebot.types.InlineKeyboardMarkup()
        for i, video in enumerate(results):
            title = video['title']
            duration = video.get('duration', '')

            if len(title) > 55:
                title = title[:52] + "..."

            button_text = f"🎬 {title}"
            if duration:
                button_text += f" | ⏱ {duration}"

            markup.add(telebot.types.InlineKeyboardButton(
                text=button_text,
                callback_data=f"video_{i}"
            ))

        bot.edit_message_text(
            "*📋 | نتائج البحث:*\n*◈ | اضغط على الفيديو لتحميل الصوت:*",
            chat_id,
            status_message.message_id,
            reply_markup=markup,
            parse_mode="Markdown"
        )
    except Exception as e:
        print(f"حدث خطأ أثناء البحث: {e}")
        bot.edit_message_text(
            "*⚠️ | عذراً، حدث خطأ أثناء البحث. يرجى المحاولة مرة أخرى.*",
            chat_id,
            status_message.message_id,
            parse_mode="Markdown"
        )

@bot.callback_query_handler(func=lambda call: call.data.startswith('video_'))
def handle_video_selection(call):
    try:
        chat_id = call.message.chat.id
        video_index = int(call.data.split('_')[1])

        if chat_id not in search_results or video_index >= len(search_results[chat_id]):
            bot.answer_callback_query(call.id, "⚠️ | حدث خطأ. يرجى إجراء بحث جديد.")
            return

        video = search_results[chat_id][video_index]
        video_url = f"https://www.youtube.com/watch?v={video['id']}"
        title = video['title']
        channel = video.get('channel', 'YouTube')

        bot.edit_message_text(
            chat_id=chat_id,
            message_id=call.message.message_id,
            text=f"*⏳ | جاري تحميل الصوت من:*\n`{title}`\n\n*◈ | يرجى الانتظار...*",
            parse_mode="Markdown"
        )

        audio_file = download_audio_method1(video_url, video['id'])

        if audio_file and os.path.exists(audio_file):
            safe_title = re.sub(r'[\\/*?:"<>|]', "", title)

            try:
                try:
                    with yt_dlp.YoutubeDL({'quiet': True}) as ydl:
                        info = ydl.extract_info(video_url, download=False)
                        thumbnail_url = info.get('thumbnail')
                        thumb = None
                        if thumbnail_url:
                            thumb = BytesIO(requests.get(thumbnail_url).content)
                except:
                    thumb = None

                markup = telebot.types.InlineKeyboardMarkup(row_width=1)
                markup.add(
                    telebot.types.InlineKeyboardButton(text=f"📢 {BOT_NAME}", url=CHANNEL_LINK)
                )

                with open(audio_file, 'rb') as audio:
                    bot.send_audio(
                        chat_id,
                        audio,
                        title=safe_title,
                        performer=channel,
                        caption=f"*🎵 | العنوان:* `{title}`\n*📢 | القناة:* `{channel}`\n\n*🤖 | تم التحميل بواسطة {BOT_NAME}*",
                        parse_mode="Markdown",
                        reply_markup=markup,
                        thumb=thumb
                    )
                try:
                    os.remove(audio_file)
                    for file in os.listdir():
                        if file.endswith(('.m4a', '.webm', '.mp3', '.ogg')):
                            try:
                                os.remove(file)
                            except:
                                pass
                except:
                    pass
                try:
                    bot.delete_message(chat_id, call.message.message_id)
                except:
                    pass
                return
            except Exception as e:
                print(f"Error sending local file: {e}")

        audio_url = get_direct_audio_url(video_url)
        if audio_url:
            try:
                markup = telebot.types.InlineKeyboardMarkup(row_width=2)
                markup.add(
                    telebot.types.InlineKeyboardButton(text="🔗 رابط الفيديو", url=video_url),
                    telebot.types.InlineKeyboardButton(text=f"📢 {BOT_NAME}", url=CHANNEL_LINK)
                )

                audio_data = download_from_url(audio_url)
                if audio_data:
                    bot.send_audio(
                        chat_id,
                        audio_data,
                        title=re.sub(r'[\\/*?:"<>|]', "", title),
                        performer=channel,
                        caption=f"*🎵 | العنوان:* `{title}`\n*📢 | القناة:* `{channel}`\n\n*🤖 | تم التحميل بواسطة {BOT_NAME}*",
                        parse_mode="Markdown",
                        reply_markup=markup
                    )
                    try:
                        bot.delete_message(chat_id, call.message.message_id)
                    except:
                        pass
                    return
            except Exception as e:
                print(f"Error sending audio from URL: {e}")

        markup = telebot.types.InlineKeyboardMarkup(row_width=2)
        markup.add(
            telebot.types.InlineKeyboardButton(text="🎬 شاهد على يوتيوب", url=video_url),
            telebot.types.InlineKeyboardButton(text=f" {BOT_NAME}", url=CHANNEL_LINK)
        )
        bot.send_message(
            chat_id,
            f"*⚠️ | لم أتمكن من تحميل الصوت، ولكن يمكنك مشاهدة الفيديو مباشرة:*\n\n*🎬 | {title}*",
            reply_markup=markup,
            parse_mode="Markdown"
        )
        try:
            bot.delete_message(chat_id, call.message.message_id)
        except:
            pass

    except Exception as e:
        print(f"Error in handle_video_selection: {e}")
        bot.send_message(
            call.message.chat.id, 
            "*⚠️ | حدث خطأ أثناء معالجة طلبك. يرجى المحاولة مرة أخرى.*",
            parse_mode="Markdown"
        )

def download_audio_method1(url, video_id):
    try:
        output_file = f"{video_id}.m4a"
        ydl_opts = {
            'format': 'bestaudio[ext=m4a]/bestaudio',
            'outtmpl': f"{video_id}.%(ext)s",
            'quiet': True,
            'no_warnings': True,
            'nopostoverwrites': True,
            'ignoreerrors': True,
        }

        with yt_dlp.YoutubeDL(ydl_opts) as ydl:
            ydl.download([url])

        for ext in ['m4a', 'webm', 'mp3', 'ogg']:
            potential_file = f"{video_id}.{ext}"
            if os.path.exists(potential_file):
                return potential_file

        return None
    except Exception as e:
        print(f"Download error method1: {e}")
        return None

def get_direct_audio_url(video_url):
    try:
        ydl_opts = {
            'format': 'bestaudio[ext=m4a]/bestaudio',
            'quiet': True,
            'no_warnings': True,
            'skip_download': True,
        }

        with yt_dlp.YoutubeDL(ydl_opts) as ydl:
            info = ydl.extract_info(video_url, download=False)
            if 'url' in info:
                return info['url']
            for format_id in info.get('formats', []):
                if 'url' in format_id and ('audio only' in format_id.get('format', '') or 'audio' in format_id.get('format', '')):
                    return format_id['url']
        return None
    except Exception as e:
        print(f"Error getting direct URL: {e}")
        return None

def download_from_url(url):
    try:
        response = requests.get(url, stream=True, timeout=30)
        if response.status_code == 200:
            audio_data = BytesIO(response.content)
            audio_data.name = "audio.m4a"
            return audio_data
        return None
    except Exception as e:
        print(f"Error downloading from URL: {e}")
        return None

if __name__ == "__main__":
    print("╔════════════════════════════════════╗")
    print(f"║  🎵 بوت {BOT_NAME} للصوتيات - بدء التشغيل  ║")
    print("╚════════════════════════════════════╝")
    bot.polling(none_stop=True)