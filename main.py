from pyrogram import Client
from pyrogram import  filters,enums
from pyrogram.enums import ChatMemberStatus
from pyrogram.types import InlineKeyboardMarkup as mk, InlineKeyboardButton as btn
from pyrogram.types import ChatPermissions

from asSQL import Client as cl


data = cl("protect")
db = data['data']
db.create_table()
db.set("botname",['عهد' , 'عهود' , 'بوت' ,'عاهد' , 'عهو'])
db.set("bad_words",['كس','عير','طيز','زب','كسمك','كسختك','طيزك','مص'])

plugins = dict(root="plugins")

Client("x",
api_id=3895828,
api_hash="5229902a14b2512c35688aa152bd9f29",
bot_token="5836188784:AAEShq1ZHXnQ0Ll7khfJPmTzGQVrjdXFWgs", plugins=plugins).run()