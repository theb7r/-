import requests
import json
import telebot
import re
from telebot import types
import yt_dlp 
import os     


TELEGRAM_TOKEN = '8226205788:AAFvmOl5NA7l53WoYSatg1scefjxGW8Sm_w' 
bot = telebot.TeleBot(TELEGRAM_TOKEN)

try:
    BOT_USERNAME = bot.get_me().username
except Exception as e:
    print(f"Failed to get bot username: {e}. Using a placeholder.")
    BOT_USERNAME = "YourBotName" 
OFFICIAL_BOT_USERNAME = "LimoGptbot"
DEVELOPER_USERNAME_MD = "vo\\_ez" 

def escape_md_v2(text: str) -> str:
    if not isinstance(text, str):
        text = str(text)
    text = text.replace('\\', '\\\\')
    escape_chars_map = {
        '_': '\\_', '*': '\\*', '[': '\\[', ']': '\\]', '(': '\\(', ')': '\\)',
        '~': '\\~', '`': '\\`', '>': '\\>', '#': '\\#', '+': '\\+', '-': '\\-',
        '=': '\\=', '|': '\\|', '{': '\\{', '}': '\\}', '.': '\\.', '!': '\\!'
    }
    for char, escaped_char in escape_chars_map.items():
        text = text.replace(char, escaped_char)
    return text


@bot.message_handler(commands=['start'])
def send_welcome(message):
    markup = types.InlineKeyboardMarkup()
    add_button = types.InlineKeyboardButton(
        text="‹ إضافة البوت للمجموعة ›",
        url=f"https://t.me/{BOT_USERNAME}?startgroup=true"
    )
    markup.add(add_button)

    welcome_text = f"""━━━━━━━━━━━━━
⌯ مرحبـاً بك عزيزي
⌯ انا بوت مساعد لــLimo
⌯ يجب اضافتي للمجموعة للعمل
⌯ البوت الرسمي @{OFFICIAL_BOT_USERNAME}
⌯ اضفني من خلال الزر في الاسفل
━━━━━━━━━━━━━
⌯ المطور: @{DEVELOPER_USERNAME_MD}"""

    bot.reply_to(message, welcome_text, reply_markup=markup, parse_mode="MarkdownV2")

def is_allowed_chat(message):
    return message.chat.type in ['group', 'supergroup', 'channel']

