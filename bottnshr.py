from pyrogram import Client, filters, idle
from pyrogram.types import (
    Message, 
    InlineKeyboardMarkup, 
    InlineKeyboardButton,
    ReplyKeyboardMarkup,
    KeyboardButton,
    CallbackQuery,
    User
)
import os
import asyncio
from datetime import datetime, timedelta
import json
import logging
import random
import string
import shutil

 # نحن أول فريق برمجة متكامل في مصر، نقدم
 # حلولًا تقنية عالية الجودة في مجال تطوير البرمجيات، 
 # كتابة الأكواد، تصميم السكربتات، وبرمجة الألعاب. نلتزم 
 # بمعايير الدقة والكفاءة لضمان تحقيق أفضل النتائج لمشاريعك
 # تم برمجة هذا ملف بواسطه: @TopVeGa



logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)


API_ID = '23090097'
API_HASH = '3fb3746ba526a5b95fc8205d7015c0e5'
BOT_TOKEN = '7593580222:AAGw3bzn7qpJoYgUktp2pOydZwX9-z5XolM'#توكن
ADMIN_ID = 7934749229 #ايدي مطور


DEVS_FILE = "devs.json"
BANNED_FILE = "banned.json"
SETTINGS_FILE = "settings.json"


app = Client(
    "TOPVEGA",
    api_id=API_ID,
    api_hash=API_HASH,
    bot_token=BOT_TOKEN
)


SESSIONS_DIR = "sessions"
POSTS_FILE = "posts.json"
BACKUP_DIR = "backups"
os.makedirs(SESSIONS_DIR, exist_ok=True)
os.makedirs(BACKUP_DIR, exist_ok=True)


dev_keyboard = ReplyKeyboardMarkup(
    [
        ["➕ إضافة جلسة", "🗂 جلساتي", "🔍 فحص جلسة"],
        ["📢 إنشاء منشور", "🗑 حذف منشور", "🧹 حذف جميع المنشورات"],
        ["▶️ بدء النشر", "⏹ إيقاف النشر", "📜 المنشورات"],
        ["📊 إحصائيات", "📤 نسخة احتياطية", "📥 استعادة نسخة"],
        ["👑 رفع مطور", "🔻 تنزيل مطور", "📜 قائمة المطورين"],
        ["🚫 حظر مستخدم", "✅ الغاء حظر", "📜 المحظورين"],
        ["🔔 تفعيل التواصل", "🔕 تعطيل التواصل", "📣 إذاعة"],
        ["🗑 حذف جميع الجلسات", "🆘 المساعدة"]
    ],
    resize_keyboard=True
)

# لوحة المفاتيح الرئيسية للمستخدمين العاديين
user_keyboard = ReplyKeyboardMarkup(
    [
        ["🛒 تفعيل الاشتراك"],
        ["📞 التواصل مع المطور"]
    ],
    resize_keyboard=True
)


user_states = {}
posts_data = {}
auto_posting_running = False

# وظائف مساعدة
def load_data(file_name, default={}):
    if os.path.exists(file_name):
        with open(file_name, 'r') as f:
            return json.load(f)
    return default

def save_data(file_name, data):
    with open(file_name, 'w') as f:
        json.dump(data, f, indent=4)

def load_devs():
    return load_data(DEVS_FILE, {"devs": [ADMIN_ID]})

def save_devs(data):
    save_data(DEVS_FILE, data)

def load_banned():
    return load_data(BANNED_FILE, {"banned": []})

def save_banned(data):
    save_data(BANNED_FILE, data)

def load_settings():
    return load_data(SETTINGS_FILE, {"contact_enabled": True})

def save_settings(data):
    save_data(SETTINGS_FILE, data)

def is_dev(user_id):
    devs_data = load_devs()
    return user_id in devs_data["devs"]

def is_banned(user_id):
    banned_data = load_banned()
    return user_id in banned_data["banned"]

def generate_random_id():
    return ''.join(random.choices(string.ascii_letters + string.digits, k=8))

def load_posts():
    return load_data(POSTS_FILE)

def save_posts(data):
    save_data(POSTS_FILE, data)

async def validate_session(session_string):
    try:
        async with Client(
            "temp_session",
            api_id=API_ID,
            api_hash=API_HASH,
            session_string=session_string,
            in_memory=True
        ) as client:
            me = await client.get_me()
            return me
    except Exception as e:
        logger.error(f"Session validation error: {e}")
        return None

