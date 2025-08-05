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
api_id=23090097,
api_hash="3fb3746ba526a5b95fc8205d7015c0e5",
bot_token="7885256987:AAHvoBierdUJqzYfEwBt27Ig8Rocc9z_nIU", plugins=plugins).run()