@bot.message_handler(func=lambda msg: msg.text and msg.text.lower().startswith("يوت "))
def search_youtube(message):
    if not is_allowed_chat(message):
        markup = types.InlineKeyboardMarkup()
        add_button = types.InlineKeyboardButton(
            text="‹ إضافة البوت للمجموعة ›",
            url=f"https://t.me/{BOT_USERNAME}?startgroup=true"
        )
        markup.add(add_button)
        bot.reply_to(message, """━━━━━━━━━━━━━
⌯ عذراً عزيزي
⌯ البوت يعمل في المجموعات والقنوات فقط\\.
⌯ اضغط على الزر للإضافة\\.
━━━━━━━━━━━━━""", reply_markup=markup, parse_mode="MarkdownV2")
        return

    query = message.text[len("يوت "):].strip()
    if not query:
        bot.reply_to(message, """━━━━━━━━━━━━━
⌯ يرجى كتابة اسم الأغنية بعد كلمة 'يوت'\\.
   مثال: `يوت سورة البقرة`
━━━━━━━━━━━━━""", parse_mode="MarkdownV2")
        return


    search_indicator_msg = bot.reply_to(message, "⌯ جاري البحث عن طلبك\\.\\.\\.", parse_mode="MarkdownV2")
    bot.send_chat_action(message.chat.id, 'typing')

    search_url = "https://www.youtube.com/results"
    try:
        html = requests.get(search_url, params={"search_query": query}, timeout=10).text
    except requests.exceptions.RequestException as e:
        if search_indicator_msg: bot.delete_message(message.chat.id, search_indicator_msg.message_id)
        bot.reply_to(message, f"⌯ حدث خطأ أثناء الاتصال بالإنترنت: {escape_md_v2(str(e))}", parse_mode="MarkdownV2")
        return

    match = re.search(r"var ytInitialData = ({.*?});</script>", html)
    if not match:
        if search_indicator_msg: bot.delete_message(message.chat.id, search_indicator_msg.message_id)
        bot.reply_to(message, "⌯ لم أتمكن من تحليل نتائج البحث من يوتيوب.", parse_mode="MarkdownV2")
        return

    try:
        data = json.loads(match.group(1))
        contents = data['contents']['twoColumnSearchResultsRenderer']['primaryContents']['sectionListRenderer']['contents']
        items = contents[0]['itemSectionRenderer']['contents']

        results = []
        for item in items:
            if 'videoRenderer' in item:
                video = item['videoRenderer']
                video_id = video['videoId']
                title = video['title']['runs'][0]['text']
                results.append((title, video_id))
            if len(results) >= 5:
                break

        if search_indicator_msg: bot.delete_message(message.chat.id, search_indicator_msg.message_id)

        if not results:
            bot.reply_to(message, f"⌯ لم يتم العثور على أي نتائج بحث لـ: `{escape_md_v2(query)}`", parse_mode="MarkdownV2")
            return

        markup = types.InlineKeyboardMarkup(row_width=1)
        for title, vid in results:
            short_title = title[:35] + "..." if len(title) > 35 else title
            markup.add(types.InlineKeyboardButton(text=f"‹ {short_title} ›", callback_data=f"ytmp3|{vid}"))

        bot.reply_to(message, """━━━━━━━━━━━━━
⌯ اختر الاغنيه المطلوبة لتحويلها إلى MP3:
━━━━━━━━━━━━━""", reply_markup=markup, parse_mode="MarkdownV2")

    except KeyError as e_key:
        if search_indicator_msg: bot.delete_message(message.chat.id, search_indicator_msg.message_id)
        print(f"KeyError during YouTube search parsing: {e_key}")
        bot.reply_to(message, f"⌯ حدث خطأ أثناء قراءة بيانات يوتيوب \\(بنية الصفحة متغيرة\\): `{escape_md_v2(str(e_key))}`\\.", parse_mode="MarkdownV2")
    except Exception as e:
        if search_indicator_msg: bot.delete_message(message.chat.id, search_indicator_msg.message_id)
        print(f"Generic error during YouTube search: {e}")
        
        bot.reply_to(message, f"⌯ خطأ غير متوقع:\n`{escape_md_v2(str(e))}`", parse_mode="MarkdownV2")



@bot.callback_query_handler(func=lambda call: call.data.startswith("ytmp3|"))
def handle_download(call):
    video_id = call.data.split("|")[1]
    processing_message_id = None

    try:

        edited_msg = bot.edit_message_text(
            chat_id=call.message.chat.id,
            message_id=call.message.message_id,
            text="⌯ جاري تجهيز الأغنية، يرجى الانتظار\\.\\.\\.",
            reply_markup=None,
            parse_mode="MarkdownV2"
        )
        processing_message_id = edited_msg.message_id
    except Exception as edit_err:
        print(f"Error editing message in callback: {edit_err}")
        
        bot.answer_callback_query(call.id, "جارٍ تحميل الملف الصوتي...")

    title_raw = "ملف صوتي" 

    try:
        

        url = f"https://www.youtube.com/watch?v={video_id}"
        filename = f"{video_id}.mp3" 
        ydl_opts = {
            'format': 'bestaudio[filesize<50M]/bestaudio',
            'outtmpl': filename,
            'quiet': True,
            'no_warnings': True,
            'extract_audio': True,
            'audio_format': 'mp3',
            'prefer_ffmpeg': False,
            'noplaylist': True,
            'socket_timeout': 10, 
            'retries': 3
        }

        with yt_dlp.YoutubeDL(ydl_opts) as ydl:
            info = ydl.extract_info(url, download=True)
            title_raw = info.get('title', 'ملف صوتي')

            if not os.path.exists(filename) or os.path.getsize(filename) == 0:
                print(f"File {filename} not found or empty for {video_id} after download attempt.")
                if processing_message_id: bot.delete_message(call.message.chat.id, processing_message_id)
                bot.send_message(call.message.chat.id, f"⌯ عذراً، فشل تحميل الأغنية: *{escape_md_v2(title_raw)}*\\. قد يكون الملف كبيرًا جدًا أو محميًا، أو حدث خطأ أثناء المعالجة\\.", parse_mode="MarkdownV2")
                return

        bot.send_chat_action(call.message.chat.id, 'upload_audio')
        with open(filename, 'rb') as audio:
            title_escaped = escape_md_v2(title_raw)
           
            caption_text = f"""━━━━━━━━━━━━━
⌯ اسم الأغنية: *{title_escaped}*
⌯ تم التحميل بواسطة: @{BOT_USERNAME}
⌯ البوت الرسمي: @{OFFICIAL_BOT_USERNAME}
━━━━━━━━━━━━━"""

            caption_markup = types.InlineKeyboardMarkup()
            caption_markup.add(
                types.InlineKeyboardButton(f"‹ البوت الرسمي @{OFFICIAL_BOT_USERNAME} ›", url=f"https://t.me/{OFFICIAL_BOT_USERNAME}")
            )

            bot.send_audio(
                call.message.chat.id,
                audio,
                caption=caption_text, 
                title=title_raw, 
                reply_markup=caption_markup,
                parse_mode="MarkdownV2" 
            )

        if os.path.exists(filename):
            os.remove(filename)

        if processing_message_id:
            try: bot.delete_message(call.message.chat.id, processing_message_id)
            except: pass

    except Exception as e: 
        print(f"Error in handle_download for {video_id}: {e}")
        if processing_message_id:
            try: bot.delete_message(call.message.chat.id, processing_message_id)
            except: pass
        
        bot.send_message(call.message.chat.id, f"⌯ عذراً، حدث خطأ في التحميل: {escape_md_v2(str(e))}\\. حاول مرة أخرى لاحقاً\\.", parse_mode="MarkdownV2")