async def get_user_sessions(user_id):
    sessions = []
    for f in os.listdir(SESSIONS_DIR):
        if f.startswith(f"{user_id}_"):
            with open(os.path.join(SESSIONS_DIR, f), 'r') as file:
                session_str = file.read()
                try:
                    async with Client(
                        f"temp_{user_id}",
                        api_id=API_ID,
                        api_hash=API_HASH,
                        session_string=session_str,
                        in_memory=True
                    ) as client:
                        me = await client.get_me()
                        sessions.append({
                            "file": f,
                            "username": me.username or me.first_name,
                            "id": me.id,
                            "phone": me.phone_number or "غير معروف",
                            "session_str": session_str
                        })
                except Exception as e:
                    logger.error(f"Session load error: {e}")
                    sessions.append({
                        "file": f,
                        "username": "جلسة غير صالحة",
                        "id": "غير معروف",
                        "phone": "غير معروف",
                        "session_str": session_str
                    })
    return sessions

async def save_user_session(user_id, session_string):
    session_name = f"{user_id}_{generate_random_id()}.session"
    with open(os.path.join(SESSIONS_DIR, session_name), 'w') as f:
        f.write(session_string)
    return session_name

async def delete_session_file(session_file):
    try:
        os.remove(os.path.join(SESSIONS_DIR, session_file))
        return True
    except Exception as e:
        logger.error(f"Delete session error: {e}")
        return False

async def delete_all_sessions(user_id=None):
    try:
        if user_id:
            for f in os.listdir(SESSIONS_DIR):
                if f.startswith(f"{user_id}_"):
                    os.remove(os.path.join(SESSIONS_DIR, f))
        else:
            for f in os.listdir(SESSIONS_DIR):
                os.remove(os.path.join(SESSIONS_DIR, f))
        return True
    except Exception as e:
        logger.error(f"Delete all sessions error: {e}")
        return False

async def create_backup():
    try:
        backup_name = f"backup_{datetime.now().strftime('%Y%m%d_%H%M%S')}.zip"
        backup_path = os.path.join(BACKUP_DIR, backup_name)
        
        with zipfile.ZipFile(backup_path, 'w') as zipf:
            for folder, _, files in os.walk(SESSIONS_DIR):
                for file in files:
                    zipf.write(os.path.join(folder, file), 
                              os.path.relpath(os.path.join(folder, file), SESSIONS_DIR))
            
            for file in [POSTS_FILE, DEVS_FILE, BANNED_FILE, SETTINGS_FILE]:
                if os.path.exists(file):
                    zipf.write(file)
        
        return backup_path
    except Exception as e:
        logger.error(f"Backup creation error: {e}")
        return None

async def restore_backup(file_path):
    try:
        with zipfile.ZipFile(file_path, 'r') as zipf:
            zipf.extractall()
        return True
    except Exception as e:
        logger.error(f"Restore backup error: {e}")
        return False

async def broadcast_message(client, text):
    devs_data = load_devs()
    banned_data = load_banned()
    sent = 0
    failed = 0
    
    for user_id in devs_data["devs"]:
        try:
            await client.send_message(user_id, text)
            sent += 1
        except Exception:
            failed += 1
    
    return sent, failed


async def run_auto_posting():
    global auto_posting_running
    auto_posting_running = True
    
    while auto_posting_running:
        try:
            posts = load_posts()
            now = datetime.now().strftime("%Y-%m-%d %H:%M")
            
            for user_id, user_posts in posts.items():
                for post_id, post in user_posts.items():
                    if post['next_post'] <= now and post['remaining'] > 0:
                        sessions = await get_user_sessions(int(user_id))
                        
                        
                        session_priority = {
                            "first": [],
                            "second": [],
                            "third": []
                        }
                        
                        for session in sessions:
                            if isinstance(session, dict):
                                if len(session_priority["first"]) < 1:
                                    session_priority["first"].append(session)
                                elif len(session_priority["second"]) < 2:
                                    session_priority["second"].append(session)
                                else:
                                    session_priority["third"].append(session)
                        
                      
                        for priority, sess_list in session_priority.items():
                            for session in sess_list:
                                try:
                                    async with Client(
                                        f"client_{user_id}_{post_id}",
                                        api_id=API_ID,
                                        api_hash=API_HASH,
                                        session_string=session["session_str"],
                                        in_memory=True
                                    ) as client:
                                        for chat in post['chats']:
                                            await client.send_message(chat, f"🔹\n\n{post['text']}")
                                except Exception as e:
                                    logger.error(f"Error posting with {priority} session: {e}")
                        
                      
                        post['remaining'] -= 1
                        if post['remaining'] > 0:
                            next_post = (datetime.now() + timedelta(minutes=post['interval'])).strftime("%Y-%m-%d %H:%M")
                            post['next_post'] = next_post
                            posts[user_id][post_id] = post
                            save_posts(posts)
            
            await asyncio.sleep(60)
        except Exception as e:
            logger.error(f"Auto-posting error: {e}")
            await asyncio.sleep(30)

