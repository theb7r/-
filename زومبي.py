import json
from pyrogram import Client, idle
from pyromod import listen
from pyrogram.types import ChatPrivileges, ChatPermissions

#
#==================================================
#
#███████╗███████╗██████╗  ██████╗ 
#╚══███╔╝██╔════╝██╔══██╗██╔═══██╗
#  ███╔╝ █████╗  ██████╔╝██║   ██║
# ███╔╝  ██╔══╝  ██╔══██╗██║   ██║
#███████╗███████╗██║  ██║╚██████╔╝
#╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝ 
#
#==================================================

bot = Client(
    "m4o",
    api_id=23090097,
    api_hash="3fb3746ba526a5b95fc8205d7015c0e5",
    bot_token="8170570512:AAENlrqx734hwzL09gfou5-rAw5wzuG2IZU",
    plugins=dict(root="MZombie")
    )


with open('/root/hamo/config.json', 'r', encoding='utf-8') as file:
    config = json.load(file)


sourse_dev = config['sourse_dev']


DEVS = []
DEVS.append(7834878009)
DEVS.append(7639557265)
owner_id = sourse_dev
bot_id = bot.bot_token.split(":")[0]


async def start_zombiebot():
    await bot.start()
    for hh in DEVS:
        try:
            await bot.send_message(hh, f"**◍ تم تشغيل الصانع بنجاح 🚦\n√**")
        except:
            pass
    await idle()

#
#==================================================
#
#███████╗███████╗██████╗  ██████╗ 
#╚══███╔╝██╔════╝██╔══██╗██╔═══██╗
#  ███╔╝ █████╗  ██████╔╝██║   ██║
# ███╔╝  ██╔══╝  ██╔══██╗██║   ██║
#███████╗███████╗██║  ██║╚██████╔╝
#╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝ 
#
#==================================================