if __name__ == '__main__':
    print(f"Bot @{BOT_USERNAME} started successfully!")
    print(f"Official Bot: @{OFFICIAL_BOT_USERNAME}")
    try:
        bot.remove_webhook()
        bot.infinity_polling(timeout=60, long_polling_timeout=30, skip_pending=True) # أضفت skip_pending
    except Exception as e:
        print(f"Bot polling failed: {e}")
        # الكود الأصلي كان يستدعي bot.stop_polling() هنا، وهذا قد يكون جيدًا في بعض الحالات
        # لكن infinity_polling عادة ما يتعامل مع الأخطاء المؤقتة.
        # إذا كان الخطأ فادحًا، سيتوقف البوت على أي حال.
    finally:
        print(f"Bot @{BOT_USERNAME} stopped.")
itle_raw, # العنوان الأصلي لبيانات الملف
                reply_markup=caption_markup,
                parse_mode="MarkdownV2" # استخدام MarkdownV2 للكابشن
            )

        if os.path.exists(filename):
            os.remove(filename)

        if processing_message_id:
            try: bot.delete_message(call.message.chat.id, processing_message_id)
            except: pass

    except Exception as e: # معالجة الخطأ العامة من الكود الأصلي
        print(f"Error in handle_download for {video_id}: {e}")
        if processing_message_id:
            try: bot.delete_message(call.message.chat.id, processing_message_id)
            except: pass
        # رسالة الخطأ من الكود الأصلي مع تعديل الشكل و parse_mode
        bot.send_message(call.message.chat.id, f"⌯ عذراً، حدث خطأ في التحميل: {escape_md_v2(str(e))}\\. حاول مرة أخرى لاحقاً\\.", parse_mode="MarkdownV2")


# تشغيل البوت (من الكود الأصلي)
if __name__ == '__main__':
    print(f"Bot @{BOT_USERNAME} started successfully!")
    print(f"Official Bot: @{OFFICIAL_BOT_USERNAME}")
    try:
        bot.remove_webhook()
        bot.infinity_polling(timeout=60, long_polling_timeout=30, skip_pending=True) # أضفت skip_pending
    except Exception as e:
        print(f"Bot polling failed: {e}")
        # الكود الأصلي كان يستدعي bot.stop_polling() هنا، وهذا قد يكون جيدًا في بعض الحالات
        # لكن infinity_polling عادة ما يتعامل مع الأخطاء المؤقتة.
        # إذا كان الخطأ فادحًا، سيتوقف البوت على أي حال.
    finally:
        print(f"Bot @{BOT_USERNAME} stopped.")
