from motor.motor_asyncio import AsyncIOMotorClient
from OWNER import DATABASE
moo = AsyncIOMotorClient(DATABASE)
db = moo["yyyousef"]
Bots = db["bots"]   
appp = {}
botdb = db.botdb
API_ID = 17490746
API_HASH = "ed923c3d59d699018e79254c6f8b6671"