@app.on_message(filters.command("start") & filters.private)
async def start_command(client: Client, message: Message):
    user_id = message.from_user.id
    
    if is_banned(user_id):
        return await message.reply_text("❌ تم حظرك من استخدام البوت!")
    
    settings = load_settings()
    if user_id != ADMIN_ID and settings.get("contact_enabled", True):
        await app.send_message(
            ADMIN_ID,
            f"👤 مستخدم جديد دخل البوت:\n\n"
            f"• الاسم: {message.from_user.mention}\n"
            f"• المعرف: @{message.from_user.username or 'N/A'}\n"
            f"• الايدي: {user_id}"
        )
    
    if is_dev(user_id):
        await message.reply_text(
            "مرحباً بك يا مطور! 👑\n"
            "استخدم الأزرار أدناه للتحكم في البوت",
            reply_markup=dev_keyboard
        )
    else:
        await message.reply_text(
            "مرحباً بك في بوت النشر التلقائي!\n"
            "للحصول على ميزات البوت الكاملة، يرجى تفعيل الاشتراك",
            reply_markup=user_keyboard
        )

@app.on_message(filters.regex("^🛒 تفعيل الاشتراك$") & filters.private)
async def activate_subscription(client: Client, message: Message):
    if is_banned(message.from_user.id):
        return
    
    await message.reply_text(
        "لتفعيل الاشتراك المدفوع، يرجى التواصل مع المطور الأساسي:\n"
        f"👤 المطور: @{app.get_me().username}\n"
        "سيقوم المطور بمساعدتك في تفعيل حسابك"
    )

@app.on_message(filters.regex("^📞 التواصل مع المطور$") & filters.private)
async def contact_dev(client: Client, message: Message):
    if is_banned(message.from_user.id):
        return
    
    settings = load_settings()
    if not settings.get("contact_enabled", True):
        return await message.reply_text("❌ التواصل مع المطور معطل حالياً!")
    
    me = await app.get_me()
    await message.reply_text(
        f"يمكنك التواصل مع المطور الأساسي عبر:\n"
        f"👤 @{me.username}\n"
        f"📧 أو عبر البوت الخاص به"
    )

@app.on_message(filters.regex("^➕ إضافة جلسة$") & filters.private)
async def add_session_start(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    user_id = message.from_user.id
    user_states[user_id] = {"step": "waiting_for_session"}
    await message.reply_text(
        "أرسل كود الجلسة الآن (يمكنك الحصول عليه من @genStr_Bot)\n"
        "أو /cancel للإلغاء"
    )

@app.on_message(filters.regex("^🗂 جلساتي$") & filters.private)
async def list_sessions(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    user_id = message.from_user.id
    sessions = await get_user_sessions(user_id)
    
    if not sessions:
        return await message.reply_text("ليس لديك أي جلسات مسجلة!")
    
    buttons = []
    for session in sessions:
        btn_text = f"{session['username']} (ID: {session['id']})"
        buttons.append([InlineKeyboardButton(btn_text, url=f"tg://user?id={session['id']}")])
    
    buttons.append([InlineKeyboardButton("🗑 حذف جميع الجلسات", callback_data="delete_all_sessions")])
    
    await message.reply_text(
        "📁 جلساتك:\n\nاضغط على أي جلسة للانتقال إلى حسابها",
        reply_markup=InlineKeyboardMarkup(buttons)
    )

@app.on_message(filters.regex("^🔍 فحص جلسة$") & filters.private)
async def check_session_start(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    user_id = message.from_user.id
    user_states[user_id] = {"step": "waiting_check_session"}
    await message.reply_text(
        "أرسل كود الجلسة لفحصها\n"
        "أو /cancel للإلغاء"
    )

@app.on_message(filters.regex("^📜 المنشورات$") & filters.private)
async def list_posts(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    user_id = str(message.from_user.id)
    posts = load_posts().get(user_id, {})
    
    if not posts:
        return await message.reply_text("ليس لديك أي منشورات مسجلة!")
    
    text = "📜 قائمة المنشورات:\n\n"
    for post_id, post in posts.items():
        text += f"🔹 المنشور: {post['text'][:30]}...\n"
        text += f"• المجموعات: {', '.join(post['chats'][:3])}{'...' if len(post['chats']) > 3 else ''}\n"
        text += f"• المدة: كل {post['interval']} دقيقة\n"
        text += f"• المتبقي: {post['remaining']}/{post['total']}\n"
        text += f"• النشر التالي: {post['next_post']}\n\n"
    
    await message.reply_text(text)

@app.on_message(filters.regex("^📢 إنشاء منشور$") & filters.private)
async def create_post_start(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    user_id = message.from_user.id
    user_states[user_id] = {"step": "waiting_post_text"}
    await message.reply_text(
        "أرسل نص المنشور الذي تريد نشره:\n"
        "أو /cancel للإلغاء"
    )

@app.on_message(filters.regex("^🗑 حذف منشور$") & filters.private)
async def delete_post_start(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    user_id = str(message.from_user.id)
    posts = load_posts().get(user_id, {})
    
    if not posts:
        return await message.reply_text("ليس لديك أي منشورات مسجلة!")
    
    buttons = []
    for post_id, post in posts.items():
        btn_text = post['text'][:20] + "..." if len(post['text']) > 20 else post['text']
        buttons.append([InlineKeyboardButton(btn_text, callback_data=f"del_{post_id}")])
    
    buttons.append([InlineKeyboardButton("🧹 حذف جميع المنشورات", callback_data="delete_all_posts")])
    
    await message.reply_text(
        "اختر المنشور الذي تريد حذفه:",
        reply_markup=InlineKeyboardMarkup(buttons)
    )

@app.on_callback_query(filters.regex("^del_"))
async def delete_post_confirm(client: Client, callback_query: CallbackQuery):
    if not is_dev(callback_query.from_user.id) or is_banned(callback_query.from_user.id):
        return await callback_query.answer("❌ ليس لديك صلاحية لهذا الإجراء!", show_alert=True)
    
    post_id = callback_query.data.split("_")[1]
    user_id = str(callback_query.from_user.id)
    
    posts = load_posts()
    if user_id in posts and post_id in posts[user_id]:
        del posts[user_id][post_id]
        save_posts(posts)
        await callback_query.message.edit_text("✅ تم حذف المنشور بنجاح!")
    else:
        await callback_query.message.edit_text("❌ المنشور غير موجود!")

@app.on_callback_query(filters.regex("^delete_all_posts$"))
async def delete_all_posts_confirm(client: Client, callback_query: CallbackQuery):
    if not is_dev(callback_query.from_user.id) or is_banned(callback_query.from_user.id):
        return await callback_query.answer("❌ ليس لديك صلاحية لهذا الإجراء!", show_alert=True)
    
    user_id = str(callback_query.from_user.id)
    posts = load_posts()
    
    if user_id in posts and posts[user_id]:
        posts[user_id] = {}
        save_posts(posts)
        await callback_query.message.edit_text("✅ تم حذف جميع المنشورات بنجاح!")
    else:
        await callback_query.message.edit_text("❌ لا توجد منشورات لحذفها!")

@app.on_message(filters.regex("^🧹 حذف جميع المنشورات$") & filters.private)
async def delete_all_posts(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    user_id = str(message.from_user.id)
    posts = load_posts()
    
    if user_id in posts and posts[user_id]:
        posts[user_id] = {}
        save_posts(posts)
        await message.reply_text("✅ تم حذف جميع المنشورات بنجاح!")
    else:
        await message.reply_text("❌ لا توجد منشورات لحذفها!")

@app.on_message(filters.regex("^▶️ بدء النشر$") & filters.private)
async def start_posting(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    global auto_posting_running
    if not auto_posting_running:
        asyncio.create_task(run_auto_posting())
        await message.reply_text("✅ تم بدء النشر التلقائي")
    else:
        await message.reply_text("ℹ️ النشر التلقائي يعمل بالفعل")

@app.on_message(filters.regex("^⏹ إيقاف النشر$") & filters.private)
async def stop_posting(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    global auto_posting_running
    auto_posting_running = False
    await message.reply_text("✅ تم إيقاف النشر التلقائي")

@app.on_message(filters.regex("^📊 إحصائيات$") & filters.private)
async def show_stats(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    user_id = str(message.from_user.id)
    sessions = await get_user_sessions(int(user_id))
    posts = load_posts().get(user_id, {})
    
    text = "📊 إحصائيات حسابك:\n\n"
    text += f"• عدد الجلسات: {len(sessions)}\n"
    text += f"• عدد المنشورات: {len(posts)}\n"
    
    if sessions:
        text += "\n🔹 معلومات الجلسات:\n"
        for i, session in enumerate(sessions[:3], 1):
            text += f"{i}. {session['username']} (ID: {session['id']})\n"
            text += f"   📞 الهاتف: {session['phone']}\n"
        if len(sessions) > 3:
            text += f"و {len(sessions)-3} جلسات أخرى\n"
    
    await message.reply_text(text)

# أوامر المطورين
@app.on_message(filters.regex("^👑 رفع مطور$") & filters.private)
async def promote_dev(client: Client, message: Message):
    if message.from_user.id != ADMIN_ID or is_banned(message.from_user.id):
        return await message.reply_text("❌ فقط المطور الأساسي يمكنه رفع مطورين!")
    
    user_id = message.from_user.id
    user_states[user_id] = {"step": "waiting_promote_user"}
    await message.reply_text(
        "أرسل معرف المستخدم أو أي رسالة منه لرفعه كمطور\n"
        "أو /cancel للإلغاء"
    )

@app.on_message(filters.regex("^🔻 تنزيل مطور$") & filters.private)
async def demote_dev(client: Client, message: Message):
    if message.from_user.id != ADMIN_ID or is_banned(message.from_user.id):
        return await message.reply_text("❌ فقط المطور الأساسي يمكنه تنزيل مطورين!")
    
    devs_data = load_devs()
    if len(devs_data["devs"]) <= 1:
        return await message.reply_text("❌ لا يمكن تنزيل جميع المطورين!")
    
    buttons = []
    for dev_id in devs_data["devs"]:
        if dev_id != ADMIN_ID:
            try:
                user = await client.get_users(dev_id)
                btn_text = f"{user.first_name} (@{user.username or 'N/A'})"
                buttons.append([InlineKeyboardButton(btn_text, url=f"tg://user?id={dev_id}")])
            except Exception:
                pass
    
    if not buttons:
        return await message.reply_text("❌ لا يوجد مطورين لتنزيلهم!")
    
    await message.reply_text(
        "اختر المطور الذي تريد تنزيله:",
        reply_markup=InlineKeyboardMarkup(buttons)
    )

@app.on_callback_query(filters.regex("^demote_"))
async def demote_dev_confirm(client: Client, callback_query: CallbackQuery):
    if callback_query.from_user.id != ADMIN_ID or is_banned(callback_query.from_user.id):
        return await callback_query.answer("❌ ليس لديك صلاحية لهذا الإجراء!", show_alert=True)
    
    dev_id = int(callback_query.data.split("_")[1])
    devs_data = load_devs()
    
    if dev_id in devs_data["devs"] and dev_id != ADMIN_ID:
        devs_data["devs"].remove(dev_id)
        save_devs(devs_data)
        await callback_query.message.edit_text(f"✅ تم تنزيل المستخدم {dev_id} من المطورين!")
    else:
        await callback_query.message.edit_text("❌ لا يمكن تنزيل هذا المستخدم!")

@app.on_message(filters.regex("^📜 قائمة المطورين$") & filters.private)
async def list_devs(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    devs_data = load_devs()
    text = "👑 قائمة المطورين:\n\n"
    
    for dev_id in devs_data["devs"]:
        try:
            user = await client.get_users(dev_id)
            text += f"• {user.first_name} (@{user.username or 'N/A'}) - {dev_id}\n"
        except Exception:
            text += f"• مستخدم غير معروف - {dev_id}\n"
    
    await message.reply_text(text)

@app.on_message(filters.regex("^🗑 حذف جلسة$") & filters.private)
async def delete_session_start(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    user_id = message.from_user.id
    sessions = await get_user_sessions(user_id)
    
    if not sessions:
        return await message.reply_text("ليس لديك أي جلسات مسجلة!")
    
    buttons = []
    for session in sessions:
        btn_text = f"{session['username']} (ID: {session['id']})"
        buttons.append([InlineKeyboardButton(btn_text, callback_data=f"delsess_{session['file']}")])
    
    await message.reply_text(
        "اختر الجلسة التي تريد حذفها:",
        reply_markup=InlineKeyboardMarkup(buttons)
    )

@app.on_callback_query(filters.regex("^delsess_"))
async def delete_session_confirm(client: Client, callback_query: CallbackQuery):
    if not is_dev(callback_query.from_user.id) or is_banned(callback_query.from_user.id):
        return await callback_query.answer("❌ ليس لديك صلاحية لهذا الإجرا��!", show_alert=True)
    
    session_file = callback_query.data.split("_")[1]
    if await delete_session_file(session_file):
        await callback_query.message.edit_text("✅ تم حذف الجلسة بنجاح!")
    else:
        await callback_query.message.edit_text("❌ فشل في حذف الجلسة!")

@app.on_callback_query(filters.regex("^delete_all_sessions$"))
async def delete_all_sessions_confirm(client: Client, callback_query: CallbackQuery):
    if not is_dev(callback_query.from_user.id) or is_banned(callback_query.from_user.id):
        return await callback_query.answer("❌ ليس لديك صلاحية لهذا الإجراء!", show_alert=True)
    
    if await delete_all_sessions(callback_query.from_user.id):
        await callback_query.message.edit_text("✅ تم حذف جميع الجلسات بنجاح!")
    else:
        await callback_query.message.edit_text("❌ فشل في حذف الجلسات!")

@app.on_message(filters.regex("^🗑 حذف جميع الجلسات$") & filters.private)
async def delete_all_sessions_cmd(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    if await delete_all_sessions(message.from_user.id):
        await message.reply_text("✅ تم حذف جميع الجلسات بنجاح!")
    else:
        await message.reply_text("❌ فشل في حذف الجلسات!")

@app.on_message(filters.regex("^📤 نسخة احتياطية$") & filters.private)
async def backup_command(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    backup_path = await create_backup()
    if backup_path:
        await message.reply_document(
            document=backup_path,
            caption="✅ تم إنشاء النسخة الاحتياطية بنجاح"
        )
    else:
        await message.reply_text("❌ فشل في إنشاء النسخة الاحتياطية!")

@app.on_message(filters.regex("^📥 استعادة نسخة$") & filters.private)
async def restore_command(client: Client, message: Message):
    if message.from_user.id != ADMIN_ID or is_banned(message.from_user.id):
        return await message.reply_text("❌ فقط المطور الأساسي يمكنه استعادة النسخ الاحتياطية!")
    
    user_id = message.from_user.id
    user_states[user_id] = {"step": "waiting_backup_file"}
    await message.reply_text(
        "أرسل ملف النسخة الاحتياطية الآن\n"
        "أو /cancel للإلغاء"
    )

@app.on_message(filters.regex("^🔔 تفعيل التواصل$") & filters.private)
async def enable_contact(client: Client, message: Message):
    if message.from_user.id != ADMIN_ID or is_banned(message.from_user.id):
        return await message.reply_text("❌ فقط المطور الأساسي يمكنه تفعيل التواصل!")
    
    settings = load_settings()
    settings["contact_enabled"] = True
    save_settings(settings)
    await message.reply_text("✅ تم تفعيل التواصل مع المطور!")

@app.on_message(filters.regex("^🔕 تعطيل التواصل$") & filters.private)
async def disable_contact(client: Client, message: Message):
    if message.from_user.id != ADMIN_ID or is_banned(message.from_user.id):
        return await message.reply_text("❌ فقط المطور الأساسي يمكنه تعطيل التواصل!")
    
    settings = load_settings()
    settings["contact_enabled"] = False
    save_settings(settings)
    await message.reply_text("✅ تم تعطيل التواصل مع المطور!")

@app.on_message(filters.regex("^🚫 حظر مستخدم$") & filters.private)
async def ban_user(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    user_id = message.from_user.id
    user_states[user_id] = {"step": "waiting_ban_user"}
    await message.reply_text(
        "أرسل معرف المستخدم أو أي رسالة منه لحظره\n"
        "أو /cancel للإلغاء"
    )

@app.on_message(filters.regex("^✅ الغاء حظر$") & filters.private)
async def unban_user(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    banned_data = load_banned()
    if not banned_data["banned"]:
        return await message.reply_text("❌ لا يوجد مستخدمين محظورين!")
    
    buttons = []
    for banned_id in banned_data["banned"]:
        try:
            user = await client.get_users(banned_id)
            btn_text = f"{user.first_name} (@{user.username or 'N/A'})"
            buttons.append([InlineKeyboardButton(btn_text, callback_data=f"unban_{banned_id}")])
        except Exception:
            pass
    
    if not buttons:
        return await message.reply_text("❌ لا يوجد مستخدمين محظورين!")
    
    await message.reply_text(
        "اختر المستخدم الذي تريد إلغاء حظره:",
        reply_markup=InlineKeyboardMarkup(buttons)
    )

@app.on_callback_query(filters.regex("^unban_"))
async def unban_user_confirm(client: Client, callback_query: CallbackQuery):
    if not is_dev(callback_query.from_user.id) or is_banned(callback_query.from_user.id):
        return await callback_query.answer("❌ ليس لديك صلاحية لهذا الإجراء!", show_alert=True)
    
    user_id = int(callback_query.data.split("_")[1])
    banned_data = load_banned()
    
    if user_id in banned_data["banned"]:
        banned_data["banned"].remove(user_id)
        save_banned(banned_data)
        await callback_query.message.edit_text(f"✅ تم إلغاء حظر المستخدم {user_id} بنجاح!")
    else:
        await callback_query.message.edit_text("❌ هذا المستخدم غير محظور!")

@app.on_message(filters.regex("^📜 المحظورين$") & filters.private)
async def list_banned(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    banned_data = load_banned()
    if not banned_data["banned"]:
        return await message.reply_text("❌ لا يوجد مستخدمين محظورين!")
    
    text = "📜 قائمة المحظورين:\n\n"
    for banned_id in banned_data["banned"]:
        try:
            user = await client.get_users(banned_id)
            text += f"• {user.first_name} (@{user.username or 'N/A'}) - {banned_id}\n"
        except Exception:
            text += f"• مستخدم غير معروف - {banned_id}\n"
    
    text += "\n🧹 يمكنك مسح جميع المحظورين باستخدام /clear_banned"
    await message.reply_text(text)

@app.on_message(filters.regex("^📣 إذاعة$") & filters.private)
async def broadcast_start(client: Client, message: Message):
    if message.from_user.id != ADMIN_ID or is_banned(message.from_user.id):
        return await message.reply_text("❌ فقط المطور الأساسي يمكنه الإذاعة!")
    
    user_id = message.from_user.id
    user_states[user_id] = {"step": "waiting_broadcast_message"}
    await message.reply_text(
        "أرسل الرسالة التي تريد إذاعتها لجميع المستخدمين\n"
        "أو /cancel للإلغاء"
    )

@app.on_message(filters.command("clear_banned") & filters.private)
async def clear_banned(client: Client, message: Message):
    if not is_dev(message.from_user.id) or is_banned(message.from_user.id):
        return await message.reply_text("❌ هذه الميزة متاحة فقط للمطورين!")
    
    save_banned({"banned": []})
    await message.reply_text("✅ تم مسح جميع المحظورين بنجاح!")

@app.on_message(filters.private & ~filters.command("start") & ~filters.command("cancel"))
async def handle_messages(client: Client, message: Message):
    user_id = message.from_user.id
    if user_id not in user_states:
        return
    
    state = user_states[user_id]
    
    if state["step"] == "waiting_for_session":
        session_str = message.text.strip()
        user = await validate_session(session_str)
        
        if user:
            session_name = await save_user_session(user_id, session_str)
            del user_states[user_id]
           
            if user_id != ADMIN_ID:
                me = await app.get_me()
                await app.send_message(
                    ADMIN_ID,
                    f"📥 تمت إضافة جلسة جديدة:\n\n"
                    f"• المستخدم: {message.from_user.mention}\n"
                    f"• ID: {message.from_user.id}\n"
                    f"• حساب الجلسة: {user.first_name} (@{user.username or 'N/A'})\n"
                    f"• ID الجلسة: {user.id}\n"
                    f"• رقم الهاتف: {user.phone_number or 'غير معروف'}"
                )
            
            await message.reply_text(
                f"✅ تم حفظ الجلسة بنجاح!\n\n"
                f"• اسم الحساب: {user.first_name}\n"
                f"• معرف الحساب: @{user.username or 'N/A'}\n"
                f"• ID الحساب: {user.id}\n"
                f"• رقم الهاتف: {user.phone_number or 'غير معروف'}",
                reply_markup=dev_keyboard if is_dev(user_id) else user_keyboard
            )
        else:
            await message.reply_text("❌ كود الجلسة غير صالح! أعد المحاولة")
    
    elif state["step"] == "waiting_check_session":
        session_str = message.text.strip()
        user = await validate_session(session_str)
        
        if user:
            del user_states[user_id]
            await message.reply_text(
                f"✅ الجلسة تعمل بنجاح!\n\n"
                f"• اسم الحساب: {user.first_name}\n"
                f"• معرف الحساب: @{user.username or 'N/A'}\n"
                f"• ID الحساب: {user.id}\n"
                f"• رقم الهاتف: {user.phone_number or 'غير معروف'}",
                reply_markup=dev_keyboard if is_dev(user_id) else user_keyboard
            )
        else:
            await message.reply_text("❌ الجلسة غير صالحة أو لا تعمل!")
    
    elif state["step"] == "waiting_promote_user":
        try:
            if message.forward_from:
                target_user = message.forward_from
            else:
                target_user = await client.get_users(message.text)
            
            devs_data = load_devs()
            if target_user.id in devs_data["devs"]:
                return await message.reply_text("❌ هذا المستخدم مطور بالفعل!")
            
            devs_data["devs"].append(target_user.id)
            save_devs(devs_data)
            del user_states[user_id]
            
            await message.reply_text(f"✅ تم رفع {target_user.first_name} كمطور بنجاح!")
            await client.send_message(
                target_user.id,
                "🎉 تم ترقيتك إلى مطور في البوت!\n"
                "الآن لديك صلاحيات الوصول إلى جميع ميزات البوت."
            )
        except Exception as e:
            await message.reply_text(f"❌ خطأ: {str(e)}")
    
    elif state["step"] == "waiting_ban_user":
        try:
            if message.forward_from:
                target_user = message.forward_from
            else:
                target_user = await client.get_users(message.text)
            
            if target_user.id == ADMIN_ID:
                return await message.reply_text("❌ لا يمكن حظر المطور الأساسي!")
            
            if is_dev(target_user.id):
                return await message.reply_text("❌ لا يمكن حظر مطور! قم بتنزيله أولاً")
            
            banned_data = load_banned()
            if target_user.id in banned_data["banned"]:
                return await message.reply_text("❌ هذا المستخدم محظور بالفعل!")
            
            banned_data["banned"].append(target_user.id)
            save_banned(banned_data)
            del user_states[user_id]
            
            await message.reply_text(f"✅ تم حظر {target_user.first_name} بنجاح!")
            try:
                await client.send_message(
                    target_user.id,
                    "❌ تم حظرك من استخدام هذا البوت!\n"
                    "للاستفسار، يمكنك التواصل مع المطور."
                )
            except Exception:
                pass
        except Exception as e:
            await message.reply_text(f"❌ خطأ: {str(e)}")
    
    elif state["step"] == "waiting_backup_file":
        if not message.document:
            return await message.reply_text("❌ يرجى إرسال ملف النسخة الاحتياطية!")
        
        try:
            download_path = await message.download()
            if await restore_backup(download_path):
                await message.reply_text("✅ تم استعادة النسخة الاحتياطية بنجاح!")
            else:
                await message.reply_text("❌ فشل في استعادة النسخة الاحتياطية!")
            os.remove(download_path)
        except Exception as e:
            await message.reply_text(f"❌ خطأ: {str(e)}")
        finally:
            del user_states[user_id]
    
    elif state["step"] == "waiting_broadcast_message":
        text = message.text
        del user_states[user_id]
        
        sent, failed = await broadcast_message(client, text)
        await message.reply_text(
            f"✅ تمت الإذاعة بنجاح!\n\n"
            f"• عدد المرسل لهم: {sent}\n"
            f"• عدد الفاشل: {failed}"
        )
    
    elif state["step"] == "waiting_post_text":
        user_states[user_id] = {
            "step": "waiting_post_chats",
            "text": message.text
        }
        await message.reply_text(
            "أرسل معرفات المجموعات/القنوات (مفصولة بمسافة)\n"
            "مثال: @group1 @channel2 @test123\n"
            "أو /cancel للإلغاء"
        )
    
    elif state["step"] == "waiting_post_chats":
        chats = [c for c in message.text.split() if c.startswith("@")]
        if not chats:
            return await message.reply_text("❌ لم يتم إدخال معرفات صالحة! أعد المحاولة")
        
        user_states[user_id] = {
            "step": "waiting_post_interval",
            "text": state["text"],
            "chats": chats
        }
        await message.reply_text(
            "أرسل المدة بين كل نشر (بالدقائق)\n"
            "مثال: 60 (لنشر كل ساعة)\n"
            "أو /cancel للإلغاء"
        )
    
    elif state["step"] == "waiting_post_interval":
        try:
            interval = int(message.text)
            if interval < 1:
                raise ValueError
        except ValueError:
            return await message.reply_text("❌ المدة يجب أن تكون رقم صحيح أكبر من الصفر!")
        
        user_states[user_id] = {
            "step": "waiting_post_count",
            "text": state["text"],
            "chats": state["chats"],
            "interval": interval
        }
        await message.reply_text(
            "أرسل عدد مرات النشر\n"
            "مثال: 10 (لنشر 10 مرات)\n"
            "أو /cancel للإلغاء"
        )
    
    elif state["step"] == "waiting_post_count":
        try:
            count = int(message.text)
            if count < 1:
                raise ValueError
        except ValueError:
            return await message.reply_text("❌ العدد يجب أن يكون رقم صحيح أكبر من الصفر!")
        
        posts = load_posts()
        user_posts = posts.get(str(user_id), {})
        post_id = generate_random_id()
        
        user_posts[post_id] = {
            "text": state["text"],
            "chats": state["chats"],
            "interval": state["interval"],
            "total": count,
            "remaining": count,
            "next_post": datetime.now().strftime("%Y-%m-%d %H:%M"),
            "created": datetime.now().strftime("%Y-%m-%d %H:%M")
        }
        
        posts[str(user_id)] = user_posts
        save_posts(posts)
        
        del user_states[user_id]
        await message.reply_text(
            f"✅ تم إنشاء المنشور بنجاح!\n\n"
            f"• النص: {state['text'][:50]}...\n"
            f"• عدد المجموعات: {len(state['chats'])}\n"
            f"• المدة بين النشر: {state['interval']} دقيقة\n"
            f"• عدد المرات: {count}",
            reply_markup=dev_keyboard if is_dev(user_id) else user_keyboard
        )


if __name__ == "__main__":
    print("\x53\x6f\x75\x72\x63\x65\x20\x63\x6f\x64\x65\x20\x77\x61\x73\x20\x64\x65\x76\x65\x6c\x6f\x70\x65\x64\x20\x62\x79\x3a\x20\x40\x54\x6f\x70\x56\x65\x47\x61")
    
    if not os.path.exists(POSTS_FILE):
        save_posts({})
    
    if not os.path.exists(DEVS_FILE):
        save_devs({"devs": [ADMIN_ID]})
    
    if not os.path.exists(BANNED_FILE):
        save_banned({"banned": []})
    
    if not os.path.exists(SETTINGS_FILE):
        save_settings({"contact_enabled": True})
    
    app.start()
    print("\x53\x6f\x75\x72\x63\x65\x20\x63\x6f\x64\x65\x20\x77\x61\x73\x20\x64\x65\x76\x65\x6c\x6f\x70\x65\x64\x20\x62\x79\x3a\x20\x40\x54\x6f\x70\x56\x65\x47\x61")
    idle()
    app.stop()
