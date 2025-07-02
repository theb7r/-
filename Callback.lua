function RunBank(msg)
plugin = dofile("./Bank.lua")
if plugin and plugin.Gold and msg then
results = plugin.Gold(msg)
end
end
function RunCallBack(data)
if data and data.luatele and data.luatele == "updateChatMember" then
UserCheck = data.new_chat_member.member_id.user_id
local Result = bot.getUser(data.actor_user_id)
if data.new_chat_member.status.luatele == "chatMemberStatusLeft" and data.old_chat_member.status.luatele == "chatMemberStatusCreator" then
local Get_Chat = bot.getChat(data.chat_id)
local Info_Chats = bot.getSupergroupFullInfo(data.chat_id)
local UserInfo = bot.getUser(data.actor_user_id)
send(data.actor_user_id,0,'\nليش تركت كـروبـك\nName ▸ ['..UserInfo.first_name..'](tg://user?id='..data.actor_user_id..')\nId ▸ '..data.actor_user_id..'\nTime ▸ '..os.date("%p %I:%M:%S")..'\nDate ▸ '..os.date("%Y/%m/%d")..'\nLink ▸ ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')',"md",true) 
send(data.chat_id,0,'\nمالك الكـروب غادر 😨\nName ▸ ['..UserInfo.first_name..'](tg://user?id='..data.actor_user_id..')\nId ▸ '..data.actor_user_id..'\nTime ▸ '..os.date("%p %I:%M:%S")..'\nDate ▸ '..os.date("%Y/%m/%d")..'\n️',"md",true)

end
if data.new_chat_member.status.luatele == "chatMemberStatusCreator" and data.old_chat_member.status.luatele == "chatMemberStatusLeft" then
local UserInfo = bot.getUser(data.actor_user_id)
send(data.chat_id,0,'\nالكـروب مايسوى بدونك 😍 ( المالك )\nName ▸ ['..UserInfo.first_name..'](tg://user?id='..data.actor_user_id..')\nId ▸ '..data.actor_user_id..'\nTime ▸ '..os.date("%p %I:%M:%S")..'\nDate ▸ '..os.date("%Y/%m/%d")..'\n️',"md",true) 
end
if data.new_chat_member.status.luatele == "chatMemberStatusLeft" and data.old_chat_member.status.luatele == "chatMemberStatusAdministrator" then
if data.actor_user_id == UserCheck and tonumber(Gold) ~= UserCheck then
local Get_Chat = bot.getChat(data.chat_id)
local Info_Chats = bot.getSupergroupFullInfo(data.chat_id)
local UserInfo = bot.getUser(data.actor_user_id)
send(data.actor_user_id,0,'\nليه تركت رتبتك ( مشرف ) وغادرت\nName ▸ ['..UserInfo.first_name..'](tg://user?id='..data.actor_user_id..')\nId ▸ '..data.actor_user_id..'\nTime ▸ '..os.date("%p %I:%M:%S")..'\nDate ▸ '..os.date("%Y/%m/%d")..'\nLink ▸ ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')\n️',"md",true) 
send(data.chat_id,0,'\nمشرف غادر الكـروب 😞\nName ▸ ['..UserInfo.first_name..'](tg://user?id='..data.actor_user_id..')\nId ▸ '..data.actor_user_id..'\nTime ▸ '..os.date("%p %I:%M:%S")..'\nDate ▸ '..os.date("%Y/%m/%d")..'\n️',"md",true)
if Redis:get(Gold.."Gold:LogerGroupBot"..data.chat_id) then
local bains = bot.getUser(data.actor_user_id)
if bains.first_name then
klajq = '['..bains.first_name..'](tg://user?id='..data.actor_user_id..')'
else
klajq = 'لا يوجد'
end
if bains.username then
basgk = ''..bains.username..' '
else
basgk = 'لا يوجد'
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = Get_Chat.title, url = Info_Chats.invite_link.invite_link}, 
},
}
}
local Loger_Id = Redis:get(Gold.."Gold:Loger:BotGroub"..data.chat_id)
send(Loger_Id,0,'\n*⇜ مرحباً عزيزي المالك 🧚‍♀*\n*⇜ مشـرف غـادر الكــروب 😞*\nٴ*⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆*\n*⇜ اسمه :* '..klajq..' \n*⇜ ايديه :* '..data.actor_user_id..'\n*⇜ يوزره :* @'..basgk..'',"md",false, false, false, false, reply_markup)
end
end
end
if data.new_chat_member.member_id.user_id == tonumber(Gold) or data.old_chat_member.member_id.user_id == tonumber(Gold) then
if data.new_chat_member.status.rights.can_delete_messages == true or data.old_chat_member.status.rights.can_delete_messages == true then
local chat_id = data.chat_id
local who_promot = data.actor_user_id
--code start
if Redis:sismember(Gold..'Black:listBan:',chat_id) then ---check if ban
send(chat_id,0,"\n*⇜ هذه الكــروب محظور سوف اغادر جاوو*","md",true)  
bot.leaveChat(chat_id)
end ---end check if ban
local Info_Chats = bot.getSupergroupFullInfo(chat_id) ---check if count is true
if tonumber(Info_Chats.member_count) < tonumber((Redis:get(Gold..'Gold:Num:Add:Bot') or 0)) then
send(chat_id,0,'• عدد الاعضاء قليل لا يمكن تفعيل الكــروب\n يجب ان يكون اكثر من '..Redis:get(Gold..'Gold:Num:Add:Bot'),"md",true)
bot.leaveChat(chat_id)
end---end check if count is true
if not Redis:get(Gold.."Gold:BotFree") and (tonumber(who_promot) ~= tonumber(6642636501) or tonumber(who_promot) ~= tonumber(6642636501) or tonumber(who_promot) ~= tonumber(Sudo_Id)) then
return send(chat_id,0,"\n⇜ الوضع الخدمي تم تعطيله من قبل مطور البوت ","md",true)  
end
if not Redis:sismember(Gold.."Gold:ChekBotAdd", chat_id) then ---done active
local Get_Chat = bot.getChat(chat_id)
local Info_Chats = bot.getSupergroupFullInfo(chat_id)
local UserInfo = bot.getUser(who_promot)
local names = Get_Chat.title
if names and (names:match("سكس ") or names:match(" سكس") or names:match("sex") or names:match("porn") or names:match("كحاب") or names:match("قحاب") or names:match("كحب") or names:match("قحب") or names:match("ورعان") or names:match("سوالب") or names:match("سالب") or names:match("دياث") or names:match("ديوث") or names:match("محارم") or names:match("فضائح") or names:match("عراب") or names:match("👅")) then
if Redis:get(Gold.."Gold:LogerBot") then
local Loger_Id = Redis:get(Gold.."Gold:Loger:Groub")
send(Loger_Id,0,'\n*⇜ محـاولة تفعيـل الكــروب إباحـي فاشلـه 🔞*\n*⇜ من قبل :* ['..UserInfo.first_name..'](tg://user?id='..who_promot..')\n*⇜ معلـومـات القـروب :*\n*⇜ الرابـط :* ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')\n*⇜ ايـدي القـروب :* `'..chat_id..'`',"md",true, false, false, false, reply_markup)
else
send(Sudo_Id,0,'\n*⇜ محـاولة تفعيـل الكــروب إباحـي فاشلـه 🔞*\n*⇜ من قبل :* ['..UserInfo.first_name..'](tg://user?id='..who_promot..')\n*⇜ معلـومـات القـروب :*\n*⇜ الرابـط :* ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')\n*⇜ ايـدي القـروب :* `'..chat_id..'`',"md",true, false, false, false, reply_markup)
end
send(chat_id,0,"\n*⇜ عذراً .. لا يمكنك تفعيـل البـوت فـي مجموعـات اباحيـة 🔞\n⇜ سـوف اقـوم بالمغـادرة .. فـوراً\n⇜ والتبليـغ عـن مجموعتـك 🛃\n\n⇜ الا تخـاف الله رب العالميـن ؟!*","md",true)
bot.leaveChat(chat_id)
return false
end
----
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = Get_Chat.title, url = Info_Chats.invite_link.invite_link}, 
},
}
}
if Redis:get(Gold.."Gold:LogerBot") then
local Loger_Id = Redis:get(Gold.."Gold:Loger:Groub")
send(Loger_Id,0,'\n*⇜ تم تفعيل كــروب جديد \n⇜ من قبل :* ['..UserInfo.first_name..'](tg://user?id='..who_promot..')\n*⇜ معلومات القروب :*\n*⇜ عدد الاعضاء :* '..Info_Chats.member_count..'\n*⇜ عدد الادمنيه :* '..Info_Chats.administrator_count..'\n*⇜ عدد المطرودين :* '..Info_Chats.banned_count..'\n*⇜ عدد المقيدين :* '..Info_Chats.restricted_count..'\n*⇜ الرابط :* ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')\n*⇜ ايدي القروب :* `'..chat_id..'`',"md",true, false, false, false, reply_markup)
else
send(Sudo_Id,0,'\n*⇜ تم تفعيل كــروب جديد \n⇜ من قبل :* ['..UserInfo.first_name..'](tg://user?id='..who_promot..')\n*⇜ معلومات القروب :*\n*⇜ عدد الاعضاء :* '..Info_Chats.member_count..'\n*⇜ عدد الادمنيه :* '..Info_Chats.administrator_count..'\n*⇜ عدد المطرودين :* '..Info_Chats.banned_count..'\n*⇜ عدد المقيدين :* '..Info_Chats.restricted_count..'\n*⇜ الرابط :* ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')\n*⇜ ايدي القروب :* `'..chat_id..'`',"md",true, false, false, false, reply_markup)
end
-----
Redis:set(Gold.."Gold:Alzwag:Chat"..chat_id,"true")
Redis:set(Gold.."Gold:Aldel:Chat"..chat_id,"true")
Redis:set(Gold.."NSFW:"..chat_id,"true")
Redis:set(Gold..'tagallgroup'..chat_id,'open') 
Redis:set(Gold.."Gold:Status:Link"..chat_id,true) 
Redis:set(Gold.."Gold:Status:Games"..chat_id,true) 
Redis:set(Gold.."replayallbot"..chat_id,true)
Redis:set(Gold.."rebomsg"..chat_id,true)
Redis:set(Gold.."Gold:AlThther:Chat"..chat_id,"true")
Redis:set(Gold.."Gold:Status:Welcome"..chat_id,true) 
Redis:set(Gold.."Gold:AlThther:Chat"..chat_id,"true")
Redis:set(Gold..'tagall@all'..chat_id,'open') 
Redis:set(Gold.."Gold:Status:IdPhoto"..chat_id,true) 
Redis:del(Gold.."spammkick"..chat_id)
Redis:sadd(Gold.."Gold:ChekBotAdd",chat_id)
Redis:set(Gold.."Gold:Status:Id"..chat_id,true)
Redis:set(Gold.."Gold:Status:Reply"..chat_id,true)
Redis:set(Gold.."Gold:Status:ReplySudo"..chat_id,true)
Redis:set(Gold.."Gold:Status:BanId"..chat_id,true)
Redis:set(Gold.."Gold:Status:SetId"..chat_id,true)
Redis:set(Gold.."Gold:Lock:phshar"..chat_id,true)
Redis:del(Gold.."idnotmem"..chat_id)
-----
local Info_Members = bot.getSupergroupMembers(chat_id, "Administrators", "*", 0, 200)
local List_Members = Info_Members.members
for k, v in pairs(List_Members) do
if Info_Members.members[k].bot_info == nil then
if Info_Members.members[k].status.luatele == "chatMemberStatusCreator" then
Redis:sadd(Gold.."Gold:TheBasicsQ:Group"..chat_id ,v.member_id.user_id)
Redis:sadd(Gold.."Gold:MalekAsase:Group"..chat_id ,v.member_id.user_id)
else
Redis:sadd(Gold.."Gold:Addictive:Group"..chat_id ,v.member_id.user_id) 
end
end
end
-----
local txt = '*⇜ بواسطـة* 「 ['..UserInfo.first_name..'](tg://user?id='..who_promot..')⁪⁬‌‌‌‌ 」\n*⇜ تم تفعيل المجموعة* ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..') *تلقائيـاً*\n*⇜ تم ترقية المـالك ← ❨ مالك اساسي ❩* \n*⇜ المشرفين ك الصلاحيه ← ❨ مالك ❩*\n*⇜ بقية المشرفين ← ❨ ادمنيه ❩*\n\n*⇜ اضغـط* /Commands *لعـرض اوامـر البـوت*'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '• الإشعـارات الذكيـه 💡 •', data = who_promot..'/helpmalk'},
},
}
}
return send(chat_id, 0 , txt, 'md', true , false, false, false, reply_markup)
end ---end done active
--code end
end
end
end
-----------------
if data and data.luatele and data.luatele == "updateNewInlineCallbackQuery" then
local Text = bot.base64_decode(data.payload.data)
if Text and Text:match('/Hmsa1@(%d+)@(%d+)/(%d+)') then
local ramsesadd = {string.match(Text,"^/Hmsa1@(%d+)@(%d+)/(%d+)$")}
if tonumber(data.sender_user_id) == tonumber(ramsesadd[1]) or tonumber(ramsesadd[2]) == tonumber(data.sender_user_id) then
local inget = Redis:get(Gold..'hmsabots'..ramsesadd[3]..data.sender_user_id)
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape(inget)..'&show_alert=true')
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('𖦹 هذه الهمسه ليست لك 𖦹')..'&show_alert=true')
end
end
end
if data and data.luatele and data.luatele == "updateNewInlineQuery" then
local Text = data.query
if Text and Text:match("^(.*) @(.*)$")  then
local username = {string.match(Text,"^(.*) @(.*)$")}
local UserId_Info = bot.searchPublicChat(username[2])
if UserId_Info.id then
local idnum = math.random(1,64)
local input_message_content = {message_text = '*- هـذه الهمسـة لـ الحلـو (* [@'..username[2]..'] *)*\n*- هـو اللـي يقـدر يشـوفهـا 🧧*', parse_mode = 'Markdown'}	
local reply_markup = {inline_keyboard={{{text = 'فتـح الهمسـة 🗳', callback_data = '/Hmsa1@'..data.sender_user_id..'@'..UserId_Info.id..'/'..idnum}}}}	
local resuult = {{type = 'article', id = idnum, title = 'هذه همسه سرية الى [@'..username[2]..']', input_message_content = input_message_content, reply_markup = reply_markup}}	
https.request("https://api.telegram.org/bot"..Token..'/answerInlineQuery?inline_query_id='..data.id..'&results='..JSON.encode(resuult))
Redis:set(Gold..'hmsabots'..idnum..UserId_Info.id,username[1])
Redis:set(Gold..'hmsabots'..idnum..data.sender_user_id,username[1])
end
end
end
if data and data.luatele and data.luatele == "updateSupergroup" then
local Get_Chat = bot.getChat('-100'..data.supergroup.id)
if data.supergroup.status.luatele == "chatMemberStatusBanned" then
Redis:srem(Gold.."Gold:ChekBotAdd",'-100'..data.supergroup.id)
if Redis:get(Gold.."Gold:LogerBot") then
local Loger_Id = Redis:get(Gold.."Gold:Loger:Groub")
return send(Loger_Id,0,'\n*⇜ تم طرد البوت من كــروب جديد*\n*⇜ اسم الكــروب :* '..Get_Chat.title..'\n*⇜ ايدي الكــروب :* `-100'..data.supergroup.id..'`\n*⇜ تم مسح جميع البيانات المتعلقة بالكــروب*',"md")
else
return send(Sudo_Id,0,'\n*⇜ تم طرد البوت من كــروب جديد*\n*⇜ اسم الكــروب :* '..Get_Chat.title..'\n*⇜ ايدي الكــروب :* `-100'..data.supergroup.id..'`\n*⇜ تم مسح جميع البيانات المتعلقة بالكــروب*',"md")
end
end
elseif data and data.luatele and data.luatele == "updateMessageSendSucceeded" then
local msg = data.message
local Chat = msg.chat_id
if msg.content.text then
text = msg.content.text.text
else 
text = nil
end
if msg.content.video_note then
if msg.content.video_note.video.remote.id == Redis:get(Gold.."Gold:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(Gold.."Gold:PinMsegees:"..msg.chat_id)
end
elseif msg.content.photo then
if msg.content.photo.sizes[1].photo.remote.id then
idPhoto = msg.content.photo.sizes[1].photo.remote.id
elseif msg.content.photo.sizes[2].photo.remote.id then
idPhoto = msg.content.photo.sizes[2].photo.remote.id
elseif msg.content.photo.sizes[3].photo.remote.id then
idPhoto = msg.content.photo.sizes[3].photo.remote.id
end
if idPhoto == Redis:get(Gold.."Gold:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(Gold.."Gold:PinMsegees:"..msg.chat_id)
end
elseif msg.content.sticker then 
if msg.content.sticker.sticker.remote.id == Redis:get(Gold.."Gold:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(Gold.."Gold:PinMsegees:"..msg.chat_id)
end
elseif msg.content.voice_note then 
if msg.content.voice_note.voice.remote.id == Redis:get(Gold.."Gold:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(Gold.."Gold:PinMsegees:"..msg.chat_id)
end
elseif msg.content.video then 
if msg.content.video.video.remote.id == Redis:get(Gold.."Gold:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(Gold.."Gold:PinMsegees:"..msg.chat_id)
end
elseif msg.content.animation then 
if msg.content.animation.animation.remote.id ==  Redis:get(Gold.."Gold:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(Gold.."Gold:PinMsegees:"..msg.chat_id)
end
elseif msg.content.document then
if msg.content.document.document.remote.id == Redis:get(Gold.."Gold:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(Gold.."Gold:PinMsegees:"..msg.chat_id)
end
elseif msg.content.audio then
if msg.content.audio.audio.remote.id == Redis:get(Gold.."Gold:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(Gold.."Gold:PinMsegees:"..msg.chat_id)
end
elseif text then
if text == Redis:get(Gold.."Gold:PinMsegees:"..msg.chat_id) then
bot.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(Gold.."Gold:PinMsegees:"..msg.chat_id)
end
end
if msg.content.sticker then
Redis:sadd(Gold.."Gold:all:sticker"..msg.chat_id, msg.id)
Redis:scard(Gold.."Gold:all:sticker"..msg.chat_id)  
end
if msg.content.video_note or msg.content.video then
Redis:sadd(Gold.."Gold:all:video"..msg.chat_id, msg.id)
Redis:scard(Gold.."Gold:all:video"..msg.chat_id)  
end
if msg.content.document then
Redis:sadd(Gold.."Gold:all:docu"..msg.chat_id, msg.id)
Redis:scard(Gold.."Gold:all:docu"..msg.chat_id)  
end
if msg.content.audio then
Redis:sadd(Gold.."Gold:all:audio"..msg.chat_id, msg.id)
Redis:scard(Gold.."Gold:all:audio"..msg.chat_id)  
end
if msg.content.voice_note then
Redis:sadd(Gold.."Gold:all:voice"..msg.chat_id, msg.id)
Redis:scard(Gold.."Gold:all:voice"..msg.chat_id)  
end
if msg.content.photo then
Redis:sadd(Gold.."Gold:all:photo"..msg.chat_id, msg.id)
Redis:scard(Gold.."Gold:all:photo"..msg.chat_id)  
end
if msg.content.animation then
Redis:sadd(Gold.."Gold:all:anim"..msg.chat_id, msg.id)
Redis:scard(Gold.."Gold:all:anim"..msg.chat_id)  
end
if msg.content.video_note or msg.content.document or msg.content.audio or msg.content.video or msg.content.voice_note or msg.content.sticker or msg.content.animation or msg.content.photo then
Redis:sadd(Gold.."Gold:allM"..msg.chat_id, msg.id)
if Redis:get(Gold.."Gold:Status:Del:Media"..msg.chat_id) then    
local Numbardel = Redis:get(Gold.."Gold:allM:numdel"..msg.chat_id) or 200
local gmedia = Redis:scard(Gold.."Gold:allM"..msg.chat_id)  
if tonumber(gmedia) >= tonumber(Numbardel) then
local liste = Redis:smembers(Gold.."Gold:allM"..msg.chat_id)
for k,v in pairs(liste) do
local Mesge = v
if Mesge then
t = "⇜ تم مسح ( "..k.." ) من الوسائط تلقائياً\n⇜ يمكنك تعطيل الميزة باستخدام الامر ( `تعطيل المسح التلقائي` )"
bot.deleteMessages(msg.chat_id,{[1]= Mesge})
end
end
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Teext = '⇜ من ['..UserInfo.first_name..'](tg://user?id='..msg.sender_id.user_id..')\n'
send(msg.chat_id,msg.id, Teext..t,"md",true)
Redis:del(Gold.."Gold:allM"..msg.chat_id)
end
end
end
elseif data and data.luatele and data.luatele == "updateNewMessage" then
if data.message.content.luatele == "messageChatDeleteMember" or data.message.content.luatele == "messageChatAddMembers" or data.message.content.luatele == "messagePinMessage" or data.message.content.luatele == "messageChatChangeTitle" or data.message.content.luatele == "messageChatJoinByLink" then
if Redis:get(Gold.."Gold:Lock:tagservr"..data.message.chat_id) then
bot.deleteMessages(data.message.chat_id,{[1]= data.message.id})
end
end 
if tonumber(data.message.sender_user_id) == tonumber(Gold) then
return false
end
if chat_type(data.message.chat_id) == "GroupBot" and Redis:sismember(Gold.."Gold:ChekBotAdd",data.message.chat_id) then
msg = data.message
local msg_chat_id = msg.chat_id
local msg_reply_id = msg.reply_to_message_id
local msg_user_send_id = msg.sender_id.user_id
local msg_id = msg.id
local text = nil
if msg.date and msg.date < tonumber(os.time() - 15) then
return false
end
if msg.content.text then
text = msg.content.text.text
end
if tonumber(msg.sender_id.user_id) == tonumber(Gold) then
print('This is reply for Bot')
return false
end
if msg.sender_id.luatele == "messageSenderChat" then
if Redis:sismember(Gold.."Gold:SilentGroup:Group"..msg_chat_id,msg.sender_id.chat_id) then
bot.deleteMessages(msg.chat_id,{[1]= msg.id})
end
if Redis:get(Gold.."Gold:Lock:SenderChat"..msg_chat_id) then
local m = Redis:get(Gold.."chadmin"..msg_chat_id) 
if msg.sender_id.chat_id == tonumber(m) or msg.sender_id.chat_id == tonumber(msg_chat_id) then
return false
else
bot.deleteMessages(msg.chat_id,{[1]= msg.id})
end
end
return false
end
if tonumber(msg.sender_id.user_id) == 6642636501 then
msg.Name_Controller = 'مبرمج السورس🎖️'
msg.The_Controller = 1
elseif tonumber(msg.sender_id.user_id) == 6642636501 or tonumber(msg.sender_id.user_id) == 6642636501 then
msg.Name_Controller = 'مطور السورس🎖️'
msg.The_Controller = 1
elseif The_ControllerAll(msg.sender_id.user_id) == true then  
msg.The_Controller = 1
msg.Name_Controller = 'مطور اساسي🎖️'
elseif Redis:sismember(Gold.."Gold:ControlAll:Groups",msg.sender_id.user_id) == true then
msg.The_Controller = 2
msg.Name_Controller = 'مطور اساسي²🎖️'
elseif Redis:sismember(Gold.."Gold:DevelopersQ:Groups",msg.sender_id.user_id) == true then
msg.The_Controller = 2
msg.Name_Controller = 'مطور ثانوي🎖️️'
elseif Redis:sismember(Gold.."Gold:MevelopersQ:Groups",msg.sender_id.user_id) == true then
msg.The_Controller = 2
msg.Name_Controller = 'مطوره ثانويه🎖️️'
elseif Redis:sismember(Gold.."Gold:Developers:Groups",msg.sender_id.user_id) == true then
msg.The_Controller = 3
msg.Name_Controller = Redis:get(Gold..'Gold:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(Gold.."Gold:Developer:Bot:Reply"..msg.chat_id) or 'المطور'
elseif Redis:sismember(Gold.."Gold:Mevelopers:Groups",msg.sender_id.user_id) == true then
msg.The_Controller = 3
msg.Name_Controller = Redis:get(Gold..'Gold:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(Gold.."Gold:Meveloper:Bot:Reply"..msg.chat_id) or 'المطـــوره '
elseif Redis:sismember(Gold.."Gold:MalekAsase:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 444
msg.Name_Controller = Redis:get(Gold..'Gold:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(Gold.."Gold:PresidentQ:Group:Reply"..msg.chat_id) or 'مالك اساسي'
elseif Redis:sismember(Gold.."Gold:MalemAsase:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 444
msg.Name_Controller = Redis:get(Gold..'Gold:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(Gold.."Gold:PresidentQ:Group:Reply"..msg.chat_id) or 'مالكه اساسيه'
elseif Redis:sismember(Gold.."Gold:TheBasicsQ:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 44
msg.Name_Controller = Redis:get(Gold..'Gold:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(Gold.."Gold:PresidentQ:Group:Reply"..msg.chat_id) or 'المالك'
elseif Redis:sismember(Gold.."Gold:TheMasicsQ:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 44
msg.Name_Controller = Redis:get(Gold..'Gold:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(Gold.."Gold:MresidentQ:Group:Reply"..msg.chat_id) or 'المــــــالكـه 🌟 '
elseif Redis:sismember(Gold.."Gold:TheBasics:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 4
msg.Name_Controller = Redis:get(Gold..'Gold:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(Gold.."Gold:President:Group:Reply"..msg.chat_id) or 'المنشئ الاساسي'
elseif Redis:sismember(Gold.."Gold:TheMasics:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 4
msg.Name_Controller = Redis:get(Gold..'Gold:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(Gold.."Gold:Mresident:Group:Reply"..msg.chat_id) or 'المنشئـه الاساسيـه 🌟'
elseif Redis:sismember(Gold.."Gold:Originators:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 5
msg.Name_Controller = Redis:get(Gold..'Gold:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(Gold.."Gold:Constructor:Group:Reply"..msg.chat_id) or 'المنشئ'
elseif Redis:sismember(Gold.."Gold:Origimators:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 5
msg.Name_Controller = Redis:get(Gold..'Gold:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(Gold.."Gold:Monstructor:Group:Reply"..msg.chat_id) or 'المنشئـه 🌟'
elseif Redis:sismember(Gold.."Gold:Managers:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 6
msg.Name_Controller = Redis:get(Gold..'Gold:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(Gold.."Gold:Manager:Group:Reply"..msg.chat_id) or 'المدير'
elseif Redis:sismember(Gold.."Gold:Mamagers:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 6
msg.Name_Controller = Redis:get(Gold..'Gold:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(Gold.."Gold:Mamager:Group:Reply"..msg.chat_id) or 'المــــديره 🌟 '
elseif Redis:sismember(Gold.."Gold:Addictive:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 7
msg.Name_Controller = Redis:get(Gold..'Gold:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(Gold.."Gold:Admin:Group:Reply"..msg.chat_id) or 'الادمن'
elseif Redis:sismember(Gold.."Gold:Mddictive:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 7
msg.Name_Controller = Redis:get(Gold..'Gold:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(Gold.."Gold:Mdmin:Group:Reply"..msg.chat_id) or 'الادمـــــونـه 🌟 '
elseif Redis:sismember(Gold.."Gold:Distinguished:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 8
msg.Name_Controller = Redis:get(Gold..'Gold:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(Gold.."Gold:Vip:Group:Reply"..msg.chat_id) or 'مميز'
elseif Redis:sismember(Gold.."Gold:Mistinguished:Group"..msg.chat_id,msg.sender_id.user_id) == true then
msg.The_Controller = 8
msg.Name_Controller = Redis:get(Gold..'Gold:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(Gold.."Gold:Mip:Group:Reply"..msg.chat_id) or 'المميــزه ⭐️ '
elseif tonumber(msg.sender_id.user_id) == tonumber(Gold) then
msg.The_Controller = 9
else
msg.The_Controller = 10
msg.Name_Controller = Redis:get(Gold..'Gold:SetRt'..msg.chat_id..':'..msg.sender_id.user_id) or Redis:get(Gold.."Gold:Mempar:Group:Reply"..msg.chat_id) or 'عضو'
end 
if msg.The_Controller == 1 then  
msg.ControllerBot = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 then
msg.Controll2 = true
msg.DevelopersQ = true
msg.MevelopersQ = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 or msg.The_Controller == 3 then
msg.Developers = true
msg.Mevelopers = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 or msg.The_Controller == 3 or msg.The_Controller == 444 or msg.The_Controller == 9 then
msg.MalekAsase = true
msg.MalemAsase = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 or msg.The_Controller == 3 or msg.The_Controller == 444 or msg.The_Controller == 9 then
msg.Cleener = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 or msg.The_Controller == 3 or msg.The_Controller == 444 or msg.The_Controller == 44 or msg.The_Controller == 9 then
msg.TheBasicsQ = true
msg.TheMasicsQ = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 or msg.The_Controller == 3 or msg.The_Controller == 444 or msg.The_Controller == 44 or msg.The_Controller == 4 or msg.The_Controller == 9 then
msg.TheBasics = true
msg.TheMasics = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 or msg.The_Controller == 3 or msg.The_Controller == 444 or msg.The_Controller == 44 or msg.The_Controller == 4 or msg.The_Controller == 5 or msg.The_Controller == 9 then
msg.Originators = true
msg.Origimators = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 or msg.The_Controller == 3 or msg.The_Controller == 444 or msg.The_Controller == 44 or msg.The_Controller == 4 or msg.The_Controller == 5 or msg.The_Controller == 6 or msg.The_Controller == 9 then
msg.Managers = true
msg.Mamagers = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 or msg.The_Controller == 3 or msg.The_Controller == 444 or msg.The_Controller == 44 or msg.The_Controller == 4 or msg.The_Controller == 5 or msg.The_Controller == 6 or msg.The_Controller == 7 or msg.The_Controller == 9 then
msg.Addictive = true
msg.Mddictive = true
end
if msg.The_Controller == 1 or msg.The_Controller == 2 or msg.The_Controller == 3 or msg.The_Controller == 444 or msg.The_Controller == 44 or msg.The_Controller == 4 or msg.The_Controller == 5 or msg.The_Controller == 6 or msg.The_Controller == 7 or msg.The_Controller == 8 or msg.The_Controller == 9 then
msg.Distinguished = true
msg.Mistinguished = true
end
RunBank(msg)
------------------------------------------------------------------
end
File_Bot_Run(data.message,data.message)
elseif data and data.luatele and data.luatele == "updateMessageEdited" then
-- data.chat_id -- data.message_id
local Message_Edit = bot.getMessage(data.chat_id, data.message_id)
File_Bot_Run(Message_Edit,Message_Edit)
if tonumber(Message_Edit.sender_id.user_id) == 1895219306 then
data.The_Controller = 1
elseif tonumber(Message_Edit.sender_id.user_id) == 925972505 then
data.The_Controller = 1
elseif The_ControllerAll(Message_Edit.sender_id.user_id) == true then  
data.The_Controller = 1
elseif Redis:sismember(Gold.."Gold:ControlAll:Groups",Message_Edit.sender_id.user_id) == true then
data.The_Controller = 2
elseif Redis:sismember(Gold.."Gold:DevelopersQ:Groups",Message_Edit.sender_id.user_id) == true then
data.The_Controller = 2
elseif Redis:sismember(Gold.."Gold:MevelopersQ:Groups",Message_Edit.sender_id.user_id) == true then
data.The_Controller = 2
elseif Redis:sismember(Gold.."Gold:Developers:Groups",Message_Edit.sender_id.user_id) == true then
data.The_Controller = 3
elseif Redis:sismember(Gold.."Gold:Mevelopers:Groups",Message_Edit.sender_id.user_id) == true then
data.The_Controller = 3
elseif Redis:sismember(Gold.."Gold:TheBasicsQ:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 44
elseif Redis:sismember(Gold.."Gold:TheMasicsQ:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 44
elseif Redis:sismember(Gold.."Gold:TheBasics:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 4
elseif Redis:sismember(Gold.."Gold:TheMasics:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 4
elseif Redis:sismember(Gold.."Gold:Originators:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 5
elseif Redis:sismember(Gold.."Gold:Origimators:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 5
elseif Redis:sismember(Gold.."Gold:Managers:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 6
elseif Redis:sismember(Gold.."Gold:Mamagers:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 6
elseif Redis:sismember(Gold.."Gold:Addictive:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 7
elseif Redis:sismember(Gold.."Gold:Mddictive:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 7
elseif Redis:sismember(Gold.."Gold:Distinguished:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 8
elseif Redis:sismember(Gold.."Gold:Mistinguished:Group"..data.chat_id,Message_Edit.sender_id.user_id) == true then
data.The_Controller = 8
elseif tonumber(Message_Edit.sender_id.user_id) == tonumber(Gold) then
data.The_Controller = 9
else
data.The_Controller = 10
end  
if data.The_Controller == 1 then  
data.ControllerBot = true
end
if data.The_Controller == 1 or data.The_Controller == 2 then
data.Controll2 = true
data.DevelopersQ = true
data.MevelopersQ = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 then
data.Developers = true
data.Mevelopers = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 9 then
data.TheBasicsQ = true
data.TheMasicsQ = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 9 then
data.TheBasics = true
data.TheMasics = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 5 or data.The_Controller == 9 then
data.Originators = true
data.Origimators = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 5 or data.The_Controller == 6 or data.The_Controller == 9 then
data.Managers = true
data.Mamagers = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 5 or data.The_Controller == 6 or data.The_Controller == 7 or data.The_Controller == 9 then
data.Addictive = true
data.Mddictive = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 5 or data.The_Controller == 6 or data.The_Controller == 7 or data.The_Controller == 8 or data.The_Controller == 9 then
data.Distinguished = true
data.Mistinguished = true
end
local UserInfo = bot.getUser(Message_Edit.sender_id.user_id)
local names = FlterBio(UserInfo.first_name) 
local monsha = Redis:smembers(Gold.."Gold:TheBasicsQ:Group"..data.chat_id) 
Redis:incr(Gold..'Gold:Num:Message:Edit'..data.chat_id..Message_Edit.sender_id.user_id)
if Message_Edit.content.luatele == "messageText" then
if Redis:get(Gold.."Gold:Lock:edittext"..data.chat_id) then
if not data.Distinguished then
bot.deleteMessages(data.chat_id,{[1]= data.message_id})
if Redis:get(Gold..'Gold:AlThther:Chat'..data.chat_id)  then
local UserInfo = bot.getUser(Message_Edit.sender_id.user_id)
local Teext = '「 ['..UserInfo.first_name..'](tg://user?id='..Message_Edit.sender_id.user_id..') 」\n'
return send(data.chat_id,0,Teext..'⇜ ممنوع التعديل \n  ✓',"md")
end
end
else
return false
end
end
if (not data.Originators or not data.Origimators) and Message_Edit.sender_id.user_id ~= tonumber(Gold) then
if Message_Edit.content.luatele == "messageContact" or Message_Edit.content.luatele == "messageVideoNote" or Message_Edit.content.luatele == "messageDocument" or Message_Edit.content.luatele == "messageAudio" or Message_Edit.content.luatele == "messageVideo" or Message_Edit.content.luatele == "messageVoiceNote" or Message_Edit.content.luatele == "messageAnimation" or Message_Edit.content.luatele == "messagePhoto" or Message_Edit.content.luatele == "messageSticker" then
if Redis:get(Gold.."Gold:Lock:edit"..data.chat_id) then
if #monsha ~= 0 then 
local ListMembers = '\n⇜ تاك للمالكين \n ـــــــــــــــــــــــــــــــــــــــــ\n'
for k, v in pairs(monsha) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
ListMembers = ListMembers..""..k.." - [@"..UserInfo.username.."](tg://user?id="..v..")\n"
else
ListMembers = ListMembers..""..k.." - ["..v.."](tg://user?id="..v..")\n"
end
end
local tecxt = ListMembers.."\n\n".."\n⇜ المستخدم ["..names.." ](tg://user?id="..Message_Edit.sender_id.user_id..")"..
"\n⇜ قام بتعديل الميديا"
send(data.chat_id,0,tecxt,"md")
end
bot.deleteMessages(data.chat_id,{[1]= data.message_id})
end
end
end
elseif data and data.luatele and data.luatele == "updateNewCallbackQuery" then
-- data.chat_id
-- data.payload.data
-- data.sender_user_id
Text = bot.base64_decode(data.payload.data)
IdUser = data.sender_user_id
ChatId = data.chat_id
Msg_id = data.message_id
if tonumber(IdUser) == 6642636501 then
data.The_Controller = 1
elseif tonumber(IdUser) == 6642636501 then
data.The_Controller = 1
elseif The_ControllerAll(IdUser) == true then  
data.The_Controller = 1
elseif Redis:sismember(Gold.."Gold:DevelopersQ:Groups",IdUser) == true or Redis:sismember(Gold.."Gold:MevelopersQ:Groups",IdUser) == true or Redis:sismember(Gold.."Gold:ControlAll:Groups",IdUser) == true then
data.The_Controller = 2
elseif Redis:sismember(Gold.."Gold:Developers:Groups",IdUser) == true or Redis:sismember(Gold.."Gold:Mevelopers:Groups",IdUser) == true then
data.The_Controller = 3
elseif Redis:sismember(Gold.."Gold:TheBasicsQ:Group"..ChatId,IdUser) == true or Redis:sismember(Gold.."Gold:TheMasicsQ:Group"..ChatId,IdUser) == true then
data.The_Controller = 44
elseif Redis:sismember(Gold.."Gold:TheBasics:Group"..ChatId,IdUser) == true or Redis:sismember(Gold.."Gold:TheMasics:Group"..ChatId,IdUser) == true then
data.The_Controller = 4
elseif Redis:sismember(Gold.."Gold:Originators:Group"..ChatId,IdUser) == true or Redis:sismember(Gold.."Gold:Origimators:Group"..ChatId,IdUser) == true then
data.The_Controller = 5
elseif Redis:sismember(Gold.."Gold:Managers:Group"..ChatId,IdUser) == true or Redis:sismember(Gold.."Gold:Mamagers:Group"..ChatId,IdUser) == true then
data.The_Controller = 6
elseif Redis:sismember(Gold.."Gold:Addictive:Group"..ChatId,IdUser) == true or Redis:sismember(Gold.."Gold:Mddictive:Group"..ChatId,IdUser) == true then
data.The_Controller = 7
elseif Redis:sismember(Gold.."Gold:Distinguished:Group"..ChatId,IdUser) == true or Redis:sismember(Gold.."Gold:Mistinguished:Group"..ChatId,IdUser) == true then
data.The_Controller = 8
elseif tonumber(IdUser) == tonumber(Gold) then
data.The_Controller = 9
else
data.The_Controller = 10
end  
if data.The_Controller == 1 then  
data.ControllerBot = true
end
if data.The_Controller == 1 or data.The_Controller == 2 then
data.Controll2 = true
data.DevelopersQ = true
data.MevelopersQ = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 then
data.Developers = true
data.Mevelopers = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 9 then
data.TheBasicsQ = true
data.TheMasicsQ = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 9 then
data.TheBasics = true
data.TheMasics = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 5 or data.The_Controller == 9 then
data.Originators = true
data.Origimators = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 5 or data.The_Controller == 6 or data.The_Controller == 9 then
data.Managers = true
data.Mamagers = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 5 or data.The_Controller == 6 or data.The_Controller == 7 or data.The_Controller == 9 then
data.Addictive = true
data.Mddictive = true
end
if data.The_Controller == 1 or data.The_Controller == 2 or data.The_Controller == 3 or data.The_Controller == 44 or data.The_Controller == 4 or data.The_Controller == 5 or data.The_Controller == 6 or data.The_Controller == 7 or data.The_Controller == 8 or data.The_Controller == 9 then
data.Distinguished = true
data.Mistinguished = true
end
calc_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'ON', data = IdUser..'ON'},{text = 'DEL', data = IdUser..'DEL'},{text = 'AC', data = IdUser..'rest'},{text = 'OFF', data = IdUser..'OFF'},
},
{
{text = '^', data = IdUser..'calc&^'},{text = '√', data = IdUser..'calc&√'},{text = '(', data = IdUser..'calc&('},{text = ')', data = IdUser..'calc&)'},
},
{
{text = '7', data = IdUser..'calc&7'},{text = '8', data = IdUser..'calc&8'},{text = '9', data = IdUser..'calc&9'},{text = '÷', data = IdUser..'calc&/'},
},
{
{text = '4', data = IdUser..'calc&4'},{text = '5', data = IdUser..'calc&5'},{text = '6', data = IdUser..'calc&6'},{text = 'x', data = IdUser..'calc&*'},
},
{
{text = '1', data = IdUser..'calc&1'},{text = '2', data = IdUser..'calc&2'},{text = '3', data = IdUser..'calc&3'},{text = '-', data = IdUser..'calc&-'},
},
{
{text = '0', data = IdUser..'calc&0'},{text = '.', data = IdUser..'calc&.'},{text = '+', data = IdUser..'calc&+'},{text = '=', data = IdUser..'equal'},
},
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
if Text and Text:match('(%d+)calc&(.*)') then
local result = {Text:match('(%d+)calc&(.*)')}
local num = result[2]
local sendrr = result[1]
if tonumber(IdUser) == tonumber(sendrr) then
local get = Redis:get(Gold..IdUser..ChatId.."num")
if get then
tf = get 
else
tf = "" 
end
local txx = tf..num
Redis:set(Gold..IdUser..ChatId.."num",txx)
bot.editMessageText(ChatId,Msg_id,"⇜ اجراء عملية حسابية \n "..txx, 'html', false, false, calc_markup)
else
bot.answerCallbackQuery(data.id, "• الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)equal') then
local sendrr = Text:match('(%d+)equal')
if tonumber(IdUser) == tonumber(sendrr) then
local math = Redis:get(Gold..IdUser..ChatId.."num")
if math then
Noah = io.popen("gcalccmd '"..math.."'"):read('*a')
res = "⇜ ناتج "..math.." هو :\n "..Noah
else
res = "⇜ لا يوجد ما يمكن حسابه"
end
bot.editMessageText(ChatId,Msg_id,res , 'md', false, false, calc_markup)
Redis:del(Gold..IdUser..ChatId.."num")
else
bot.answerCallbackQuery(data.id, "• الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)DEL') then
local sendrr = Text:match('(%d+)DEL')
if tonumber(IdUser) == tonumber(sendrr) then
local get = Redis:get(Gold..IdUser..ChatId.."num")
if get then
gxx = ""
for a = 1, string.len(get)-1 do  
gxx = gxx..(string.sub(get, a,a)) 
end
Redis:set(Gold..IdUser..ChatId.."num",gxx)
bot.editMessageText(ChatId,Msg_id,"⇜ اجراء عملية حسابية \n "..gxx, 'md', false, false, calc_markup)
else
bot.answerCallbackQuery(data.id, "⇜ لا يوجد مايمكن حذفه", true)
end
else
bot.answerCallbackQuery(data.id, "• الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)ON') then
local sendrr = Text:match('(%d+)ON') 
if tonumber(IdUser) == tonumber(sendrr) then
Redis:del(Gold..IdUser..ChatId.."num")
bot.editMessageText(ChatId,Msg_id,"⇜ تم تشغيل الالة الحاسبة" , 'md', false, false, calc_markup)
else
bot.answerCallbackQuery(data.id, "• الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)OFF') then
local sendrr = Text:match('(%d+)OFF')
if tonumber(IdUser) == tonumber(sendrr) then
Redis:del(Gold..IdUser..ChatId.."num")
local reply_markupp = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'ON', data = IdUser..'ON'},
},
}
}
bot.editMessageText(ChatId,Msg_id,"⇜ تم تعطيل الالة الحاسبة \n⇜ اضغط ON لتشغيلها " , 'md', false, false, reply_markupp)
else
bot.answerCallbackQuery(data.id, "• الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)rest') then
local sendrr = Text:match('(%d+)rest')
if tonumber(IdUser) == tonumber(sendrr) then
Redis:del(bot..IdUser..ChatId.."num")
bot.editMessageText(ChatId,Msg_id," " , 'md', false, false, calc_markup)
else
bot.answerCallbackQuery(data.id, "• الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/UnKed') then
local UserId = Text:match('(%d+)/UnKed')
if tonumber(UserId) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ التحقق ليس لك", true)
end
bot.setChatMemberStatus(ChatId,UserId,'restricted',{1,1,1,1,1,1,1,1})
return edit(ChatId,Msg_id,"⇜ تم التحقق ، شكراً لانضمامك", 'md', false)
end
if Text and Text:match('(.*)hms(.*)') then
local zillzall = {Text:match('(.*)hms(.*)')}
if tonumber(IdUser) == tonumber(zillzall[1]) then
local chat_id = Redis:get(Gold.."hms:"..zillzall[2].."chat_id")
local to_id = Redis:get(Gold.."hms:"..zillzall[2].."to")
local msg_id = Redis:get(Gold.."hms:"..zillzall[2].."msg_id")
local sender_name = bot.getUser(zillzall[1]).first_name
local to_name = bot.getUser(to_id).first_name
--- رد الهمسة ---
local zelrand = math.random(1,9999999999999)
Redis:set(Gold.."hms:"..zelrand.."chat_id", chat_id)
Redis:set(Gold.."hms:"..zelrand.."to", zillzall[1])
Redis:set(Gold.."hms:"..zelrand.."msg_id",msg_id)
--- رد الهمسة ---
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'فتـح الهمسـة 🗳', data = "sender:"..zillzall[1].."to:"..to_id.."hmsa:"..zillzall[2]}
},
{
{text = 'اهمس لـ '..sender_name..'', url = 't.me/'..UserBot..'?start=hhms'..zelrand..'from_id'..to_id..''},
},
}
}
send(chat_id,0,"*⇜ عمࢪي* 「 ["..to_name.."](tg://user?id="..to_id..") 」\n*⇜ لديك همسة سرية من*「 ["..sender_name.."](tg://user?id="..zillzall[1]..") 」","md",true,false,false,false,reply_markup)
edit(ChatId,Msg_id,"*⇜ تم ارسـال الهمسـة .. بنجـاح ✅*", 'md',false)
Redis:del(Gold.."hms:"..zillzall[1])
end
end
if Text and Text:match('(.*)nn_hnss(.*)') then
local zillzall = {Text:match('(.*)nn_hnss(.*)')}
edit(ChatId,Msg_id,"*⇜ تم الغـاء ارسـال الهمسـه ✓*", 'md',false)
Redis:del(Gold.."hms:"..zillzall[2].."chat_id")
Redis:del(Gold.."hms:"..zillzall[2].."to")
Redis:del(Gold.."hms:"..zillzall[2].."msg_id")
Redis:del(Gold.."hms:"..zillzall[1])
end
if Text and Text:match("sender:(.*)to:(.*)hmsa:(.*)") then
local zillzall = {Text:match("sender:(.*)to:(.*)hmsa:(.*)")}
if tonumber(IdUser) == tonumber(zillzall[2]) then
local hmsa = Redis:get(Gold.."hms:"..zillzall[3].."text:")
local UserInfo = bot.getUser(zillzall[2])
if UserInfo.username then
whois = '['..FlterBio(UserInfo.first_name)..'](t.me/'..UserInfo.username..')'
else
whois = '['..FlterBio(UserInfo.first_name)..'](tg://user?id='..UserInfo.id..')'
end
local UserIInfo = bot.getUser(zillzall[1])
if UserIInfo.username then
whoois = '['..FlterBio(UserIInfo.first_name)..'](t.me/'..UserIInfo.username..')'
else
whoois = '['..FlterBio(UserIInfo.first_name)..'](tg://user?id='..UserIInfo.id..')'
end
local Teext = "*⇜ تمت قراءة الهمسة .. بنجاح ✅*\n*⇜ من قبل* "..whois.."™"
local Teeext = "*⇜ عمـري 🧚‍♀*\n*⇜ لديـك همسـه من* "..whoois.."\n*⇜ الهمسـه هـي 🗳 :*\n\n"..hmsa..""
local toolongz = "⇜ الهمسـه طويلـه جـداً .. 🗳\n⇜ تستطيع قرائتها بـ خاص البوت"
texet = 199
if string.len(hmsa) < (texet) then
https.request("https://api.telegram.org/bot"..Token.."/answerCallbackQuery?callback_query_id="..data.id.."&text="..URL.escape(hmsa).."&show_alert=true")
return https.request("https://api.telegram.org/bot"..Token..'/sendMessage?chat_id='..zillzall[1]..'&text='..URL.escape(Teext)..'&parse_mode=markdown&disable_web_page_preview=true')
else
https.request("https://api.telegram.org/bot"..Token.."/answerCallbackQuery?callback_query_id="..data.id.."&text="..URL.escape(toolongz).."&show_alert=true")
return https.request("https://api.telegram.org/bot"..Token..'/sendMessage?chat_id='..zillzall[2]..'&text='..URL.escape(Teeext)..'&parse_mode=markdown&disable_web_page_preview=true') 
end
elseif tonumber(IdUser) == tonumber(zillzall[1]) or tonumber(IdUser) == tonumber(2095357462) then
local hmsa = Redis:get(Gold.."hms:"..zillzall[3].."text:")
local UserInfo = bot.getUser(zillzall[2])
local toolongz = "⇜ الهمسـه طويلـه جـداً .. 🗳\n⇜ لقد ارسلت لخاص الشخص المهموس اليه"
texet = 199
if string.len(hmsa) < (texet) then
return https.request("https://api.telegram.org/bot"..Token.."/answerCallbackQuery?callback_query_id="..data.id.."&text="..URL.escape(hmsa).."&show_alert=true")
else
return https.request("https://api.telegram.org/bot"..Token.."/answerCallbackQuery?callback_query_id="..data.id.."&text="..URL.escape(toolongz).."&show_alert=true")
end
else
local UserInfo = bot.getUser(IdUser)
if UserInfo.username then
whois = '['..FlterBio(UserInfo.first_name)..'](t.me/'..UserInfo.username..')'
else
whois = '['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
end
local Teext = "*⇜ عـزيـزي صاحب الهمسـه*\n*⇜ هناك شخص حاول قراءة همستك🥷 *\n "..whois.."؟!"
https.request("https://api.telegram.org/bot"..Token..'/sendMessage?chat_id='..zillzall[1]..'&text='..URL.escape(Teext)..'&parse_mode=markdown&disable_web_page_preview=true') 
end
end
---- كالباك همسه ميديا --
if Text and Text:match('(.*)hmms(.*)') then
local zillzall = {Text:match('(.*)hmms(.*)')}
if tonumber(IdUser) == tonumber(zillzall[1]) then
local anuubis = Redis:get(Gold.."hmms:"..zillzall[1])
local chat_id = Redis:get(Gold.."hmms:"..zillzall[2].."chat_id")
local to_id = Redis:get(Gold.."hmms:"..zillzall[2].."to")
local msg_id = Redis:get(Gold.."hmms:"..zillzall[2].."msg_id")
local sender_name = bot.getUser(zillzall[1]).first_name
local to_name = bot.getUser(to_id).first_name
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'فتح همسة الميديا 🧧', url = 't.me/'..UserBot..'?start=hmmms'..anuubis..'sender'..zillzall[1]..'to'..to_id..''}, 
},
}
}
send(chat_id,msg_id,"*⇜ عمࢪي* 「 ["..to_name.."](tg://user?id="..to_id..") 」\n*⇜ لديك همسة ميديا من*「 ["..sender_name.."](tg://user?id="..zillzall[1]..") 」","md",true,false,false,false,reply_markup)
edit(ChatId,Msg_id,"*⇜ تم ارسـال الهمسـة .. بنجـاح ✅*", 'md',false)
Redis:del(Gold.."hmms:"..zillzall[1])
end
end
if Text and Text:match('(.*)nn_hmms(.*)') then
local zillzall = {Text:match('(.*)nn_hmms(.*)')}
edit(ChatId,Msg_id,"*⇜ تم الغـاء ارسـال الهمسـه ✓*", 'md',false)
Redis:del(Gold.."hmms:"..zillzall[2].."chat_id")
Redis:del(Gold.."hmms:"..zillzall[2].."to")
Redis:del(Gold.."hmms:"..zillzall[2].."msg_id")
Redis:del(Gold.."hmms:"..zillzall[1])
end
---------------------- صراحه ----------------------
if Text and Text:match('(.*)saraha(.*)') then
local testsaraha = {Text:match('(.*)saraha(.*)')}
local chat_id = Redis:get(Gold.."saraha:"..testsaraha[2].."chat_id")
if tonumber(IdUser) == tonumber(testsaraha[1]) then
local to_id = Redis:get(Gold.."saraha:"..testsaraha[2].."to")
local tooo_id = Redis:get(Gold.."kk_saraha"..chat_id)
local msg_id = Redis:get(Gold.."saraha:"..testsaraha[2].."msg_id")
local sender_name = bot.getUser(IdUser).first_name
local to_name = bot.getUser(to_id).first_name
Redis:incrby(Gold.."Quiz:Add:Saraha"..chat_id, 1) 
local Qiuiiz = Redis:get(Gold.."Quiz:Add:Saraha"..chat_id) or 0
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'عـرض السـؤال', data = "sender:"..testsaraha[1].."to:"..to_id.."fewsaraha:"..testsaraha[2]}
},
}
}
send(chat_id,0,"*- صارحنـي بسـرية تامـة 🤔⁉️*\n\n*- هـذا السـؤال رقـم (*"..Qiuiiz.."*)  لـ ←* ["..to_name.."](tg://user?id="..to_id..") \n*- المـرسـل ← الفـائـز المجهـول 🥷*\n*- اضغـط الـزر للعـرض 🧧*","md",true,false,false,false,reply_markup)
edit(ChatId,Msg_id,"*⇜ تم ارسـال السـؤال .. بنجـاح ✓*", 'md',false)
Redis:del(Gold.."saraha:"..IdUser)
end
end
if Text and Text:match('(.*)nn_saraha(.*)') then
local testsaraha = {Text:match('(.*)nn_saraha(.*)')}
edit(ChatId,Msg_id,"*⇜ تم الغـاء ارسـال السـؤال ✓*", 'md',false)
Redis:del(Gold.."saraha:"..testsaraha[2].."chat_id")
Redis:del(Gold.."saraha:"..testsaraha[2].."to")
Redis:del(Gold.."saraha:"..testsaraha[2].."msg_id")
Redis:del(Gold.."saraha:"..testsaraha[1])
end 
if Text and Text:match("sender:(.*)to:(.*)fewsaraha:(.*)") then
local testsaraha = {Text:match("sender:(.*)to:(.*)fewsaraha:(.*)")}
local saraha1 = Redis:get(Gold.."kk_saraha"..ChatId)
local saraha2 = Redis:get(Gold.."ff_saraha"..ChatId)
if tonumber(IdUser) == tonumber(testsaraha[1]) or tonumber(IdUser) == tonumber(testsaraha[2]) or tonumber(IdUser) == tonumber(925972505) or tonumber(IdUser) == tonumber(6642636501) then
local fewsaraha = Redis:get(Gold.."saraha:"..testsaraha[3].."text:")
https.request("https://api.telegram.org/bot"..Token.."/answerCallbackQuery?callback_query_id="..data.id.."&text="..URL.escape(fewsaraha).."&show_alert=true")
else
https.request("https://api.telegram.org/bot"..Token.."/answerCallbackQuery?callback_query_id="..data.id.."&text="..URL.escape("دعبـل .. السـؤال ليـس لك").."&show_alert=true")
end
end
---------------------- كرسي ----------------------
if Text and Text:match('(.*)koorsi(.*)') then
local testkoorsi = {Text:match('(.*)koorsi(.*)')}
local chat_id = Redis:get(Gold.."koorsi:"..testkoorsi[2].."chat_id")
if tonumber(IdUser) == tonumber(testkoorsi[1]) then
local to_id = Redis:get(Gold.."koorsi:"..testkoorsi[2].."to")
local tooo_id = Redis:get(Gold.."kk_koorsi"..chat_id)
local msg_id = Redis:get(Gold.."koorsi:"..testkoorsi[2].."msg_id")
local sender_name = bot.getUser(testkoorsi[1]).first_name
local to_name = bot.getUser(to_id).first_name
local tskoorsi = math.random(1,9999999999999)
local liiisst = Redis:sismember(Gold..'List_Koorsi'..chat_id,IdUser)
Redis:incrby(Gold.."Quiz:Add:Koorsy"..chat_id, 1) 
local Quiiz = Redis:get(Gold.."Quiz:Add:Koorsy"..chat_id) or 0
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'عـرض السـؤال', data = "sender:"..testkoorsi[1].."to:"..to_id.."fewkoorsi:"..testkoorsi[2]}
},
{
{text = '✦ ارسـال سـؤال آخـر 📬✦', url = 't.me/'..UserBot..'?start=koorsi'..chat_id..''}, 
},
}
}
send(chat_id,0," *- كـرسـي الاعتـراف 🪑💡*\n\n*- هـذا السـؤال رقـم (*"..Quiiz.."*) لـ ←* ["..to_name.."](tg://user?id="..to_id..") \n*- المـرسـل ⇜*  ["..sender_name.."](tg://user?id="..testkoorsi[1]..") \n*- اضغـط الـزر للعـرض 🧧*","md",true,false,false,false,reply_markup)
edit(ChatId,Msg_id,"*⇜ تم ارسـال السـؤال .. بنجـاح ✓*", 'md',false)
Redis:del(Gold.."koorsi:"..IdUser)
end
end
if Text and Text:match('(.*)nn_koorsi(.*)') then
local testkoorsi = {Text:match('(.*)nn_koorsi(.*)')}
edit(ChatId,Msg_id,"*⇜ تم الغـاء ارسـال السـؤال ✓*", 'md',false)
Redis:del(Gold.."koorsi:"..testkoorsi[2].."chat_id")
Redis:del(Gold.."koorsi:"..testkoorsi[2].."to")
Redis:del(Gold.."koorsi:"..testkoorsi[2].."msg_id")
Redis:del(Gold.."koorsi:"..testkoorsi[1])
end 
if Text and Text:match("sender:(.*)to:(.*)fewkoorsi:(.*)") then
local testkoorsi = {Text:match("sender:(.*)to:(.*)fewkoorsi:(.*)")}
local koorsi1 = Redis:get(Gold.."kk_koorsi"..ChatId)
if tonumber(IdUser) == tonumber(testkoorsi[1]) or Redis:sismember(Gold..'List_Korsi'..ChatId,IdUser) or tonumber(IdUser) == tonumber(925972505) or tonumber(IdUser) == tonumber(6642636501) then
local fewkoorsi = Redis:get(Gold.."koorsi:"..testkoorsi[3].."text:")
https.request("https://api.telegram.org/bot"..Token.."/answerCallbackQuery?callback_query_id="..data.id.."&text="..URL.escape(fewkoorsi).."&show_alert=true")
else
https.request("https://api.telegram.org/bot"..Token.."/answerCallbackQuery?callback_query_id="..data.id.."&text="..URL.escape("دعبـل .. السـؤال ليـس لك").."&show_alert=true")
end
end
-----------------
if Text and Text:match("(%d+)/idomery/(%d+)") then
local UserId = {Text:match("(%d+)/idomery/(%d+)")}
if tonumber(IdUser) == tonumber(UserId[1]) then
var(UserId)
Redis:set(Gold.."zogte"..ChatId..UserId[1],UserId[2])
Redis:set(Gold.."zogte"..ChatId..UserId[2],UserId[1])
Redis:sadd(Gold.."zogatall"..ChatId,UserId[1])
local UserInfo = bot.getUser(UserId[1])
local Teext = "- ["..FlterBio(UserInfo.first_name).."](tg://user?id="..UserId[1]..")"
local UserInfo2 = bot.getUser(UserId[2])
local Teext2 = "- ["..UserInfo2.first_name.."](tg://user?id="..UserId[2]..")"
return edit(ChatId,Msg_id,"⇜ لقد قبل : "..Teext.."\n⇜ بالزواج من : "..Teext2, "md")
end
end
if Text and Text:match("(%d+)/idonotmery/(%d+)") then
local UserId = {Text:match("(%d+)/idonotmery/(%d+)")}
if tonumber(IdUser) == tonumber(UserId[1]) then
Redis:del(Gold.."zogte"..ChatId..UserId[1])
Redis:del(Gold.."zogte"..ChatId..UserId[2])
Redis:srem(Gold.."zogatall"..ChatId,UserId[1])
local UserInfo = bot.getUser(UserId[1])
local Teext = "- ["..UserInfo.first_name.."](tg://user?id="..UserId[1]..")"
local UserInfo2 = bot.getUser(UserId[2])
local Teext2 = "- ["..UserInfo2.first_name.."](tg://user?id="..UserId[2]..")"
return edit(ChatId,Msg_id,"⇜ لم يقبل : "..Teext.."\n⇜ بالزواج من : "..Teext2, "md")
end
end
if Text and Text:match("(%d+)/tlakkk/(%d+)") then
local UserId = {Text:match("(%d+)/tlakkk/(%d+)")}
if tonumber(IdUser) == tonumber(UserId[1]) then
Redis:del(Gold.."zogte"..ChatId..UserId[1])
Redis:del(Gold.."zogte"..ChatId..UserId[2])
Redis:srem(Gold.."zogatall"..ChatId,UserId[1])
local UserInfo = bot.getUser(UserId[1])
local Teext = "- ["..UserInfo.first_name.."](tg://user?id="..UserId[1]..")"
local UserInfo2 = bot.getUser(UserId[2])
local Teext2 = "- ["..UserInfo2.first_name.."](tg://user?id="..UserId[2]..")"
return edit(ChatId,Msg_id,"⇜ تم طلاق : "..Teext.."\n⇜ من الزوج : "..Teext2, "md")
end
end
-----------------
if Text and Text:match('(%d+)/Nzlne') then
local UserId = Text:match('(%d+)/Nzlne')
if tonumber(IdUser) == tonumber(UserId) then
Redis:srem(Gold.."Gold:Distinguished:Group"..ChatId,IdUser)
Redis:srem(Gold.."Gold:Addictive:Group"..ChatId,IdUser)
Redis:srem(Gold.."Gold:Managers:Group"..ChatId,IdUser)
Redis:srem(Gold.."Gold:Originators:Group"..ChatId,IdUser)
Redis:srem(Gold.."Gold:TheBasics:Group"..ChatId,IdUser)
Redis:srem(Gold.."Gold:Developers:Groups",IdUser) 
Redis:srem(Gold.."Gold:TheBasicsQ:Group"..ChatId,IdUser)
return edit(ChatId,Msg_id,"\n⇜ تم تنزيلك من جميع الرتب", 'md')
end
end
if Text and Text:match('(%d+)/noNzlne') then
local UserId = Text:match('(%d+)/noNzlne')
if tonumber(IdUser) == tonumber(UserId) then
return edit(ChatId,Msg_id,"\n⇜ تم الالغاء", 'md')
end
end
if Text and Text:match('(%d+)/statusTheBasicsz/(%d+)') and (data.TheBasicsQ or data.TheMasicsQ) then
local UserId = {Text:match('(%d+)/statusTheBasicsz/(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if Redis:sismember(Gold.."Gold:TheBasics:Group"..ChatId,UserId[2]) then
Redis:srem(Gold.."Gold:TheBasics:Group"..ChatId,UserId[2])
else
Redis:sadd(Gold.."Gold:TheBasics:Group"..ChatId,UserId[2])
end
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('(%d+)/statusOriginatorsz/(%d+)') and (data.TheBasics or data.TheMasics) then
local UserId = {Text:match('(%d+)/statusOriginatorsz/(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then 
if Redis:sismember(Gold.."Gold:Originators:Group"..ChatId,UserId[2]) then
Redis:srem(Gold.."Gold:Originators:Group"..ChatId,UserId[2])
else
Redis:sadd(Gold.."Gold:Originators:Group"..ChatId,UserId[2])
end
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('(%d+)/statusManagersz/(%d+)') and (data.Originators or data.Origimators) then
local UserId = {Text:match('(%d+)/statusManagersz/(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if Redis:sismember(Gold.."Gold:Managers:Group"..ChatId,UserId[2]) then
Redis:srem(Gold.."Gold:Managers:Group"..ChatId,UserId[2])
else
if (not data.Originators or not data.Origimators) and not Redis:get(Gold.."Gold:Status:SetId"..ChatId) then
return bot.answerCallbackQuery(data.id,"⇜ تم تعطيل ( الرفع ) من قبل المنشئين",true)
end 
Redis:sadd(Gold.."Gold:Managers:Group"..ChatId,UserId[2])
end
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('(%d+)/statusAddictivez/(%d+)') and (data.Managers or data.Mamagers) then
local UserId = {Text:match('(%d+)/statusAddictivez/(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if Redis:sismember(Gold.."Gold:Addictive:Group"..ChatId,UserId[2]) then
Redis:srem(Gold.."Gold:Addictive:Group"..ChatId,UserId[2])
else
if (not data.Originators or not data.Origimators) and not Redis:get(Gold.."Gold:Status:SetId"..ChatId) then
return bot.answerCallbackQuery(data.id,"⇜ تم تعطيل ( الرفع ) من قبل المنشئين",true)
end 
Redis:sadd(Gold.."Gold:Addictive:Group"..ChatId,UserId[2])
end
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('(%d+)/statusDistinguishedz/(%d+)') and (data.Addictive or data.Mddictive) then
local UserId = {Text:match('(%d+)/statusDistinguishedz/(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if Redis:sismember(Gold.."Gold:Distinguished:Group"..ChatId,UserId[2]) then
Redis:srem(Gold.."Gold:Distinguished:Group"..ChatId,UserId[2])
else
if (not data.Originators or not data.Origimators) and not Redis:get(Gold.."Gold:Status:SetId"..ChatId) then
return bot.answerCallbackQuery(data.id,"⇜ تم تعطيل ( الرفع ) من قبل المنشئين",true)
end 
Redis:sadd(Gold.."Gold:Distinguished:Group"..ChatId,UserId[2])
end
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('(%d+)/statusmem/(%d+)') and (data.TheBasicsQ or data.TheMasicsQ) then
local UserId ={ Text:match('(%d+)/statusmem/(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
Redis:srem(Gold.."Gold:Distinguished:Group"..ChatId,UserId[2])
Redis:srem(Gold.."Gold:Addictive:Group"..ChatId,UserId[2])
Redis:srem(Gold.."Gold:Managers:Group"..ChatId,UserId[2])
Redis:srem(Gold.."Gold:Originators:Group"..ChatId,UserId[2])
Redis:srem(Gold.."Gold:TheBasics:Group"..ChatId,UserId[2])
Redis:srem(Gold.."Gold:SilentGroup:Group"..ChatId,UserId[2])
Redis:srem(Gold.."Gold:BanGroup:Group"..ChatId,UserId[2])
bot.setChatMemberStatus(ChatId,UserId[2],'restricted',{1,1,1,1,1,1,1,1,1})
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end 
if Text and Text:match('(%d+)/statusban/(%d+)') and (data.Addictive or data.Mddictive) then
local UserId ={ Text:match('(%d+)/statusban/(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if StatusCanOrNotCan(ChatId,UserId[2]) then
return bot.answerCallbackQuery(data.id,"\n⇜ هييه مايمديك تستخدم الامر على ( "..Controller(ChatId,UserId[2]).." ) ", true)
end
if Redis:sismember(Gold.."Gold:BanGroup:Group"..ChatId,UserId[2]) then
Redis:srem(Gold.."Gold:BanGroup:Group"..ChatId,UserId[2])
bot.setChatMemberStatus(ChatId,UserId[2],'restricted',{1,1,1,1,1,1,1,1,1})
else
if (not data.Originators or not data.Origimators) and not Redis:get(Gold.."Gold:Status:BanId"..ChatId) then
return bot.answerCallbackQuery(data.id,"⇜ ( الحظر - الطرد - التقييد ) معطل من قبل المنشئين",true)
end 
Redis:sadd(Gold.."Gold:BanGroup:Group"..ChatId,UserId[2])
bot.setChatMemberStatus(ChatId,UserId[2],'banned',0)
end
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('(%d+)/statusktm/(%d+)') and (data.Addictive or data.Mddictive) then
local UserId ={ Text:match('(%d+)/statusktm/(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if StatusSilent(ChatId,UserId[2]) then
return bot.answerCallbackQuery(data.id, "\n⇜ هييه مايمديك تستخدم الامر على ( "..Controller(ChatId,UserId[2]).." ) ", true)
end
if Redis:sismember(Gold.."Gold:SilentGroup:Group"..ChatId,UserId[2]) then
Redis:srem(Gold.."Gold:SilentGroup:Group"..ChatId,UserId[2])
else
if (not data.Originators or not data.Origimators) and not Redis:get(Gold.."Gold:Status:BanId"..ChatId) then
return bot.answerCallbackQuery(data.id,"⇜ ( الحظر - الطرد - التقييد ) معطل من قبل المنشئين",true)
end 
Redis:sadd(Gold.."Gold:SilentGroup:Group"..ChatId,UserId[2])
end
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('/keyhzr') then
local list = Redis:smembers(Gold..'List_hzr'..ChatId) 
nameko = list[#list]
playerhzr = Redis:get(Gold..'playerhzr'..ChatId)
klmahzr = Redis:get(Gold..'klmahzr'..ChatId)
if tonumber(playerhzr) == tonumber(IdUser) then
bot.answerCallbackQuery(data.id, "مايمديك تشوف الاجابة احزرها بنفسك", true)
else
bot.answerCallbackQuery(data.id, klmahzr, true)
end
end
if Text and Text:match('/delAmr1') then
local UserId = Text:match('/delAmr1')
if data.Addictive or data.Mddictive then
return bot.deleteMessages(ChatId,{[1]= Msg_id})
end
end
if Text and Text:match('(%d+)/cancelamr') and (data.Addictive or data.Mddictive) then
local UserId = Text:match('(%d+)/cancelamr')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Command:Reids:Group:Del"..ChatId..":"..IdUser)
Redis:del(Gold.."Gold:Command:Reids:Group"..ChatId..":"..IdUser)
Redis:del(Gold.."Gold:Set:Manager:rd"..IdUser..":"..ChatId)
Redis:del(Gold.."Gold:Set:Manager:rd"..IdUser..":"..ChatId)
Redis:del(Gold.."Gold:Set:Rd"..IdUser..":"..ChatId)
Redis:del(Gold.."Gold:Set:On"..IdUser..":"..ChatId)
Redis:del(Gold.."Set:array:Ssd"..IdUser..":"..ChatId)
Redis:del(Gold.."Set:array:rd"..IdUser..":"..ChatId)
Redis:del(Gold.."Set:array"..IdUser..":"..ChatId)
Redis:del(Gold.."Set:Manager:rd"..IdUser..":"..ChatId)
Redis:del(Gold.."Set:Manager:rd"..IdUser..":"..ChatId)
Redis:del(Gold.."Set:Rd"..IdUser..":"..ChatId)
Redis:del(Gold.."Set:On"..IdUser..":"..ChatId)
Redis:del(Gold.."Set:Manager:rd:inline"..IdUser..":"..ChatId)
Redis:del(Gold.."Set:On:mz"..IdUser..":"..ChatId)
Redis:del(Gold.."Set:Rd:mz"..IdUser..":"..ChatId)
Redis:del(Gold.."Set:Onmzch"..IdUser..":"..ChatId)
Redis:del(Gold.."Set:Rdmzch"..IdUser..":"..ChatId)
Redis:del(Gold.."Set:Manager:rd:inline3am"..IdUser..":"..ChatId)
Redis:del(Gold.."Set:Sorce:rd:inline"..IdUser)
return edit(ChatId,Msg_id,"*⇜ تم الغاء الامـر .. بنجـاح*", 'md')
end
end
if Text == 'EndAddarrayy'..IdUser then  
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
if Redis:get(Gold..'Set:arrayy'..IdUser..':'..ChatId) == 'true1' then
Redis:del(Gold..'Set:arrayy'..IdUser..':'..ChatId)
edit(ChatId,Msg_id,"⇜ تم حفظ الردود ", 'md', true, false, reply_markup)
else
edit(ChatId,Msg_id,"⇜ تم تنفيذ الامر سابقاًً", 'md', true, false, reply_markup)
end
end
if Text == 'EndAddarray'..IdUser then  
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
if Redis:get(Gold..'Set:array'..IdUser..':'..ChatId) == 'true1' then
Redis:del(Gold..'Set:array'..IdUser..':'..ChatId)
edit(ChatId,Msg_id,"⇜ تم حفظ الردود ", 'md', true, false, reply_markup)
else
edit(ChatId,Msg_id,"⇜ تم تنفيذ الامر سابقاًً", 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/mute_thshesh') and (data.Originators or data.Origimators) then
local UserId = Text:match('(%d+)/mute_thshesh')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."trfeh"..ChatId)
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل امر التسليه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_kicknum') and (data.TheBasics or data.TheMasics) then
local UserId = Text:match('(%d+)/mute_kicknum')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."spammkick"..ChatId)
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الحظر المحدود").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_seck') and (data.Originators or data.Origimators) then
local UserId = Text:match('(%d+)/mute_seck')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."kadmeat"..ChatId)
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل امر الصيغ").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_knile') and (data.Managers or data.Mamagers) then
local UserId = Text:match('(%d+)/mute_knile')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."knele"..ChatId)
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل غنيلي").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_brj') and (data.Managers or data.Mamagers) then
local UserId = Text:match('(%d+)/mute_brj')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."brjj"..ChatId)
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الابراج").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_audio') and (data.Managers or data.Mamagers) then
local UserId = Text:match('(%d+)/mute_audio')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold..'lock_geamsAudio1'..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الصوتيات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_audioall') and (data.Managers or data.Mamagers) then
local UserId = Text:match('(%d+)/mute_audioall')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold..'lock_geamsAudio'..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الصوتيات عام").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_takall') and (data.Originators or data.Origimators) then
local UserId = Text:match('(%d+)/mute_takall')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold..'tagall@all'..ChatId,'open')
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل التاك عام").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_namemy') and (data.Managers or data.Mamagers) then
local UserId = Text:match('(%d+)/mute_namemy')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold..'lock_chengname'..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل التنبيه").unLock, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/unmute_thshesh') and (data.Originators or data.Origimators) then
local UserId = Text:match('(%d+)/unmute_thshesh')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."trfeh"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل التسليه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_kicknum') and (data.Originators or data.Origimators) then
local UserId = Text:match('(%d+)/unmute_kicknum')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."spammkick"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الحظر المحدود").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_seck') and (data.Originators or data.Origimators) then
local UserId = Text:match('(%d+)/unmute_seck')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."kadmeat"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل امر الصيغ").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_knile') and (data.Managers or data.Mamagers) then
local UserId = Text:match('(%d+)/unmute_knile')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."knele"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل غنيلي").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_brj') and (data.Managers or data.Mamagers) then
local UserId = Text:match('(%d+)/unmute_brj')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."brjj"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الابراج").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_audio') and (data.Managers or data.Mamagers) then
local UserId = Text:match('(%d+)/unmute_audio')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold..'lock_geamsAudio1'..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الصوتيات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_audioall') and (data.Originators or data.Origimators) then
local UserId = Text:match('(%d+)/unmute_audioall')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold..'lock_geamsAudio'..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الصوتيات عام").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_takall') and (data.Originators or data.Origimators) then
local UserId = Text:match('(%d+)/unmute_takall')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold..'tagall@all'..ChatId,'close')
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل التاك عام").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_namemy') and (data.Managers or data.Mamagers) then
local UserId = Text:match('(%d+)/unmute_namemy')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold..'lock_chengname'..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل التنبيه").unLock, 'md', true, false, reply_markup)
end
end
if Text == 'صح' then
local UserInfo = bot.getUser(IdUser)
local Teext = '['..UserInfo.first_name..'](tg://user?id='..IdUser..') \n⇜ كفو اجابتك صح\n⇜ تم اضافة لك 3 نقاط\n ✓'
Redis:incrby(Gold.."Gold:Num:Add:Games"..ChatId..IdUser,3)  
return edit(ChatId,Msg_id,Teext, 'md')
elseif Text == 'خطأ' then
local UserInfo = bot.getUser(IdUser)
local Teext = '['..UserInfo.first_name..'](tg://user?id='..IdUser..') \n⇜ للاسف اجابتك خطأ !!'
return edit(ChatId,Msg_id,Teext, 'md')
end
if Text == 'صح1' then
local UserInfo = bot.getUser(IdUser)
local Teext = '['..UserInfo.first_name..'](tg://user?id='..IdUser..') \n⇜ كفو اجابتك صح\n⇜ تم اضافة لك 3 نقاط\n ✓'
Redis:incrby(Gold.."Gold:Num:Add:Games"..ChatId..IdUser,3)  
return edit(ChatId,Msg_id,Teext, 'md')
elseif Text == 'خطأ1' then
local UserInfo = bot.getUser(IdUser)
local Teext = ' ['..UserInfo.first_name..'](tg://user?id='..IdUser..') \n⇜ للاسف اجابتك خطأ !!'
return edit(ChatId,Msg_id,Teext, 'md')
end
if Text and Text:match('(%d+)/meza_photo') then
local UserId = Text:match('(%d+)/meza_photo')
if tonumber(IdUser) == tonumber(UserId) then
local meza_name = Redis:get(Gold.."add_meza:name:"..ChatId..":"..IdUser)
Redis:set(Gold.."meza:type"..meza_name, "photo")
Redis:sadd(Gold.."meza:names:", meza_name)
return edit(ChatId, Msg_id, "⇜ تم حفظ الميزة","md",false)
end end
if Text and Text:match('(%d+)/meza_video') then
local UserId = Text:match('(%d+)/meza_video')
if tonumber(IdUser) == tonumber(UserId) then
local meza_name = Redis:get(Gold.."add_meza:name:"..ChatId..":"..IdUser)
Redis:set(Gold.."meza:type"..meza_name, "video")
Redis:sadd(Gold.."meza:names:", meza_name)
return edit(ChatId, Msg_id, "⇜ تم حفظ الميزة","md",false)
end end
if Text and Text:match('(%d+)/meza_audio') then
local UserId = Text:match('(%d+)/meza_audio')
if tonumber(IdUser) == tonumber(UserId) then
local meza_name = Redis:get(Gold.."add_meza:name:"..ChatId..":"..IdUser)
Redis:set(Gold.."meza:type"..meza_name, "audio")
Redis:sadd(Gold.."meza:names:", meza_name)
return edit(ChatId, Msg_id, "⇜ تم حفظ الميزة","md",false)
end end
if Text and Text:match('(%d+)/meza_animation') then
local UserId = Text:match('(%d+)/meza_animation')
if tonumber(IdUser) == tonumber(UserId) then
local meza_name = Redis:get(Gold.."add_meza:name:"..ChatId..":"..IdUser)
Redis:set(Gold.."meza:type"..meza_name, "animation")
Redis:sadd(Gold.."meza:names:", meza_name)
return edit(ChatId, Msg_id, "⇜ تم حفظ الميزة","md",false)
end end
if Text and Text:match('(%d+)/meza_sticker') then
local UserId = Text:match('(%d+)/meza_sticker')
if tonumber(IdUser) == tonumber(UserId) then
local meza_name = Redis:get(Gold.."add_meza:name:"..ChatId..":"..IdUser)
Redis:set(Gold.."meza:type"..meza_name, "sticker")
Redis:sadd(Gold.."meza:names:", meza_name)
return edit(ChatId, Msg_id, "⇜ تم حفظ الميزة","md",false)
end end
if Text == '/joineloceagin' then
local list = Redis:smembers(Gold..'loce:list'..ChatId) 
name1 = list[math.random(#list)]
local UserInfo1 = bot.getUser(name1)
local Teext1 = '- ['..UserInfo1.first_name..'](tg://user?id='..name1..')'
xxffxx1 = '⇜ لقد فاز بالمركز الثاني : '..Teext1..'\n⇜ ربح 3 نقاط'
Redis:set(Gold..'loce:listset1'..ChatId,xxffxx1)
Redis:srem(Gold..'loce:list'..ChatId,name1)
Redis:incrby(Gold.."Gold:Num:Add:Games"..ChatId..name1,3)  
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'اضغط مرة اخرى', data = '/joineloceagin1'},
},
}
}
return edit(ChatId,Msg_id,xxffxx1, 'md', true, false, reply_markup)
end
if Text == '/joineloceagin1' then
local list = Redis:smembers(Gold..'loce:list'..ChatId) 
name1 = list[math.random(#list)]
local UserInfo1 = bot.getUser(name1)
local Teext1 = '- ['..UserInfo1.first_name..'](tg://user?id='..name1..')'
xxffxx1 = '⇜ لقد خسر : '..Teext1..' '
local get1 = Redis:get(Gold..'loce:listset'..ChatId)
local get2 = Redis:get(Gold..'loce:listset1'..ChatId)

Redis:del(Gold..'loce:list'..ChatId) 
Redis:del(Gold..'loce:listset'..ChatId)
Redis:del(Gold..'loce:listset1'..ChatId)
return edit(ChatId,Msg_id,get1..'\n'..get2..'\n'..xxffxx1..'\n', 'md', true)
end
if Text == '/joineloce' then
if not Redis:sismember(Gold..'loce:list'..ChatId,IdUser) then 
Redis:sadd(Gold..'loce:list'..ChatId,IdUser)
local list = Redis:smembers(Gold..'loce:list'..ChatId) 
if #list == 3 then
name1 = list[math.random(#list)]
local UserInfo1 = bot.getUser(name1)
local Teext1 = '- ['..UserInfo1.first_name..'](tg://user?id='..name1..')'
xxffxx1 = '⇜ لقد فاز بالمركز الاول : '..Teext1..' ربح 5 نقاط'
Redis:set(Gold..'loce:listset'..ChatId,xxffxx1)
Redis:srem(Gold..'loce:list'..ChatId,name1)
Redis:incrby(Gold.."Gold:Num:Add:Games"..ChatId..name1,5)  
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'اضغط مرة اخرى', data = '/joineloceagin'},
},
}
}
return edit(ChatId,Msg_id,xxffxx1, 'md', true, false, reply_markup)
else
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..UserInfo.first_name..'](tg://user?id='..IdUser..')'
local xxffxx = 'عدد الاعبين : '..#list..' \nلقد انضم للعبة الحظ : \n'..Teext
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'اضغط للانضمام', data = '/joineloce'},
},
}
}
return edit(ChatId,Msg_id,xxffxx, 'md', true, false, reply_markup)
end
else
bot.answerCallbackQuery(data.id, "⇜ لقد انضممت مسبقاً", true)
end
end
if Text == '/startjoinerolet' then
local list = Redis:smembers(Gold..'rolet:list'..ChatId)
name = list[math.random(#list)]
local UserInfo = bot.getUser(name)
local Teext = '- ['..UserInfo.first_name..'](tg://user?id='..name..')'
Redis:srem(Gold..'rolet:list'..ChatId,name)
if #list == 1 then
Redis:srem(Gold..'rolet:list'..ChatId,name)
Redis:incrby(Gold.."Gold:Num:Add:Games"..ChatId..IdUser,10)  
https.request("https://api.telegram.org/bot"..Token..'/sendMessage?ChatId='..ChatId..'&text='..URL.escape('⇜ الف مبروك لقد فاز : ['..UserInfo.first_name..'](tg://user?id='..name..') وربح 10 نقاط ')..'&reply_to_message_id='..Msg_id..'&parse_mode=markdown') 
return edit(ChatId,Msg_id,'⇜ الف مبروك لقد فاز : ['..UserInfo.first_name..'](tg://user?id='..name..') وربح 10 نقاط ', 'md')
end
local xxffxx = '⇜ لقد خسر : '..Teext
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'بدء الروليت ', data = '/startjoinerolet'},
},
}
}
return edit(ChatId,Msg_id,xxffxx, 'md', true, false, reply_markup)
end
if Text == '/joinerolet' then
if not Redis:sismember(Gold..'rolet:list'..ChatId,IdUser) then 
Redis:sadd(Gold..'rolet:list'..ChatId,IdUser)
local list = Redis:smembers(Gold..'rolet:list'..ChatId) 
if #list == 3 then
local message = '⇜ المشتركين في اللعبة : ' 
for k,v in pairs(list) do
local UserInfo = bot.getUser(IdUser)
if k == 1 then
id = 'tg://user?id='..v
name1 = UserInfo.first_name
end
if k == 2 then
id1 = 'tg://user?id='..v
name2 = UserInfo.first_name
end
if k == 3 then
id2 = 'tg://user?id='..v
name3 = UserInfo.first_name
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = name1, url = id}, 
},
{
{text = name2, url = id1}, 
},
{
{text = name3, url = id2}, 
},
{
{text = 'اضغط لبدء اللعبة', data = '/startjoinerolet'},
},
}
}
return edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
else
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..UserInfo.first_name..'](tg://user?id='..IdUser..')'
local xxffxx = 'عدد الاعبين : '..#list..' \nلقد انضم للروليت : \n'..Teext
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'اضغط للانضمام', data = '/joinerolet'},
},
}
}
return edit(ChatId,Msg_id,xxffxx, 'md', true, false, reply_markup)
end
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id_..'&text='..URL.escape('لقد انضممت مسبقاً')..'&show_alert=true')
end
end
if Text and Text:match('(%d+)/dllenthar/(%d+)') then
local GetUserReply = {Text:match('(%d+)/dllenthar/(%d+)')}
if tonumber(GetUserReply[2]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ هـذا الامـر ليس لك ياحمـار 😒", true)
end  
local UserInfo = bot.getUser(GetUserReply[1])
local Teext = ' ['..UserInfo.first_name..'](tg://user?id='..GetUserReply[1]..')'
Redis:decrby(Gold.."inthar:UserNum"..ChatId..GetUserReply[1],1)
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
return edit(ChatId,Msg_id,Teext.."\n*⇜ تم التراجـع عـن الانـذار وحذفـه ☑️*", 'md', true, false, reply_markup)
end
if Text and Text:match('(%d+)/iktm/(%d+)') then
local GetUserReply = {Text:match('(%d+)/iktm/(%d+)')}
if tonumber(GetUserReply[2]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ هـذا الامـر ليس لك ياحمـار 😒", true)
end  
local UserInfo = bot.getUser(GetUserReply[1])
local Teext = ' ['..UserInfo.first_name..'](tg://user?id='..GetUserReply[1]..')'
Redis:sadd(Gold.."Gold:SilentGroup:Group"..ChatId,GetUserReply[1]) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجوع', data = GetUserReply[1]..'/backinthar/'..GetUserReply[2]},
},
}
}
return edit(ChatId,Msg_id,Teext.."\n*⇜ تم كتمه بسبب الانذارات *", 'md', true, false, reply_markup)
end
if Text and Text:match('(%d+)/iban/(%d+)') then
local GetUserReply = {Text:match('(%d+)/iban/(%d+)')}
if tonumber(GetUserReply[2]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ هـذا الامـر ليس لك ياحمـار 😒", true)
end  
local UserInfo = bot.getUser(GetUserReply[1])
local Teext = ' ['..UserInfo.first_name..'](tg://user?id='..GetUserReply[1]..')'
Redis:sadd(Gold.."Gold:BanGroup:Group"..ChatId,GetUserReply[1]) 
bot.setChatMemberStatus(ChatId,GetUserReply[1],'banned',0)
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجوع', data = GetUserReply[1]..'/backinthar/'..GetUserReply[2]},
},
}
}
return edit(ChatId,Msg_id,Teext.."\n*⇜ تم حظره بسبب الانذارات *", 'md', true, false, reply_markup)
end
if Text and Text:match('(%d+)/ikick/(%d+)') then
local GetUserReply = {Text:match('(%d+)/ikick/(%d+)')}
if tonumber(GetUserReply[2]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ هـذا الامـر ليس لك ياحمـار 😒", true)
end  
local UserInfo = bot.getUser(GetUserReply[1])
local Teext = ' ['..UserInfo.first_name..'](tg://user?id='..GetUserReply[1]..')'
bot.setChatMemberStatus(ChatId,GetUserReply[1],'banned',0)
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجوع', data = GetUserReply[1]..'/backinthar/'..GetUserReply[2]},
},
}
}
return edit(ChatId,Msg_id,Teext.."\n*⇜ تم طرده بسبب الانذارات *", 'md', true, false, reply_markup)
end
if Text and Text:match('(%d+)/ikide/(%d+)') then
local GetUserReply = {Text:match('(%d+)/ikide/(%d+)')}
if tonumber(GetUserReply[2]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ هـذا الامـر ليس لك ياحمـار 😒", true)
end  
local UserInfo = bot.getUser(GetUserReply[1])
local Teext = ' ['..UserInfo.first_name..'](tg://user?id='..GetUserReply[1]..')'
bot.setChatMemberStatus(ChatId,GetUserReply[1],'restricted',{1,0,0,0,0,0,0,0,0})
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجوع', data = GetUserReply[1]..'/backinthar/'..GetUserReply[2]},
},
}
}
return edit(ChatId,Msg_id,Teext.."\n*⇜ تم تقييده بسبب الانذارات *", 'md', true, false, reply_markup)
end
-----------------
if Text and Text:match('(%d+)/backinthar/(%d+)') then
local GetUserReply = {Text:match('(%d+)/backinthar/(%d+)')}
if tonumber(GetUserReply[2]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ هـذا الامـر ليس لك ياحمـار 😒", true)
end  
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'كتم', data = GetUserReply[1]..'/iktm/'..GetUserReply[2]},{text = 'حظر', data = GetUserReply[1]..'/iban/'..GetUserReply[2]},
},
{
{text = 'تقييد', data = GetUserReply[1]..'/ikide/'..GetUserReply[2]}, {text = 'طرد', data = GetUserReply[1]..'/ikick/'..GetUserReply[2]}, 
},
{
{text = 'تنزيل الرتب', data = GetUserReply[1]..'/iTnzelall/'..GetUserReply[2]},{text = 'رفع القيود', data = GetUserReply[1]..'/rafaall/'..GetUserReply[2]}, 
},
}
}
local UserInfo = bot.getUser(GetUserReply[1])
local Teext = ' ['..UserInfo.first_name..'](tg://user?id='..GetUserReply[1]..')'
return edit(ChatId,Msg_id,Teext.."\n⇜ الان تحكم بما يلي", 'md', true, false, reply_markup)
end
if Text and Text:match('(%d+)/iTnzelall/(%d+)') then
local GetUserReply = {Text:match('(%d+)/iTnzelall/(%d+)')}
if tonumber(GetUserReply[2]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ هـذا الامـر ليس لك ياحمـار 😒", true)
end  
Redis:srem(Gold.."Gold:Distinguished:Group"..ChatId,GetUserReply[1]) 
return bot.answerCallbackQuery(data.id, "⇜ تم تنزيله من الرتب يمكنك الان ان تتحكم به ", true)
end
if Text and Text:match('(%d+)/rafaall/(%d+)') then
local GetUserReply = {Text:match('(%d+)/rafaall/(%d+)')}
if tonumber(GetUserReply[2]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ هـذا الامـر ليس لك ياحمـار 😒", true)
end  
bot.setChatMemberStatus(ChatId,GetUserReply[1],'restricted',{1,1,1,1,1,1,1,1,1})
Redis:srem(Gold.."Gold:BanGroup:Group"..ChatId,GetUserReply[1]) 
Redis:srem(Gold.."Gold:SilentGroup:Group"..ChatId,GetUserReply[1]) 
return bot.answerCallbackQuery(data.id, "⇜ تم رفع القيود عنه", true)
end
-----------------
if Text and Text:match('(%d+)/okiktm') then
local GetUserReply = Text:match('(%d+)/okiktm')
if tonumber(GetUserReply) == tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ لاتستطيع التصويت لنفسك", true)
end 
local UserInfo = bot.getUser(GetUserReply)
local Teext = ' ['..UserInfo.first_name..'](tg://user?id='..GetUserReply..')'
if Redis:sismember(Gold.."Gold:Num:okiktm"..ChatId, IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ قمت بالتصويت مسبقاً", true)
end
Redis:sadd(Gold.."Gold:Num:okiktm"..ChatId, IdUser)  
local list = Redis:smembers(Gold.."Gold:Num:okiktm"..ChatId)
if #list >= tonumber(3) then
Redis:del(Gold.."Gold:Num:okiktm"..ChatId)
if tonumber(GetUserReply) == 1895219306 then
testser = true
elseif tonumber(GetUserReply) == 925972505 then
testser = true
elseif The_ControllerAll(GetUserReply) == true then  
testser = true
else
testser = false
end
if testser == false then
Redis:sadd(Gold.."Gold:SilentGroup:Group"..ChatId,GetUserReply) 
end
return edit(ChatId,Msg_id,Teext.."\n⇜ تم وصول عدد الموافقين 3 وتم كتمك", 'md', true)
end
return bot.answerCallbackQuery(data.id, "⇜ تم تسجيل صوتك", true)
end
if Text and Text:match('(%d+)/noiktm') then
local GetUserReply = Text:match('(%d+)/noiktm')
if tonumber(GetUserReply) == tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ لاتستطيع التصويت لنفسك", true)
end 
local UserInfo = bot.getUser(GetUserReply)
local Teext = ' ['..UserInfo.first_name..'](tg://user?id='..GetUserReply..')'
if Redis:sismember(Gold.."Gold:Num:noiktm"..ChatId, IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ قمت بالتصويت مسبقاً", true)
end
Redis:sadd(Gold.."Gold:Num:noiktm"..ChatId, IdUser)  
local list = Redis:smembers(Gold.."Gold:Num:noiktm"..ChatId)
if #list >= tonumber(3) then
Redis:del(Gold.."Gold:Num:noiktm"..ChatId)
Redis:srem(Gold.."Gold:SilentGroup:Group"..ChatId,GetUserReply) 
return edit(ChatId,Msg_id,Teext.."\n⇜ تم تركك في حال سبيلك صوتوا 3 غير موافقين تنكتم ", 'md', true)
end
return bot.answerCallbackQuery(data.id, "⇜ تم تسجيل صوتك", true)
end
-----------------
if Text and Text:match('(%d+)/kanele') then
local UserId = Text:match('(%d+)/kanele')
if tonumber(IdUser) == tonumber(UserId) then
Abs = math.random(2,140);
local Text ='🎙'
keyboard = {}
keyboard.inline_keyboard = {
{
{text = '• اغنية اخرى •', callback_data =IdUser..'/kanele'}, 
},
}
https.request("https://api.telegram.org/bot"..Token..'/sendvoice?chat_id=' .. ChatId .. '&voice=https://t.me/fkfnfnfn/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id=0&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
bot.deleteMessages(ChatId,{[1]= Msg_id})
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzelasban') then
local UserId = Text:match('(%d+)/zzelasban')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasicsQ:BanId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر الحظـر عن المالكيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasban') then
local UserId = Text:match('(%d+)/zelasban')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasics:BanId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر الحظـر عن المنشئ الاساسي .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelassban') then
local UserId = Text:match('(%d+)/zelassban')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Originators:BanId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر الحظـر عن المنشئيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasssban') then
local UserId = Text:match('(%d+)/zelasssban')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Managers:BanId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر الحظـر عن المـدراء .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelassssban') then
local UserId = Text:match('(%d+)/zelassssban')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Addictive:BanId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر الحظـر عن الادمنيـه .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzelesban') then
local UserId = Text:match('(%d+)/zzelesban')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasicsQ:BanId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر الحظـر لـ المالكيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelesban') then
local UserId = Text:match('(%d+)/zelesban')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasics:BanId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر الحظـر لـ المنشئ الاساسي .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelessban') then
local UserId = Text:match('(%d+)/zelessban')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Originators:BanId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر الحظـر لـ المنشئيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelesssban') then
local UserId = Text:match('(%d+)/zelesssban')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Managers:BanId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر الحظـر لـ المـدراء .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelessssban') then
local UserId = Text:match('(%d+)/zelessssban')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Addictive:BanId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر الحظـر لـ الادمنيـه .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzelasmute') then
local UserId = Text:match('(%d+)/zzelasmute')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasicsQ:MuteId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر الكتـم عن المالكيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasmute') then
local UserId = Text:match('(%d+)/zelasmute')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasics:MuteId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر الكتـم عن المنشئ الاساسي .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelassmute') then
local UserId = Text:match('(%d+)/zelassmute')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Originators:MuteId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر الكتـم عن المنشئيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasssmute') then
local UserId = Text:match('(%d+)/zelasssmute')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Managers:MuteId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر الكتـم عن المـدراء .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelassssmute') then
local UserId = Text:match('(%d+)/zelassssmute')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Addictive:MuteId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر الكتـم عن الادمنيـه .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzzelasup') then
local UserId = Text:match('(%d+)/zzzelasup')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasicsQQ:UpId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم وضـع امـر الرفـع لـ المالكيـن الاساسيين .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zzelasup') then
local UserId = Text:match('(%d+)/zzelasup')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasicsQ:UpId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم وضـع امـر الرفـع لـ المالكيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasup') then
local UserId = Text:match('(%d+)/zelasup')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasics:UpId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم وضـع امـر الرفـع لـ المنشئ الاساسي .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelassup') then
local UserId = Text:match('(%d+)/zelassup')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Originators:UpId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم وضـع امـر الرفـع لـ المنشئيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasssup') then
local UserId = Text:match('(%d+)/zelasssup')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Managers:UpId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم وضـع امـر الرفـع لـ المـدراء .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzelesmute') then
local UserId = Text:match('(%d+)/zzelesmute')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasicsQ:MuteId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر الكتـم لـ المالكيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelesmute') then
local UserId = Text:match('(%d+)/zelesmute')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasics:MuteId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر الكتـم لـ المنشئ الاساسي .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelessmute') then
local UserId = Text:match('(%d+)/zelessmute')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Originators:MuteId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر الكتـم لـ المنشئيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelesssmute') then
local UserId = Text:match('(%d+)/zelesssmute')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Managers:MuteId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر الكتـم لـ المـدراء .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelessssmute') then
local UserId = Text:match('(%d+)/zelessssmute')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Addictive:MuteId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر الكتـم لـ الادمنيـه .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzzelasdw') then
local UserId = Text:match('(%d+)/zzzelasdw')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasicsQQ:DWId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم وضـع امـر التنزيـل لـ المالكيـن الاساسيين .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zzelasdw') then
local UserId = Text:match('(%d+)/zzelasdw')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasicsQ:DWId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم وضـع امـر التنزيـل لـ المالكيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasdw') then
local UserId = Text:match('(%d+)/zelasdw')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasics:DWId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم وضـع امـر التنزيـل لـ المنشئ الاساسي .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelassdw') then
local UserId = Text:match('(%d+)/zelassdw')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Originators:DWId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم وضـع امـر التنزيـل لـ المنشئيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasssdw') then
local UserId = Text:match('(%d+)/zelasssdw')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Managers:DWId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم وضـع امـر التنزيـل لـ المـدراء .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzelasaftr') then
local UserId = Text:match('(%d+)/zzelasaftr')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasicsQ:Aftary"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر تفعيل افتاري عن المالكيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasaftr') then
local UserId = Text:match('(%d+)/zelasaftr')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasics:Aftary"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر تفعيل افتاري عن المنشئ الاساسي .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelassaftr') then
local UserId = Text:match('(%d+)/zelassaftr')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Originators:Aftary"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر تفعيل افتاري عن المنشئيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasssaftr') then
local UserId = Text:match('(%d+)/zelasssaftr')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Managers:Aftary"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر تفعيل افتاري عن المـدراء .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzelesaftr') then
local UserId = Text:match('(%d+)/zzelesaftr')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasicsQ:Aftary"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر تفعيل افتاري لـ المالكيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelesaftr') then
local UserId = Text:match('(%d+)/zelesaftr')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasics:Aftary"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر تفعيل افتاري لـ المنشئ الاساسي .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelessaftr') then
local UserId = Text:match('(%d+)/zelessaftr')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Originators:Aftary"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر تفعيل افتاري لـ المنشئيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelesssaftr') then
local UserId = Text:match('(%d+)/zelesssaftr')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Managers:Aftary"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر تفعيل افتاري لـ المـدراء .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzelasiid') then
local UserId = Text:match('(%d+)/zzelasiid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasicsQ:Aiid"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر تفعيل الايدي عن المالكيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasiid') then
local UserId = Text:match('(%d+)/zelasiid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasics:Aiid"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر تفعيل الايدي عن المنشئ الاساسي .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelassiid') then
local UserId = Text:match('(%d+)/zelassiid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Originators:Aiid"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر تفعيل الايدي عن المنشئيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasssiid') then
local UserId = Text:match('(%d+)/zelasssiid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Managers:Aiid"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر تفعيل الايدي عن المـدراء .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzelesiid') then
local UserId = Text:match('(%d+)/zzelesiid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasicsQ:Aiid"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر تفعيل الايدي لـ المالكيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelesiid') then
local UserId = Text:match('(%d+)/zelesiid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasics:Aiid"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر تفعيل الايدي لـ المنشئ الاساسي .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelessiid') then
local UserId = Text:match('(%d+)/zelessiid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Originators:Aiid"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر تفعيل الايدي لـ المنشئيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelesssiid') then
local UserId = Text:match('(%d+)/zelesssiid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Managers:Aiid"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر تفعيل الايدي لـ المـدراء .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/asrtp') then
local UserId = Text:match('(%d+)/asrtp')
if tonumber(IdUser) == tonumber(UserId) then
local Num = Redis:get(Gold.."Gold:Num:Add:Games"..ChatId..IdUser) or 0
if tonumber(Num) <= tonumber(5000) then
return send(ChatId,Msg_id, "*⇜ عـذراً .. نقـاطـك غيـر كـافيـه لشـراء الرتبـه\n⇜ ارسل الالعـاب وابـدأ بتجميـع النقـاط*","md",true)  
else
Redis:sadd(Gold.."Gold:TheBasics:Group"..ChatId,IdUser)
Redis:decrby(Gold.."Gold:Num:Add:Games"..ChatId..IdUser,5000)
local rotp = Reply_Status(IdUser,"⇜ تم ترقيتـه منشـئ اسـاسـي .. بنجـاح ✓").Reply
return edit(ChatId,Msg_id,rotp, 'md',true)
end
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/msrtp') then
local UserId = Text:match('(%d+)/msrtp')
if tonumber(IdUser) == tonumber(UserId) then
local Num = Redis:get(Gold.."Gold:Num:Add:Games"..ChatId..IdUser) or 0
if tonumber(Num) <= tonumber(5000) then
return send(ChatId,Msg_id, "*⇜ عـذراً .. نقـاطـك غيـر كـافيـه لشـراء الرتبـه\n⇜ ارسل الالعـاب وابـدأ بتجميـع النقـاط*","md",true)  
else
Redis:sadd(Gold.."Gold:TheMasics:Group"..ChatId,IdUser)
Redis:decrby(Gold.."Gold:Num:Add:Games"..ChatId..IdUser,5000)
local rotp = Reply_Status(IdUser,"⇜ تم ترقيتـه منشئـه اسـاسيـه .. بنجـاح ✓").Reply
return edit(ChatId,Msg_id,rotp, 'md',true)
end
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/assrtp') then
local UserId = Text:match('(%d+)/assrtp')
if tonumber(IdUser) == tonumber(UserId) then
local Num = Redis:get(Gold.."Gold:Num:Add:Games"..ChatId..IdUser) or 0
if tonumber(Num) <= tonumber(3000) then
return send(ChatId,Msg_id, "*⇜ عـذراً .. نقـاطـك غيـر كـافيـه لشـراء الرتبـه\n⇜ ارسل الالعـاب وابـدأ بتجميـع النقـاط*","md",true)  
else
Redis:sadd(Gold.."Gold:Originators:Group"..ChatId,IdUser)
Redis:decrby(Gold.."Gold:Num:Add:Games"..ChatId..IdUser,3000)
local rotp = Reply_Status(IdUser,"⇜ تم ترقيتـه منشـئ .. بنجـاح ✓").Reply
return edit(ChatId,Msg_id,rotp, 'md',true)
end
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/mssrtp') then
local UserId = Text:match('(%d+)/mssrtp')
if tonumber(IdUser) == tonumber(UserId) then
local Num = Redis:get(Gold.."Gold:Num:Add:Games"..ChatId..IdUser) or 0
if tonumber(Num) <= tonumber(3000) then
return send(ChatId,Msg_id, "*⇜ عـذراً .. نقـاطـك غيـر كـافيـه لشـراء الرتبـه\n⇜ ارسل الالعـاب وابـدأ بتجميـع النقـاط*","md",true)  
else
Redis:sadd(Gold.."Gold:Origimators:Group"..ChatId,IdUser)
Redis:decrby(Gold.."Gold:Num:Add:Games"..ChatId..IdUser,3000)
local rotp = Reply_Status(IdUser,"⇜ تم ترقيتـه منشئـه .. بنجـاح ✓").Reply
return edit(ChatId,Msg_id,rotp, 'md',true)
end
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/asssrtp') then
local UserId = Text:match('(%d+)/asssrtp')
if tonumber(IdUser) == tonumber(UserId) then
local Num = Redis:get(Gold.."Gold:Num:Add:Games"..ChatId..IdUser) or 0
if tonumber(Num) <= tonumber(2000) then
return send(ChatId,Msg_id, "*⇜ عـذراً .. نقـاطـك غيـر كـافيـه لشـراء الرتبـه\n⇜ ارسل الالعـاب وابـدأ بتجميـع النقـاط*","md",true)  
else
Redis:sadd(Gold.."Gold:Managers:Group"..ChatId,IdUser)
Redis:decrby(Gold.."Gold:Num:Add:Games"..ChatId..IdUser,2000)
local rotp = Reply_Status(IdUser,"⇜ تم ترقيتـه مـديـر .. بنجـاح ✓").Reply
return edit(ChatId,Msg_id,rotp, 'md',true)
end
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/msssrtp') then
local UserId = Text:match('(%d+)/msssrtp')
if tonumber(IdUser) == tonumber(UserId) then
local Num = Redis:get(Gold.."Gold:Num:Add:Games"..ChatId..IdUser) or 0
if tonumber(Num) <= tonumber(2000) then
return send(ChatId,Msg_id, "*⇜ عـذراً .. نقـاطـك غيـر كـافيـه لشـراء الرتبـه\n⇜ ارسل الالعـاب وابـدأ بتجميـع النقـاط*","md",true)  
else
Redis:sadd(Gold.."Gold:Mamagers:Group"..ChatId,IdUser)
Redis:decrby(Gold.."Gold:Num:Add:Games"..ChatId..IdUser,2000)
local rotp = Reply_Status(IdUser,"⇜ تم ترقيتـه مـديـره .. بنجـاح ✓").Reply
return edit(ChatId,Msg_id,rotp, 'md',true)
end
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/assssrtp') then
local UserId = Text:match('(%d+)/assssrtp')
if tonumber(IdUser) == tonumber(UserId) then
local Num = Redis:get(Gold.."Gold:Num:Add:Games"..ChatId..IdUser) or 0
if tonumber(Num) <= tonumber(1200) then
return send(ChatId,Msg_id, "*⇜ عـذراً .. نقـاطـك غيـر كـافيـه لشـراء الرتبـه\n⇜ ارسل الالعـاب وابـدأ بتجميـع النقـاط*","md",true)  
else
Redis:sadd(Gold.."Gold:Addictive:Group"..ChatId,IdUser)
Redis:decrby(Gold.."Gold:Num:Add:Games"..ChatId..IdUser,1200)
local rotp = Reply_Status(IdUser,"⇜ تم ترقيتـه ادمــن .. بنجـاح ✓").Reply
return edit(ChatId,Msg_id,rotp, 'md',true)
end
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/mssssrtp') then
local UserId = Text:match('(%d+)/mssssrtp')
if tonumber(IdUser) == tonumber(UserId) then
local Num = Redis:get(Gold.."Gold:Num:Add:Games"..ChatId..IdUser) or 0
if tonumber(Num) <= tonumber(1200) then
return send(ChatId,Msg_id, "*⇜ عـذراً .. نقـاطـك غيـر كـافيـه لشـراء الرتبـه\n⇜ ارسل الالعـاب وابـدأ بتجميـع النقـاط*","md",true)  
else
Redis:sadd(Gold.."Gold:Mddictive:Group"..ChatId,IdUser)
Redis:decrby(Gold.."Gold:Num:Add:Games"..ChatId..IdUser,1200)
local rotp = Reply_Status(IdUser,"⇜ تم ترقيتـه ادمـونـه .. بنجـاح ✓").Reply
return edit(ChatId,Msg_id,rotp, 'md',true)
end
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/asssssrtp') then
local UserId = Text:match('(%d+)/asssssrtp')
if tonumber(IdUser) == tonumber(UserId) then
local Num = Redis:get(Gold.."Gold:Num:Add:Games"..ChatId..IdUser) or 0
if tonumber(Num) <= tonumber(700) then
return send(ChatId,Msg_id, "*⇜ عـذراً .. نقـاطـك غيـر كـافيـه لشـراء الرتبـه\n⇜ ارسل الالعـاب وابـدأ بتجميـع النقـاط*","md",true)  
else
Redis:sadd(Gold.."Gold:Distinguished:Group"..ChatId,IdUser)
Redis:decrby(Gold.."Gold:Num:Add:Games"..ChatId..IdUser,700)
local rotp = Reply_Status(IdUser,"⇜ تم ترقيتـه مميــز .. بنجـاح ✓").Reply
return edit(ChatId,Msg_id,rotp, 'md',true)
end
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/msssssrtp') then
local UserId = Text:match('(%d+)/msssssrtp')
if tonumber(IdUser) == tonumber(UserId) then
local Num = Redis:get(Gold.."Gold:Num:Add:Games"..ChatId..IdUser) or 0
if tonumber(Num) <= tonumber(700) then
return send(ChatId,Msg_id, "*⇜ عـذراً .. نقـاطـك غيـر كـافيـه لشـراء الرتبـه\n⇜ ارسل الالعـاب وابـدأ بتجميـع النقـاط*","md",true)  
else
Redis:sadd(Gold.."Gold:Mistinguished:Group"..ChatId,IdUser)
Redis:decrby(Gold.."Gold:Num:Add:Games"..ChatId..IdUser,700)
local rotp = Reply_Status(IdUser,"⇜ تم ترقيتـه مميــزه .. بنجـاح ✓").Reply
return edit(ChatId,Msg_id,rotp, 'md',true)
end
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzelasrad') then
local UserId = Text:match('(%d+)/zzelasrad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasicsQ:RadId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر مسح رد عن المالكيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasrad') then
local UserId = Text:match('(%d+)/zelasrad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasics:RadId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر مسح رد عن المنشئ الاساسي .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelassrad') then
local UserId = Text:match('(%d+)/zelassrad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Originators:RadId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر مسح رد عن المنشئيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasssrad') then
local UserId = Text:match('(%d+)/zelasssrad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Managers:RadId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر مسح رد عن المـدراء .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelassssrad') then
local UserId = Text:match('(%d+)/zelassssrad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Addictive:RadId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر مسح رد عن الادمنيـه .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzelesrad') then
local UserId = Text:match('(%d+)/zzelesrad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasicsQ:RadId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر مسح رد لـ المالكيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelesrad') then
local UserId = Text:match('(%d+)/zelesrad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasics:RadId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر مسح رد لـ المنشئ الاساسي .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelessrad') then
local UserId = Text:match('(%d+)/zelessrad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Originators:RadId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر مسح رد لـ المنشئيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelesssrad') then
local UserId = Text:match('(%d+)/zelesssrad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Managers:RadId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر مسح رد لـ المـدراء .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelessssrad') then
local UserId = Text:match('(%d+)/zelessssrad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Addictive:RadId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر مسح رد لـ الادمنيـه .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzelaspin') then
local UserId = Text:match('(%d+)/zzelaspin')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasicsQ:PinId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر تثبيت عن المالكيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelaspin') then
local UserId = Text:match('(%d+)/zelaspin')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasics:PinId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر تثبيت عن المنشئ الاساسي .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasspin') then
local UserId = Text:match('(%d+)/zelasspin')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Originators:PinId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر تثبيت عن المنشئيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelassspin') then
local UserId = Text:match('(%d+)/zelassspin')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Managers:PinId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر تثبيت عن المـدراء .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasssspin') then
local UserId = Text:match('(%d+)/zelasssspin')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Addictive:PinId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر تثبيت عن الادمنيـه .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzelespin') then
local UserId = Text:match('(%d+)/zzelespin')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasicsQ:PinId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر تثبيت لـ المالكيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelespin') then
local UserId = Text:match('(%d+)/zelespin')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasics:PinId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر تثبيت لـ المنشئ الاساسي .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelesspin') then
local UserId = Text:match('(%d+)/zelesspin')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Originators:PinId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر تثبيت لـ المنشئيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelessspin') then
local UserId = Text:match('(%d+)/zelessspin')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Managers:PinId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر تثبيت لـ المـدراء .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelesssspin') then
local UserId = Text:match('(%d+)/zelesssspin')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Addictive:PinId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر تثبيت لـ الادمنيـه .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzelashms') then
local UserId = Text:match('(%d+)/zzelashms')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasicsQ:HmsId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر الهمسه عن المالكيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelashms') then
local UserId = Text:match('(%d+)/zelashms')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasics:HmsId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر الهمسه عن المنشئ الاساسي .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasshms') then
local UserId = Text:match('(%d+)/zelasshms')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Originators:HmsId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر الهمسه عن المنشئيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelassshms') then
local UserId = Text:match('(%d+)/zelassshms')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Managers:HmsId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر الهمسه عن المـدراء .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasssshms') then
local UserId = Text:match('(%d+)/zelasssshms')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Addictive:HmsId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر الهمسه عن الادمنيـه .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzeleshms') then
local UserId = Text:match('(%d+)/zzeleshms')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasicsQ:HmsId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر الهمسه لـ المالكيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zeleshms') then
local UserId = Text:match('(%d+)/zeleshms')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasics:HmsId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر الهمسه لـ المنشئ الاساسي .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelesshms') then
local UserId = Text:match('(%d+)/zelesshms')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Originators:HmsId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر الهمسه لـ المنشئيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelessshms') then
local UserId = Text:match('(%d+)/zelessshms')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Managers:HmsId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر الهمسه لـ المـدراء .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelesssshms') then
local UserId = Text:match('(%d+)/zelesssshms')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Addictive:HmsId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر الهمسه لـ الادمنيـه .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzelasarad') then
local UserId = Text:match('(%d+)/zzelasarad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasicsQ:AradId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر اضف رد عن المالكيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasarad') then
local UserId = Text:match('(%d+)/zelasarad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:TheBasics:AradId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر اضف رد عن المنشئ الاساسي .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelassarad') then
local UserId = Text:match('(%d+)/zelassarad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Originators:AradId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر اضف رد عن المنشئيـن .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelasssarad') then
local UserId = Text:match('(%d+)/zelasssarad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Managers:AradId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر اضف رد عن المـدراء .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelassssarad') then
local UserId = Text:match('(%d+)/zelassssarad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Addictive:AradId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تعطيـل امر اضف رد عن الادمنيـه .. بنجـاح ✓").Lock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/zzelesarad') then
local UserId = Text:match('(%d+)/zzelesarad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasicsQ:AradId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر اضف رد لـ المالكيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelesarad') then
local UserId = Text:match('(%d+)/zelesarad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasics:AradId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر اضف رد لـ المنشئ الاساسي .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelessarad') then
local UserId = Text:match('(%d+)/zelessarad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Originators:AradId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر اضف رد لـ المنشئيـن .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelesssarad') then
local UserId = Text:match('(%d+)/zelesssarad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Managers:AradId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر اضف رد لـ المـدراء .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/zelessssarad') then
local UserId = Text:match('(%d+)/zelessssarad')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Addictive:AradId"..ChatId,true) 
local rotp = Reply_Status(IdUser,"⇜ تم تفعيـل امـر اضف رد لـ الادمنيـه .. بنجـاح ✓").unLock
return edit(ChatId,Msg_id,rotp, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/by3hour') then
local UserId = Text:match('(%d+)/by3hour')
if tonumber(IdUser) == tonumber(UserId) then
Redis:setex(Gold.."Status:TagGroup"..ChatId,10800,true) --3 ساعات--
Redis:set(Gold.."Status:TagGroup1"..ChatId,true) 
Redis:set(Gold.."Num:TagGroup"..ChatId,10800)
local autotag = Reply_Status(IdUser,"⇜ تم تعييـن التـاك التلقـائـي كـل 3 سـاعـات .. بنجـاح ✓").Reply
return edit(ChatId,Msg_id,autotag, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/by5hour') then
local UserId = Text:match('(%d+)/by5hour')
if tonumber(IdUser) == tonumber(UserId) then
Redis:setex(Gold.."Status:TagGroup"..ChatId,18000,true) --5 ساعات--
Redis:set(Gold.."Status:TagGroup1"..ChatId,true) 
Redis:set(Gold.."Num:TagGroup"..ChatId,18000)
local autotag = Reply_Status(IdUser,"⇜ تم تعييـن التـاك التلقـائـي كـل 5 سـاعـات .. بنجـاح ✓").Reply
return edit(ChatId,Msg_id,autotag, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
if Text and Text:match('(%d+)/byday') then
local UserId = Text:match('(%d+)/byday')
if tonumber(IdUser) == tonumber(UserId) then
Redis:setex(Gold.."Status:TagGroup"..ChatId,86400,true) --يوم--
Redis:set(Gold.."Status:TagGroup1"..ChatId,true) 
Redis:set(Gold.."Num:TagGroup"..ChatId,86400)
local autotag = Reply_Status(IdUser,"⇜ تم تعييـن التـاك التلقـائـي كـل 24 ساعـة .. بنجـاح ✓").Reply
return edit(ChatId,Msg_id,autotag, 'md',true)
else
return bot.answerCallbackQuery(data.id, "⇜ دعبل .. هذا الامر لا يخصك", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/mysysr') then
local UserId = Text:match('(%d+)/mysysr')
if tonumber(IdUser) == tonumber(UserId) then
local Zilzal = bot.getUser(IdUser)
local news = Zilzal.first_name
local media = {
{"https://t.me/syzedrattt/2","*⇜ تويوتـا لانـد كـروزر 🚘\n⇜ موديـل 2023 ✓\n⇜ روح فحط على الاعضاء 😹🌚*"},
{"https://t.me/syzedrattt/3","*⇜ تويوتـا بـرادو 🚘\n⇜ موديـل 2023 ✓\n⇜ روح فحط على الاعضاء 😹🌚*"},
{"https://t.me/syzedrattt/4","*⇜ تويوتـا هايلكـس 🚘\n⇜ موديـل 2023 ✓\n⇜ روح فحط على الاعضاء 😹🌚*"},
{"https://t.me/syzedrattt/5","*⇜ تويوتـا فـورشنـر 🚘\n⇜ موديـل 2023 ✓\n⇜ روح فحط على الاعضاء 😹🌚*"},
{"https://t.me/syzedrattt/6","*⇜ تويوتـا شـاص 🚘\n⇜ موديـل 2023 ✓\n⇜ روح فحط على الاعضاء 😹🌚*"},
{"https://t.me/syzedrattt/7","*⇜ هيونـداي توسـان 🚘\n⇜ موديـل 2023 ✓\n⇜ روح فحط على الاعضاء 😹🌚*"},
{"https://t.me/syzedrattt/8","*⇜ هيونـداي سنتـافي 🚘\n⇜ موديـل 2023 ✓\n⇜ روح فحط على الاعضاء 😹🌚*"},
{"https://t.me/syzedrattt/9","*⇜ تويوتـا كـامـري 🚘\n⇜ موديـل 2022 ✓\n⇜ روح فحط على الاعضاء 😹🌚*"},
{"https://t.me/syzedrattt/10","*⇜ هيونـداي النتـرا 🚘\n⇜ موديـل 2022 ✓\n⇜ روح فحط على الاعضاء 😹🌚*"},
{"https://t.me/syzedrattt/11","*⇜ تويوتـا شبـح 🚘\n⇜ موديـل 2022 ✓\n⇜ روح فحط على الاعضاء 😹🌚*"},
{"https://t.me/syzedrattt/12","*⇜ مـدرعـة عسكـريـة 🚔\n⇜ موديـل 2022 ✓\n⇜ روح فحط على الاعضاء 😹🌚*"},
}
local rand = math.random(1,11)
local msg_media = {
type = "photo",
media = media[rand][1],
caption = media[rand][2],
parse_mode = "Markdown"
} 
local keyboard = {} 
keyboard.inline_keyboard = {
{{text =news, url = "https://t.me/"..Zilzal.username..""},},
}
local msg_reply = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..msg_reply.."&media="..JSON.encode(msg_media).."&reply_markup="..JSON.encode(keyboard))
end 
end
-- زخرفه --
if Text and Text:match('(%d+)/ZhrAde') then
local UserId = Text:match('(%d+)/ZhrAde')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '🇪🇬 عـربـي', data = IdUser..'/Zhrfaar'},{text = '🇱🇷 English', data = IdUser..'/Zhrfaen'},
},
}
}
 bot.editMessageText(ChatId,Msg_id, '⇜ اختر نوع الزخرفه \n🇱🇷 ›English \n🇪🇬 › عـربـي', 'md', true, false, reply_markup)
end
end 
----------------
if Text and Text:match('(%d+)/Zhrfaar') then
local UserId = Text:match('(%d+)/Zhrfaar')
if tonumber(IdUser) == tonumber(UserId) then
Redis:setex(Gold..":ZhrfNow:ar"..UserId,500,true)
bot.editMessageText(ChatId,Msg_id,"⇜ ارسل الاسم بالعربي", 'md', false)
end
elseif Text and Text:match('(%d+)/Zhrfinlin') then
local UserId = Text:match('(%d+)/Zhrfinlin')
if tonumber(IdUser) == tonumber(UserId) then
Redis:setex(Gold..":Zhrfinlin:en"..UserId,500,true)
bot.editMessageText(ChatId,Msg_id,"⇜ ارسل الاسم بالانكليزي", 'md', false)
end
elseif Text and Text:match('(%d+)/Zhrfaen') then
local UserId = Text:match('(%d+)/Zhrfaen')
if tonumber(IdUser) == tonumber(UserId) then
Redis:setex(Gold..":ZhrfNow:en"..UserId,500,true)
bot.editMessageText(ChatId,Msg_id,"⇜ ارسل الاسم بالانكليزي", 'md', false)
end
end
-----------------
if Text and Text:match('(%d+)/N1') then
local UserId = Text:match('(%d+)/N1')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna1 = DCBAN:gsub('a','ᥲ️' ) Q_bna1 = Q_bna1:gsub('b','Ⴆ' ) Q_bna1 = Q_bna1:gsub('c','ᥴ' ) Q_bna1 = Q_bna1:gsub('d','ძ' ) Q_bna1 = Q_bna1:gsub('e','ᥱ' ) Q_bna1 = Q_bna1:gsub('f','f' ) Q_bna1 = Q_bna1:gsub('g','ᧁ' ) Q_bna1 = Q_bna1:gsub('h','Ꮒ' ) Q_bna1 = Q_bna1:gsub('i','Ꭵ' ) Q_bna1 = Q_bna1:gsub('j','᧒' ) Q_bna1 = Q_bna1:gsub('k','𝚔' ) Q_bna1 = Q_bna1:gsub('l','ᗩ' ) Q_bna1 = Q_bna1:gsub('m',' ꧑' ) Q_bna1 = Q_bna1:gsub('n','ꪀ' ) Q_bna1 = Q_bna1:gsub('o','ρ' ) Q_bna1 = Q_bna1:gsub('p','ρ' ) Q_bna1 = Q_bna1:gsub('q','ǫ' ) Q_bna1 = Q_bna1:gsub('r','ℛ' ) Q_bna1 = Q_bna1:gsub('s','᥉' ) Q_bna1 = Q_bna1:gsub('t','ƚ' ) Q_bna1 = Q_bna1:gsub('u','ᥙ' ) Q_bna1 = Q_bna1:gsub('v','᥎' ) Q_bna1 = Q_bna1:gsub('w','ꪝ' ) Q_bna1 = Q_bna1:gsub('x','᥊' ) Q_bna1 = Q_bna1:gsub('y','ꪗ' ) Q_bna1 = Q_bna1:gsub('z','ᤁ')
bot.editMessageText(ChatId, Msg_id, "⇜ لـقـد اخـترت   \n▷ `"..Q_bna1.."`", "md",false)
end
end
----------
if Text and Text:match('(%d+)/N2') then
local UserId = Text:match('(%d+)/N2')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna2 = DCBAN:gsub('a','ᴀ' ) Q_bna2 = Q_bna2:gsub('b','ʙ' ) Q_bna2 = Q_bna2:gsub('c','ᴄ' ) Q_bna2 = Q_bna2:gsub('d','ᴅ' ) Q_bna2 = Q_bna2:gsub('e','ᴇ' ) Q_bna2 = Q_bna2:gsub('f','ғ' ) Q_bna2 = Q_bna2:gsub('g','ɢ' ) Q_bna2 = Q_bna2:gsub('h','ʜ' ) Q_bna2 = Q_bna2:gsub('i','ɪ' ) Q_bna2 = Q_bna2:gsub('j','ᴊ' ) Q_bna2 = Q_bna2:gsub('k','ᴋ' ) Q_bna2 = Q_bna2:gsub('l','ʟ' ) Q_bna2 = Q_bna2:gsub('m','ᴍ' ) Q_bna2 = Q_bna2:gsub('n','ɴ' ) Q_bna2 = Q_bna2:gsub('o','ᴏ' ) Q_bna2 = Q_bna2:gsub('p','ᴘ' ) Q_bna2 = Q_bna2:gsub('q','ǫ' ) Q_bna2 = Q_bna2:gsub('r','ʀ' ) Q_bna2 = Q_bna2:gsub('s','s' ) Q_bna2 = Q_bna2:gsub('t','ᴛ' ) Q_bna2 = Q_bna2:gsub('u','ᴜ' ) Q_bna2 = Q_bna2:gsub('v','ᴠ' ) Q_bna2 = Q_bna2:gsub('w','ᴡ' ) Q_bna2 = Q_bna2:gsub('x','x' ) Q_bna2 = Q_bna2:gsub('y','ʏ' ) Q_bna2 = Q_bna2:gsub('z','ᴢ')
bot.editMessageText(ChatId, Msg_id, "⇜لـقـد اخـترت   \n▷ `"..Q_bna2.."`", "md",false)
end
end
----------
if Text and Text:match('(%d+)/N3') then
local UserId = Text:match('(%d+)/N3')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna3 = DCBAN:gsub('a','Ａ' ) Q_bna3 = Q_bna3:gsub('b','Ｂ' ) Q_bna3 = Q_bna3:gsub('c','Ｃ' ) Q_bna3 = Q_bna3:gsub('d','Ｄ' ) Q_bna3 = Q_bna3:gsub('e','Ｅ' ) Q_bna3 = Q_bna3:gsub('f','Ｆ' ) Q_bna3 = Q_bna3:gsub('g','Ｇ' ) Q_bna3 = Q_bna3:gsub('h','Ｈ' ) Q_bna3 = Q_bna3:gsub('i','Ｉ' ) Q_bna3 = Q_bna3:gsub('j','Ｊ' ) Q_bna3 = Q_bna3:gsub('k','Ｋ' ) Q_bna3 = Q_bna3:gsub('l','Ｌ' ) Q_bna3 = Q_bna3:gsub('m','Ｍ' ) Q_bna3 = Q_bna3:gsub('n','Ｎ' ) Q_bna3 = Q_bna3:gsub('o','Ｏ' ) Q_bna3 = Q_bna3:gsub('p','Ｐ' ) Q_bna3 = Q_bna3:gsub('q','Ｑ' ) Q_bna3 = Q_bna3:gsub('r','Ｒ' ) Q_bna3 = Q_bna3:gsub('s','Ｓ' ) Q_bna3 = Q_bna3:gsub('t','Ｔ' ) Q_bna3 = Q_bna3:gsub('u','Ｕ' ) Q_bna3 = Q_bna3:gsub('v','Ｖ' ) Q_bna3 = Q_bna3:gsub('w','Ｗ' ) Q_bna3 = Q_bna3:gsub('x','Ｘ' ) Q_bna3 = Q_bna3:gsub('y','Ｙ' ) Q_bna3 = Q_bna3:gsub('z','Ｚ')
bot.editMessageText(ChatId, Msg_id, "⇜ لـقـد اخـترت   \n▷ `"..Q_bna3.."`", "md",false)
end
end
----------
if Text and Text:match('(%d+)/N4') then
local UserId = Text:match('(%d+)/N4')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna4 = DCBAN:gsub('a','𝗔' ) Q_bna4 = Q_bna4:gsub('b','𝗕' ) Q_bna4 = Q_bna4:gsub('c','𝗖' ) Q_bna4 = Q_bna4:gsub('d','𝗗' ) Q_bna4 = Q_bna4:gsub('e','𝗘' ) Q_bna4 = Q_bna4:gsub('f','f' ) Q_bna4 = Q_bna4:gsub('g','𝗚' ) Q_bna4 = Q_bna4:gsub('h','𝗛' ) Q_bna4 = Q_bna4:gsub('i','𝗜' ) Q_bna4 = Q_bna4:gsub('j','𝗝' ) Q_bna4 = Q_bna4:gsub('k','𝗞' ) Q_bna4 = Q_bna4:gsub('l','𝗟' ) Q_bna4 = Q_bna4:gsub('m','𝗠' ) Q_bna4 = Q_bna4:gsub('n','𝗡' ) Q_bna4 = Q_bna4:gsub('o','𝗢' ) Q_bna4 = Q_bna4:gsub('p','𝗣' ) Q_bna4 = Q_bna4:gsub('q','𝗤' ) Q_bna4 = Q_bna4:gsub('r','𝗥' ) Q_bna4 = Q_bna4:gsub('s','𝗦' ) Q_bna4 = Q_bna4:gsub('t','𝗧' ) Q_bna4 = Q_bna4:gsub('u','𝗨' ) Q_bna4 = Q_bna4:gsub('v','𝗩' ) Q_bna4 = Q_bna4:gsub('w','𝗪' ) Q_bna4 = Q_bna4:gsub('x','𝗫' ) Q_bna4 = Q_bna4:gsub('y','𝗬' ) Q_bna4 = Q_bna4:gsub('z','𝗭')
bot.editMessageText(ChatId, Msg_id, "⇜ لـقـد اخـترت   \n▷ `"..Q_bna4.."`", "md",false)
end
end
----------
if Text and Text:match('(%d+)/N5') then
local UserId = Text:match('(%d+)/N5')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna5 = DCBAN:gsub('a','𝐀' ) Q_bna5 = Q_bna5:gsub('b','𝐁' ) Q_bna5 = Q_bna5:gsub('c','𝐂' ) Q_bna5 = Q_bna5:gsub('d','𝐃' ) Q_bna5 = Q_bna5:gsub('e','𝐄' ) Q_bna5 = Q_bna5:gsub('f','𝐅' ) Q_bna5 = Q_bna5:gsub('g','𝐆' ) Q_bna5 = Q_bna5:gsub('h','𝐇' ) Q_bna5 = Q_bna5:gsub('i','𝐈' ) Q_bna5 = Q_bna5:gsub('j','𝐉' ) Q_bna5 = Q_bna5:gsub('k','𝐊' ) Q_bna5 = Q_bna5:gsub('l','𝑳' ) Q_bna5 = Q_bna5:gsub('m','𝐌' ) Q_bna5 = Q_bna5:gsub('n','𝐍' ) Q_bna5 = Q_bna5:gsub('o','𝐎' ) Q_bna5 = Q_bna5:gsub('p','𝐏' ) Q_bna5 = Q_bna5:gsub('q','𝐐' ) Q_bna5 = Q_bna5:gsub('r','𝐑' ) Q_bna5 = Q_bna5:gsub('s','𝐒' ) Q_bna5 = Q_bna5:gsub('t','𝐓' ) Q_bna5 = Q_bna5:gsub('u','𝐔' ) Q_bna5 = Q_bna5:gsub('v','𝐕' ) Q_bna5 = Q_bna5:gsub('w','𝐖' ) Q_bna5 = Q_bna5:gsub('x','𝐗' ) Q_bna5 = Q_bna5:gsub('y','𝐘' ) Q_bna5 = Q_bna5:gsub('z','𝐙')
bot.editMessageText(ChatId, Msg_id, "⇜ لـقـد اخـترت   \n▷ `"..Q_bna5.."`", "md",false)
end
end
----------
if Text and Text:match('(%d+)/N6') then
local UserId = Text:match('(%d+)/N6')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna6 = DCBAN:gsub('a','𝐚' ) Q_bna6 = Q_bna6:gsub('b','𝐛' ) Q_bna6 = Q_bna6:gsub('c','𝐜' ) Q_bna6 = Q_bna6:gsub('d','𝐝' ) Q_bna6 = Q_bna6:gsub('e','𝐞' ) Q_bna6 = Q_bna6:gsub('f','𝐅' ) Q_bna6 = Q_bna6:gsub('g','𝐠' ) Q_bna6 = Q_bna6:gsub('h','𝐡' ) Q_bna6 = Q_bna6:gsub('i','𝐢' ) Q_bna6 = Q_bna6:gsub('j','𝐣' ) Q_bna6 = Q_bna6:gsub('k','𝐤' ) Q_bna6 = Q_bna6:gsub('l','𝐥' ) Q_bna6 = Q_bna6:gsub('m','𝐦' ) Q_bna6 = Q_bna6:gsub('n','𝐧' ) Q_bna6 = Q_bna6:gsub('o','𝐨' ) Q_bna6 = Q_bna6:gsub('p','𝐩' ) Q_bna6 = Q_bna6:gsub('q','𝐪' ) Q_bna6 = Q_bna6:gsub('r','𝐫' ) Q_bna6 = Q_bna6:gsub('s','𝐬' ) Q_bna6 = Q_bna6:gsub('t','𝐭' ) Q_bna6 = Q_bna6:gsub('u','𝐮' ) Q_bna6 = Q_bna6:gsub('v','𝐯' ) Q_bna6 = Q_bna6:gsub('w','𝐰' ) Q_bna6 = Q_bna6:gsub('x','𝐱' ) Q_bna6 = Q_bna6:gsub('y','𝐲' ) Q_bna6 = Q_bna6:gsub('z','𝐳')
bot.editMessageText(ChatId, Msg_id, "⇜ لـقـد اخـترت   \n▷ `"..Q_bna6.."`", "md",false)
end
end
----------
if Text and Text:match('(%d+)/N7') then
local UserId = Text:match('(%d+)/N7')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna7 = DCBAN:gsub('a','𝑎' ) Q_bna7 = Q_bna7:gsub('b','𝑏' ) Q_bna7 = Q_bna7:gsub('c','𝑐' ) Q_bna7 = Q_bna7:gsub('d','𝑑' ) Q_bna7 = Q_bna7:gsub('e','𝑒' ) Q_bna7 = Q_bna7:gsub('f','𝒇' ) Q_bna7 = Q_bna7:gsub('g','𝑔' ) Q_bna7 = Q_bna7:gsub('h','ℎ' ) Q_bna7 = Q_bna7:gsub('i','𝑖' ) Q_bna7 = Q_bna7:gsub('j','𝑗' ) Q_bna7 = Q_bna7:gsub('k','𝑘' ) Q_bna7 = Q_bna7:gsub('l','𝑙' ) Q_bna7 = Q_bna7:gsub('m','𝑚' ) Q_bna7 = Q_bna7:gsub('n','𝑛' ) Q_bna7 = Q_bna7:gsub('o','𝑜' ) Q_bna7 = Q_bna7:gsub('p','𝑝' ) Q_bna7 = Q_bna7:gsub('q','𝑞' ) Q_bna7 = Q_bna7:gsub('r','𝑟' ) Q_bna7 = Q_bna7:gsub('s','𝑠' ) Q_bna7 = Q_bna7:gsub('t','𝑡' ) Q_bna7 = Q_bna7:gsub('u','𝑢' ) Q_bna7 = Q_bna7:gsub('v','𝑣' ) Q_bna7 = Q_bna7:gsub('w','𝑤' ) Q_bna7 = Q_bna7:gsub('x','𝑥' ) Q_bna7 = Q_bna7:gsub('y','𝑦' ) Q_bna7 = Q_bna7:gsub('z','𝑧')
bot.editMessageText(ChatId, Msg_id, "⇜ لـقـد اخـترت   \n▷ `"..Q_bna7.."`", "md",false)
end
end
----------
if Text and Text:match('(%d+)/N8') then
local UserId = Text:match('(%d+)/N8')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna8 = DCBAN:gsub('a','ᗩ' ) Q_bna8 = Q_bna8:gsub('b','β' ) Q_bna8 = Q_bna8:gsub('c','Ｃ' ) Q_bna8 = Q_bna8:gsub('d','Ɗ' ) Q_bna8 = Q_bna8:gsub('e','Ｅ' ) Q_bna8 = Q_bna8:gsub('f','Բ' ) Q_bna8 = Q_bna8:gsub('g','Ｇ' ) Q_bna8 = Q_bna8:gsub('h','ⴼ' ) Q_bna8 = Q_bna8:gsub('i','Ｉ' ) Q_bna8 = Q_bna8:gsub('j','Ј' ) Q_bna8 = Q_bna8:gsub('k','₭' ) Q_bna8 = Q_bna8:gsub('l','Ł' ) Q_bna8 = Q_bna8:gsub('m','ᗰ' ) Q_bna8 = Q_bna8:gsub('n','Ŋ' ) Q_bna8 = Q_bna8:gsub('o','σ' ) Q_bna8 = Q_bna8:gsub('p','Ꝑ' ) Q_bna8 = Q_bna8:gsub('q','℺' ) Q_bna8 = Q_bna8:gsub('r','Ꮢ' ) Q_bna8 = Q_bna8:gsub('s','₷' ) Q_bna8 = Q_bna8:gsub('t','Ƭ' ) Q_bna8 = Q_bna8:gsub('u','ᵿ' ) Q_bna8 = Q_bna8:gsub('v','ѵ' ) Q_bna8 = Q_bna8:gsub('w','Ꮤ' ) Q_bna8 = Q_bna8:gsub('x','χ' ) Q_bna8 = Q_bna8:gsub('y','ɣ' ) Q_bna8 = Q_bna8:gsub('z','Ꙃ')
bot.editMessageText(ChatId, Msg_id, "⇜ لـقـد اخـترت   \n▷ `"..Q_bna8.."`", "md",false)
end
end
----------
if Text and Text:match('(%d+)/N9') then
local UserId = Text:match('(%d+)/N9')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna9 = DCBAN:gsub('a','𝒂' ) Q_bna9 = Q_bna9:gsub('b','𝒃' ) Q_bna9 = Q_bna9:gsub('c','𝒄' ) Q_bna9 = Q_bna9:gsub('d','𝒅' ) Q_bna9 = Q_bna9:gsub('e','𝒆' ) Q_bna9 = Q_bna9:gsub('f','𝒇' ) Q_bna9 = Q_bna9:gsub('g','𝒈' ) Q_bna9 = Q_bna9:gsub('h','𝒉' ) Q_bna9 = Q_bna9:gsub('i','𝒊' ) Q_bna9 = Q_bna9:gsub('j','𝒋' ) Q_bna9 = Q_bna9:gsub('k','𝒌' ) Q_bna9 = Q_bna9:gsub('l','𝒍' ) Q_bna9 = Q_bna9:gsub('m','𝒎' ) Q_bna9 = Q_bna9:gsub('n','𝒏' ) Q_bna9 = Q_bna9:gsub('o','𝒐' ) Q_bna9 = Q_bna9:gsub('p','𝒑' ) Q_bna9 = Q_bna9:gsub('q','𝒒' ) Q_bna9 = Q_bna9:gsub('r','𝒓' ) Q_bna9 = Q_bna9:gsub('s','𝒔' ) Q_bna9 = Q_bna9:gsub('t','𝒕' ) Q_bna9 = Q_bna9:gsub('u','𝒖' ) Q_bna9 = Q_bna9:gsub('v','𝒗' ) Q_bna9 = Q_bna9:gsub('w','𝒘' ) Q_bna9 = Q_bna9:gsub('x','𝒙' ) Q_bna9 = Q_bna9:gsub('y','𝒚' ) Q_bna9 = Q_bna9:gsub('z','𝒛')
bot.editMessageText(ChatId, Msg_id, "⇜ لـقـد اخـترت   \n▷ `"..Q_bna9.."`", "md",false)
end
end
----------
if Text and Text:match('(%d+)/N10') then
local UserId = Text:match('(%d+)/N10')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna10 = DCBAN:gsub('a','𝔸' ) Q_bna10 = Q_bna10:gsub('b','𝔹' ) Q_bna10 = Q_bna10:gsub('c','ℂ' ) Q_bna10 = Q_bna10:gsub('d','𝔻' ) Q_bna10 = Q_bna10:gsub('e','𝔼' ) Q_bna10 = Q_bna10:gsub('f','𝔽' ) Q_bna10 = Q_bna10:gsub('g','𝔾' ) Q_bna10 = Q_bna10:gsub('h','ℍ' ) Q_bna10 = Q_bna10:gsub('i','𝕀' ) Q_bna10 = Q_bna10:gsub('j','𝕁' ) Q_bna10 = Q_bna10:gsub('k','𝕂' ) Q_bna10 = Q_bna10:gsub('l','𝕃' ) Q_bna10 = Q_bna10:gsub('m','𝕄' ) Q_bna10 = Q_bna10:gsub('n','ℕ' ) Q_bna10 = Q_bna10:gsub('o','𝕆' ) Q_bna10 = Q_bna10:gsub('p','ℙ' ) Q_bna10 = Q_bna10:gsub('q','ℚ' ) Q_bna10 = Q_bna10:gsub('r','ℝ' ) Q_bna10 = Q_bna10:gsub('s','𝕊' ) Q_bna10 = Q_bna10:gsub('t','𝕋' ) Q_bna10 = Q_bna10:gsub('u','𝕌' ) Q_bna10 = Q_bna10:gsub('v','𝕍' ) Q_bna10 = Q_bna10:gsub('w','𝕎' ) Q_bna10 = Q_bna10:gsub('x','𝕏' ) Q_bna10 = Q_bna10:gsub('y','𝕐' ) Q_bna10 = Q_bna10:gsub('z','ℤ')
bot.editMessageText(ChatId, Msg_id, "⇜ لـقـد اخـترت   \n▷ `"..Q_bna10.."`", "md",false)
end
end
----------
if Text and Text:match('(%d+)/N11') then
local UserId = Text:match('(%d+)/N11')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna11 = DCBAN:gsub('a','𝕬 ' ) Q_bna11 = Q_bna11:gsub('b','𝕭' ) Q_bna11 = Q_bna11:gsub('c','𝕮' ) Q_bna11 = Q_bna11:gsub('d','𝕯' ) Q_bna11 = Q_bna11:gsub('e','𝕰' ) Q_bna11 = Q_bna11:gsub('f','f' ) Q_bna11 = Q_bna11:gsub('g','𝕲' ) Q_bna11 = Q_bna11:gsub('h','𝕳' ) Q_bna11 = Q_bna11:gsub('i','𝕴' ) Q_bna11 = Q_bna11:gsub('j','𝕵' ) Q_bna11 = Q_bna11:gsub('k','𝕶' ) Q_bna11 = Q_bna11:gsub('l','𝕷' ) Q_bna11 = Q_bna11:gsub('m','𝕸' ) Q_bna11 = Q_bna11:gsub('n','𝕹' ) Q_bna11 = Q_bna11:gsub('o','𝕺' ) Q_bna11 = Q_bna11:gsub('p','𝕻' ) Q_bna11 = Q_bna11:gsub('q','𝕼' ) Q_bna11 = Q_bna11:gsub('r','𝕽' ) Q_bna11 = Q_bna11:gsub('s','𝕾' ) Q_bna11 = Q_bna11:gsub('t','𝕿' ) Q_bna11 = Q_bna11:gsub('u','𝖀' ) Q_bna11 = Q_bna11:gsub('v','𝖁' ) Q_bna11 = Q_bna11:gsub('w','𝖂' ) Q_bna11 = Q_bna11:gsub('x','𝖃' ) Q_bna11 = Q_bna11:gsub('y','𝖄' ) Q_bna11 = Q_bna11:gsub('z','𝖅')
bot.editMessageText(ChatId, Msg_id, "⇜ لـقـد اخـترت   \n▷ `"..Q_bna11.."`", "md",false)
end
end
----------
if Text and Text:match('(%d+)/N12') then
local UserId = Text:match('(%d+)/N12')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna12 = DCBAN:gsub('a','𝐴' ) Q_bna12 = Q_bna12:gsub('b','b' ) Q_bna12 = Q_bna12:gsub('c','𝐶' ) Q_bna12 = Q_bna12:gsub('d','𝐷' ) Q_bna12 = Q_bna12:gsub('e','𝐸' ) Q_bna12 = Q_bna12:gsub('f','𝐹' ) Q_bna12 = Q_bna12:gsub('g','𝐺' ) Q_bna12 = Q_bna12:gsub('h','𝐻' ) Q_bna12 = Q_bna12:gsub('i','𝐼' ) Q_bna12 = Q_bna12:gsub('j','𝐽' ) Q_bna12 = Q_bna12:gsub('k','𝐾' ) Q_bna12 = Q_bna12:gsub('l','𝐿' ) Q_bna12 = Q_bna12:gsub('m','𝑀' ) Q_bna12 = Q_bna12:gsub('n','𝑁' ) Q_bna12 = Q_bna12:gsub('o','𝑂' ) Q_bna12 = Q_bna12:gsub('p','𝑃' ) Q_bna12 = Q_bna12:gsub('q','𝑄' ) Q_bna12 = Q_bna12:gsub('r','𝑅' ) Q_bna12 = Q_bna12:gsub('s','𝑆' ) Q_bna12 = Q_bna12:gsub('t','𝑇' ) Q_bna12 = Q_bna12:gsub('u','𝐔' ) Q_bna12 = Q_bna12:gsub('v','𝑉' ) Q_bna12 = Q_bna12:gsub('w','𝑊' ) Q_bna12 = Q_bna12:gsub('x','𝑋' ) Q_bna12 = Q_bna12:gsub('y','𝑌' ) Q_bna12 = Q_bna12:gsub('z','𝑍')
bot.editMessageText(ChatId, Msg_id, "⇜ لـقـد اخـترت   \n▷ `"..Q_bna12.."`", "md",false)
end
end
----------
if Text and Text:match('(%d+)/N13') then
local UserId = Text:match('(%d+)/N13')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna13 = DCBAN:gsub('a','𝓪 ' ) Q_bna13 = Q_bna13:gsub('b','𝓫' ) Q_bna13 = Q_bna13:gsub('c','𝓬' ) Q_bna13 = Q_bna13:gsub('d','𝓭' ) Q_bna13 = Q_bna13:gsub('e','𝓮' ) Q_bna13 = Q_bna13:gsub('f','𝓯' ) Q_bna13 = Q_bna13:gsub('g','𝓰' ) Q_bna13 = Q_bna13:gsub('h','𝓱' ) Q_bna13 = Q_bna13:gsub('i','𝓲' ) Q_bna13 = Q_bna13:gsub('j','𝓳' ) Q_bna13 = Q_bna13:gsub('k','𝓴' ) Q_bna13 = Q_bna13:gsub('l','𝓵' ) Q_bna13 = Q_bna13:gsub('m','𝓶' ) Q_bna13 = Q_bna13:gsub('n','𝓷' ) Q_bna13 = Q_bna13:gsub('o','𝓸' ) Q_bna13 = Q_bna13:gsub('p','𝓹' ) Q_bna13 = Q_bna13:gsub('q','𝓺' ) Q_bna13 = Q_bna13:gsub('r','𝓻' ) Q_bna13 = Q_bna13:gsub('s','𝓼' ) Q_bna13 = Q_bna13:gsub('t','𝓽' ) Q_bna13 = Q_bna13:gsub('u','𝓾' ) Q_bna13 = Q_bna13:gsub('v','𝓾' ) Q_bna13 = Q_bna13:gsub('w','𝔀' ) Q_bna13 = Q_bna13:gsub('x','𝔁' ) Q_bna13 = Q_bna13:gsub('y','𝔂' ) Q_bna13 = Q_bna13:gsub('z','𝔃')
bot.editMessageText(ChatId, Msg_id, "⇜ لـقـد اخـترت   \n▷ `"..Q_bna13.."`", "md",false)
end
end
----------
if Text and Text:match('(%d+)/N14') then
local UserId = Text:match('(%d+)/N14')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna14 = DCBAN:gsub('a','𝙰' ) Q_bna14 = Q_bna14:gsub('b','𝙱' ) Q_bna14 = Q_bna14:gsub('c','𝙲' ) Q_bna14 = Q_bna14:gsub('d','𝙳' ) Q_bna14 = Q_bna14:gsub('e','𝙴' ) Q_bna14 = Q_bna14:gsub('f','𝙵' ) Q_bna14 = Q_bna14:gsub('g','𝙶' ) Q_bna14 = Q_bna14:gsub('h','𝙷' ) Q_bna14 = Q_bna14:gsub('i','𝙸' ) Q_bna14 = Q_bna14:gsub('j','𝙹' ) Q_bna14 = Q_bna14:gsub('k','𝙺' ) Q_bna14 = Q_bna14:gsub('l','𝙻' ) Q_bna14 = Q_bna14:gsub('m','𝙼' ) Q_bna14 = Q_bna14:gsub('n','𝙽' ) Q_bna14 = Q_bna14:gsub('o','𝙾' ) Q_bna14 = Q_bna14:gsub('p','𝙿' ) Q_bna14 = Q_bna14:gsub('q','𝚀' ) Q_bna14 = Q_bna14:gsub('r','𝚁' ) Q_bna14 = Q_bna14:gsub('s','𝚂' ) Q_bna14 = Q_bna14:gsub('t','𝚃' ) Q_bna14 = Q_bna14:gsub('u','𝙺' ) Q_bna14 = Q_bna14:gsub('v','𝚅' ) Q_bna14 = Q_bna14:gsub('w','𝚆' ) Q_bna14 = Q_bna14:gsub('x','𝚇' ) Q_bna14 = Q_bna14:gsub('y','𝚈' ) Q_bna14 = Q_bna14:gsub('z','𝚉')
bot.editMessageText(ChatId, Msg_id, "⇜ لـقـد اخـترت   \n▷ `"..Q_bna14.."`", "md",false)
end
end
----------
if Text and Text:match('(%d+)/N15') then
local UserId = Text:match('(%d+)/N15')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna15 = DCBAN:gsub('a','𝖆' ) Q_bna15 = Q_bna15:gsub('b','𝖇' ) Q_bna15 = Q_bna15:gsub('c','𝖈' ) Q_bna15 = Q_bna15:gsub('d','𝖉' ) Q_bna15 = Q_bna15:gsub('e','𝖊' ) Q_bna15 = Q_bna15:gsub('f','𝖋' ) Q_bna15 = Q_bna15:gsub('g','𝖌' ) Q_bna15 = Q_bna15:gsub('h','𝖍' ) Q_bna15 = Q_bna15:gsub('i','𝖎' ) Q_bna15 = Q_bna15:gsub('j','𝖏' ) Q_bna15 = Q_bna15:gsub('k','𝖐' ) Q_bna15 = Q_bna15:gsub('l','𝖑' ) Q_bna15 = Q_bna15:gsub('m','𝖒' ) Q_bna15 = Q_bna15:gsub('n','𝖓' ) Q_bna15 = Q_bna15:gsub('o','𝖔' ) Q_bna15 = Q_bna15:gsub('p','𝖕' ) Q_bna15 = Q_bna15:gsub('q','𝖖' ) Q_bna15 = Q_bna15:gsub('r','𝖗' ) Q_bna15 = Q_bna15:gsub('s','𝖘' ) Q_bna15 = Q_bna15:gsub('t','𝖙' ) Q_bna15 = Q_bna15:gsub('u','𝖚' ) Q_bna15 = Q_bna15:gsub('v','𝖛' ) Q_bna15 = Q_bna15:gsub('w','𝖜' ) Q_bna15 = Q_bna15:gsub('x','𝖝' ) Q_bna15 = Q_bna15:gsub('y','𝖞' ) Q_bna15 = Q_bna15:gsub('z','𝖟')
bot.editMessageText(ChatId, Msg_id, "⇜ لـقـد اخـترت   \n▷ `"..Q_bna15.."`", "md",false)
end
end
----------
if Text and Text:match('(%d+)/N16') then
local UserId = Text:match('(%d+)/N16')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna16 = DCBAN:gsub('a','🅰' ) Q_bna16 = Q_bna16:gsub('b','🅱' ) Q_bna16 = Q_bna16:gsub('c','🅲' ) Q_bna16 = Q_bna16:gsub('d','🅳' ) Q_bna16 = Q_bna16:gsub('e','🅴' ) Q_bna16 = Q_bna16:gsub('f','🅵' ) Q_bna16 = Q_bna16:gsub('g','🅶' ) Q_bna16 = Q_bna16:gsub('h','🅷' ) Q_bna16 = Q_bna16:gsub('i','🅸' ) Q_bna16 = Q_bna16:gsub('j','🅹' ) Q_bna16 = Q_bna16:gsub('k','🅺' ) Q_bna16 = Q_bna16:gsub('l','🅻' ) Q_bna16 = Q_bna16:gsub('m','🅼' ) Q_bna16 = Q_bna16:gsub('n','🅽' ) Q_bna16 = Q_bna16:gsub('o','🅾' ) Q_bna16 = Q_bna16:gsub('p','🅿' ) Q_bna16 = Q_bna16:gsub('q','🆀' ) Q_bna16 = Q_bna16:gsub('r','🆁' ) Q_bna16 = Q_bna16:gsub('s','🆂' ) Q_bna16 = Q_bna16:gsub('t','🆃' ) Q_bna16 = Q_bna16:gsub('u','🆄' ) Q_bna16 = Q_bna16:gsub('v','🆅' ) Q_bna16 = Q_bna16:gsub('w','🆆' ) Q_bna16 = Q_bna16:gsub('x','🆇' ) Q_bna16 = Q_bna16:gsub('y','🆈' ) Q_bna16 = Q_bna16:gsub('z','🆉')                
bot.editMessageText(ChatId, Msg_id, "⇜ لـقـد اخـترت   \n▷ `"..Q_bna16.."`", "md",false)
end
end
----------
if Text and Text:match('(%d+)/N17') then
local UserId = Text:match('(%d+)/N17')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna17 = DCBAN:gsub('a','🄰' ) Q_bna17 = Q_bna17:gsub('b','🄱' ) Q_bna17 = Q_bna17:gsub('c','🄲' ) Q_bna17 = Q_bna17:gsub('d','🄳' ) Q_bna17 = Q_bna17:gsub('e','🄴' ) Q_bna17 = Q_bna17:gsub('f','🄵' ) Q_bna17 = Q_bna17:gsub('g','🄶' ) Q_bna17 = Q_bna17:gsub('h','🄷' ) Q_bna17 = Q_bna17:gsub('i','🄸' ) Q_bna17 = Q_bna17:gsub('j','🄹' ) Q_bna17 = Q_bna17:gsub('k','🄺' ) Q_bna17 = Q_bna17:gsub('l','🄻' ) Q_bna17 = Q_bna17:gsub('m','🄼' ) Q_bna17 = Q_bna17:gsub('n','🄽' ) Q_bna17 = Q_bna17:gsub('o','🄾' ) Q_bna17 = Q_bna17:gsub('p','🄿' ) Q_bna17 = Q_bna17:gsub('q','🅀' ) Q_bna17 = Q_bna17:gsub('r','🅁' ) Q_bna17 = Q_bna17:gsub('s','🅂' ) Q_bna17 = Q_bna17:gsub('t','🅃' ) Q_bna17 = Q_bna17:gsub('u','🅄' ) Q_bna17 = Q_bna17:gsub('v','🅅' ) Q_bna17 = Q_bna17:gsub('w','🅆' ) Q_bna17 = Q_bna17:gsub('x','🅇' ) Q_bna17 = Q_bna17:gsub('y','🅈' ) Q_bna17 = Q_bna17:gsub('z','🅉')
bot.editMessageText(ChatId, Msg_id, "⇜ لـقـد اخـترت   \n▷ `"..Q_bna17.."`", "md",false)
end
end
----------
if Text and Text:match('(%d+)/N18') then
local UserId = Text:match('(%d+)/N18')
if tonumber(IdUser) == tonumber(UserId) then
local DCBAN = Redis:get(Gold..ChatId..IdUser.."zkrf:text")
DCBAN = DCBAN:gsub('A','a') DCBAN = DCBAN:gsub('S','s') DCBAN = DCBAN:gsub('D','d') DCBAN = DCBAN:gsub('F','f') DCBAN = DCBAN:gsub('G','g') DCBAN = DCBAN:gsub('H','h') DCBAN = DCBAN:gsub('J','j') DCBAN = DCBAN:gsub('K','k') DCBAN = DCBAN:gsub('L','l') DCBAN = DCBAN:gsub('Q','q') DCBAN = DCBAN:gsub('W','w') DCBAN = DCBAN:gsub('E','e' ) DCBAN = DCBAN:gsub('R','r' ) DCBAN = DCBAN:gsub('T','t' ) DCBAN = DCBAN:gsub('Y','y' ) DCBAN = DCBAN:gsub('U','u' ) DCBAN = DCBAN:gsub('I','i' ) DCBAN = DCBAN:gsub('O','o' ) DCBAN = DCBAN:gsub('P','p' ) DCBAN = DCBAN:gsub('Z','z' ) DCBAN = DCBAN:gsub('X','x' ) DCBAN = DCBAN:gsub('C','c' ) DCBAN = DCBAN:gsub('V','v' ) DCBAN = DCBAN:gsub('B','b' ) DCBAN = DCBAN:gsub('N','n' ) DCBAN = DCBAN:gsub('M','m')
local Q_bna18 = DCBAN:gsub('a','🅐' ) Q_bna18= Q_bna18:gsub('b','🅑' ) Q_bna18= Q_bna18:gsub('c','🅒' ) Q_bna18= Q_bna18:gsub('d','🅓') Q_bna18 = Q_bna18:gsub('e','🅔' ) Q_bna18= Q_bna18:gsub('f','🅕' ) Q_bna18= Q_bna18:gsub('g','🅖' ) Q_bna18= Q_bna18:gsub('h','🅗' ) Q_bna18= Q_bna18:gsub('i','🅘' ) Q_bna18= Q_bna18:gsub('j','🅙' ) Q_bna18= Q_bna18:gsub('k','🅚' ) Q_bna18= Q_bna18:gsub('l','🅛' ) Q_bna18= Q_bna18:gsub('m','🅜' ) Q_bna18= Q_bna18:gsub('n','🅝' ) Q_bna18= Q_bna18:gsub('o','🅞' ) Q_bna18= Q_bna18:gsub('p','🅟' ) Q_bna18= Q_bna18:gsub('q','🅠' ) Q_bna18= Q_bna18:gsub('r','🅡' ) Q_bna18= Q_bna18:gsub('s','🅢' ) Q_bna18= Q_bna18:gsub('t','🅣' ) Q_bna18= Q_bna18:gsub('u','🅤' ) Q_bna18= Q_bna18:gsub('v','🅥' ) Q_bna18= Q_bna18:gsub('w','🅦' ) Q_bna18= Q_bna18:gsub('x','🅧' ) Q_bna18= Q_bna18:gsub('y','🅨' ) Q_bna18= Q_bna18:gsub('z','🅩')
bot.editMessageText(ChatId, Msg_id, "⇜ لـقـد اخـترت   \n▷ `"..Q_bna18.."`", "md",false)
end
end
-------------------------------------------------
if Text == "/kill_the_ant" then
local from_name = bot.getUser(IdUser).first_name
local tag = "["..from_name.."](tg://user?id="..IdUser..")"
local media ={
type = "photo",
media = "https://te.legra.ph/file/adb1c649693a9abb5cc8f.jpg",
caption = 'هو القتلها '..tag..' ',
parse_mode = "Markdown"
}
local keyboard = {}
keyboard.inline_keyboard = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
local msg_rep = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..msg_rep.."&media="..JSON.encode(media).."&reply_markup="..JSON.encode(keyboard))
end
if Text and Text:match('(.*)/yes_z/(.*)') then
local zillzall = {Text:match('(.*)/yes_z/(.*)')}
local zwga_id = zillzall[1]
local zwg_id = zillzall[2]
if tonumber(zwga_id) == tonumber(IdUser) then
local zwga_name = bot.getUser(zwga_id).first_name
local zwg_name = bot.getUser(zwg_id).first_name
Redis:set(Gold..ChatId..zwga_id.."mtzwga:", zwg_id)
Redis:set(Gold..ChatId..zwg_id.."mtzwga:", zwga_id)
return edit(ChatId, Msg_id, "⇜ مبرووووك ياحلوة ["..zwga_name.."](tg://user?id="..zwga_id..")\n⇜ مبروك ياحلو  ["..zwg_name.."](tg://user?id="..zwg_id..")","md",false)
end
end
if Text and Text:match('(.*)/no_z/(.*)') then
local zillzall = {Text:match('(.*)/no_z/(.*)')}
local zwga_id = zillzall[1]
local zwg_id = zillzall[2]
if tonumber(zwga_id) == tonumber(IdUser) then
return edit(ChatId, Msg_id, "⇜ هييه ماودك تتزوجي !","md",false)
end
end
if Text and Text:match('(%d+)/zeng') then
local UserId = Text:match('(%d+)/zeng')
if tonumber(UserId) == tonumber(IdUser) then
Redis:set(Gold..ChatId..IdUser.."zkrf:", "zeng")
edit(ChatId, Msg_id, "𖦹 ارسل لي الكلمة لزخرفتها", "md",false)
end
end
if Text and Text:match('(.*)/yes_zw/(.*)') then
local zillzall = {Text:match('(.*)/yes_zw/(.*)')}
local zwga_id = zillzall[1]
local zwg_id = zillzall[2]
if tonumber(zwga_id) == tonumber(IdUser) then
local zwga_name = bot.getUser(zwga_id).first_name
local zwg_name = bot.getUser(zwg_id).first_name
Redis:set(Gold..ChatId..zwga_id.."mtzwga:", zwg_id)
Redis:set(Gold..ChatId..zwg_id.."mtzwga:", zwga_id)
return edit(ChatId, Msg_id, "⇜ مبروووك يالعريس 「["..zwga_name.."](tg://user?id="..zwga_id..")」\n⇜ تم زواجك من 「["..zwg_name.."](tg://user?id="..zwg_id..")」","md",false)
end
end
if Text and Text:match('(.*)/no_zw/(.*)') then
local zillzall = {Text:match('(.*)/no_zw/(.*)')}
local zwga_id = zillzall[1]
local zwg_id = zillzall[2]
if tonumber(zwga_id) == tonumber(IdUser) then
return edit(ChatId, Msg_id, "⇜ ادري منت قد المسؤلية توكل بس ","md",false)
end
end
-----------------
if Text == ('/Hgr') then
local KlamSpeed = {"🪨","📃","✂"}
local name = KlamSpeed[math.random(#KlamSpeed)]
local UserInfo = bot.getUser(IdUser)
local Teext = '['..UserInfo.first_name..'](tg://user?id='..IdUser..')'
if name == "🪨" then
return edit(ChatId,Msg_id,"\n⇜ انت : 🪨 \n⇜ انا : "..name.."\n⇜ النتيجة : تعادل", 'md')
end
if name == "✂" then
Redis:incrby(Gold.."Gold:Num:Add:Games"..ChatId..IdUser, 1)  
return edit(ChatId,Msg_id,"\n⇜ انت : 🪨 \n⇜ انا : "..name.."\n⇜ النتيجة : فزت انت "..Teext, 'md')
end
if name == "📃" then
return edit(ChatId,Msg_id,"\n⇜ انت : 🪨 \n⇜ انا : "..name.."\n⇜ النتيجة : انا ربحت ", 'md')
end
end
if Text == ('/Warka') then
local KlamSpeed = {"🪨","📃","✂"}
local name = KlamSpeed[math.random(#KlamSpeed)]
local UserInfo = bot.getUser(IdUser)
local Teext = '['..UserInfo.first_name..'](tg://user?id='..IdUser..')'
if name == "📃" then
return edit(ChatId,Msg_id,"\n⇜ انت : 📃 \n⇜ انا : "..name.."\n⇜ النتيجة : تعادل", 'md')
end
if name == "🪨" then
Redis:incrby(Gold.."Gold:Num:Add:Games"..ChatId..IdUser, 1)  
return edit(ChatId,Msg_id,"\n⇜ انت : 📃 \n⇜ انا : "..name.."\n⇜ النتيجة : فزت انت "..Teext, 'md')
end
if name == "✂" then
return edit(ChatId,Msg_id,"\n⇜ انت : 📃 \n⇜ انا : "..name.."\n⇜ النتيجة : انا ربحت ", 'md')
end
end
if Text == ('/Mukas') then
local KlamSpeed = {"🪨","📃","✂"}
local name = KlamSpeed[math.random(#KlamSpeed)]
local UserInfo = bot.getUser(IdUser)
local Teext = '['..UserInfo.first_name..'](tg://user?id='..IdUser..')'
if name == "✂" then
return edit(ChatId,Msg_id,"\n⇜ انت : ✂ \n⇜ انا : "..name.."\n⇜ النتيجة : تعادل", 'md')
end
if name == "📃" then
Redis:incrby(Gold.."Gold:Num:Add:Games"..ChatId..IdUser, 1)  
return edit(ChatId,Msg_id,"\n⇜ انت : ✂ \n⇜ انا : "..name.."\n⇜ النتيجة : فزت انت "..Teext, 'md')
end
if name == "🪨" then
return edit(ChatId,Msg_id,"\n⇜ انت : ✂ \n⇜ انا : "..name.."\n⇜ النتيجة : انا ربحت ", 'md')
end
end
----------
if Text and Text:match('/Zxchq(.*)') and data.ControllerBot then
local UserId = Text:match('/Zxchq(.*)')
bot.answerCallbackQuery(data.id, " - ابشـر .. لقـد غـادرت من هنـا سيـدي", true)
bot.leaveChat(UserId)
end
if Text and Text:match('(%d+)/Redis') and data.ControllerBot then
local UserId = Text:match('(%d+)/Redis')
bot.answerCallbackQuery(data.id, " - تم الغـاء امـر مغـادرتي بنجـاح ✓", true)
if tonumber(IdUser) == tonumber(UserId) then
return bot.deleteMessages(ChatId,{[1]= Msg_id})
end
end
----------
if Text and Text:match('/Liikee(.*)') then
local UserId = Text:match('/Liikee(.*)')
if tonumber(UserId) ~= tonumber(IdUser) then
if Redis:sismember(Gold.."List_Like"..UserId,IdUser) then
Redis:decrby(Gold.."Zilzal:Message:Like"..UserId, 1)
Redis:srem(Gold.."List_Like"..UserId,IdUser)
return bot.answerCallbackQuery(data.id, "- تم الغـاء اعجـابك بهـذا الشخـص 🤔✅", true)
end
bot.answerCallbackQuery(data.id, " - ابشـر .. ضفتلـه اعجابـك ♥️", true)
Redis:sadd(Gold.."List_Like"..UserId,IdUser)
local GetLike = Redis:incrby(Gold.."Zilzal:Message:Like"..UserId, 1)
Redis:hset(Gold..':GroupUserCountLike:'..ChatId,UserId,GetLike)
local UserInfo = bot.getUser(UserId) 
if UserInfo.first_name then
NameLUser = UserInfo.first_name
else
NameLUser = UserInfo.first_name
end
NameLUser = NameLUser
NameLUser = NameLUser:gsub("]","")
NameLUser = NameLUser:gsub("[[]","")
Redis:hset(Gold..':GroupLikeNameUser:'..ChatId,UserId,NameLUser)
else
bot.answerCallbackQuery(data.id, " - لا يمكنـك الاعجـاب بنفسـك سيـدي ♥️", true)
end
end
----------
if Text and Text:match('/Liiker(.*)') then
local UserId = Text:match('/Liiker(.*)')
if tonumber(UserId) == tonumber(IdUser) then
local like_list = Redis:smembers(Gold.."List_Like"..UserId)
if #like_list == 0 then
return bot.answerCallbackQuery(data.id,"✦ مسكين ع باب الله ماعندك معجبين 🗿", true)
elseif #like_list > 0 then
your_likes = "✦ قـائمـة المعجبيـن بـك 🤳♥️\n"
for k,v in pairs(like_list) do
local user_info = bot.getUser(v)
local name1 = user_info.first_name or '.'
local name2 = user_info.last_name or '.'
your_likes = your_likes..k.." - "..name1..name2.."\n"
end
return bot.answerCallbackQuery(data.id,your_likes, true)
end
else
bot.answerCallbackQuery(data.id, "- صاحب الايدي فقـط من يستطيـع كشـف اسمـاء المعجبيـن", true)
end
end
---------------------------------------- Dev ZilZal ----------------------------------------
if Text and Text:match('(%d+)/booys') then
local UserId = Text:match('(%d+)/booys')
if tonumber(IdUser) == tonumber(UserId) then
bot.answerCallbackQuery(data.id, "⇜ تم التغييـر الى بـوت 🙋🏻‍♂ .. بنجـاح✓", true)
Redis:del(Gold.."BotaTyp") 
end
end
if Text and Text:match('(%d+)/girlls') then
local UserId = Text:match('(%d+)/girlls')
if tonumber(IdUser) == tonumber(UserId) then
bot.answerCallbackQuery(data.id, "⇜ تم التغييـر الى بـوتـه 🙋🏻‍♀ .. بنجـاح✓", true)
Redis:set(Gold.."BotaTyp",true) 
end
end
---------------------------------------- Dev ZilZal ----------------------------------------
if Text and Text:match('/Ehmsli(.*)') then
local UserId = Text:match('/Ehmsli(.*)')
if tonumber(UserId) == tonumber(IdUser) then
local zzehms = Redis:get(Gold..'Zilzal:Ehms:Hmsa'..ChatId..UserId)
return bot.answerCallbackQuery(data.id,zzehms, true)
else
bot.answerCallbackQuery(data.id, "- الهمسـة ليست موجهـة لك ياحمـار", true)
end
end
---------------------------------------- Dev ZilZal ----------------------------------------
if Text and Text:match('/Zageel(.*)') then
local UserId = Text:match('/Zageel(.*)')
local in_zagel_id = Redis:get(Gold..ChatId..UserId.."in_zagel:")
if tonumber(UserId) == tonumber(IdUser) or tonumber(in_zagel_id) == tonumber(IdUser) then
local zzehms = Redis:get(Gold..'Zilzal:Zagel:Hmsa'..ChatId..in_zagel_id)
return bot.answerCallbackQuery(data.id,zzehms, true)
else
bot.answerCallbackQuery(data.id, "- الهمسـة ليست موجهـة لك ياحمـار", true)
end
end
---------------------------------------- Dev ZilZal ----------------------------------------
if Text == '/takeeem1' then
if Redis:sismember(Gold..'List_Stars',IdUser) then
return bot.answerCallbackQuery(data.id, " - لقـد قمت بتقييـم البـوت مسبقـاً ♥️", true)
end
bot.answerCallbackQuery(data.id, " - ابشـر .. تم تقييـم البـوت بـ نجمـه ⭐", true)
Redis:sadd(Gold..'List_Stars',IdUser)
Redis:incrby(Gold.."Zilzal:Takeem:T1", 1)
local Get_Chat = bot.getChat(ChatId)
local Info_Chats = bot.getSupergroupFullInfo(ChatId)
local UserInfo = bot.getUser(IdUser)
if UserInfo.username then
whois = '['..FlterBio(UserInfo.first_name)..'](t.me/'..UserInfo.username..')'
else
whois = '['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
end
----
local repply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = Get_Chat.title, url = Info_Chats.invite_link.invite_link}, 
},
}
}
if Redis:get(Gold.."Gold:LogerBot") then
local Loger_Id = Redis:get(Gold.."Gold:Loger:Groub")
send(Loger_Id,0,'\n*- سيـدي المطـور\n- قام احدهـم بتقييـم البـوت\n- المستخـدم* ⤑ '..whois..'\n*- التقييـم ⤑⭐\n- رابـط المجمـوعـة :* ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')',"md",true, false, false, false, repply_markup)
else
send(Sudo_Id,0,'\n*- سيـدي المطـور\n- قام احدهـم بتقييـم البـوت\n- المستخـدم* ⤑ '..whois..'\n*- التقييـم ⤑⭐\n- رابـط المجمـوعـة :* ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')',"md",true, false, false, false, repply_markup)
end
-----
local Takeem1 = Redis:get(Gold..'Zilzal:Takeem:T1') or 0
local Takeem2 = Redis:get(Gold..'Zilzal:Takeem:T2') or 0
local Takeem3 = Redis:get(Gold..'Zilzal:Takeem:T3') or 0
local Takeem4 = Redis:get(Gold..'Zilzal:Takeem:T4') or 0
local Takeem5 = Redis:get(Gold..'Zilzal:Takeem:T5') or 0
local NamesBot = (Redis:get(Gold.."Gold:Name:Bot") or "البوت")
local zilzal = '*- مرحبـاً بك عـزيـزي 🫂*\n*- فـي قائمـة تقييـم البـوت ⇜ ⌠ '..NamesBot..' ⌡* 🎖\n*- قم بـ تقييـم اداء البـوت*\n*- لـ دعمنـا وتحفيزنـا لـ تقديـم المزيـد والافضـل 🏆*'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '⭐⤑ '..Takeem1, data = '/takeeem1'},},
{{text = '⭐⭐⤑ '..Takeem2, data = '/takeeem2'},},
{{text = '⭐⭐⭐⤑ '..Takeem3, data = '/takeeem3'},},
{{text = '⭐⭐⭐⭐⤑ '..Takeem4, data = '/takeeem4'},},
{{text = '⭐⭐⭐⭐⭐⤑ '..Takeem5..' 🎖', data = '/takeeem5'},},
}
}
edit(ChatId,Msg_id,zilzal, 'md', true, false, reply_markup)
end
if Text == '/takeeem2' then
if Redis:sismember(Gold..'List_Stars',IdUser) then
return bot.answerCallbackQuery(data.id, " - لقـد قمت بتقييـم البـوت مسبقـاً ♥️", true)
end
bot.answerCallbackQuery(data.id, " - ابشـر .. تم تقييـم البـوت بـ نجمتـان ⭐⭐", true)
Redis:sadd(Gold..'List_Stars',IdUser)
Redis:incrby(Gold.."Zilzal:Takeem:T2", 1)
local Get_Chat = bot.getChat(ChatId)
local Info_Chats = bot.getSupergroupFullInfo(ChatId)
local UserInfo = bot.getUser(IdUser)
if UserInfo.username then
whois = '['..FlterBio(UserInfo.first_name)..'](t.me/'..UserInfo.username..')'
else
whois = '['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
end
----
local repply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = Get_Chat.title, url = Info_Chats.invite_link.invite_link}, 
},
}
}
if Redis:get(Gold.."Gold:LogerBot") then
local Loger_Id = Redis:get(Gold.."Gold:Loger:Groub")
send(Loger_Id,0,'\n*- سيـدي المطـور\n- قام احدهـم بتقييـم البـوت\n- المستخـدم* ⤑ '..whois..'\n*- التقييـم ⤑⭐⭐\n- رابـط المجمـوعـة :* ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')',"md",true, false, false, false, repply_markup)
else
send(Sudo_Id,0,'\n*- سيـدي المطـور\n- قام احدهـم بتقييـم البـوت\n- المستخـدم* ⤑ '..whois..'\n*- التقييـم ⤑⭐⭐\n- رابـط المجمـوعـة :* ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')',"md",true, false, false, false, repply_markup)
end
-----
local Takeem1 = Redis:get(Gold..'Zilzal:Takeem:T1') or 0
local Takeem2 = Redis:get(Gold..'Zilzal:Takeem:T2') or 0
local Takeem3 = Redis:get(Gold..'Zilzal:Takeem:T3') or 0
local Takeem4 = Redis:get(Gold..'Zilzal:Takeem:T4') or 0
local Takeem5 = Redis:get(Gold..'Zilzal:Takeem:T5') or 0
local NamesBot = (Redis:get(Gold.."Gold:Name:Bot") or "البوت")
local zilzal = '*- مرحبـاً بك عـزيـزي 🫂*\n*- فـي قائمـة تقييـم البـوت ⇜ ⌠ '..NamesBot..' ⌡* 🎖\n*- قم بـ تقييـم اداء البـوت*\n*- لـ دعمنـا وتحفيزنـا لـ تقديـم المزيـد والافضـل 🏆*'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '⭐⤑ '..Takeem1, data = '/takeeem1'},},
{{text = '⭐⭐⤑ '..Takeem2, data = '/takeeem2'},},
{{text = '⭐⭐⭐⤑ '..Takeem3, data = '/takeeem3'},},
{{text = '⭐⭐⭐⭐⤑ '..Takeem4, data = '/takeeem4'},},
{{text = '⭐⭐⭐⭐⭐⤑ '..Takeem5..' 🎖', data = '/takeeem5'},},
}
}
edit(ChatId,Msg_id,zilzal, 'md', true, false, reply_markup)
end
if Text == '/takeeem3' then
if Redis:sismember(Gold..'List_Stars',IdUser) then
return bot.answerCallbackQuery(data.id, " - لقـد قمت بتقييـم البـوت مسبقـاً ♥️", true)
end
bot.answerCallbackQuery(data.id, " - ابشـر .. تم تقييـم البـوت بـ 3 نجمـات ⭐⭐⭐", true)
Redis:sadd(Gold..'List_Stars',IdUser)
Redis:incrby(Gold.."Zilzal:Takeem:T3", 1)
local Get_Chat = bot.getChat(ChatId)
local Info_Chats = bot.getSupergroupFullInfo(ChatId)
local UserInfo = bot.getUser(IdUser)
if UserInfo.username then
whois = '['..FlterBio(UserInfo.first_name)..'](t.me/'..UserInfo.username..')'
else
whois = '['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
end
----
local repply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = Get_Chat.title, url = Info_Chats.invite_link.invite_link}, 
},
}
}
if Redis:get(Gold.."Gold:LogerBot") then
local Loger_Id = Redis:get(Gold.."Gold:Loger:Groub")
send(Loger_Id,0,'\n*- سيـدي المطـور\n- قام احدهـم بتقييـم البـوت\n- المستخـدم* ⤑ '..whois..'\n*- التقييـم ⤑⭐⭐⭐\n- رابـط المجمـوعـة :* ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')',"md",true, false, false, false, repply_markup)
else
send(Sudo_Id,0,'\n*- سيـدي المطـور\n- قام احدهـم بتقييـم البـوت\n- المستخـدم* ⤑ '..whois..'\n*- التقييـم ⤑⭐⭐⭐\n- رابـط المجمـوعـة :* ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')',"md",true, false, false, false, repply_markup)
end
-----
local Takeem1 = Redis:get(Gold..'Zilzal:Takeem:T1') or 0
local Takeem2 = Redis:get(Gold..'Zilzal:Takeem:T2') or 0
local Takeem3 = Redis:get(Gold..'Zilzal:Takeem:T3') or 0
local Takeem4 = Redis:get(Gold..'Zilzal:Takeem:T4') or 0
local Takeem5 = Redis:get(Gold..'Zilzal:Takeem:T5') or 0
local NamesBot = (Redis:get(Gold.."Gold:Name:Bot") or "البوت")
local zilzal = '*- مرحبـاً بك عـزيـزي 🫂*\n*- فـي قائمـة تقييـم البـوت ⇜ ⌠ '..NamesBot..' ⌡* 🎖\n*- قم بـ تقييـم اداء البـوت*\n*- لـ دعمنـا وتحفيزنـا لـ تقديـم المزيـد والافضـل 🏆*'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '⭐⤑ '..Takeem1, data = '/takeeem1'},},
{{text = '⭐⭐⤑ '..Takeem2, data = '/takeeem2'},},
{{text = '⭐⭐⭐⤑ '..Takeem3, data = '/takeeem3'},},
{{text = '⭐⭐⭐⭐⤑ '..Takeem4, data = '/takeeem4'},},
{{text = '⭐⭐⭐⭐⭐⤑ '..Takeem5..' 🎖', data = '/takeeem5'},},
}
}
edit(ChatId,Msg_id,zilzal, 'md', true, false, reply_markup)
end
if Text == '/takeeem4' then
if Redis:sismember(Gold..'List_Stars',IdUser) then
return bot.answerCallbackQuery(data.id, " - لقـد قمت بتقييـم البـوت مسبقـاً ♥️", true)
end
bot.answerCallbackQuery(data.id, " - ابشـر .. تم تقييـم البـوت بـ 4 نجمـات ⭐⭐⭐⭐", true)
Redis:sadd(Gold..'List_Stars',IdUser)
Redis:incrby(Gold.."Zilzal:Takeem:T4", 1)
local Get_Chat = bot.getChat(ChatId)
local Info_Chats = bot.getSupergroupFullInfo(ChatId)
local UserInfo = bot.getUser(IdUser)
if UserInfo.username then
whois = '['..FlterBio(UserInfo.first_name)..'](t.me/'..UserInfo.username..')'
else
whois = '['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
end
----
local repply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = Get_Chat.title, url = Info_Chats.invite_link.invite_link}, 
},
}
}
if Redis:get(Gold.."Gold:LogerBot") then
local Loger_Id = Redis:get(Gold.."Gold:Loger:Groub")
send(Loger_Id,0,'\n*- سيـدي المطـور\n- قام احدهـم بتقييـم البـوت\n- المستخـدم* ⤑ '..whois..'\n*- التقييـم ⤑⭐⭐⭐⭐\n- رابـط المجمـوعـة :* ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')',"md",true, false, false, false, repply_markup)
else
send(Sudo_Id,0,'\n*- سيـدي المطـور\n- قام احدهـم بتقييـم البـوت\n- المستخـدم* ⤑ '..whois..'\n*- التقييـم ⤑⭐⭐⭐⭐\n- رابـط المجمـوعـة :* ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')',"md",true, false, false, false, repply_markup)
end
-----
local Takeem1 = Redis:get(Gold..'Zilzal:Takeem:T1') or 0
local Takeem2 = Redis:get(Gold..'Zilzal:Takeem:T2') or 0
local Takeem3 = Redis:get(Gold..'Zilzal:Takeem:T3') or 0
local Takeem4 = Redis:get(Gold..'Zilzal:Takeem:T4') or 0
local Takeem5 = Redis:get(Gold..'Zilzal:Takeem:T5') or 0
local NamesBot = (Redis:get(Gold.."Gold:Name:Bot") or "البوت")
local zilzal = '*- مرحبـاً بك عـزيـزي 🫂*\n*- فـي قائمـة تقييـم البـوت ⇜ ⌠ '..NamesBot..' ⌡* 🎖\n*- قم بـ تقييـم اداء البـوت*\n*- لـ دعمنـا وتحفيزنـا لـ تقديـم المزيـد والافضـل 🏆*'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '⭐⤑ '..Takeem1, data = '/takeeem1'},},
{{text = '⭐⭐⤑ '..Takeem2, data = '/takeeem2'},},
{{text = '⭐⭐⭐⤑ '..Takeem3, data = '/takeeem3'},},
{{text = '⭐⭐⭐⭐⤑ '..Takeem4, data = '/takeeem4'},},
{{text = '⭐⭐⭐⭐⭐⤑ '..Takeem5..' 🎖', data = '/takeeem5'},},
}
}
edit(ChatId,Msg_id,zilzal, 'md', true, false, reply_markup)
end
if Text == '/takeeem5' then
if Redis:sismember(Gold..'List_Stars',IdUser) then
return bot.answerCallbackQuery(data.id, " - لقـد قمت بتقييـم البـوت مسبقـاً ♥️", true)
end
bot.answerCallbackQuery(data.id, " - ابشـر .. تم تقييـم البـوت بـ 5 نجمـات ⭐⭐⭐⭐⭐", true)
Redis:sadd(Gold..'List_Stars',IdUser)
Redis:incrby(Gold.."Zilzal:Takeem:T5", 1)
local Get_Chat = bot.getChat(ChatId)
local Info_Chats = bot.getSupergroupFullInfo(ChatId)
local UserInfo = bot.getUser(IdUser)
if UserInfo.username then
whois = '['..FlterBio(UserInfo.first_name)..'](t.me/'..UserInfo.username..')'
else
whois = '['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
end
----
local repply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = Get_Chat.title, url = Info_Chats.invite_link.invite_link}, 
},
}
}
if Redis:get(Gold.."Gold:LogerBot") then
local Loger_Id = Redis:get(Gold.."Gold:Loger:Groub")
send(Loger_Id,0,'\n*- سيـدي المطـور\n- قام احدهـم بتقييـم البـوت\n- المستخـدم* ⤑ '..whois..'\n*- التقييـم ⤑⭐⭐⭐⭐⭐\n- رابـط المجمـوعـة :* ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')',"md",true, false, false, false, repply_markup)
else
send(Sudo_Id,0,'\n*- سيـدي المطـور\n- قام احدهـم بتقييـم البـوت\n- المستخـدم* ⤑ '..whois..'\n*- التقييـم ⤑⭐⭐⭐⭐⭐\n- رابـط المجمـوعـة :* ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')',"md",true, false, false, false, repply_markup)
end
-----
local Takeem1 = Redis:get(Gold..'Zilzal:Takeem:T1') or 0
local Takeem2 = Redis:get(Gold..'Zilzal:Takeem:T2') or 0
local Takeem3 = Redis:get(Gold..'Zilzal:Takeem:T3') or 0
local Takeem4 = Redis:get(Gold..'Zilzal:Takeem:T4') or 0
local Takeem5 = Redis:get(Gold..'Zilzal:Takeem:T5') or 0
local NamesBot = (Redis:get(Gold.."Gold:Name:Bot") or "البوت")
local zilzal = '*- مرحبـاً بك عـزيـزي 🫂*\n*- فـي قائمـة تقييـم البـوت ⇜ ⌠ '..NamesBot..' ⌡* 🎖\n*- قم بـ تقييـم اداء البـوت*\n*- لـ دعمنـا وتحفيزنـا لـ تقديـم المزيـد والافضـل 🏆*'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '⭐⤑ '..Takeem1, data = '/takeeem1'},},
{{text = '⭐⭐⤑ '..Takeem2, data = '/takeeem2'},},
{{text = '⭐⭐⭐⤑ '..Takeem3, data = '/takeeem3'},},
{{text = '⭐⭐⭐⭐⤑ '..Takeem4, data = '/takeeem4'},},
{{text = '⭐⭐⭐⭐⭐⤑ '..Takeem5..' 🎖', data = '/takeeem5'},},
}
}
edit(ChatId,Msg_id,zilzal, 'md', true, false, reply_markup)
end
---------------------------------------- Dev ZilZal ----------------------------------------
if Text and Text:match('(.*)/zwag_yes/(.*)/mahr/(.*)') then
local Data = {Text:match('(.*)/zwag_yes/(.*)/mahr/(.*)')}
if tonumber(Data[1]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "شو رأيك نزوجك بدالهم ؟", true)
end
if tonumber(IdUser) == tonumber(Data[1]) then
if Redis:get(Gold.."zwag_request:"..Data[1]) then
local zwga_id = tonumber(Data[1])
local zwg_id = tonumber(Data[2])
local coniss = Data[3]
local zwg = bot.getUser(zwg_id)
local zwga = bot.getUser(zwga_id)
local zwg_tag = '['..zwg.first_name.."](tg://user?id="..zwg_id..")"
local zwga_tag = '['..zwga.first_name.."](tg://user?id="..zwga_id..")"
local hadddd = tonumber(coniss)
ballanceekk = tonumber(coniss) / 100 * 15
ballanceekkk = tonumber(coniss) - ballanceekk
local convert_mony = string.format("%.0f",ballanceekkk)
ballancee = Redis:get(Gold.."boob"..zwg_id) or 0
ballanceea = Redis:get(Gold.."boob"..zwga_id) or 0
zogtea = ballanceea + ballanceekkk
zeugh = ballancee - tonumber(coniss)
Redis:set(Gold.."boob"..zwg_id , math.floor(zeugh))
Redis:sadd(Gold.."roogg1",zwg_id)
Redis:sadd(Gold.."roogga1",zwga_id)
Redis:set(Gold.."roog1"..zwg_id,zwg_id)
Redis:set(Gold.."rooga1"..zwg_id,zwga_id)
Redis:set(Gold.."roogte1"..zwga_id,zwga_id)
Redis:set(Gold.."rahr1"..zwg_id,tonumber(coniss))
Redis:set(Gold.."rahr1"..zwga_id,tonumber(coniss))
Redis:set(Gold.."roog1"..zwga_id,zwg_id)
Redis:set(Gold.."rahrr1"..zwg_id,math.floor(ballanceekkk))
Redis:set(Gold.."rooga1"..zwga_id,zwga_id)
Redis:set(Gold.."rahrr1"..zwga_id,math.floor(ballanceekkk))
return edit(ChatId,Msg_id,"كولولولولويششش\nاليوم عقدنا قران :\n\nالزوج "..zwg_tag.." 🤵🏻\n   💗\nالزوجة "..zwga_tag.." 👰🏻‍♀️\nالمهر : "..convert_mony.." ﷼ بعد الضريبة 15%\nعشان تشوفون وثيقة زواجكم اكتبوا : زواجي", 'md', false)
else
return edit(ChatId,Msg_id,"انتهى الطلب وين كنتي لما طلب ايدك", 'md', false)
end
end
end
if Text and Text:match('(%d+)/zwag_no/(%d+)') then
local UserId = {Text:match('(%d+)/zwag_no/(%d+)')}
if tonumber(UserId[1]) ~= tonumber(IdUser) then
return bot.answerCallbackQuery(data.id, "شو رأيك نزوجك بدالهم ؟", true)
else
Redis:del(Gold.."zwag_request:"..UserId[1])
Redis:del(Gold.."zwag_request:"..UserId[2])
return edit(ChatId,Msg_id,"خليكي عانس ؟؟", 'md', false)
end
end
----
if Text and Text:match('(%d+)/toptop') then
local UserId = Text:match('(%d+)/toptop')
if tonumber(data.sender_user_id) == tonumber(UserId) then
if Redis:ttl(Gold.."deletbank" .. 111) >= 1036800 then
day = "13 يوم"
elseif Redis:ttl(Gold.."deletbank" .. 111) >= 950400 then
day = "12 يوم"
elseif Redis:ttl(Gold.."deletbank" .. 111) >= 864000 then
day = "11 يوم"
elseif Redis:ttl(Gold.."deletbank" .. 111) >= 777600 then
day = "10 ايام"
elseif Redis:ttl(Gold.."deletbank" .. 111) >= 691200 then
day = "9 ايام"
elseif Redis:ttl(Gold.."deletbank" .. 111) >= 604800 then
day = "8 ايام"
elseif Redis:ttl(Gold.."deletbank" .. 111) >= 518400 then
day = "7 ايام"
elseif Redis:ttl(Gold.."deletbank" .. 111) >= 432000 then
day = "6 ايام"
elseif Redis:ttl(Gold.."deletbank" .. 111) >= 345600 then
day = "5 ايام"
elseif Redis:ttl(Gold.."deletbank" .. 111) >= 259200 then
day = "4 ايام"
elseif Redis:ttl(Gold.."deletbank" .. 111) >= 172800 then
day = "3 ايام"
elseif Redis:ttl(Gold.."deletbank" .. 111) >= 86400 then
day = "يومان"
elseif Redis:ttl(Gold.."deletbank" .. 111) <= 86400 then
day = "يوم واحد"
else
day = " لم يحدد الوقت "
end
local toptop = "⇜ أهلين يا روح البوت هذي أوامري :\n⇜ اختر نوع التوب من الازرار\n\n⇜ تتصفر اللعبة بعد ↤ "..day.."\n✓"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'توب الفلوس', data = data.sender_user_id..'/topmon'},{text = 'توب الحراميه', data = data.sender_user_id..'/topzrf'},
},
{
{text = 'توب المتزوجين', data = data.sender_user_id..'/zoztee'}, {text = 'توب المتبرعين', data = data.sender_user_id..'/motbra'},
},
{
{text = 'توب النوادي', data = data.sender_user_id..'/topnade'},{text = 'توب المزارع', data = data.sender_user_id..'/mazratee'},
},
{
{text = 'اخفاء', data = data.sender_user_id..'/delAmr'}, 
},
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,toptop, 'md', true, false, reply_markup)
end
end
-----------------
if Text and Text:match('(%d+)/topnade') then
local UserId = Text:match('(%d+)/topnade')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local bank_users = Redis:smembers(Gold.."ownernade")
if #bank_users == 0 then
return send(ChatId,Msg_id,"⇜ لا يوجد نوادي","md",true)
end
top_monyd = "*⇜ توب أعلى 10 نوادي ⚽️ :*\n\n"
mony_listd = {}
for k,v in pairs(bank_users) do
local mony = Redis:get(Gold.."nokatnade"..v) or 0
table.insert(mony_listd, {tonumber(mony) , v})
end
table.sort(mony_listd, function(a, b) return a[1] > b[1] end)
num = 1
emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)"
}
for k,v in pairs(mony_listd) do
if num <= 10 then
local user_name = bot.getUser(v[2]).first_name or "لا يوجد اسم"
tt =  "["..user_name.."]("..user_name..")"
tt = tt:gsub("🇾🇪️",'')
tt = tt:gsub("🇹🇳",'')
tt = tt:gsub("🇸🇾",'')
tt = tt:gsub("🇸🇩",'')
tt = tt:gsub("🇸🇦",'')
tt = tt:gsub("🇶🇦",'')
tt = tt:gsub("🇵🇸",'')
tt = tt:gsub("🇴🇲",'')
tt = tt:gsub("🇲🇦",'')
tt = tt:gsub("🇱🇾",'')
tt = tt:gsub("🇱🇧",'')
tt = tt:gsub("🇰🇼️",'')
tt = tt:gsub("🇯🇴",'')
tt = tt:gsub("🇮🇶",'')
tt = tt:gsub("??🇬",'')
tt = tt:gsub("🇧🇭",'')
tt = tt:gsub("🇩🇿️",'')
tt = tt:gsub("🇦🇪",'')
tt = tt:gsub("@[%a%d_]+",'')
tt = tt:gsub("#[%a%d_]+",'')
local kk = Redis:get(Gold.."lkbnade"..v[2])
kk = kk:gsub("🇾🇪️",'')
kk = kk:gsub("🇹🇳",'')
kk = kk:gsub("🇸🇾",'')
kk = kk:gsub("🇸🇩",'')
kk = kk:gsub("🇸🇦",'')
kk = kk:gsub("🇶🇦",'')
kk = kk:gsub("🇵🇸",'')
kk = kk:gsub("🇴🇲",'')
kk = kk:gsub("🇲🇦",'')
kk = kk:gsub("🇱🇾",'')
kk = kk:gsub("🇱🇧",'')
kk = kk:gsub("🇰🇼️",'')
kk = kk:gsub("🇯🇴",'')
kk = kk:gsub("🇮🇶",'')
kk = kk:gsub("🇪🇬",'')
kk = kk:gsub("🇧🇭",'')
kk = kk:gsub("🇩🇿️",'')
kk = kk:gsub("🇦🇪",'')
kk = kk:gsub("@[%a%d_]+",'')
kk = kk:gsub("#[%a%d_]+",'')
local mony = v[1]
local doltebank = Redis:get(Gold.."doltebank"..v[2]) or " "
local convert_mony = string.format("%.0f",mony)
local emo = emoji[k]
num = num + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
top_monyd = top_monyd..emo.." "..gflos.."  l "..kk.." ( "..tt.." "..doltebank.." ) \n"
gg = " ━━━━━━━━━\n\n*⇜ ملاحظـه هامـه ⚠️ :\nاي شخص مخالف للعبة بالغش بينحظر من اللعبه وتتصفر فلوسه*"
end
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '• رجوع •', data = data.sender_user_id..'/toptop'}, 
},
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,top_monyd..gg, 'md', true, false, reply_markup)
end
end
-----------------
if Text and Text:match('(%d+)/mazratee') then
local UserId = Text:match('(%d+)/mazratee')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local bank_users = Redis:smembers(Gold.."ownerfram")
if #bank_users == 0 then
return send(ChatId,Msg_id,"⇜ لا يوجد مزارع","md",true)
end
top_monyd = "*⇜ تـوب أغنى 10 مزارعيـن 👨🏻‍🌾 :*\n\n"
mony_listd = {}
for k,v in pairs(bank_users) do
local mony = Redis:get(Gold.."toplvfarm"..v) or 0
table.insert(mony_listd, {tonumber(mony) , v})
end
table.sort(mony_listd, function(a, b) return a[1] > b[1] end)
num = 1
emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)"
}
for k,v in pairs(mony_listd) do
if num <= 10 then
local user_name = bot.getUser(v[2]).first_name or "لا يوجد اسم"
tt =  "["..user_name.."]("..user_name..")"
tt = tt:gsub("🇾🇪️",'')
tt = tt:gsub("🇹🇳",'')
tt = tt:gsub("🇸🇾",'')
tt = tt:gsub("🇸🇩",'')
tt = tt:gsub("🇸🇦",'')
tt = tt:gsub("🇶🇦",'')
tt = tt:gsub("🇵🇸",'')
tt = tt:gsub("🇴🇲",'')
tt = tt:gsub("🇲🇦",'')
tt = tt:gsub("🇱🇾",'')
tt = tt:gsub("🇱🇧",'')
tt = tt:gsub("🇰🇼️",'')
tt = tt:gsub("🇯🇴",'')
tt = tt:gsub("🇮🇶",'')
tt = tt:gsub("🇪🇬",'')
tt = tt:gsub("🇧🇭",'')
tt = tt:gsub("🇩🇿️",'')
tt = tt:gsub("🇦🇪",'')
tt = tt:gsub("@[%a%d_]+",'')
tt = tt:gsub("#[%a%d_]+",'')
local kk = Redis:get(Gold.."namefram"..v[2])
kk = kk:gsub("🇾🇪️",'')
kk = kk:gsub("🇹🇳",'')
kk = kk:gsub("🇸🇾",'')
kk = kk:gsub("🇸🇩",'')
kk = kk:gsub("🇸🇦",'')
kk = kk:gsub("🇶🇦",'')
kk = kk:gsub("🇵🇸",'')
kk = kk:gsub("🇴🇲",'')
kk = kk:gsub("🇲🇦",'')
kk = kk:gsub("🇱🇾",'')
kk = kk:gsub("🇱🇧",'')
kk = kk:gsub("🇰🇼️",'')
kk = kk:gsub("🇯🇴",'')
kk = kk:gsub("🇮🇶",'')
kk = kk:gsub("🇪🇬",'')
kk = kk:gsub("🇧🇭",'')
kk = kk:gsub("🇩🇿️",'')
kk = kk:gsub("🇦🇪",'')
kk = kk:gsub("@[%a%d_]+",'')
kk = kk:gsub("#[%a%d_]+",'')
local doltebank = Redis:get(Gold.."doltebank"..v[2]) or " "
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = emoji[k]
num = num + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
top_monyd = top_monyd..emo.." "..gflos.."  l "..kk.." ( "..tt.." "..doltebank.." ) \n"
gg = " ━━━━━━━━━\n\nملاحظة : اي شخص مخالف للعبة بالغش او حاط يوزر بينحظر من اللعبه وتتصفر فلوسه"
end
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '• رجوع •', data = data.sender_user_id..'/toptop'}, 
},
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,top_monyd..gg, 'md', true, false, reply_markup)
end
end
-----------------
if Text and Text:match('(%d+)/motbra') then
local UserId = Text:match('(%d+)/motbra')
if tonumber(data.sender_user_id) == tonumber(UserId) then
  local F_Name = bot.getUser(data.sender_user_id).first_name
Redis:set(Gold..data.sender_user_id.."first_name:", F_Name)
local ban = bot.getUser(data.sender_user_id)
if ban.first_name then
news = "["..ban.first_name.."]("..ban.first_name..")"
news = news:gsub("🇾🇪️",'')
news = news:gsub("🇹🇳",'')
news = news:gsub("🇸🇾",'')
news = news:gsub("🇸🇩",'')
news = news:gsub("🇸🇦",'')
news = news:gsub("🇶🇦",'')
news = news:gsub("🇵🇸",'')
news = news:gsub("🇴🇲",'')
news = news:gsub("🇲🇦",'')
news = news:gsub("🇱🇾",'')
news = news:gsub("🇱🇧",'')
news = news:gsub("🇰🇼️",'')
news = news:gsub("🇯🇴",'')
news = news:gsub("🇮🇶",'')
news = news:gsub("🇪🇬",'')
news = news:gsub("🇧🇭",'')
news = news:gsub("🇩🇿️",'')
news = news:gsub("🇦🇪",'')
else
news = " لا يوجد"
end
ballancee = Redis:get(Gold.."tabbroat"..data.sender_user_id) or 0
local bank_users = Redis:smembers(Gold.."taza")
if #bank_users == 0 then
return send(ChatId,Msg_id,"⇜ لا يوجد حسابات في البنك","md",true)
end
top_mony = "*⇜ توب اعلى 20 شخص بالتبرعات :\n\n*"
tabr_list = {}
for k,v in pairs(bank_users) do
local mony = Redis:get(Gold.."tabbroat"..v)
table.insert(tabr_list, {tonumber(mony) , v})
end
table.sort(tabr_list, function(a, b) return a[1] > b[1] end)
num = 1
emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)"
}
for k,v in pairs(tabr_list) do
if num <= 20 then
local user_name = bot.getUser(v[2]).first_name or "لا يوجد اسم"
tt =  "["..user_name.."]("..user_name..")"
tt = tt:gsub("🇾🇪️",'')
tt = tt:gsub("🇹🇳",'')
tt = tt:gsub("🇸🇾",'')
tt = tt:gsub("🇸🇩",'')
tt = tt:gsub("🇸🇦",'')
tt = tt:gsub("🇶🇦",'')
tt = tt:gsub("🇵??",'')
tt = tt:gsub("🇴🇲",'')
tt = tt:gsub("🇲🇦",'')
tt = tt:gsub("🇱🇾",'')
tt = tt:gsub("🇱🇧",'')
tt = tt:gsub("🇰🇼️",'')
tt = tt:gsub("🇯🇴",'')
tt = tt:gsub("🇮🇶",'')
tt = tt:gsub("🇪🇬",'')
tt = tt:gsub("🇧🇭",'')
tt = tt:gsub("🇩🇿️",'')
tt = tt:gsub("🇦🇪",'')
tt = tt:gsub("@[%a%d_]+",'')
tt = tt:gsub("#[%a%d_]+",'')
local doltebank = Redis:get(Gold.."doltebank"..v[2]) or " "
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = emoji[k]
num = num + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
top_mony = top_mony..emo.." "..gflos.." 💵 l "..tt.." "..doltebank.." \n"
gflous = string.format("%.0f", ballancee):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
gg = " ━━━━━━━━━\n• you) "..gflous.." 💵 l "..news.." \n\nملاحظة : اي شخص مخالف للعبة بالغش او حاط يوزر بينحظر من اللعبه وتتصفر فلوسه"
end
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '• رجوع •', data = data.sender_user_id..'/toptop'}, 
},
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,top_mony..gg, 'md', true, false, reply_markup)
end
end
-----------------
if Text and Text:match('(%d+)/zoztee') then
local UserId = Text:match('(%d+)/zoztee')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local zwag_users = Redis:smembers(Gold.."roogg1")
if #zwag_users == 0 then
return edit(ChatId,Msg_id,"⇜ مافي زواجات حاليا","md",true)
end
top_zwag = "توب 30 اغلى زواجات :\n\n"
zwag_list = {}
for k,v in pairs(zwag_users) do
local mahr = Redis:get(Gold.."rahr1"..v)
local zwga = Redis:get(Gold.."rooga1"..v)
table.insert(zwag_list, {tonumber(mahr) , v , zwga})
end
table.sort(zwag_list, function(a, b) return a[1] > b[1] end)
znum = 1
zwag_emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)",
"21)",
"22)",
"23)",
"24)",
"25)",
"26)",
"27)",
"28)",
"29)",
"30)"
  }
for k,v in pairs(zwag_list) do
if znum <= 30 then
local zwg_name = bot.getUser(v[2]).first_name or "لا يوجد اسم"
local zwga_name = bot.getUser(v[3]).first_name or Redis:get(Gold..v[3].."first_name:") or "لا يوجد اسم"
tt =  "["..zwg_name.."]("..zwg_name..")"
tt = tt:gsub("🇾🇪️",'')
tt = tt:gsub("🇹🇳",'')
tt = tt:gsub("🇸🇾",'')
tt = tt:gsub("🇸🇩",'')
tt = tt:gsub("🇸🇦",'')
tt = tt:gsub("🇶🇦",'')
tt = tt:gsub("🇵🇸",'')
tt = tt:gsub("🇴🇲",'')
tt = tt:gsub("🇲🇦",'')
tt = tt:gsub("🇱🇾",'')
tt = tt:gsub("🇱🇧",'')
tt = tt:gsub("🇰🇼️",'')
tt = tt:gsub("🇯🇴",'')
tt = tt:gsub("🇮🇶",'')
tt = tt:gsub("🇪🇬",'')
tt = tt:gsub("🇧🇭",'')
tt = tt:gsub("🇩🇿️",'')
tt = tt:gsub("🇦🇪",'')
tt = tt:gsub("@[%a%d_]+",'')
tt = tt:gsub("#[%a%d_]+",'')
kk = "["..zwga_name.."]("..zwga_name..")"
kk = kk:gsub("🇾🇪️",'')
kk = kk:gsub("🇹🇳",'')
kk = kk:gsub("🇸🇾",'')
kk = kk:gsub("🇸🇩",'')
kk = kk:gsub("🇸🇦",'')
kk = kk:gsub("🇶🇦",'')
kk = kk:gsub("🇵🇸",'')
kk = kk:gsub("🇴🇲",'')
kk = kk:gsub("🇲🇦",'')
kk = kk:gsub("🇱🇾",'')
kk = kk:gsub("🇱🇧",'')
kk = kk:gsub("🇰🇼️",'')
kk = kk:gsub("🇯🇴",'')
kk = kk:gsub("🇮🇶",'')
kk = kk:gsub("🇪🇬",'')
kk = kk:gsub("🇧🇭",'')
kk = kk:gsub("🇩🇿️",'')
kk = kk:gsub("🇦🇪",'')
kk = kk:gsub("@[%a%d_]+",'')
kk = kk:gsub("#[%a%d_]+",'')
local doltebank = Redis:get(Gold.."doltebank"..v[2]) or " "
local doltebankz = Redis:get(Gold.."doltebank"..v[3]) or " "
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = zwag_emoji[k]
znum = znum + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
top_zwag = top_zwag..emo.." "..gflos.." 💵 l "..tt.." "..doltebank.." 👫 "..kk.." "..doltebankz.."\n"
gg = "\n\nملاحظة : اي شخص مخالف للعبة بالغش او حاط يوزر بينحظر من اللعبه وتتصفر فلوسه"
end
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '• رجوع •', data = data.sender_user_id..'/toptop'}, 
},
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,top_zwag..gg, 'md', true, false, reply_markup)
end
end
-----------------
if Text and Text:match('(%d+)/topzrf') then
local UserId = Text:match('(%d+)/topzrf')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local ban = bot.getUser(data.sender_user_id)
if ban.first_name then
news = "["..ban.first_name.."]("..ban.first_name..")"
news = news:gsub("🇾🇪️",'')
news = news:gsub("🇹🇳",'')
news = news:gsub("🇸🇾",'')
news = news:gsub("🇸🇩",'')
news = news:gsub("🇸🇦",'')
news = news:gsub("🇶🇦",'')
news = news:gsub("🇵🇸",'')
news = news:gsub("🇴🇲",'')
news = news:gsub("🇲🇦",'')
news = news:gsub("🇱🇾",'')
news = news:gsub("🇱🇧",'')
news = news:gsub("🇰🇼️",'')
news = news:gsub("🇯🇴",'')
news = news:gsub("🇮🇶",'')
news = news:gsub("🇪🇬",'')
news = news:gsub("🇧🇭",'')
news = news:gsub("🇩🇿️",'')
news = news:gsub("🇦🇪",'')
else
news = " لا يوجد"
end
zrfee = Redis:get(Gold.."rrfff"..data.sender_user_id) or 0
local ty_users = Redis:smembers(Gold.."rrfffid")
if #ty_users == 0 then
return send(ChatId,Msg_id,"⇜ لا يوجد احد","md",true)
end
ty_zillzall = "توب 20 شخص زرفوا فلوس :\n\n"
ty_list = {}
for k,v in pairs(ty_users) do
local mony = Redis:get(Gold.."rrfff"..v)
table.insert(ty_list, {tonumber(mony) , v})
end
table.sort(ty_list, function(a, b) return a[1] > b[1] end)
num_ty = 1
emojii ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)"
}
for k,v in pairs(ty_list) do
if num_ty <= 20 then
local user_name = bot.getUser(v[2]).first_name or "لا يوجد اسم"
tt =  "["..user_name.."]("..user_name..")"
tt = tt:gsub("🇾🇪️",'')
tt = tt:gsub("🇹🇳",'')
tt = tt:gsub("🇸🇾",'')
tt = tt:gsub("🇸🇩",'')
tt = tt:gsub("🇸🇦",'')
tt = tt:gsub("🇶🇦",'')
tt = tt:gsub("🇵🇸",'')
tt = tt:gsub("🇴🇲",'')
tt = tt:gsub("🇲🇦",'')
tt = tt:gsub("🇱🇾",'')
tt = tt:gsub("🇱🇧",'')
tt = tt:gsub("🇰🇼️",'')
tt = tt:gsub("🇯🇴",'')
tt = tt:gsub("🇮🇶",'')
tt = tt:gsub("🇪🇬",'')
tt = tt:gsub("🇧🇭",'')
tt = tt:gsub("🇩🇿️",'')
tt = tt:gsub("🇦🇪",'')
tt = tt:gsub("@[%a%d_]+",'')
tt = tt:gsub("#[%a%d_]+",'')
local doltebank = Redis:get(Gold.."doltebank"..v[2]) or " "
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emoo = emojii[k]
num_ty = num_ty + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
ty_zillzall = ty_zillzall..emoo.." "..gflos.." 💵 l "..tt.." "..doltebank.."\n"
gflous = string.format("%.0f", zrfee):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
gg = "\n━━━━━━━━━\n• you) "..gflous.." 💵 l "..news.." \n\nملاحظة : اي شخص مخالف للعبة بالغش او حاط يوزر بينحظر من اللعبه وتتصفر فلوسه"
end
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '• رجوع •', data = data.sender_user_id..'/toptop'}, 
},
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,ty_zillzall..gg, 'md', true, false, reply_markup)
end
end
-----------------
if Text and Text:match('(%d+)/topmon') then
local UserId = Text:match('(%d+)/topmon')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local F_Name = bot.getUser(data.sender_user_id).first_name
Redis:set(Gold..data.sender_user_id.."first_name:", F_Name)
local ban = bot.getUser(data.sender_user_id)
if ban.first_name then
news = "["..ban.first_name.."]("..ban.first_name..")"
news = news:gsub("🇾🇪️",'')
news = news:gsub("🇹🇳",'')
news = news:gsub("🇸🇾",'')
news = news:gsub("🇸🇩",'')
news = news:gsub("🇸🇦",'')
news = news:gsub("🇶🇦",'')
news = news:gsub("🇵🇸",'')
news = news:gsub("??🇲",'')
news = news:gsub("🇲🇦",'')
news = news:gsub("🇱🇾",'')
news = news:gsub("🇱🇧",'')
news = news:gsub("🇰🇼️",'')
news = news:gsub("🇯🇴",'')
news = news:gsub("🇮🇶",'')
news = news:gsub("🇪🇬",'')
news = news:gsub("🇧🇭",'')
news = news:gsub("🇩🇿️",'')
news = news:gsub("🇦🇪",'')
else
news = " لا يوجد"
end
ballancee = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local bank_users = Redis:smembers(Gold.."booob")
if #bank_users == 0 then
return send(ChatId,Msg_id,"⇜ لا يوجد حسابات في البنك","md",true)
end
top_mony = "توب اغنى 20 شخص :\n\n"
mony_list = {}
for k,v in pairs(bank_users) do
local mony = Redis:get(Gold.."boob"..v)
table.insert(mony_list, {tonumber(mony) , v})
end
table.sort(mony_list, function(a, b) return a[1] > b[1] end)
num = 1
emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)"
}
for k,v in pairs(mony_list) do
if num <= 20 then
local user_name = bot.getUser(v[2]).first_name or "لا يوجد اسم"
tt =  "["..user_name.."]("..user_name..")"
tt = tt:gsub("🇾🇪️",'')
tt = tt:gsub("🇹🇳",'')
tt = tt:gsub("🇸🇾",'')
tt = tt:gsub("🇸🇩",'')
tt = tt:gsub("🇸🇦",'')
tt = tt:gsub("🇶🇦",'')
tt = tt:gsub("🇵🇸",'')
tt = tt:gsub("🇴🇲",'')
tt = tt:gsub("🇲🇦",'')
tt = tt:gsub("🇱🇾",'')
tt = tt:gsub("🇱🇧",'')
tt = tt:gsub("🇰🇼️",'')
tt = tt:gsub("🇯🇴",'')
tt = tt:gsub("🇮🇶",'')
tt = tt:gsub("🇪🇬",'')
tt = tt:gsub("🇧🇭",'')
tt = tt:gsub("🇩🇿️",'')
tt = tt:gsub("🇦🇪",'')
tt = tt:gsub("@[%a%d_]+",'')
tt = tt:gsub("#[%a%d_]+",'')
local doltebank = Redis:get(Gold.."doltebank"..v[2]) or " "
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = emoji[k]
num = num + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
top_mony = top_mony..emo.." "..gflos.." 💵 l "..tt.." "..doltebank.."\n"
gflous = string.format("%.0f", ballancee):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
gg = " ━━━━━━━━━\nyou ) "..gflous.." 💵 l "..news.." \n\n*⇜ ملاحظـه هامـه ⚠️ :\nاي شخص مخالف للعبة بالغش بينحظر من اللعبه وتتصفر فلوسه*"
end
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '• رجوع •', data = data.sender_user_id..'/toptop'}, 
},
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,top_mony..gg, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/syria') then
local UserId = Text:match('(%d+)/syria')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇸🇾"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇸🇾 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
------------------------------------------------------------------------
if Text and Text:match('/CancelChannelVip:'..tonumber(IdUser)..'(.*)') then
local UserId = Text:match('/CancelChannelVip:'..tonumber(IdUser)..'(.*)')
Redis:del(Gold..'SetChannelVip'..IdUser)
Text = "⇜ تم الغاء حفظ قناتك"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}}
bot.editMessageText(ChatId,msg_id,Text, 'md', true, false, reply_markup)
return false
end
if Text and Text:match('/ChangeChannelVip:'..tonumber(IdUser)..'(.*)') then
local UserId = Text:match('/ChangeChannelVip:'..tonumber(IdUser)..'(.*)')
Redis:set(Gold..'SetChannelVip'..IdUser,true)
local Text = "⇜ ارسل لي قناتك الان"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text=" الغاء ",data="/CancelChannelVip:"..IdUser}},
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}}
bot.editMessageText(ChatId,msg_id,Text, 'md', true, false, reply_markup)
return false
end
if Redis:get(Gold..'SetChannelVip'..IdUser) then 
if text =='الغاء' then 
bot.sendText(msg_chat_id,msg_id, '⇜ تم الغاء حفظ قناتك ',"md",true)  
Redis:del(Gold..'SetChannelVip'..IdUser)
return false  
end 
Redis:del(Gold..'SetChannelVip'..IdUser)
Redis:set(Gold..'SOFI:Channel:Vip'..IdUser,text)
local text = "⇜ تم حفظ قناتك"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text="• تغيير قناتي •",data="/ChangeChannelVip:"..IdUser},{text="• مسح قناتي •",data="/DelChannelVip:"..IdUser}},
{{text="• اخفاء •",data="/HideChannelVip:"..IdUser}},
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}}
bot.editMessageText(ChatId,msg_id,text, 'md', true, false, reply_markup)
return false   
end
if Text and Text:match('/DelChannelVip:'..tonumber(IdUser)..'(.*)') then
local UserId = Text:match('/DelChannelVip:'..tonumber(IdUser)..'(.*)')
Redis:del(Gold..'SOFI:Channel:Vip'..IdUser)
Text = "⇜ تم حذف قناتك"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text="• وضع قناتي •",data="/ChangeChannelVip:"..IdUser}},
{{text="• اخفاء •",data="/HideChannelVip:"..IdUser}},
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}}
bot.editMessageText(ChatId,msg_id,Text, 'md', true, false, reply_markup)
return false
end
if Text and Text:match('/HideChannelVip:(.*)') then
local UserId = Text:match('/HideChannelVip:(.*)')
if tonumber(UserId) == tonumber(IdUser) then
bot.editMessageText(ChatId,msg_id,"⇜ تم اخفاء امر وضع قناتي","md",true)
else
return bot.answerCallbackQuery(data.id, "• عذراً الامر ليس لك •", true)
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/mariam') then
local UserId = Text:match('(%d+)/mariam')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*انا تائهة هل تود مساعدتي 🥺🙇🏻‍♀ ؟!*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'نعـم', callback_data=IdUser.."/maryes"},{text = 'لااا', callback_data=IdUser.."/marno"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/marno') then
local UserId = Text:match('(%d+)/marno')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*لماذا هل انت قاسي القلب 😞 ؟!*"
local m = "https://telegra.ph/file/8c38d512d1d1983fbf116.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'نعـم', callback_data=IdUser.."/maryess1"},{text = 'لااا', callback_data=IdUser.."/marnoo1"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/maryess1') or Text and Text:match('(%d+)/marnoo1') then
local UserId = Text:match('(%d+)/maryess1') or Text:match('(%d+)/marnoo1')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*انني اشفق عليك يجب عليك انت تطهر روحك وتحب الخير للجميع*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'وماذا', callback_data=IdUser.."/maryess2"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/maryess2') then
local UserId = Text:match('(%d+)/maryess2')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*هل انت نادم على ماقلت ؟*"
local m = "https://gnrkogh.000webhostapp.com/img/2.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'نعـم', callback_data=IdUser.."/maryess3"},{text = 'لااا', callback_data=IdUser.."/marnoo3"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/maryess3') or Text and Text:match('(%d+)/maryes') then
local UserId = Text:match('(%d+)/maryess3') or Text:match('(%d+)/maryes')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*واو اشكرك انت شخص رائع حقا 🥰*"
local m = "https://telegra.ph/file/1d1c2d706e6227c863d00.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'حسنا', callback_data=IdUser.."/o2"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/o2') then
local UserId = Text:match('(%d+)/o2')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*ابحث معي عن منزلي لقد كان قريبا من هنا*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'حسنا', callback_data=IdUser.."/o3"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/o3') then
local UserId = Text:match('(%d+)/o3')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*لكن عندما حل اليل لم اعد ارى اي شيئ*"
local m = "https://amoralegria.files.wordpress.com/2016/04/scary-trees-at-night.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'حسنا', callback_data=IdUser.."/o4"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/o4') then
local UserId = Text:match('(%d+)/o4')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*اين تضن انه يوجد ؟! .. على الـ يميـن ام على يسـار*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'يمين', callback_data=IdUser.."/riightt"},{text = 'يسار', callback_data=IdUser.."/leeftt"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/riightt') or Text and Text:match('(%d+)/leeftt') then
local UserId = Text:match('(%d+)/riightt') or Text:match('(%d+)/leeftt')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*شكرا لك .. اريد ان اسألك سؤالا ونحن في الطريق 🥺🙇🏻‍♀*"
local m = "https://s-media-cache-ak0.pinimg.com/736x/50/a5/58/50a5585a3bdd1a13693ad65bd7439627.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'تفضلي', callback_data=IdUser.."/o5"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/o5') then
local UserId = Text:match('(%d+)/o5')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*هل تراني فتاة لطيفة ام مخيفة ؟*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'مخيفه', callback_data=IdUser.."/scary"},{text = 'لطيفه', callback_data=IdUser.."/nice"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/nice') then
local UserId = Text:match('(%d+)/nice')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*اشكرك على مجاملتك هيا لنكمل الطريق*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'حسنا', callback_data=IdUser.."/o6"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/scary') then
local UserId = Text:match('(%d+)/scary')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*لقد جعلتني ابكي لكني اسامحك لانك شخص لطيف هيا لنكمل الطريق*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'حسنا', callback_data=IdUser.."/o6"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/o6') then
local UserId = Text:match('(%d+)/o6')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*لقد وصلنا الى المنزل شكرا جزيلا انتضرني قليلا وسوف اعود*"
local m = "https://s-media-cache-ak0.pinimg.com/originals/cd/3d/d1/cd3dd1e3b0568ec7f82e24d98249a437.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'حسنا', callback_data=IdUser.."/o7"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/o7') then
local UserId = Text:match('(%d+)/o7')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*لقد اخبرت والدي عنك وهم م,تحمسين لرؤيتك*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'شكرا لنقابلهم', callback_data=IdUser.."/o8"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/o8') then
local UserId = Text:match('(%d+)/o8')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*انا لست الحوت الازرق كما يدعون .. ولست مخيفه ايضا 🤷🏻‍♀*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'انتي كاذبه', callback_data=IdUser.."/lion"},{text = 'انا اعلم', callback_data=IdUser.."/iknow"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/lion') then
local UserId = Text:match('(%d+)/lion')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*انا لست كاذبة  صدقني*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'حسنا', callback_data=IdUser.."/o9"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/o9') or Text and Text:match('(%d+)/iknow') then
local UserId = Text:match('(%d+)/o9') or Text:match('(%d+)/iknow')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*لماذا ارى في عينيك الخوف*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'لست خائف', callback_data=IdUser.."/im_not"},{text = 'لا ادري', callback_data=IdUser.."/dont_know"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/im_not') or Text and Text:match('(%d+)/dont_know') then
local UserId = Text:match('(%d+)/im_not') or Text:match('(%d+)/dont_know')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*انا فتاة لطيفة تحب اللعب مع الجميع*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'حسنا', callback_data=IdUser.."/o10"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/o10') then
local UserId = Text:match('(%d+)/o10')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*اعرف كل شيئ سمعت ذالك بلراديو*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'ماذا سمعتي', callback_data=IdUser.."/what"},{text = 'حسنا', callback_data=IdUser.."/o11"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/o11') or Text and Text:match('(%d+)/what') then
local UserId = Text:match('(%d+)/o11') or Text:match('(%d+)/what')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*سمعت ان البشر يقتلون من اجل المال فقط*"
local m = "https://s-media-cache-ak0.pinimg.com/736x/8b/c6/2d/8bc62d12cfede6d061c3273e3ee87a18--scary-photography-photography-ideas.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'المال سر الحياة', callback_data=IdUser.."/life"},},
{{text = 'النفس الطيبة سر الحياة', callback_data=IdUser.."/self"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/life') or Text and Text:match('(%d+)/self') then
local UserId = Text:match('(%d+)/life') or Text:match('(%d+)/self')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*لماذا لم تدخل الغرفة*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'دخول 🚪', callback_data=IdUser.."/jooin"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/jooin') then
local UserId = Text:match('(%d+)/jooin')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*هههه انت الان مسجون في هـذه الغرفة 🙁*"
local m = "https://i.ytimg.com/vi/VGXrRcKzoVA/hqdefault.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'انتي مخادعه', callback_data=IdUser.."/cheder"},{text = 'لماذا', callback_data=IdUser.."/whhy"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/cheder') or Text and Text:match('(%d+)/whhy') then
local UserId = Text:match('(%d+)/cheder') or Text:match('(%d+)/whhy')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*ستبقى هنا حتى اعود 🙁*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'اين تذهبين', callback_data=IdUser.."/wher_now"},},
{{text = 'ماذا افعل الان', callback_data=IdUser.."/what_now"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/wher_now') or Text and Text:match('(%d+)/what_now') then
local UserId = Text:match('(%d+)/wher_now') or Text:match('(%d+)/what_now')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*هناك مفتاح اسود هز الجهاز لتحصل عليه*"
local m = "http://cdn1us.denofgeek.com/sites/denofgeekus/files/styles/article_width/public/insidious_1.jpg?itok=70nSrEea"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'وجدته', callback_data=IdUser.."/find"},},
{{text = 'لم اجده', callback_data=IdUser.."/not_find"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/not_find') then
local UserId = Text:match('(%d+)/not_find')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*ابحث جيدا هناك مفتاح اسود هز الجهاز لتحصل عليه*"
local m = "http://cdn1us.denofgeek.com/sites/denofgeekus/files/styles/article_width/public/insidious_1.jpg?itok=70nSrEea"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'وجدته', callback_data=IdUser.."/find"},},
{{text = 'لم اجده', callback_data=IdUser.."/not_find"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/find') then
local UserId = Text:match('(%d+)/find')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*احسنت يجب عليك فتح الباب والهروب*"
local m = "https://telegra.ph/file/cd9d5bd72c2794aff1fba.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'افتح الباب🚪', callback_data=IdUser.."/oppen"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/oppen') then
local UserId = Text:match('(%d+)/oppen')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*يبدو ان هناك شخصا يغادر المنزل*"
local m = "https://s-media-cache-ak0.pinimg.com/originals/ab/53/0a/ab530a182c8a2adf98484ac480272513.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'انظر عبر النافذه🪟', callback_data=IdUser.."/letsee"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/letsee') then
local UserId = Text:match('(%d+)/letsee')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*يبدو انها مريم قد غادرت الى الغابة*"
local m = "https://c2.staticflickr.com/2/1347/3174462395_bd8738c72e_b.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'هروب', callback_data=IdUser.."/ruun"},},
{{text = 'البقاء مختبئاً', callback_data=IdUser.."/stay"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/stay') then
local UserId = Text:match('(%d+)/stay')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*يبدو ان مريم قد عادت\n- مريم : اين انت*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'اظهر نفسك', callback_data=IdUser.."/shoow"},},
{{text = 'ابقى صامتاً', callback_data=IdUser.."/keeep"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/ruun') then
local UserId = Text:match('(%d+)/ruun')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*الى اين انت ذاهب*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'لا ادري', callback_data=IdUser.."/dontknow"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/shoow') then
local UserId = Text:match('(%d+)/shoow')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*اين كنت كنت ابحث عنك*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'دعيني اذهب', callback_data=IdUser.."/let_me_go"},},
{{text = 'انا اسف', callback_data=IdUser.."/imsorry"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/dontknow') then
local UserId = Text:match('(%d+)/dontknow')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*هل تريد ان احبسك مرة اخرى*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'نعم احبسيني', callback_data=IdUser.."/yesgetme"},},
{{text = 'انا اسف', callback_data=IdUser.."/imsorry"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/keeep') then
local UserId = Text:match('(%d+)/keeep')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*لقد وجدتك لماذا كنت مختبئا*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'دعيني اذهب', callback_data=IdUser.."/let_me_go"},},
{{text = 'انا اسف', callback_data=IdUser.."/imsorry"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/imsorry') or Text and Text:match('(%d+)/let_me_go') or Text and Text:match('(%d+)/yesgetme') then
local UserId = Text:match('(%d+)/imsorry') or Text:match('(%d+)/let_me_go') or Text:match('(%d+)/yesgetme')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*الا ترى اني احبك واريدك ان تبقى معي*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'حسنا', callback_data=IdUser.."/o12"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/o12') then
local UserId = Text:match('(%d+)/o12')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*هل انت جائع*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'نعم', callback_data=IdUser.."/yes_im_hungrey"},},
{{text = 'لا', callback_data=IdUser.."/no_im_not"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/yes_im_hungrey') then
local UserId = Text:match('(%d+)/yes_im_hungrey')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*سأذهب الى المطبخ واعد الطعام*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'حسنا', callback_data=IdUser.."/o13"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/no_im_not') then
local UserId = Text:match('(%d+)/no_im_not')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*عندما اعرض عليك شيئ يجب ان تقبله*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'حسنا', callback_data=IdUser.."/o13"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/o13') then
local UserId = Text:match('(%d+)/o13')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*هل تصدق بوجود الماسونية ؟*"
local m = "https://images.gr-assets.com/photos/1356167254p8/650419.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'نعم', callback_data=IdUser.."/ubleve"},},
{{text = 'لا', callback_data=IdUser.."/dont_belev"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/ubleve') then
local UserId = Text:match('(%d+)/ubleve')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*هاذا جيد لانك ستصبح منهم عما قريب*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'لا اريد', callback_data=IdUser.."/dont_wont"},},
{{text = 'حسنا', callback_data=IdUser.."/o14"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/dont_belev') then
local UserId = Text:match('(%d+)/dont_belev')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*لا تهتم ستعرف عما قريب*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'حسنا', callback_data=IdUser.."/o14"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/dont_wont') then
local UserId = Text:match('(%d+)/dont_wont')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*هاذا القرار لا يعود لك*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'حسنا', callback_data=IdUser.."/o14"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/o14') then
local UserId = Text:match('(%d+)/o14')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*يبدو انه قد حل اليل اذهب للنوم*"
local m = "https://s-media-cache-ak0.pinimg.com/originals/39/1a/70/391a70d24a1e458008dcebf927732019.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'حسنا', callback_data=IdUser.."/o15"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/o15') then
local UserId = Text:match('(%d+)/o15')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*يبدو ان مريم تمارس سحرا اسود في القبو هـذه فرصتك للهروب*"
local m = "http://www.johnteehan.com/wp-content/uploads/2014/06/scary-basement.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'هروب', callback_data=IdUser.."/skap"},},
{{text = 'البقاء', callback_data=IdUser.."/stay2"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/skap') then
local UserId = Text:match('(%d+)/skap')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*انت الان وحدك في الغابة في اي اتجاه تريد ان تذهب*"
local m = "https://ak3.picdn.net/shutterstock/videos/9187733/thumb/1.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'يمين', callback_data=IdUser.."/rig"},},
{{text = 'يسار', callback_data=IdUser.."/lef"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/rig') or Text and Text:match('(%d+)/lef') then
local UserId = Text:match('(%d+)/rig') or Text:match('(%d+)/lef')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*يبدو ان هناك فتاة صغيرة في الغابة*"
local m = "https://telegra.ph/file/b1d33b7701be6e2552350.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي\n「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'اتركها', callback_data=IdUser.."/lefthere"},},
{{text = 'اسئلها عن الطريق', callback_data=IdUser.."/askhere"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/askhere') then
local UserId = Text:match('(%d+)/askhere')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*- اهلا بك هل تعلمين اين الطريق الى المستنقع \n- انا اسف على ازعاجك*"
local m = "https://telegra.ph/file/b1d33b7701be6e2552350.jpg"
au ={
type = "photo",
media = m,
caption = "*「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'اهرب', callback_data=IdUser.."/goaway"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/goaway') or Text and Text:match('(%d+)/lefthere') then
local UserId = Text:match('(%d+)/goaway') or Text:match('(%d+)/lefthere')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*يبدو ان هناك منزلا ينبعث منه الضوء*"
local m = "https://cdn.pixabay.com/photo/2014/11/26/03/52/foggy-545838_960_720.jpg"
au ={
type = "photo",
media = m,
caption = "*「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'تفقد', callback_data=IdUser.."/check"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/check') then
local UserId = Text:match('(%d+)/check')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*هل تريد الدخول الى المنزل*"
local m = "https://i.imgflip.com/sv2t3.jpg?a416112"
au ={
type = "photo",
media = m,
caption = "*「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'نعم', callback_data=IdUser.."/inside"},},
{{text = 'لا', callback_data=IdUser.."/outside"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/inside') then
local UserId = Text:match('(%d+)/inside')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*هل تضن انك ستهرب مني*"
local m = "https://telegra.ph/file/6dcc6f8236ef5f0310954.jpg"
au ={
type = "photo",
media = m,
caption = "*「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'هروب', callback_data=IdUser.."/gofar"},},
{{text = 'مواجهه', callback_data=IdUser.."/fide"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/outside') then
local UserId = Text:match('(%d+)/outside')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*دعنا نكمل طريقنا*"
local m = "http://www.hdfondos.eu/preview/get_photo/5342/2560/1440"
au ={
type = "photo",
media = m,
caption = "*「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'حسنا', callback_data=IdUser.."/o16"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/gofar') or Text and Text:match('(%d+)/o16') then
local UserId = Text:match('(%d+)/gofar') or Text:match('(%d+)/o16')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*هههه هل تضن انك تستطيع الهرب*"
local m = "https://telegra.ph/file/6dcc6f8236ef5f0310954.jpg"
au ={
type = "photo",
media = m,
caption = "*「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'ماذا الان', callback_data=IdUser.."/then_w"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/then_w') then
local UserId = Text:match('(%d+)/then_w')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*لقد اعادتك مريم الى المنزل*"
local m = "https://s-media-cache-ak0.pinimg.com/originals/cd/3d/d1/cd3dd1e3b0568ec7f82e24d98249a437.jpg"
au ={
type = "photo",
media = m,
caption = "*「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'اكمل', callback_data=IdUser.."/then_e"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/fide') then
local UserId = Text:match('(%d+)/fide')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*هههه هل تضن انك تستطيع مواجهتي*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'ماذا الان', callback_data=IdUser.."/then_w"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/then_e') then
local UserId = Text:match('(%d+)/then_e')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*سمعت انت العالم سينتهي قريبا هل هاذا حقيقي*"
local m = "https://telegra.ph/file/3cd5c4f33dbbb399fab44.jpg"
au ={
type = "photo",
media = m,
caption = "*「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'نعم', callback_data=IdUser.."/askme"},},
{{text = 'لا', callback_data=IdUser.."/noth"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/askme') then
local UserId = Text:match('(%d+)/askme')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*هاذا رائع يبدو ان سلسلة البشر ستنتهي اخيرا*"
local m = "https://telegra.ph/file/e70a2a434d920487b208e.jpg"
au ={
type = "photo",
media = m,
caption = "*「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'اكمل', callback_data=IdUser.."/o17"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/noth') then
local UserId = Text:match('(%d+)/noth')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*هاذا مؤسف فالبشر لا يستحقون العيش*"
local m = "https://telegra.ph/file/c8c479b58bebd736ccd69.jpg"
au ={
type = "photo",
media = m,
caption = "*「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'اكمل', callback_data=IdUser.."/o17"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/o17') then
local UserId = Text:match('(%d+)/o17')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*اريد ان اطلب منك شيئ*"
local m = "https://telegra.ph/file/5b9c3b0dc2ca5f18c3a8b.jpg"
au ={
type = "photo",
media = m,
caption = "*「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'لايهمني', callback_data=IdUser.."/not_care"},},
{{text = 'اطلبي', callback_data=IdUser.."/o18"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/o18') then
local UserId = Text:match('(%d+)/o18')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*اكتب اسمي على يدك بلشفرة لتبقى هـذه الذكرى محفوظـه*"
local m = "https://telegra.ph/file/55f44f96b6f445579c3a5.jpg"
au ={
type = "photo",
media = m,
caption = "*「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'حسنا', callback_data=IdUser.."/acsept"},},
{{text = 'لا اريد', callback_data=IdUser.."/o19"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/not_care') then
local UserId = Text:match('(%d+)/not_care')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*الم تفهم بعد ؟ انت الان ملكي ولا يمكنك رفض شيئ*"
local m = "https://telegra.ph/file/aa2e18d4407fe04664735.jpg"
au ={
type = "photo",
media = m,
caption = "*「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'حسنا', callback_data=IdUser.."/o19"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/o19') then
local UserId = Text:match('(%d+)/o19')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local martxt = "*• النـهاية ☹️💔*"
local m = "https://telegra.ph/file/aa2e18d4407fe04664735.jpg"
au ={
type = "photo",
media = m,
caption = "*「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..martxt.."*\n-\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '• اعادة الـعبة 🚡', callback_data=IdUser.."/mariam"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/coolor') then
local UserId = Text:match('(%d+)/coolor')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local m = "https://t.me/msmswork/63" 
au ={
type = "photo",
media = m,
caption = "*- مرحبـاً عـزيـزي*["..ban.first_name.."](tg://user?id="..ban.id..") \n*- لمعرفة شخصيتك من لونك المفضل\n- اختـر لونـك من الازرار التاليـه*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'الابيض', callback_data=IdUser..'/whitee'},{text = 'الاسود', callback_data=IdUser..'/blackk'},{text = 'الرمادي', callback_data=IdUser..'/ramad'},
},
{
{text = 'الازرق', callback_data=IdUser..'/blue'},{text = 'الاخضر', callback_data=IdUser..'/green'},{text = 'الاصفر', callback_data=IdUser..'/yelow'},
},
{
{text = 'الوردي', callback_data=IdUser..'/pink'},{text = 'الاحمر', callback_data=IdUser..'/redd'},{text = 'البرتقالي', callback_data=IdUser..'/portg'},
},
{
{text = 'البني', callback_data=IdUser..'/brown'},{text = 'البنفسجي', callback_data=IdUser..'/banafsg'},{text = 'الفضي', callback_data=IdUser..'/fiidi'},
},
{
{text = 'الذهبي', callback_data=IdUser..'/goold'},
},
}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/whitee') then
local UserId = Text:match('(%d+)/whitee')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local wcww = {
'*- يشير اللون الأبيض على انك شخص بسيط وأنيق بمشاعرك ونقي من الداخل.*',
'*انت شخص لديك شخصية إيجابية، وتعتبر متفائل عن الحياة ومستبشر بالمستقبل .؟*',
'*- انت كنت تحب ارتداء اللون الأبيض تكون انت شخص مشرق وشخص تجلب السعادة.؟*',
'*- وتميل يا محب اللون الأبيض إلى معرفة التفاصيل في بعض الأمور، أنت شخصية مستقلة وتحب قضاء وقتك بمفردك والتفكير في حياتك.؟*',
}
local whcolor = wcww[math.random(#wcww)]
local m = "https://telegra.ph/file/762d3c7e7b8ebef5890f9.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي 「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..whcolor.."*\n✓\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '- رجـوع', callback_data=IdUser.."/coolor"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/blackk') then
local UserId = Text:match('(%d+)/blackk')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local bcbb = {
'*- يشير إلى شخص لديه الكثير من العزيمة والإرادة فهو لون السلطة والهيبة والوقار والخوف والفزع، إذا كنت من محبي اللون الأسود أنت شخص غامض وقوي وساحر*',
'*- قد يراك بعض الناس شخصا مخيفاً في بعض الأحيان، ويراك اخرون أنك شخص مسيطراً وديكتاتوراً*',
'*- اللون الأسود رمز للقوة والأناقة والثروة، واللون الأسود دليل على الغموض والموضة. والجدية ويعتبره بعض الناس رمز الشر والموت والجنس والخوف والغياب والوحدة والحزن، من أكثر الشهور التي ترتبط باللون الأسود هو شهر يناير.*',
}
local whcolor = bcbb[math.random(#bcbb)]
local m = "https://telegra.ph/file/e56df0b4ec99ea0720af1.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي 「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..whcolor.."*\n✓\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '- رجـوع', callback_data=IdUser.."/coolor"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/blue') then
local UserId = Text:match('(%d+)/blue')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local blbb = {
'*- ويقول الباحثين في علم النفس أن الشخص المحب للون الأزرق شخص جدير بالثقة ويمكن الاعتماد عليه في أمور هامة*',
'*- أنت شخص عميق تشبه المحيط، ويظهر عليك أنك قوياً وواثقاً من نفسك على الرغم من أنك في داخلك تحمل الضعف والرقة أو تحمل بعض الغضب والحزن المكتوم*',
'*- يقول عنك اللون الأزرق انك شخص تميل إلى الانسجام والسلام الداخلي وأنك شخص مهذب تراعي مشاعر الآخرين من حولك. ولكي يمكنك أن تحصل على اعرف شخصيتك من لونك المفضل في علم النفس عليك ان تعرف انك ببساطة شخص تحب البحر وتحب السلام والانسجام أنت شخص تمتاز بالهدوء والمحافظة. ومن أشهر الأبراج التي تحب اللون الأزرق هو برج الدلو، قال علم النفس عن اللون الأزرق في كلمات إنه القوة والصمود والضوء والسلام والصدق والعمق*',
}
local whcolor = blbb[math.random(#blbb)]
local m = "https://telegra.ph/file/60f1c8fc85e1ae634e665.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي 「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..whcolor.."*\n✓\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '- رجـوع', callback_data=IdUser.."/coolor"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/redd') then
local UserId = Text:match('(%d+)/redd')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local rcrr = {
'*- يشير اللون الاحمر أنت شخص قال عنه علم النفس انه عاطفي وطموح ويحب تحقيق الإنجاز والتنافس*',
'*- اللون الأحمر أنت شخص جريء وعاصف. انت صاحب صوت عالٍ وصاحب شخصية قوية، أنت عفو تحب المغامرة*',
'*- أيضًا انت شخص لا تخجل من الظهور والتعبير عن رأيك الشخص الذي يحب ارتداء اللون الأحمر يتميز بأنه شخصية عاطفية ورومانسية*',
'*- ويرمز اللون الأحمر إلى النار والحب والخطر والدم والحرب والغضب، والثورة ويرمز اللون الأحمر إلى كوكب المريخ. ويسمى الكوكب الأحمر، ومن أشهر محبين اللون الأحمر هما أصحاب برج الحمل*'
}
local whcolor = rcrr[math.random(#rcrr)]
local m = "https://telegra.ph/file/a602b6eb9e7450576f6e1.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي 「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..whcolor.."*\n✓\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '- رجـوع', callback_data=IdUser.."/coolor"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/green') then
local UserId = Text:match('(%d+)/green')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local gcgg = {
'*- يشير اللون اللون الأخضر أنت شخص عملي ومخلص، وقال عنك علماء النفس أنك شخص صاحب شخصية متوازنة ومستقرة وتحب الطبيعة والسلام، أنت شخص كريم على من حولك*',
'*- أنت مميز وتعرف كيف تجذب الآخرين لك لأنك متعاون ومحبوب وتحب الاخرين وتحب الاجتماع والمناسبات. يرمز اللون الأخضر في علم النفس الى الامام والى الطبيعة والى العطاء وإلى الخير والحب*',
'*- ويرمز أيضا إلى النماء والطبيعة الخضراء. اللون الأخضر دليل على قدوم الربيع وعلى البدايات الجديدة*',
'*- ويشير اللون الأخضر الى الراحة والى المشاركة والى الأمل، ويعتبر اللون الأخضر من أكثر الألوان التي تعطي راحة للعينين*'
}
local whcolor = gcgg[math.random(#gcgg)]
local m = "https://telegra.ph/file/55954ba5364473c3f9d24.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي 「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..whcolor.."*\n✓\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '- رجـوع', callback_data=IdUser.."/coolor"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/yelow') then
local UserId = Text:match('(%d+)/yelow')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local ycyy = {
'*- يشير اللون الأصفر أنت شخص مميز وغريب تحب تعلم أشياء جديدة، اللون الأصفر يرمز إلى السعادة وتحقيق الذات والشجاعة والجمال والتركيز وحب العمل*',
'*- أنت تعرف كيف تعيش حياة منظمة انت ذكي، اللون الأصفر هو لون الشجاعة والطموح. كما انت شخص رقيق وحساس وانت شخص دافئ مثل الشمس، انت رومانسي تبحث عن الحب، أنت شخص جميل وساحر*',
'*- شخصيتك مزيج من ذكاء الشباب وبساطة الأطفال وهدوء الكبار. يرمز اللون الأصفر إلى الحرارة والى ضوء الشمس والى السرعة والى الأمانة والوضوح*',
'*- قال علم النفس إن اللون الأصفر له أثر كبير على نشاط الذاكرة، قال علماء النفس عن اللون الأصفر انه يعمل على رفع ضغط الدم ويزيد من معدل النبض. ولكن ليس بدرجة اللون الأحمر وأن اللون الأصفر يساعد على التذكر وعلى العمل فاستعمل أدوات صفراء في المذاكرة وفي العمل*'
}
local whcolor = ycyy[math.random(#ycyy)]
local m = "https://telegra.ph/file/0994553df33de0e0ac9d3.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي 「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..whcolor.."*\n✓\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '- رجـوع', callback_data=IdUser.."/coolor"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/fiidi') then
local UserId = Text:match('(%d+)/fiidi')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local vcvv = {
'*- يشير اللون الفضي أنت شخص خيالي ومفكر يا محب اللون الفضي، انت جرئ ولا تخاف من التعبير عن آرائك العجيبة*',
'*- أنت شخص ذكي وقوي الشخصية وينجذب اليك الناس بسبب انك تملك شخصية بها ثقة ولها الكثير من القدرات تتميز بانك لديك ابتسامة صادقة تزين وجهك*',
'*- كما أن اللون الفضي رمز الأناقة والتواضع والاحترام والاستقرار والتوازن والحيادية والشيخوخة والضجر والاضمحلال والتداعي والبلادة والغبار والتلوث والحداد والدقة والحكمة والرسمية*',
'*- اللون الفضي يشير الى انك انسان لديك الكثير من الخبرة تحب القراءة والحكايات والتاريخ وتحب تبادل الأقوال*'
}
local whcolor = vcvv[math.random(#vcvv)]
local m = "https://telegra.ph/file/d0616b8bb12f2f7d07ee2.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي 「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..whcolor.."*\n✓\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '- رجـوع', callback_data=IdUser.."/coolor"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/goold') then
local UserId = Text:match('(%d+)/goold')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local gogg = {
'*- قال عنك علم النفس على انك شخص بارز ومتميز. أيضا يرمز اللون الذهبي الى الاناقة والتألق والقيادة والثقة*',
'*- أنت شخص ذكي وقوي الشخصية وينجذب اليك الناس بسبب انك تملك شخصية بها ثقة ولها الكثير من القدرات تتميز بانك لديك ابتسامة صادقة تزين وجهك*',
'*- ان كنت من محبين اللون الذهبي فأنت صاحب إبداع أصيل وذوق جميل*',
'*- كما يرمز اللون الذهبي الى العطاء والى انك أصيل وانك شخص جدير بالثقة وتسعى للكمال وتحب الإنجاز*'
}
local whcolor = gogg[math.random(#gogg)]
local m = "https://telegra.ph/file/c9dae331d5687d220c70e.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي 「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..whcolor.."*\n✓\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '- رجـوع', callback_data=IdUser.."/coolor"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/portg') then
local UserId = Text:match('(%d+)/portg')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local ocoo = {
'*- قال علماء علم النفس إن اللون البرتقالي هو رمز الطاقة ورمز فتح الشهية ورمز لبهجة الأطفال. أيضا يشير اللون البرتقالي إلى فصل الصيف ومن يحب اللون البرتقالي يكون شخص يتميز بالحماس وشخص يسعى إلى السعادة*',
'*- اللون البرتقالي هو رمز الطاقة، والتوازن، هو رمز الحرارة والتوهج . واللون البرتقالي هو لون اللعب ولون الخريف، وقال العلماء في علم النفس عن اللون البرتقالي أنه لون يثير الشهية لذلك يمكن لمن يعاني من ضعف الشهية أن يلبس اللون البرتقالي بكثرة ويقلل اللون البرتقالي من الشعور بالتعب ومن الإحساس الإرهاق*',
'*- إن كنت من محبين اللون ينصح من يعانون من السمنة والبدانة بالابتعاد عن اللون البرتقالي بقدر الإمكان*',
'*- كما يرمز اللون البرتقالي هو لون اللعب ولون الخريف*'
}
local whcolor = ocoo[math.random(#ocoo)]
local m = "https://telegra.ph/file/371f5fbdd3742096ebd5e.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي 「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..whcolor.."*\n✓\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '- رجـوع', callback_data=IdUser.."/coolor"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/brown') then
local UserId = Text:match('(%d+)/brown')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local brbb = {
'*- اللون البني هو لون الراحة والاستقرار*',
'*- إذا كان لونك المفضل هو اللون البني فانت شخص مخلص ومتواضع وصديق عظيم وأب حنون ومثالي وزوج ناضج وطيب*',
'*- أنت تحب عملك الوظيفي وتقوم به بجد ودقة اجتهاد، أنت عميق وتحفظ الأسرار كأنك بير عميق*'
}
local whcolor = brbb[math.random(#brbb)]
local m = "https://t.me/msmswork/62"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي 「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..whcolor.."*\n✓\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '- رجـوع', callback_data=IdUser.."/coolor"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/banafsg') then
local UserId = Text:match('(%d+)/banafsg')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local pcpp = {
'*- اللون البنفسجي يشير إلى شخص فنان وفريد تهتم بالروحانيات وتهتم بشعور الآخرين وتهتم بالأمور العميقة في الحياة*',
'*- أن كنت من محبين اللون البنفسجي يقول عنك انك أنت شخص عاطفي ونشيط وحر*',
'*- أنت قاض ومفكر عظيم وحكم جيد انت عادل وحاسم انت شخص مريح لمن حولك ويحب الاخرين الجلوس معك لفترات طويلة*'
}
local whcolor = pcpp[math.random(#pcpp)]
local m = "https://telegra.ph/file/cb47c71c14eee533cd869.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي 「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..whcolor.."*\n✓\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '- رجـوع', callback_data=IdUser.."/coolor"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/ramad') then
local UserId = Text:match('(%d+)/ramad')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local rmrr = {
'*- يُعد الأشخاص الذين يُفضلون اللون الرمادي أشخاصاً محط ثقة الجميع*',
'*- محبين اللون الرمادي حذرون ويختارون علاقاتهم الاجتماعية بعناية معتمدين على السمعة الحسنة فهم يُحبون التعامل مع الأناس ذوي الأخلاق الرفيعة*',
'*- محبين اللون الرمادي عادةً ما يسعون للعيش على طريقتهم الخاصة وإنشاء عملهم الخاص بهم، كما ويتوقون لإيجاد حلول منصفة لجميع المشكلات المطروحة أمامهم بتحليل المعطيات والتوصّل لقرارات مهمّة بعيداً عن رأيهم الشخصي أو عواطفهم فهم أشخاصٌ عقلانيّون ومتوازنون من كافة النواحي النفسيّة*'
}
local whcolor = rmrr[math.random(#rmrr)]
local m = "https://telegra.ph/file/83912b9178dea9175b2ff.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي 「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..whcolor.."*\n✓\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '- رجـوع', callback_data=IdUser.."/coolor"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
if Text and Text:match('(%d+)/pink') then
local UserId = Text:match('(%d+)/pink')
if tonumber(IdUser) == tonumber(UserId) then
local ban = bot.getUser(IdUser)
local wrww = {
'*- يُعدُّ اللون الوردي لون الرومانسيّة والإحساس، فيتصف محبي هذا اللون بالرقّة واللطافة*',
'*- محبين اللون الوردي يسعون دائماً لتحقيق رغبات الجميع على حسابهم الشخصيّ فهم يُعطون بسخاء ويطمحون بمقابل بسيط من الحماية والعناية ممن يُحبّون فهم توّاقون للحصول على علاقة حب غير مشروطة، فحدود حبهم واسعة ومشاعرهم جيّاشة*',
'*- يميل محبّي اللون الزهري للخجل والعفوية وعادةً ما تُحبّه الفتيات في مُقتبل العمر؛ لأنه يُعبر عن روح الطفولة الجميلة، والحياة الورديّة المليئة بالحب*'
}
local whcolor = wrww[math.random(#wrww)]
local m = "https://telegra.ph/file/abcc135418979922c8427.jpg"
au ={
type = "photo",
media = m,
caption = "*- عـزيـزي 「 *["..ban.first_name.."](tg://user?id="..ban.id..")  *」*\n\n"..whcolor.."*\n✓\n*",
parse_mode = "Markdown"                                                                                                                                                               
} 
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '- رجـوع', callback_data=IdUser.."/coolor"},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end
end
-------------------------------------------------
if Text and Text:match('(%d+)/NoThim1') then
local UserId = Text:match('(%d+)/NoThim1')
if tonumber(IdUser) == tonumber(UserId) then
local bain = bot.getUser(IdUser)
local Name = '['..bain.first_name..'](tg://user?id='..bain.id..')' or 'لا يوجد اسم'
au ={type = "photo",media = "https://t.me/Z_ZZZ8/71",caption = '*⇜ مرحبـاً* '..Name..'\n\n*⇜ في قائمـة ثيمـات سـورس 𝗭𝗲𝗹𝘇𝗮𝗹\n*⇜ قم باستعـراض الثيـم من الازرار التـاليه*',parse_mode = "Markdown"}     
keyboard = {} 
keyboard.inline_keyboard = {
{{text='˹𓌗 1 𓌗.',url='t.me/addtheme/QN3ixQYR40K38FV9'},{text='˹𓌗 2 𓌗.',url='t.me/addtheme/jrJQzmPnfFItEMII'}},
{{text='˹𓌗 3 𓌗.',url='t.me/addtheme/IAzaFcaicHie6qYp'},{text='˹𓌗 4 𓌗.',url='t.me/addtheme/MeowTheme1'}},
{{text='˹𓌗 5 𓌗.',url='t.me/addtheme/wvcTt6rQaJ0Qb6N8'},{text='˹𓌗 6 𓌗.',url='t.me/addtheme/ZigZag'}},
{{text='˹𓌗 7 𓌗.',url='t.me/addtheme/wwwAYfkgU6Ld0TvJ'},{text='˹𓌗 8 𓌗.',url='t.me/addtheme/oYqH7Rfr9wCGMSOh'}},
{{text='˹𓌗 9 𓌗.',url='t.me/addtheme/scorpiononblack'},{text='˹𓌗 10 𓌗.',url='t.me/addtheme/NeonLightning'}},
{{text='˹𓌗 11 𓌗.',url='t.me/addtheme/GlassRed'},{text='˹𓌗 12 𓌗.',url='t.me/addtheme/OXau3Nc9jg81k8TP'}},
{{text = '✦ التالـي ... ', callback_data=IdUser..'/'.. 'NoThim2'},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end 
end
if Text and Text:match('(%d+)/NoThim2') then
local UserId = Text:match('(%d+)/NoThim2')
if tonumber(IdUser) == tonumber(UserId) then
local bain = bot.getUser(IdUser)
local Name = '['..bain.first_name..'](tg://user?id='..bain.id..')' or 'لا يوجد اسم'
au ={type = "photo",media = "https://t.me/Z_ZZZ8/71",caption = '*⇜ مرحبـاً* '..Name..'\n\n*⇜ في قائمـة ثيمـات سـورس 𝗭𝗲𝗹𝘇𝗮𝗹\n*⇜ قم باستعـراض الثيـم من الازرار التـاليه*',parse_mode = "Markdown"}     
keyboard = {} 
keyboard.inline_keyboard = {
{{text='˹𓌗 13 𓌗.',url='t.me/addtheme/DcrO3U44bF7Waze5'},{text='˹𓌗 14 𓌗.',url='t.me/addtheme/F7foaVK9fFpaIKIJ'}},
{{text='˹𓌗 15 𓌗.',url='t.me/addtheme/AwyeF56cyoXJ8ld3'},{text='˹𓌗 16 𓌗.',url='t.me/addtheme/FAQIFwMYfj7AurJ1'}},
{{text='˹𓌗 17 𓌗.',url='t.me/addtheme/GPtXL2oozMXcG2R8'},{text='˹𓌗 18 𓌗.',url='t.me/addtheme/IGQQtEaVJW1CsHSv'}},
{{text='˹𓌗 19 𓌗.',url='t.me/addtheme/zerotw0'},{text='˹𓌗 20 𓌗.',url='t.me/addtheme/FlamingoWhite'}},
{{text='˹𓌗 21 𓌗.',url='t.me/addtheme/Crystalpurple'},{text='˹𓌗 22 𓌗.',url='t.me/addtheme/BrilliantPurple'}},
{{text='˹𓌗 23 𓌗.',url='t.me/addtheme/q0Lwc3mezUwChwM0'},{text='˹𓌗 24 𓌗.',url='t.me/addtheme/HT_11_OSP'}},
{{text = '.. السـابق ✦ ', callback_data=IdUser..'/'.. 'NoThim1'},{text = '✦ التالـي .. ', callback_data=IdUser..'/'.. 'NoThim3'},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end 
end
if Text and Text:match('(%d+)/NoThim3') then
local UserId = Text:match('(%d+)/NoThim3')
if tonumber(IdUser) == tonumber(UserId) then
local bain = bot.getUser(IdUser)
local Name = '['..bain.first_name..'](tg://user?id='..bain.id..')' or 'لا يوجد اسم'
au ={type = "photo",media = "https://t.me/Z_ZZZ8/71",caption = '*⇜ مرحبـاً* '..Name..'\n\n*⇜ في قائمـة ثيمـات سـورس 𝗭𝗲𝗹𝘇𝗮𝗹\n*⇜ قم باستعـراض الثيـم من الازرار التـاليه*',parse_mode = "Markdown"}     
keyboard = {} 
keyboard.inline_keyboard = {
{{text='˹𓌗 25 𓌗.',url='t.me/addtheme/LdsDZJh6wRFwPUl3'},{text='˹𓌗 26 𓌗.',url='t.me/addtheme/byJXG6B54w4vCaKx'}},
{{text='˹𓌗 27 𓌗.',url='t.me/addtheme/ZMhWfLFG1LeIh3Ck'},{text='˹𓌗 28 𓌗.',url='t.me/addtheme/ae8nAJdwHRWmGZH9'}},
{{text='˹𓌗 29 𓌗.',url='t.me/addtheme/MeowTheme7'},{text='˹𓌗 30 𓌗.',url='t.me/addtheme/Jellygram'}},
{{text='˹𓌗 31 𓌗.',url='t.me/addtheme/purpleo_o'},{text='˹𓌗 32 𓌗.',url='t.me/addtheme/MeowTheme7'}},
{{text='˹𓌗 33 𓌗.',url='t.me/addtheme/RedNights'},{text='˹𓌗 34 𓌗.',url='t.me/addtheme/AK_Manchester_United'}},
{{text='˹𓌗 35 𓌗.',url='t.me/addtheme/YK_Manchester_United'},{text='˹𓌗 36 𓌗.',url='t.me/addtheme/Strwbrry'}},
{{text = '.. السـابق ✦ ', callback_data=IdUser..'/'.. 'NoThim2'},{text = '✦ التالـي .. ', callback_data=IdUser..'/'.. 'NoThim4'},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end 
end
if Text and Text:match('(%d+)/NoThim4') then
local UserId = Text:match('(%d+)/NoThim4')
if tonumber(IdUser) == tonumber(UserId) then
local bain = bot.getUser(IdUser)
local Name = '['..bain.first_name..'](tg://user?id='..bain.id..')' or 'لا يوجد اسم'
au ={type = "photo",media = "https://t.me/Z_ZZZ8/71",caption = '*⇜ مرحبـاً* '..Name..'\n\n*⇜ في قائمـة ثيمـات سـورس 𝗭𝗲𝗹𝘇𝗮𝗹\n*⇜ قم باستعـراض الثيـم من الازرار التـاليه*',parse_mode = "Markdown"}     
keyboard = {} 
keyboard.inline_keyboard = {
{{text='˹𓌗 37 𓌗.',url='t.me/addtheme/blueo_opink'},{text='˹𓌗 38 𓌗.',url='t.me/addtheme/pink_Donat'}},
{{text='˹𓌗 39 𓌗.',url='t.me/addtheme/Sizzling'},{text='˹𓌗 40 𓌗.',url='t.me/addtheme/ychht'}},
{{text='˹𓌗 41 𓌗.',url='t.me/addtheme/Nighty_ADNZ'},{text='˹𓌗 42 𓌗.',url='t.me/addtheme/kh8V0xfmmfu6w7iH'}},
{{text='˹𓌗 43 𓌗.',url='t.me/addtheme/cute1'},{text='˹𓌗 44 𓌗.',url='t.me/addtheme/AgniThemes_WhatsApp'}},
{{text='˹𓌗 45 𓌗.',url='t.me/addtheme/HT_12_Lighter'},{text='˹𓌗 46 𓌗.',url='t.me/addtheme/Butterflyo_o'}},
{{text='˹𓌗 47 𓌗.',url='t.me/addtheme/Aurora_Polaris'},{text='˹𓌗 48 𓌗.',url='t.me/addtheme/lFSX8Zj5lAi8S1dF'}},
{{text = '.. السـابق ✦ ', callback_data=IdUser..'/'.. 'NoThim3'},{text = '✦ التالـي .. ', callback_data=IdUser..'/'.. 'NoThim5'},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end 
end
if Text and Text:match('(%d+)/NoThim5') then
local UserId = Text:match('(%d+)/NoThim5')
if tonumber(IdUser) == tonumber(UserId) then
local bain = bot.getUser(IdUser)
local Name = '['..bain.first_name..'](tg://user?id='..bain.id..')' or 'لا يوجد اسم'
au ={type = "photo",media = "https://t.me/Z_ZZZ8/71",caption = '*⇜ مرحبـاً* '..Name..'\n\n*⇜ في قائمـة ثيمـات سـورس 𝗭𝗲𝗹𝘇𝗮𝗹\n*⇜ قم باستعـراض الثيـم من الازرار التـاليه*',parse_mode = "Markdown"}     
keyboard = {} 
keyboard.inline_keyboard = {
{{text='˹𓌗 49 𓌗.',url='t.me/addtheme/cute6'},{text='˹𓌗 50 𓌗.',url='t.me/addtheme/cCaHnSeZbWuWqI6z'}},
{{text='˹𓌗 51 𓌗.',url='t.me/addtheme/CYZdsCRnM9hrnRfi'},{text='˹𓌗 52 𓌗.',url='t.me/addtheme/cCaHnSeZbWuWqI6z'}},
{{text='˹𓌗 53 𓌗.',url='t.me/addtheme/CLQeL95AQUZpOXQf'},{text='˹𓌗 54 𓌗.',url='t.me/addtheme/eoDAiIP4Iw5lgony'}},
{{text='˹𓌗 55 𓌗.',url='t.me/addtheme/ddonts'},{text='˹𓌗 56 𓌗.',url='t.me/addtheme/UnicornFantasy'}},
{{text='˹𓌗 57 𓌗.',url='t.me/addtheme/colorfulbow'},{text='˹𓌗 58 𓌗.',url='t.me/addtheme/Boys_Style'}},
{{text='˹𓌗 59 𓌗.',url='t.me/addtheme/Strwbrry'},{text='˹𓌗 60 𓌗.',url='t.me/addtheme/ieVXtaPJ'}},
{{text = '.. السـابق ✦ ', callback_data=IdUser..'/'.. 'NoThim4'},{text = '✦ التالـي .. ', callback_data=IdUser..'/'.. 'NoThim6'},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end 
end
if Text and Text:match('(%d+)/NoThim6') then
local UserId = Text:match('(%d+)/NoThim6')
if tonumber(IdUser) == tonumber(UserId) then
local bain = bot.getUser(IdUser)
local Name = '['..bain.first_name..'](tg://user?id='..bain.id..')' or 'لا يوجد اسم'
au ={type = "photo",media = "https://t.me/Z_ZZZ8/71",caption = '*⇜ مرحبـاً* '..Name..'\n\n*⇜ في قائمـة ثيمـات سـورس 𝗭𝗲𝗹𝘇𝗮𝗹\n*⇜ قم باستعـراض الثيـم من الازرار التـاليه*',parse_mode = "Markdown"}     
keyboard = {} 
keyboard.inline_keyboard = {
{{text='˹𓌗 61 𓌗.',url='t.me/addtheme/K6doYbvQDtArgWGH'},{text='˹𓌗 62 𓌗.',url='t.me/addtheme/YSYiULs2R1JLHy1v'}},
{{text='˹𓌗 63 𓌗.',url='t.me/addtheme/JxGDWMSlfKHLPuC5'},{text='˹𓌗 64 𓌗.',url='t.me/addtheme/HOKzz7ZWWsqXjPvI'}},
{{text='˹𓌗 65 𓌗.',url='t.me/addtheme/voA4Y11YeX0sPubD'},{text='˹𓌗 66 𓌗.',url='t.me/addtheme/Fjf39ypjhJPjkQoY'}},
{{text='˹𓌗 67 𓌗.',url='t.me/addtheme/K6doYbvQDtArgWGH'},{text='˹𓌗 68 𓌗.',url='t.me/addtheme/Ir4Gio0Mo3TGLY1S'}},
{{text='˹𓌗 69 𓌗.',url='t.me/addtheme/dwXxFXw5o255UHnC'},{text='˹𓌗 70 𓌗.',url='t.me/addtheme/dwXxFXw5o255UHnC'}},
{{text='˹𓌗 71 𓌗.',url='t.me/addtheme/illusion0'},{text='˹𓌗 72 𓌗.',url='t.me/addtheme/Hammerlock_by_YagniK'}},
{{text = '.. السـابق ✦ ', callback_data=IdUser..'/'.. 'NoThim5'},{text = '✦ التالـي .. ', callback_data=IdUser..'/'.. 'NoThim7'},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end 
end
if Text and Text:match('(%d+)/NoThim7') then
local UserId = Text:match('(%d+)/NoThim7')
if tonumber(IdUser) == tonumber(UserId) then
local bain = bot.getUser(IdUser)
local Name = '['..bain.first_name..'](tg://user?id='..bain.id..')' or 'لا يوجد اسم'
au ={type = "photo",media = "https://t.me/Z_ZZZ8/71",caption = '*⇜ مرحبـاً* '..Name..'\n\n*⇜ في قائمـة ثيمـات سـورس 𝗭𝗲𝗹𝘇𝗮𝗹\n*⇜ قم باستعـراض الثيـم من الازرار التـاليه*',parse_mode = "Markdown"}     
keyboard = {} 
keyboard.inline_keyboard = {
{{text='˹𓌗 73 𓌗.',url='t.me/addtheme/W3lOpwaLI4NbgIEF'},{text='˹𓌗 74 ??.',url='t.me/addtheme/uRMn8NNjZMMZKJ1C'}},
{{text='˹𓌗 75 𓌗.',url='t.me/addtheme/shayoung26'},{text='˹𓌗 76 𓌗.',url='t.me/firefly_themes/422'}},
{{text='˹𓌗 77 𓌗.',url='t.me/addtheme/uRMn8NNjZMMZKJ1C'},{text='˹𓌗 78 𓌗.',url='t.me/addtheme/g6ztEHI1kI7hTBHU'}},
{{text='˹𓌗 79 𓌗.',url='t.me/addtheme/qESh4PYTJQG0wzoq'},{text='˹𓌗 80 𓌗.',url='t.me/addtheme/Matte_purple'}},
{{text='˹𓌗 81 𓌗.',url='t.me/bg/bI1NEP-lMVIIAAAAFVAaZRDn6iQ'},{text='˹𓌗 82 𓌗.',url='t.me/addtheme/AmoledAndBlue'}},
{{text='˹𓌗 83 𓌗.',url='t.me/addtheme/awth_lelouch_birthday'},{text='˹𓌗 84 𓌗.',url='t.me/addtheme/gALaXy1o_o'}},
{{text = '.. السـابق ✦ ', callback_data=IdUser..'/'.. 'NoThim6'},{text = '✦ التالـي .. ', callback_data=IdUser..'/'.. 'NoThim8'},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end 
end
if Text and Text:match('(%d+)/NoThim8') then
local UserId = Text:match('(%d+)/NoThim8')
if tonumber(IdUser) == tonumber(UserId) then
local bain = bot.getUser(IdUser)
local Name = '['..bain.first_name..'](tg://user?id='..bain.id..')' or 'لا يوجد اسم'
au ={type = "photo",media = "https://t.me/Z_ZZZ8/71",caption = '*⇜ مرحبـاً* '..Name..'\n\n*⇜ في قائمـة ثيمـات سـورس 𝗭𝗲𝗹𝘇𝗮𝗹\n*⇜ قم باستعـراض الثيـم من الازرار التـاليه*',parse_mode = "Markdown"}     
keyboard = {} 
keyboard.inline_keyboard = {
{{text='˹𓌗 85 𓌗.',url='t.me/addtheme/h4vYpXq97JnaL2iN'},{text='˹𓌗 86 𓌗.',url='t.me/addtheme/GlassGreen'}},
{{text='˹𓌗 87 𓌗.',url='t.me/addtheme/zxuXJY37efkv7xpE'},{text='˹𓌗 88 𓌗.',url='t.me/addtheme/col0r'}},
{{text='˹𓌗 89 𓌗.',url='t.me/addtheme/fbhUgshOifWC5rPw'},{text='˹𓌗 90 𓌗.',url='t.me/addtheme/JWeStlG49tqZTZFx'}},
{{text='˹𓌗 91 𓌗.',url='t.me/addtheme/Agni_Theme_Black_and_Purple'},{text='˹𓌗 92 𓌗.',url='t.me/addtheme/X2FoTzITPwbSbjxe'}},
{{text='˹𓌗 93 𓌗.',url='t.me/addtheme/TI3BPmHedKwCS0dL'},{text='˹𓌗 94 𓌗.',url='t.me/addtheme/TsdgHfZNKIRKvTPx'}},
{{text='˹𓌗 95 ??.',url='t.me/addtheme/wUHYkIWe85ELR26e'},{text='˹𓌗 96 𓌗.',url='t.me/addtheme/tafmobile'}},
{{text = '.. السـابق ✦ ', callback_data=IdUser..'/'.. 'NoThim7'},{text = '✦ التالـي .. ', callback_data=IdUser..'/'.. 'NoThim9'},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end 
end
if Text and Text:match('(%d+)/NoThim9') then
local UserId = Text:match('(%d+)/NoThim9')
if tonumber(IdUser) == tonumber(UserId) then
local bain = bot.getUser(IdUser)
local Name = '['..bain.first_name..'](tg://user?id='..bain.id..')' or 'لا يوجد اسم'
au ={type = "photo",media = "https://t.me/Z_ZZZ8/71",caption = '*⇜ مرحبـاً* '..Name..'\n\n*⇜ في قائمـة ثيمـات سـورس 𝗭𝗲𝗹𝘇𝗮𝗹\n*⇜ قم باستعـراض الثيـم من الازرار التـاليه*',parse_mode = "Markdown"}     
keyboard = {} 
keyboard.inline_keyboard = {
{{text='˹𓌗 97 𓌗.',url='t.me.chsource'},{text='˹𓌗 98 𓌗.',url='t.me.chsource'}},
{{text='˹𓌗 99 𓌗.',url='t.me.chsource'},{text='˹𓌗 100 𓌗.',url='t.me.chsource'}},
{{text='˹𓌗 101 𓌗.',url='t.me.chsource'},{text='˹𓌗 102 𓌗.',url='t.me.chsource'}},
{{text='˹𓌗 103 𓌗.',url='t.me.chsource'},{text='˹𓌗 104 𓌗.',url='t.me.chsource'}},
{{text='˹𓌗 105 𓌗.',url='t.me.chsource'},{text='˹𓌗 106 𓌗.',url='t.me.chsource'}},
{{text='˹𓌗 107 𓌗.',url='t.me.chsource'},{text='˹𓌗 108 𓌗.',url='t.me.chsource'}},
{{text = '.. السـابق ✦ ', callback_data=IdUser..'/'.. 'NoThim8'},{text = '✦ التالـي .. ', callback_data=IdUser..'/'.. 'NoThim10'},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end 
end
if Text and Text:match('(%d+)/NoThim10') then
local UserId = Text:match('(%d+)/NoThim10')
if tonumber(IdUser) == tonumber(UserId) then
local bain = bot.getUser(IdUser)
local Name = '['..bain.first_name..'](tg://user?id='..bain.id..')' or 'لا يوجد اسم'
au ={type = "photo",media = "https://t.me/Z_ZZZ8/71",caption = '*⇜ مرحبـاً* '..Name..'\n\n*⇜ في قائمـة ثيمـات سـورس 𝗭𝗲𝗹𝘇𝗮𝗹\n*⇜ قم باستعـراض الثيـم من الازرار التـاليه*',parse_mode = "Markdown"}     
keyboard = {} 
keyboard.inline_keyboard = {
{{text='˹𓌗 109 𓌗.',url='t.me.chsource'},{text='˹𓌗 110 𓌗.',url='t.me.chsource'}},
{{text='˹𓌗 111 𓌗.',url='t.me.chsource'},{text='˹𓌗 112 𓌗.',url='t.me.chsource'}},
{{text='˹𓌗 113 𓌗.',url='t.me.chsource'},{text='˹𓌗 114 𓌗.',url='t.me.chsource'}},
{{text='˹𓌗 115 𓌗.',url='t.me.chsource'},{text='˹𓌗 116 𓌗.',url='t.me.chsource'}},
{{text='˹𓌗 117 𓌗.',url='t.me.chsource'},{text='˹𓌗 118 𓌗.',url='t.me.chsource'}},
{{text='˹𓌗 119 𓌗.',url='t.me.chsource'},{text='˹𓌗 120 𓌗.',url='t.me.chsource'}},
{{text = '.. السـابق ✦ ', callback_data=IdUser..'/'.. 'NoThim9'},{text = '✦ التالـي .. ', callback_data=IdUser..'/'.. 'NoThim11'},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end 
end
if Text and Text:match('(%d+)/NoThim11') then
local UserId = Text:match('(%d+)/NoThim11')
if tonumber(IdUser) == tonumber(UserId) then
local bain = bot.getUser(IdUser)
local Name = '['..bain.first_name..'](tg://user?id='..bain.id..')' or 'لا يوجد اسم'
au ={type = "photo",media = "https://t.me/Z_ZZZ8/71",caption = '*⇜ مرحبـاً* '..Name..'\n\n*⇜ في قائمـة ثيمـات سـورس 𝗭𝗲𝗹𝘇𝗮𝗹\n*⇜ قم باستعـراض الثيـم من الازرار التـاليه*',parse_mode = "Markdown"}     
keyboard = {} 
keyboard.inline_keyboard = {
{{text='˹𓌗 121 𓌗.',url='t.me.chsource'},{text='˹𓌗 122 𓌗.',url='t.me.chsource'}},
{{text='˹𓌗 123 𓌗.',url='t.me.chsource'},{text='˹𓌗 124 𓌗.',url='t.me.chsource'}},
{{text='˹𓌗 125 𓌗.',url='t.me.chsource'},{text='˹𓌗 126 𓌗.',url='t.me.chsource'}},
{{text='˹𓌗 127 𓌗.',url='t.me.chsource'},{text='˹𓌗 128 𓌗.',url='t.me.chsource'}},
{{text='˹𓌗 129 𓌗.',url='t.me.chsource'},{text='˹𓌗 130 𓌗.',url='t.me.chsource'}},
{{text='˹𓌗 131 𓌗.',url='t.me.chsource'},{text='˹𓌗 132 𓌗.',url='t.me.chsource'}},
{{text = '.. السـابق ✦ ', callback_data=IdUser..'/'.. 'NoThim10'}},
{{text = '✦ البدايـه ✦', callback_data=IdUser..'/NoThim1'},},}
local mm = Msg_id/2097152/0.5
https.request("http://api.telegram.org/bot"..Token.."/editmessagemedia?chat_id="..ChatId.."&message_id="..mm.."&media="..JSON.encode(au).."&reply_markup="..JSON.encode(keyboard))
end 
end
------------------------
if Text and Text:match('(%d+)/sudia') then
local UserId = Text:match('(%d+)/sudia')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇸🇦"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇸🇦 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/iraqq') then
local UserId = Text:match('(%d+)/iraqq')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇮🇶"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇮🇶 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/yemen') then
local UserId = Text:match('(%d+)/yemen')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇾🇪"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇾🇪 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/tunsia') then
local UserId = Text:match('(%d+)/tunsia')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇹🇳"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇹🇳 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/qatar') then
local UserId = Text:match('(%d+)/qatar')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇶🇦"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇶🇦 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/sudan') then
local UserId = Text:match('(%d+)/sudan')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇸🇩"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇸🇩 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/plastin') then
local UserId = Text:match('(%d+)/plastin')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇵🇸"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇵🇸 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/moroco') then
local UserId = Text:match('(%d+)/moroco')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇲🇦"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇲🇦 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '˹  ??𝗲𝗹𝘇𝗮𝗹 ⁦. 𓌗',url="t.me/z_zzz8"}, 
},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/oman') then
local UserId = Text:match('(%d+)/oman')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇴🇲"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇴🇲 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/libya') then
local UserId = Text:match('(%d+)/libya')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇱🇾"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇱🇾 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/kuwit') then
local UserId = Text:match('(%d+)/kuwit')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇰🇼"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇰🇼 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/lebanon') then
local UserId = Text:match('(%d+)/lebanon')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇱🇧"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇱🇧 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/jordan') then
local UserId = Text:match('(%d+)/jordan')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇯🇴"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇯🇴 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/bahren') then
local UserId = Text:match('(%d+)/bahren')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇧🇭"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇧🇭 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/egypt') then
local UserId = Text:match('(%d+)/egypt')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇪🇬"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇪🇬 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/algeria') then
local UserId = Text:match('(%d+)/algeria')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇩🇿"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇩🇿 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/emarite') then
local UserId = Text:match('(%d+)/emarite')
if tonumber(data.sender_user_id) == tonumber(UserId) then
doltebank = "🇦🇪"
Redis:set(Gold.."doltebank"..data.sender_user_id,doltebank)
cccall = Redis:get(Gold.."boobb"..data.sender_user_id)
ccctype = Redis:get(Gold.."bbobb"..data.sender_user_id)
shakse = Redis:get(Gold.."shkse"..data.sender_user_id)
if shakse == "طيبة" then
shakseshakse = "طيبة 😇"
else
shakseshakse = "شريرة 😈"
end
msalm = "⇜ وسوينا لك حساب في بنك الاهلي\n⇜ وشحنالك ٥٠ ﷼ 💸 هديه\n\n⇜ رقم حسابك ↤ ❲ `"..cccall.."` ❳\n⇜ نوع البطاقة ↤ ❲ "..ccctype.." ❳\n⇜ فلوسك ↤ ❲ 50 ﷼ 💸 ❳\n⇜ شخصيتك ↤ "..shakseshakse.."\n⇜ دولتك ↤ ❲ 🇦🇪 ❳"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end
end
------------------------------------------------------------------------
if Text and Text:match('(%d+)/msalm') then
local UserId = Text:match('(%d+)/msalm')
if tonumber(data.sender_user_id) == tonumber(UserId) then
shakse = "طيبة"
Redis:set(Gold.."shkse"..data.sender_user_id,shakse)
ttshakse = '⇜ اختر دولتك'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '🇸🇾', data = data.sender_user_id..'/syria'},{text = '🇸🇦', data = data.sender_user_id..'/sudia'},{text = '🇮🇶', data = data.sender_user_id..'/iraqq'},
},{
{text = '🇾🇪', data = data.sender_user_id..'/yemen'},{text = '🇹🇳', data = data.sender_user_id..'/tunsia'},{text = '🇶🇦', data = data.sender_user_id..'/qatar'},
},{
{text = '🇸🇩', data = data.sender_user_id..'/sudan'},{text = '🇵🇸', data = data.sender_user_id..'/plastin'},{text = '🇲🇦', data = data.sender_user_id..'/moroco'},
},{
{text = '🇴🇲', data = data.sender_user_id..'/oman'},{text = '🇱🇾', data = data.sender_user_id..'/libya'},{text = '🇰🇼', data = data.sender_user_id..'/kuwit'},
},{
{text = '🇱🇧', data = data.sender_user_id..'/lebanon'},{text = '🇯🇴', data = data.sender_user_id..'/jordan'},{text = '🇧🇭', data = data.sender_user_id..'/bahren'},
},{
{text = '🇪🇬', data = data.sender_user_id..'/egypt'},{text = '🇩🇿', data = data.sender_user_id..'/algeria'},{text = '🇦🇪', data = data.sender_user_id..'/emarite'},
},
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,ttshakse, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/shrer') then
local UserId = Text:match('(%d+)/shrer')
if tonumber(data.sender_user_id) == tonumber(UserId) then
shakse = "شريرة"
Redis:set(Gold.."shkse"..data.sender_user_id,shakse)
ttshakse = '⇜ اختر دولتك '
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '🇸🇾', data = data.sender_user_id..'/syria'},{text = '🇸🇦', data = data.sender_user_id..'/sudia'},{text = '🇮🇶', data = data.sender_user_id..'/iraqq'},
},{
{text = '🇾🇪', data = data.sender_user_id..'/yemen'},{text = '🇹🇳', data = data.sender_user_id..'/tunsia'},{text = '🇶🇦', data = data.sender_user_id..'/qatar'},
},{
{text = '🇸🇩', data = data.sender_user_id..'/sudan'},{text = '🇵🇸', data = data.sender_user_id..'/plastin'},{text = '🇲🇦', data = data.sender_user_id..'/moroco'},
},{
{text = '🇴🇲', data = data.sender_user_id..'/oman'},{text = '🇱🇾', data = data.sender_user_id..'/libya'},{text = '🇰🇼', data = data.sender_user_id..'/kuwit'},
},{
{text = '🇱🇧', data = data.sender_user_id..'/lebanon'},{text = '🇯🇴', data = data.sender_user_id..'/jordan'},{text = '🇧🇭', data = data.sender_user_id..'/bahren'},
},{
{text = '🇪🇬', data = data.sender_user_id..'/egypt'},{text = '🇩🇿', data = data.sender_user_id..'/algeria'},{text = '🇦🇪', data = data.sender_user_id..'/emarite'},
},
}
}
edit(ChatId,Msg_id,ttshakse, 'md', true, false, reply_markup)
end
end
-----------------
if Text and Text:match('(%d+)/master') then
local UserId = Text:match('(%d+)/master')
if tonumber(data.sender_user_id) == tonumber(UserId) then
creditcc = math.random(5000000000000000,5999999999999999);
mast = "ماستر"
balas = 50
local ban = bot.getUser(data.sender_user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
local banid = data.sender_user_id
Redis:set(Gold.."bobna"..data.sender_user_id,news)
Redis:set(Gold.."boob"..data.sender_user_id,balas)
Redis:set(Gold.."boobb"..data.sender_user_id,creditcc)
Redis:set(Gold.."bbobb"..data.sender_user_id,mast)
Redis:set(Gold.."boballname"..creditcc,news)
Redis:set(Gold.."boballbalc"..creditcc,balas)
Redis:set(Gold.."boballcc"..creditcc,creditcc)
Redis:set(Gold.."boballban"..creditcc,mast)
Redis:set(Gold.."boballid"..creditcc,banid)
Redis:sadd(Gold.."booob",data.sender_user_id)
ttshakse = '⇜ اختر شخصيتك في اللعبة'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'شخصية طيبة 😇', data = data.sender_user_id..'/msalm'},{text = 'شخصية شريرة 😈', data = data.sender_user_id..'/shrer'},
},
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,ttshakse, 'md', true, false, reply_markup)
end
end
-----------------
if Text and Text:match('(%d+)/visaa') then
local UserId = Text:match('(%d+)/visaa')
if tonumber(data.sender_user_id) == tonumber(UserId) then
creditvi = math.random(4000000000000000,4999999999999999);
visssa = "فيزا"
balas = 50
local ban = bot.getUser(data.sender_user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
local banid = data.sender_user_id
Redis:set(Gold.."bobna"..data.sender_user_id,news)
Redis:set(Gold.."boob"..data.sender_user_id,balas)
Redis:set(Gold.."boobb"..data.sender_user_id,creditvi)
Redis:set(Gold.."bbobb"..data.sender_user_id,visssa)
Redis:set(Gold.."boballname"..creditvi,news)
Redis:set(Gold.."boballbalc"..creditvi,balas)
Redis:set(Gold.."boballcc"..creditvi,creditvi)
Redis:set(Gold.."boballban"..creditvi,visssa)
Redis:set(Gold.."boballid"..creditvi,banid)
Redis:sadd(Gold.."booob",data.sender_user_id)
ttshakse = '⇜ اختر شخصيتك في اللعبة'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'شخصية طيبة 😇', data = data.sender_user_id..'/msalm'},{text = 'شخصية شريرة 😈', data = data.sender_user_id..'/shrer'},
},
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,ttshakse, 'md', true, false, reply_markup)
end
end
-----------------
if Text and Text:match('(%d+)/express') then
local UserId = Text:match('(%d+)/express')
if tonumber(data.sender_user_id) == tonumber(UserId) then
creditex = math.random(6000000000000000,6999999999999999);
exprs = "اكسبرس"
balas = 50
local ban = bot.getUser(data.sender_user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
local banid = data.sender_user_id
Redis:set(Gold.."bobna"..data.sender_user_id,news)
Redis:set(Gold.."boob"..data.sender_user_id,balas)
Redis:set(Gold.."boobb"..data.sender_user_id,creditex)
Redis:set(Gold.."bbobb"..data.sender_user_id,exprs)
Redis:set(Gold.."boballname"..creditex,news)
Redis:set(Gold.."boballbalc"..creditex,balas)
Redis:set(Gold.."boballcc"..creditex,creditex)
Redis:set(Gold.."boballban"..creditex,exprs)
Redis:set(Gold.."boballid"..creditex,banid)
Redis:sadd(Gold.."booob",data.sender_user_id)
ttshakse = '⇜ اختر شخصيتك في اللعبة'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'شخصية طيبة 😇', data = data.sender_user_id..'/msalm'},{text = 'شخصية شريرة 😈', data = data.sender_user_id..'/shrer'},
},
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
edit(ChatId,Msg_id,ttshakse, 'md', true, false, reply_markup)
end
end
-----------------
if Text and Text:match('(%d+)/sahb') then
local UserId = Text:match('(%d+)/sahb')
if tonumber(data.sender_user_id) == tonumber(UserId) then
cccall = Redis:get(Gold.."tdbelballance"..data.sender_user_id) or 0
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(cccall) then
return edit(ChatId,Msg_id, "⇜ فلوسك ماتكفي","md",true)
end
Redis:setex(Gold.."iioood" .. data.sender_user_id,920, true)
local list = {"1", "2", "3"}
local rand = list[math.random(#list)]
if rand == "1" then -- 1 con
cccallcc = tonumber(ballance) + tonumber(cccall)
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
Redis:del(Gold.."tdbelballance"..data.sender_user_id)
local convert_mony = string.format("%.0f",cccall)
local convert_monyy = string.format("%.0f",cccallcc)
msalm = "⌯ مبروك ربحت بالسحب\n\n⇜ المبلغ : "..convert_mony.."\nرصيدك الان : `"..convert_monyy.."`\n✓"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
return edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end -- 1 con
if rand == "2" then -- 2 con
Redis:del(Gold.."tdbelballance"..data.sender_user_id)
local convert_mony = string.format("%.0f",cccall)
local convert_monyy = string.format("%.0f",ballance)
msalm = "⌯ حظ اوفر ماربحت شي\n\n⇜ المبلغ : "..convert_mony.."\n⇜ رصيدك الان : `"..convert_monyy.."`\n✓"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
return edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end -- 2 con
if rand == "3" then -- 3 con
cccallcc = tonumber(ballance) - tonumber(cccall)
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
cccall = Redis:get(Gold.."tdbelballance"..data.sender_user_id)
Redis:del(Gold.."tdbelballance"..data.sender_user_id)
local convert_mony = string.format("%.0f",cccall)
local convert_monyy = string.format("%.0f",cccallcc)
msalm = "⌯ خسرت بالسحب ☹️\n\n⇜ المبلغ : "..convert_mony.."\nرصيدك الان : `"..convert_monyy.."`\n✓"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
return edit(ChatId,Msg_id,msalm, 'md', true, false, reply_markup)
end -- 3 con 
end
end
if Text and Text:match('(%d+)/4×4') then
local UserId = Text:match('(%d+)/4×4')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local banid = data.sender_user_id
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(10000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 10000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
namefram = Redis:get(Gold.."namefram"..data.sender_user_id)
Redis:sadd(Gold.."farmarname", namefram)
Redis:set(Gold.."sizefram"..data.sender_user_id,50000)
Redis:sadd(Gold.."ownerfram",data.sender_user_id)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم بناء مزرعتك 🏕\n\n⇜ اسم المزرعة : '..namefram..'\n⇜ قياس المزرعة : 4×4\n⇜ السعر : 10000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/8×8') then
local UserId = Text:match('(%d+)/8×8')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local banid = data.sender_user_id
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(1000000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 100000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
namefram = Redis:get(Gold.."namefram"..data.sender_user_id)
Redis:sadd(Gold.."farmarname", namefram)
Redis:set(Gold.."sizefram"..data.sender_user_id,100000)
Redis:sadd(Gold.."ownerfram",data.sender_user_id)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم بناء مزرعتك 🏕\n\n⇜ اسم المزرعة : '..namefram..'\n⇜ قياس المزرعة : 8×8\n⇜ السعر : 100000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/12×12') then
local UserId = Text:match('(%d+)/12×12')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local banid = data.sender_user_id
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(1000000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 1000000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
namefram = Redis:get(Gold.."namefram"..data.sender_user_id)
Redis:sadd(Gold.."farmarname", namefram)
Redis:set(Gold.."sizefram"..data.sender_user_id,200000)
Redis:sadd(Gold.."ownerfram",data.sender_user_id)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم بناء مزرعتك 🏕\n\n⇜ اسم المزرعة : '..namefram..'\n⇜ قياس المزرعة : 12×12\n⇜ السعر : 1000000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/16×16') then
local UserId = Text:match('(%d+)/16×16')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local banid = data.sender_user_id
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(5000000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 5000000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
namefram = Redis:get(Gold.."namefram"..data.sender_user_id)
Redis:sadd(Gold.."farmarname", namefram)
Redis:set(Gold.."sizefram"..data.sender_user_id,300000)
Redis:sadd(Gold.."ownerfram",data.sender_user_id)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم بناء مزرعتك 🏕\n\n⇜ اسم المزرعة : '..namefram..'\n⇜ قياس المزرعة : 16×16\n⇜ السعر : 5000000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/32×32') then
local UserId = Text:match('(%d+)/32×32')
if tonumber(data.sender_user_id) == tonumber(UserId) then
local banid = data.sender_user_id
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(10000000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
cccallcc = tonumber(ballance) - 10000000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
namefram = Redis:get(Gold.."namefram"..data.sender_user_id)
Redis:sadd(Gold.."farmarname", namefram)
Redis:set(Gold.."sizefram"..data.sender_user_id,400000)
Redis:sadd(Gold.."ownerfram",data.sender_user_id)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم بناء مزرعتك 🏕\n\n⇜ اسم المزرعة : '..namefram..'\n⇜ قياس المزرعة : 32×32\n⇜ السعر : 10000000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
--------------------------------------------------------------------------------------------------------------
if Text and Text:match('(%d+)/luisyes') then
local UserId = Text:match('(%d+)/luisyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(39000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."1"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز هجوم\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 39000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "لويس سواريز"
energyplayer = "83"
mrkzplayer = "مهاجم"
cityplayer = "🇺🇦 اوكرانيا"
Redis:set(Gold.."nameplayer".."1"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."1"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."1"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."1"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."1"..data.sender_user_id,39000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : لويس سواريز\n⇜ مركزه : مهاجم\n⇜ طاقة اللاعب : 83\n⇜ الجنسية : اوكرانيا 🇺🇦\n⇜ السعر : 39000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/luisno') then
local UserId = Text:match('(%d+)/luisno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب لويس سواريز ", 'md', true)
end
end
if Text and Text:match('(%d+)/danyes') then
local UserId = Text:match('(%d+)/danyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(50000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 50000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "داني الفيش"
energyplayer = "83"
mrkzplayer = "مدافع"
cityplayer = "البرازيل 🇧🇷"
Redis:set(Gold.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."4"..data.sender_user_id,50000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : داني الفيش\n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 83\n⇜ الجنسية : البرازيل 🇧🇷\n⇜ السعر : 50000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/danno') then
local UserId = Text:match('(%d+)/danno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب داني الفيش", 'md', true)
end
end
if Text and Text:match('(%d+)/fdnyes') then
local UserId = Text:match('(%d+)/fdnyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(70000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 70000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "فيل فودن"
energyplayer = "87"
mrkzplayer = "وسط"
cityplayer = "إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿 "
Redis:set(Gold.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."3"..data.sender_user_id,70000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : فيل فودن\n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : إنجلترا 🏴??󠁢󠁥󠁮󠁧󠁿  \n⇜ السعر : 70000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/fdnno') then
local UserId = Text:match('(%d+)/fdnno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب داني الفيش", 'md', true)
end
end
if Text and Text:match('(%d+)/rafyes') then
local UserId = Text:match('(%d+)/rafyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(40000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 40000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "رافيل فاران"
energyplayer = "84"
mrkzplayer = "مدافع"
cityplayer = "فرنسا 🇫🇷 "
Redis:set(Gold.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."4"..data.sender_user_id,40000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : رافيل فاران\n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : فرنسا 🇫🇷 \n⇜ السعر : 40000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/rafno') then
local UserId = Text:match('(%d+)/rafno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب رافيل فاران", 'md', true)
end
end
if Text and Text:match('(%d+)/Kuanyes') then
local UserId = Text:match('(%d+)/Kuanyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(20000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 20000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "خوان ماتا"
energyplayer = "81"
mrkzplayer = "وسط"
cityplayer = "إسبانيا 🇪🇸 "
Redis:set(Gold.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."3"..data.sender_user_id,20000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : خوان ماتا\n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 81\n⇜ الجنسية : إسبانيا 🇪🇸 \n⇜ السعر : 20000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/kuanno') then
local UserId = Text:match('(%d+)/kuanno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب خوان ماتا", 'md', true)
end
end
if Text and Text:match('(%d+)/hariyes') then
local UserId = Text:match('(%d+)/hariyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(15000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 15000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "هاري ماجواير"
energyplayer = "80"
mrkzplayer = "مدافع"
cityplayer = "إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿 "
Redis:set(Gold.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."4"..data.sender_user_id,15000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : هاري ماجواير\n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 80\n⇜ الجنسية : إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿 \n⇜ السعر : 15000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/harino') then
local UserId = Text:match('(%d+)/harino')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب هاري ماجواير", 'md', true)
end
end
if Text and Text:match('(%d+)/romoyes') then
local UserId = Text:match('(%d+)/romoyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(100000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."1"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز هجوم\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 100000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "روميلو لوكاكو"
energyplayer = "91"
mrkzplayer = "مهاجم"
cityplayer = "بلجيكا 🇧🇪 "
Redis:set(Gold.."nameplayer".."1"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."1"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."1"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."1"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."1"..data.sender_user_id,100000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : روميلو لوكاكو\n⇜ مركزه : مهاجم\n⇜ طاقة اللاعب : 91\n⇜ الجنسية : بلجيكا 🇧🇪 \n⇜ السعر : 100000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/romono') then
local UserId = Text:match('(%d+)/romono')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب روميلو لوكاكو", 'md', true)
end
end
if Text and Text:match('(%d+)/tiagoyes') then
local UserId = Text:match('(%d+)/tiagoyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(20000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 20000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "تياجو سيلفا"
energyplayer = "81"
mrkzplayer = "مدافع"
cityplayer = "البرازيل 🇧🇷 "
Redis:set(Gold.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."4"..data.sender_user_id,20000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : تياجو سيلفا\n⇜ مركزه : دفاع\n⇜ طاقة اللاعب : 81\n⇜ الجنسية : البرازيل 🇧🇷 \n⇜ السعر : 20000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/tiagono') then
local UserId = Text:match('(%d+)/tiagono')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب تياجو سيلفا", 'md', true)
end
end
if Text and Text:match('(%d+)/gerardyes') then
local UserId = Text:match('(%d+)/gerardyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(30000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 30000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "جيرارد بيكيه"
energyplayer = "83"
mrkzplayer = "مدافع"
cityplayer = "إسبانيا 🇪🇸 "
Redis:set(Gold.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."4"..data.sender_user_id,30000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : جيرارد بيكيه\n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 83\n⇜ الجنسية : إسبانيا 🇪🇸 \n⇜ السعر : 30000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/gerardno') then
local UserId = Text:match('(%d+)/gerardno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب جيرارد بيكه", 'md', true)
end
end
if Text and Text:match('(%d+)/tyryes') then
local UserId = Text:match('(%d+)/tyryes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(110000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 110000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "تير شتيجن"
energyplayer = "91"
mrkzplayer = "حارس"
cityplayer = "ألمانيا 🇩🇪 "
Redis:set(Gold.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."5"..data.sender_user_id,110000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : تير شتيجن\n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 91\n⇜ الجنسية : ألمانيا 🇩🇪 \n⇜ السعر : 110000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/tyrno') then
local UserId = Text:match('(%d+)/tyrno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب تير شتيجن", 'md', true)
end
end
if Text and Text:match('(%d+)/osmanyes') then
local UserId = Text:match('(%d+)/osmanyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(45000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 45000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "عثمان ديمبلي"
energyplayer = "84"
mrkzplayer = "جناح"
cityplayer = "فرنسا 🇫🇷 "
Redis:set(Gold.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."2"..data.sender_user_id,45000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : عثمان ديمبلي\n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : فرنسا 🇫🇷 \n⇜ السعر : 45000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/osmanno') then
local UserId = Text:match('(%d+)/osmanno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب عثمان ديمبلي", 'md', true)
end
end
if Text and Text:match('(%d+)/rodrigoyes') then
local UserId = Text:match('(%d+)/rodrigoyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(78000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 78000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "رودريغو"
energyplayer = "87"
mrkzplayer = "جناح"
cityplayer = "البرازيل 🇧🇷 "
Redis:set(Gold.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."2"..data.sender_user_id,78000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : رودريغو\n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : البرازيل 🇧🇷\n⇜ السعر : 78000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/rodrigono') then
local UserId = Text:match('(%d+)/rodrigono')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب رودريغو", 'md', true)
end
end
if Text and Text:match('(%d+)/milyes') then
local UserId = Text:match('(%d+)/milyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(65000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 65000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "ميليتاو"
energyplayer = "87"
mrkzplayer = "مدافع"
cityplayer = "البرازيل 🇧🇷 "
Redis:set(Gold.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."4"..data.sender_user_id,65000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : ميليتاو\n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : البرازيل 🇧🇷\n⇜ السعر : 65000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/milno') then
local UserId = Text:match('(%d+)/milno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب ميليتاو", 'md', true)
end
end
if Text and Text:match('(%d+)/albayes') then
local UserId = Text:match('(%d+)/albayes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(73000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 73000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "الابا"
energyplayer = "87"
mrkzplayer = "مدافع"
cityplayer = "النمسا 🇦🇹 "
Redis:set(Gold.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."4"..data.sender_user_id,73000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : الابا\n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : النمسا 🇦🇹 \n⇜ السعر : 73000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/albano') then
local UserId = Text:match('(%d+)/albano')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب الابا", 'md', true)
end
end
if Text and Text:match('(%d+)/fenesyes') then
local UserId = Text:match('(%d+)/fenesyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(180000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 180000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "فينيسيوس"
energyplayer = "94"
mrkzplayer = "جناح"
cityplayer = "البرازيل 🇧🇷 "
Redis:set(Gold.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."2"..data.sender_user_id,180000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : فينيسيوس \n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 94\n⇜ الجنسية : البرازيل 🇧🇷 \n⇜ السعر : 180000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/fenesno') then
local UserId = Text:match('(%d+)/fenesno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب فينيسيوس ", 'md', true)
end
end
if Text and Text:match('(%d+)/demayes') then
local UserId = Text:match('(%d+)/demayes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(55000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 55000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "دي ماريا"
energyplayer = "85"
mrkzplayer = "جناح"
cityplayer = "الأرجنتين 🇦🇷 "
Redis:set(Gold.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."2"..data.sender_user_id,55000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : دي ماريا \n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 85\n⇜ الجنسية : الأرجنتين 🇦🇷 \n⇜ السعر : 55000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/demano') then
local UserId = Text:match('(%d+)/demano')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب دي ماريا ", 'md', true)
end
end
if Text and Text:match('(%d+)/danilyes') then
local UserId = Text:match('(%d+)/danilyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(20000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 20000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "دانيلو"
energyplayer = "84"
mrkzplayer = "مدافع"
cityplayer = "البرازيل 🇧🇷 "
Redis:set(Gold.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."4"..data.sender_user_id,20000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : دانيلو \n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 82\n⇜ الجنسية : البرازيل 🇧🇷 \n⇜ السعر : 20000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/danilno') then
local UserId = Text:match('(%d+)/danilno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب دانيلو ", 'md', true)
end
end
if Text and Text:match('(%d+)/daneleyes') then
local UserId = Text:match('(%d+)/daneleyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(38000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 38000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "دانييلي"
energyplayer = "84"
mrkzplayer = "مدافع"
cityplayer = "إيطاليا 🇮🇹 "
Redis:set(Gold.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."4"..data.sender_user_id,38000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : دانييلي \n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : إيطاليا 🇮🇹 \n⇜ السعر : 38000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/daneleno') then
local UserId = Text:match('(%d+)/daneleno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب دانييلي ", 'md', true)
end
end
if Text and Text:match('(%d+)/ibrahyes') then
local UserId = Text:match('(%d+)/ibrahyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(55000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."1"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز هجوم\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 55000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "إبراهيموفيتش"
energyplayer = "85"
mrkzplayer = "مهاجم"
cityplayer = "السويد 🇸🇪 "
Redis:set(Gold.."nameplayer".."1"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."1"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."1"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."1"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."1"..data.sender_user_id,55000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : إبراهيموفيتش \n⇜ مركزه : مهاجم\n⇜ طاقة اللاعب : 85\n⇜ الجنسية : السويد 🇸🇪 \n⇜ السعر : 55000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/ibrahno') then
local UserId = Text:match('(%d+)/ibrahno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب إبراهيموفيتش", 'md', true)
end
end
if Text and Text:match('(%d+)/donaryes') then
local UserId = Text:match('(%d+)/donaryes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(99000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 99000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "دوناروما"
energyplayer = "89"
mrkzplayer = "حارس"
cityplayer = "إيطاليا 🇮🇹 "
Redis:set(Gold.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."5"..data.sender_user_id,99000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : دوناروما \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 89\n⇜ الجنسية : إيطاليا 🇮🇹 \n⇜ السعر : 99000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/donarno') then
local UserId = Text:match('(%d+)/donarno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب دوناروما ", 'md', true)
end
end
if Text and Text:match('(%d+)/ashrfyes') then
local UserId = Text:match('(%d+)/ashrfyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(55000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 55000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "اشرف حكيمي"
energyplayer = "85"
mrkzplayer = "مدافع"
cityplayer = "المغرب 🇲🇦 "
Redis:set(Gold.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."4"..data.sender_user_id,55000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : اشرف حكيمي \n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 85\n⇜ الجنسية : المغرب 🇲🇦 \n⇜ السعر : 55000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/ashrfno') then
local UserId = Text:match('(%d+)/ashrfno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب اشرف حكيمي ", 'md', true)
end
end
if Text and Text:match('(%d+)/idenyes') then
local UserId = Text:match('(%d+)/idenyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(59000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 59000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "ايدن ازارد"
energyplayer = "86"
mrkzplayer = "جناح"
cityplayer = "بلجيكا 🇧🇪 "
Redis:set(Gold.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."2"..data.sender_user_id,59000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : ايدن ازارد \n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 86\n⇜ الجنسية : بلجيكا 🇧🇪 \n⇜ السعر : 59000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/idenno') then
local UserId = Text:match('(%d+)/idenno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب ايدن ازارد ", 'md', true)
end
end
if Text and Text:match('(%d+)/sergyes') then
local UserId = Text:match('(%d+)/sergyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(170000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."4"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز دفاع\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 170000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "سيرجو راموس"
energyplayer = "93"
mrkzplayer = "مدافع"
cityplayer = "اسبانيا 🇪🇸 "
Redis:set(Gold.."nameplayer".."4"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."4"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."4"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."4"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."4"..data.sender_user_id,170000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : ايدن ازارد \n⇜ مركزه : مدافع\n⇜ طاقة اللاعب : 93\n⇜ الجنسية : اسبانيا 🇪🇸 \n⇜ السعر : 170000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/sergno') then
local UserId = Text:match('(%d+)/sergno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب سيرجيو راموس ", 'md', true)
end
end
if Text and Text:match('(%d+)/fermyes') then
local UserId = Text:match('(%d+)/fermyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(60000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."1"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز هجوم\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 60000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "فرمينو"
energyplayer = "86"
mrkzplayer = "مهاجم"
cityplayer = "البرازيل 🇧🇷 "
Redis:set(Gold.."nameplayer".."1"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."1"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."1"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."1"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."1"..data.sender_user_id,60000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : فرمينو \n⇜ مركزه : مهاجم\n⇜ طاقة اللاعب : 86\n⇜ الجنسية : البرازيل 🇧🇷 \n⇜ السعر : 60000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/fermno') then
local UserId = Text:match('(%d+)/fermno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب فرمينو ", 'md', true)
end
end
if Text and Text:match('(%d+)/jackyes') then
local UserId = Text:match('(%d+)/jackyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(19000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."1"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز هجوم\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 19000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "جاك كلارك"
energyplayer = "81"
mrkzplayer = "مهاجم"
cityplayer = "إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿 "
Redis:set(Gold.."nameplayer".."1"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."1"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."1"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."1"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."1"..data.sender_user_id,19000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : جاك كلارك \n⇜ مركزه : مهاجم\n⇜ طاقة اللاعب : 81\n⇜ الجنسية : إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿 \n⇜ السعر : 19000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/jackno') then
local UserId = Text:match('(%d+)/jackno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب جاك كلارك ", 'md', true)
end
end
if Text and Text:match('(%d+)/ansloyes') then
local UserId = Text:match('(%d+)/ansloyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(53000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."1"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز هجوم\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 53000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "انسلو فاتي"
energyplayer = "84"
mrkzplayer = "مهاجم"
cityplayer = "اسبانيا 🇪🇸 "
Redis:set(Gold.."nameplayer".."1"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."1"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."1"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."1"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."1"..data.sender_user_id,53000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : انسلو فاتي \n⇜ مركزه : مهاجم\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : اسبانيا 🇪🇸 \n⇜ السعر : 53000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/anslono') then
local UserId = Text:match('(%d+)/anslono')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب انسلو فاتي ", 'md', true)
end
end
if Text and Text:match('(%d+)/toresyes') then
local UserId = Text:match('(%d+)/toresyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(41000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."1"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز هجوم\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 41000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "توريس"
energyplayer = "84"
mrkzplayer = "مهاجم"
cityplayer = "اسبانيا 🇪🇸 "
Redis:set(Gold.."nameplayer".."1"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."1"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."1"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."1"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."1"..data.sender_user_id,41000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : توريس \n⇜ مركزه : مهاجم\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : اسبانيا 🇪🇸 \n⇜ السعر : 41000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/toresno') then
local UserId = Text:match('(%d+)/toresno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب توريس ", 'md', true)
end
end
if Text and Text:match('(%d+)/muleryes') then
local UserId = Text:match('(%d+)/muleryes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(80000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 80000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "توماس مولر"
energyplayer = "87"
mrkzplayer = "وسط"
cityplayer = "ألمانيا 🇩🇪"
Redis:set(Gold.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."3"..data.sender_user_id,41000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : توماس مولر \n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : ألمانيا 🇩🇪 \n⇜ السعر : 41000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/mulerno') then
local UserId = Text:match('(%d+)/mulerno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب توماس مولر ", 'md', true)
end
end
if Text and Text:match('(%d+)/brunoyes') then
local UserId = Text:match('(%d+)/brunoyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(74000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 74000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "برونو فيرنانديز"
energyplayer = "86"
mrkzplayer = "وسط"
cityplayer = "البرتغال 🇵🇹"
Redis:set(Gold.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."3"..data.sender_user_id,74000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : برونو فيرنانديز \n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : البرتغال 🇵🇹 \n⇜ السعر : 74000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/brunono') then
local UserId = Text:match('(%d+)/brunono')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب برونو فيرنانديز", 'md', true)
end
end
if Text and Text:match('(%d+)/paulyes') then
local UserId = Text:match('(%d+)/paulyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(78000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 78000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "بول بوجبا"
energyplayer = "88"
mrkzplayer = "وسط"
cityplayer = "فرنسا 🇫🇷 "
Redis:set(Gold.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."3"..data.sender_user_id,78000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : بول بوجبا \n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : فرنسا 🇫🇷 \n⇜ السعر : 78000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/paulno') then
local UserId = Text:match('(%d+)/paulno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب بول بوجبا", 'md', true)
end
end
if Text and Text:match('(%d+)/modricyes') then
local UserId = Text:match('(%d+)/modricyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(90000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 90000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "لوكا مودريتش"
energyplayer = "90"
mrkzplayer = "وسط"
cityplayer = "كرواتيا 🇭🇷 "
Redis:set(Gold.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."3"..data.sender_user_id,90000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : لوكا مودريتش \n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 90\n⇜ الجنسية : كرواتيا 🇭🇷 \n⇜ السعر : 90000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/modricno') then
local UserId = Text:match('(%d+)/modricno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب لوكا مودريتش", 'md', true)
end
end
if Text and Text:match('(%d+)/iscoyes') then
local UserId = Text:match('(%d+)/iscoyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(41000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 41000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "إيسكو"
energyplayer = "84"
mrkzplayer = "وسط"
cityplayer = "اسبانيا 🇪🇸 "
Redis:set(Gold.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."3"..data.sender_user_id,41000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : إيسكو \n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : اسبانيا 🇪🇸 \n⇜ السعر : 41000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/iscono') then
local UserId = Text:match('(%d+)/iscono')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب إيسكو ", 'md', true)
end
end
if Text and Text:match('(%d+)/fabinyes') then
local UserId = Text:match('(%d+)/fabinyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(20000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 20000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "فابينهو"
energyplayer = "81"
mrkzplayer = "وسط"
cityplayer = "البرازيل 🇧🇷  "
Redis:set(Gold.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."3"..data.sender_user_id,20000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : فابينهو \n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 81\n⇜ الجنسية : البرازيل 🇧🇷 \n⇜ السعر : 20000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/fabinno') then
local UserId = Text:match('(%d+)/fabinno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب فابينهو ", 'md', true)
end
end
if Text and Text:match('(%d+)/hinsonyes') then
local UserId = Text:match('(%d+)/hinsonyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(70000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."3"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز وسط\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 70000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "هيندرسون"
energyplayer = "86"
mrkzplayer = "وسط"
cityplayer = "إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿  "
Redis:set(Gold.."nameplayer".."3"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."3"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."3"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."3"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."3"..data.sender_user_id,70000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : هيندرسون \n⇜ مركزه : وسط\n⇜ طاقة اللاعب : 86\n⇜ الجنسية : إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿 \n⇜ السعر : 70000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/hinsonyno') then
local UserId = Text:match('(%d+)/hinsonyno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب هيندرسون", 'md', true)
end
end
if Text and Text:match('(%d+)/janyes') then
local UserId = Text:match('(%d+)/janyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(80000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 80000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "جان اوبلاك"
energyplayer = "88"
mrkzplayer = "حارس"
cityplayer = "رومانيا 🇹🇩  "
Redis:set(Gold.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."5"..data.sender_user_id,80000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : جان اوبلاك \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 88\n⇜ الجنسية : رومانيا 🇹🇩 \n⇜ السعر : 80000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/janno') then
local UserId = Text:match('(%d+)/janno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب جان اوبلاك ", 'md', true)
end
end
if Text and Text:match('(%d+)/kayloryes') then
local UserId = Text:match('(%d+)/kayloryes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(70000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 70000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "كيلور نافاس"
energyplayer = "87"
mrkzplayer = "حارس"
cityplayer = "كوستا ريكا🇨🇷"
Redis:set(Gold.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."5"..data.sender_user_id,70000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : كيلور نافاس \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : كوستا ريكا🇨🇷 \n⇜ السعر : 70000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/kaylorno') then
local UserId = Text:match('(%d+)/kaylorno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب كيلور نافاس ", 'md', true)
end
end
if Text and Text:match('(%d+)/sommeryes') then
local UserId = Text:match('(%d+)/sommeryes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(70000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 70000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "يان سومر"
energyplayer = "87"
mrkzplayer = "حارس"
cityplayer = "سويسرا 🇨🇭"
Redis:set(Gold.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."5"..data.sender_user_id,70000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : يان سومر \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 87\n⇜ الجنسية : سويسرا 🇨🇭 \n⇜ السعر : 70000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/sommerno') then
local UserId = Text:match('(%d+)/sommerno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب يان سومر ", 'md', true)
end
end
if Text and Text:match('(%d+)/brendyes') then
local UserId = Text:match('(%d+)/brendyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(52000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 52000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "بيرند لينو"
energyplayer = "85"
mrkzplayer = "حارس"
cityplayer = "المانيا🇩🇪"
Redis:set(Gold.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."5"..data.sender_user_id,52000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : بريند لينو \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 85\n⇜ الجنسية : المانيا🇩🇪 \n⇜ السعر : 52000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/brendno') then
local UserId = Text:match('(%d+)/brendnp')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب بريند لينو ", 'md', true)
end
end
if Text and Text:match('(%d+)/mendyyes') then
local UserId = Text:match('(%d+)/mendyyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(80000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 80000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "ميندي"
energyplayer = "88"
mrkzplayer = "حارس"
cityplayer = "غانا 🇬🇭"
Redis:set(Gold.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."5"..data.sender_user_id,80000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : ميندي \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 88\n⇜ الجنسية : غانا 🇬🇭 \n⇜ السعر : 80000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/mendyno') then
local UserId = Text:match('(%d+)/mendyno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب ميندي ", 'md', true)
end
end
if Text and Text:match('(%d+)/onanayes') then
local UserId = Text:match('(%d+)/onanayes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(20000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 20000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "اندريه اونانا"
energyplayer = "83"
mrkzplayer = "حارس"
cityplayer = "غانا 🇬🇭"
Redis:set(Gold.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."5"..data.sender_user_id,20000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : اندريه اونانا \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 82\n⇜ الجنسية : غانا 🇬🇭 \n⇜ السعر : 20000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/onanano') then
local UserId = Text:match('(%d+)/onanano')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب اندريه اونانا ", 'md', true)
end
end
if Text and Text:match('(%d+)/royyes') then
local UserId = Text:match('(%d+)/royyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(40000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 40000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "روي باتريكو"
energyplayer = "84"
mrkzplayer = "حارس"
cityplayer = "البرتغال 🇵🇹 "
Redis:set(Gold.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."5"..data.sender_user_id,40000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : روي باتريكو \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : البرتغال 🇵🇹 \n⇜ السعر : 40000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/royno') then
local UserId = Text:match('(%d+)/royno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب روي باتريكو ", 'md', true)
end
end
if Text and Text:match('(%d+)/kasperyes') then
local UserId = Text:match('(%d+)/kasperyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(40000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 40000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "كاسبر"
energyplayer = "84"
mrkzplayer = "حارس"
cityplayer = "الدنمارك🇩🇰"
Redis:set(Gold.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."5"..data.sender_user_id,40000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : كاسبر \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : الدنمارك🇩🇰 \n⇜ السعر : 40000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/kasperno') then
local UserId = Text:match('(%d+)/kasperno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب روي كاسبر ", 'md', true)
end
end
if Text and Text:match('(%d+)/geayes') then
local UserId = Text:match('(%d+)/geayes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(80000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."5"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك حارس\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 80000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "دافيد"
energyplayer = "88"
mrkzplayer = "حارس"
cityplayer = "اسبانيا 🇪🇸"
Redis:set(Gold.."nameplayer".."5"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."5"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."5"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."5"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."5"..data.sender_user_id,80000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : دافيد \n⇜ مركزه : حارس\n⇜ طاقة اللاعب : 84\n⇜ الجنسية : اسبانيا 🇪🇸 \n⇜ السعر : 80000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/geano') then
local UserId = Text:match('(%d+)/geano')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب دافيد ", 'md', true)
end
end
if Text and Text:match('(%d+)/felixyes') then
local UserId = Text:match('(%d+)/felixyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(20000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."1"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز هجوم\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 20000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "جواو فليكس"
energyplayer = "82"
mrkzplayer = "مهاجم"
cityplayer = "البرتغال 🇵🇹"
Redis:set(Gold.."nameplayer".."1"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."1"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."1"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."1"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."1"..data.sender_user_id,20000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : جواو فليكس \n⇜ مركزه : مهاجم\n⇜ طاقة اللاعب : 82\n⇜ الجنسية : البرتغال 🇵🇹 \n⇜ السعر : 20000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/felixno') then
local UserId = Text:match('(%d+)/felixno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب جواو فليكس ", 'md', true)
end
end
if Text and Text:match('(%d+)/salahyes') then
local UserId = Text:match('(%d+)/salahyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(100000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 100000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "محمد صلاح"
energyplayer = "91"
mrkzplayer = "جناح"
cityplayer = "مصر 🇪🇬 "
Redis:set(Gold.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."2"..data.sender_user_id,100000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : محمد صلاح\n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 91\n⇜ الجنسية : مصر 🇪🇬 \n⇜ السعر : 100000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/salahno') then
local UserId = Text:match('(%d+)/salahno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب محمد صلاح", 'md', true)
end
end
if Text and Text:match('(%d+)/neymaryes') then
local UserId = Text:match('(%d+)/neymaryes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(100000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 100000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "نيمار"
energyplayer = "91"
mrkzplayer = "جناح"
cityplayer = "البرازيل🇧🇷 "
Redis:set(Gold.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."2"..data.sender_user_id,100000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : نيمار\n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 91\n⇜ الجنسية : البرازيل🇧🇷 \n⇜ السعر : 100000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/neymarno') then
local UserId = Text:match('(%d+)/neymarno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب نيمار", 'md', true)
end
end
if Text and Text:match('(%d+)/sadioyes') then
local UserId = Text:match('(%d+)/sadioyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(90000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 90000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "ساديو ماني"
energyplayer = "90"
mrkzplayer = "جناح"
cityplayer = "السنغال 🇸🇳"
Redis:set(Gold.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."2"..data.sender_user_id,90000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : نيمار\n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 90\n⇜ الجنسية : السنغال 🇸🇳 \n⇜ السعر : 90000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/sadiono') then
local UserId = Text:match('(%d+)/sadiono')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب ساديو ماني", 'md', true)
end
end
if Text and Text:match('(%d+)/rehimyes') then
local UserId = Text:match('(%d+)/rehimyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(80000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 80000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "رحيم ستيرلينغ"
energyplayer = "88"
mrkzplayer = "جناح"
cityplayer = "إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿"
Redis:set(Gold.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."2"..data.sender_user_id,80000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : رحيم ستيرلينغ\n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 88\n⇜ الجنسية : إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿 \n⇜ السعر : 80000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/rehimno') then
local UserId = Text:match('(%d+)/rehimno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب رحيم ستيرلين", 'md', true)
end
end
if Text and Text:match('(%d+)/sanchoyes') then
local UserId = Text:match('(%d+)/sanchoyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(80000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 80000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "يادون سانشو"
energyplayer = "88"
mrkzplayer = "جناح"
cityplayer = "إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿"
Redis:set(Gold.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."2"..data.sender_user_id,80000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : يادون سانشو\n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 88\n⇜ الجنسية : إنجلترا 🏴󠁧󠁢󠁥󠁮󠁧󠁿 \n⇜ السعر : 80000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/sanchono') then
local UserId = Text:match('(%d+)/sanchono')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب يادون سانشو", 'md', true)
end
end
if Text and Text:match('(%d+)/sonyes') then
local UserId = Text:match('(%d+)/sonyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(80000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 80000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "سون"
energyplayer = "88"
mrkzplayer = "جناح"
cityplayer = "كوريه الجنوبيه 🇰🇷"
Redis:set(Gold.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."2"..data.sender_user_id,80000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : يادون سانشو\n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 88\n⇜ الجنسية : كوريا الجنوبية 🇰🇷\n⇜ السعر : 80000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/sonno') then
local UserId = Text:match('(%d+)/sonno')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب سون", 'md', true)
end
end
if Text and Text:match('(%d+)/ronaldoyes') then
local UserId = Text:match('(%d+)/ronaldoyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(200000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."2"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز جناح\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 200000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "رونالدو"
energyplayer = "95"
mrkzplayer = "جناح"
cityplayer = "البرتغال 🇵🇹"
Redis:set(Gold.."nameplayer".."2"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."2"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."2"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."2"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."2"..data.sender_user_id,200000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : كرستيانو رونالدو\n⇜ مركزه : جناح\n⇜ طاقة اللاعب : 95\n⇜ الجنسية : البرتغال 🇵🇹\n⇜ السعر : 200000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/ronaldono') then
local UserId = Text:match('(%d+)/ronaldono')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب كرستيانو رونالدو", 'md', true)
end
end
if Text and Text:match('(%d+)/messiyes') then
local UserId = Text:match('(%d+)/messiyes')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(200000) then
return edit(ChatId,Msg_id, "⇜ مايمديك تشتري اللاعب فلوسك ماتكفي","md",true)
end
if Redis:get(Gold.."mrkzplayer".."1"..data.sender_user_id) then
return edit(ChatId,Msg_id, "⇜ لديك لاعب مركز مهاجم\n⇜ ابحث عن لاعب اخر\n✓","md",true)
end
cccallcc = tonumber(ballance) - 200000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
nameplayer = "ميسي"
energyplayer = "95"
mrkzplayer = "مهاجم"
cityplayer = "الارجنتين 🇦🇷"
Redis:set(Gold.."nameplayer".."1"..data.sender_user_id,nameplayer)
Redis:set(Gold.."energyplayer".."1"..data.sender_user_id,energyplayer)
Redis:set(Gold.."mrkzplayer".."1"..data.sender_user_id,mrkzplayer)
Redis:set(Gold.."cityplayer".."1"..data.sender_user_id,cityplayer)
Redis:set(Gold.."priceplayer".."1"..data.sender_user_id,200000)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم شراء لاعب 🏃‍♂️️\n\n⇜ اسم الاعب : ليونيل ميسي\n⇜ مركزه : مهاجم\n⇜ طاقة اللاعب : 95\n⇜ الجنسية : الارجنتين 🇦🇷\n⇜ السعر : 200000 ﷼ 💵\n⇜ رصيدك الان : '..convert_mony..' ﷼ 💵\n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/messino') then
local UserId = Text:match('(%d+)/messino')
if tonumber(data.sender_user_id) == tonumber(UserId) then
edit(ChatId,Msg_id,"⇜ تم الغاء شراء اللاعب ميسي", 'md', true)
end
end
-----------------
if Text and Text:match('(%d+)/realm') then
local UserId = Text:match('(%d+)/realm')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(200000) then
return edit(ChatId,Msg_id, "*⇜ مايمديك تنشئ هذا النادي 🤷🏻‍♀\n⇜ فلوسك اقل من 200000 💰*","md",true)
end
cccallcc = tonumber(ballance) - 200000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(Gold.."lkbnade"..data.sender_user_id)
Redis:sadd(Gold.."lkbnadesadd", lkbnade)
namenade = "﷼ مدريد"
Redis:set(Gold.."namenade"..data.sender_user_id,namenade)
Redis:set(Gold.."nokatnade"..data.sender_user_id,0)
Redis:sadd(Gold.."ownernade",data.sender_user_id)
Redis:set(Gold.."energynade"..data.sender_user_id,50)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : ﷼ مدريد\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 200000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/barca') then
local UserId = Text:match('(%d+)/barca')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(150000) then
return edit(ChatId,Msg_id, "*⇜ مايمديك تنشئ هذا النادي 🤷🏻‍♀\n⇜ فلوسك اقل من 150000 💰*","md",true)
end
cccallcc = tonumber(ballance) - 150000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(Gold.."lkbnade"..data.sender_user_id)
Redis:sadd(Gold.."lkbnadesadd", lkbnade)
namenade = "برشلونة"
Redis:set(Gold.."namenade"..data.sender_user_id,namenade)
Redis:set(Gold.."nokatnade"..data.sender_user_id,0)
Redis:sadd(Gold.."ownernade",data.sender_user_id)
Redis:set(Gold.."energynade"..data.sender_user_id,45)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : برشلونة\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 150000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/chels') then
local UserId = Text:match('(%d+)/chels')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(90000) then
return edit(ChatId,Msg_id, "*⇜ مايمديك تنشئ هذا النادي 🤷🏻‍♀\n⇜ فلوسك اقل من 90000 💰*","md",true)
end
cccallcc = tonumber(ballance) - 90000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(Gold.."lkbnade"..data.sender_user_id)
Redis:sadd(Gold.."lkbnadesadd", lkbnade)
namenade = "تشيلسي"
Redis:set(Gold.."namenade"..data.sender_user_id,namenade)
Redis:set(Gold.."nokatnade"..data.sender_user_id,0)
Redis:sadd(Gold.."ownernade",data.sender_user_id)
Redis:set(Gold.."energynade"..data.sender_user_id,40)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : تشيلسي\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 90000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/manun') then
local UserId = Text:match('(%d+)/manun')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(70000) then
return edit(ChatId,Msg_id, "*⇜ مايمديك تنشئ هذا النادي 🤷🏻‍♀\n⇜ فلوسك اقل من 70000 💰*","md",true)
end
cccallcc = tonumber(ballance) - 70000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(Gold.."lkbnade"..data.sender_user_id)
Redis:sadd(Gold.."lkbnadesadd", lkbnade)
namenade = "مانشستر يونايتد"
Redis:set(Gold.."namenade"..data.sender_user_id,namenade)
Redis:set(Gold.."nokatnade"..data.sender_user_id,0)
Redis:sadd(Gold.."ownernade",data.sender_user_id)
Redis:set(Gold.."energynade"..data.sender_user_id,35)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : مانشستر يونايتد\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 70000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/livb') then
local UserId = Text:match('(%d+)/livb')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(120000) then
return edit(ChatId,Msg_id, "*⇜ مايمديك تنشئ هذا النادي 🤷🏻‍♀\n⇜ فلوسك اقل من 120000 💰*","md",true)
end
cccallcc = tonumber(ballance) - 120000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(Gold.."lkbnade"..data.sender_user_id)
Redis:sadd(Gold.."lkbnadesadd", lkbnade)
namenade = "ليفربول"
Redis:set(Gold.."namenade"..data.sender_user_id,namenade)
Redis:set(Gold.."nokatnade"..data.sender_user_id,0)
Redis:sadd(Gold.."ownernade",data.sender_user_id)
Redis:set(Gold.."energynade"..data.sender_user_id,30)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : ليفربول\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 120000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/intmi') then
local UserId = Text:match('(%d+)/intmi')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(30000) then
return edit(ChatId,Msg_id, "*⇜ مايمديك تنشئ هذا النادي 🤷🏻‍♀\n⇜ فلوسك اقل من 30000 💰*","md",true)
end
cccallcc = tonumber(ballance) - 30000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(Gold.."lkbnade"..data.sender_user_id)
Redis:sadd(Gold.."lkbnadesadd", lkbnade)
namenade = "انتر ميلان"
Redis:set(Gold.."namenade"..data.sender_user_id,namenade)
Redis:set(Gold.."nokatnade"..data.sender_user_id,0)
Redis:sadd(Gold.."ownernade",data.sender_user_id)
Redis:set(Gold.."energynade"..data.sender_user_id,25)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : انتر ميلان\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 30000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/manci') then
local UserId = Text:match('(%d+)/manci')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(100000) then
return edit(ChatId,Msg_id, "*⇜ مايمديك تنشئ هذا النادي 🤷🏻‍♀\n⇜ فلوسك اقل من 100000 💰*","md",true)
end
cccallcc = tonumber(ballance) - 100000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(Gold.."lkbnade"..data.sender_user_id)
Redis:sadd(Gold.."lkbnadesadd", lkbnade)
namenade = "مانشستر سيتي"
Redis:set(Gold.."namenade"..data.sender_user_id,namenade)
Redis:set(Gold.."nokatnade"..data.sender_user_id,0)
Redis:sadd(Gold.."ownernade",data.sender_user_id)
Redis:set(Gold.."energynade"..data.sender_user_id,20)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : مانشستر سيتي\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 100000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/sangerman') then
local UserId = Text:match('(%d+)/sangerman')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(100000) then
return edit(ChatId,Msg_id, "*⇜ مايمديك تنشئ هذا النادي 🤷🏻‍♀\n⇜ فلوسك اقل من 100000 💰*","md",true)
end
cccallcc = tonumber(ballance) - 100000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(Gold.."lkbnade"..data.sender_user_id)
Redis:sadd(Gold.."lkbnadesadd", lkbnade)
namenade = "باريس سان جيرمان"
Redis:set(Gold.."namenade"..data.sender_user_id,namenade)
Redis:set(Gold.."nokatnade"..data.sender_user_id,0)
Redis:sadd(Gold.."ownernade",data.sender_user_id)
Redis:set(Gold.."energynade"..data.sender_user_id,15)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : باريس سان جيرمان\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 100000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/payren') then
local UserId = Text:match('(%d+)/payren')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(100000) then
return edit(ChatId,Msg_id, "*⇜ مايمديك تنشئ هذا النادي 🤷🏻‍♀\n⇜ فلوسك اقل من 100000 💰*","md",true)
end
cccallcc = tonumber(ballance) - 100000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(Gold.."lkbnade"..data.sender_user_id)
Redis:sadd(Gold.."lkbnadesadd", lkbnade)
namenade = "بايرن ميونخ"
Redis:set(Gold.."namenade"..data.sender_user_id,namenade)
Redis:set(Gold.."nokatnade"..data.sender_user_id,0)
Redis:sadd(Gold.."ownernade",data.sender_user_id)
Redis:set(Gold.."energynade"..data.sender_user_id,10)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : بايرن ميونخ\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 100000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/alhelal') then
local UserId = Text:match('(%d+)/alhelal')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(100000) then
return edit(ChatId,Msg_id, "*⇜ مايمديك تنشئ هذا النادي 🤷🏻‍♀\n⇜ فلوسك اقل من 100000 💰*","md",true)
end
cccallcc = tonumber(ballance) - 100000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(Gold.."lkbnade"..data.sender_user_id)
Redis:sadd(Gold.."lkbnadesadd", lkbnade)
namenade = "الهلال"
Redis:set(Gold.."namenade"..data.sender_user_id,namenade)
Redis:set(Gold.."nokatnade"..data.sender_user_id,0)
Redis:sadd(Gold.."ownernade",data.sender_user_id)
Redis:set(Gold.."energynade"..data.sender_user_id,15)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : الهلال 🇸🇦\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 100000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/alnaser') then
local UserId = Text:match('(%d+)/alnaser')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(100000) then
return edit(ChatId,Msg_id, "*⇜ مايمديك تنشئ هذا النادي 🤷🏻‍♀\n⇜ فلوسك اقل من 100000 💰*","md",true)
end
cccallcc = tonumber(ballance) - 100000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(Gold.."lkbnade"..data.sender_user_id)
Redis:sadd(Gold.."lkbnadesadd", lkbnade)
namenade = "النصر"
Redis:set(Gold.."namenade"..data.sender_user_id,namenade)
Redis:set(Gold.."nokatnade"..data.sender_user_id,0)
Redis:sadd(Gold.."ownernade",data.sender_user_id)
Redis:set(Gold.."energynade"..data.sender_user_id,15)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : النصر 🇸🇦\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 100000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/aletehad') then
local UserId = Text:match('(%d+)/aletehad')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(100000) then
return edit(ChatId,Msg_id, "*⇜ مايمديك تنشئ هذا النادي 🤷🏻‍♀\n⇜ فلوسك اقل من 100000 💰*","md",true)
end
cccallcc = tonumber(ballance) - 100000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(Gold.."lkbnade"..data.sender_user_id)
Redis:sadd(Gold.."lkbnadesadd", lkbnade)
namenade = "الاتحاد"
Redis:set(Gold.."namenade"..data.sender_user_id,namenade)
Redis:set(Gold.."nokatnade"..data.sender_user_id,0)
Redis:sadd(Gold.."ownernade",data.sender_user_id)
Redis:set(Gold.."energynade"..data.sender_user_id,15)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : الاتحاد 🇸🇦\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 100000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/alahly') then
local UserId = Text:match('(%d+)/alahly')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(50000) then
return edit(ChatId,Msg_id, "*⇜ مايمديك تنشئ هذا النادي 🤷🏻‍♀\n⇜ فلوسك اقل من 50000 💰*","md",true)
end
cccallcc = tonumber(ballance) - 50000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(Gold.."lkbnade"..data.sender_user_id)
Redis:sadd(Gold.."lkbnadesadd", lkbnade)
namenade = "الاهلي"
Redis:set(Gold.."namenade"..data.sender_user_id,namenade)
Redis:set(Gold.."nokatnade"..data.sender_user_id,0)
Redis:sadd(Gold.."ownernade",data.sender_user_id)
Redis:set(Gold.."energynade"..data.sender_user_id,15)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : الاهلي\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 50000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('(%d+)/alzamalek') then
local UserId = Text:match('(%d+)/alzamalek')
if tonumber(data.sender_user_id) == tonumber(UserId) then
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
if tonumber(ballance) < tonumber(50000) then
return edit(ChatId,Msg_id, "*⇜ مايمديك تنشئ هذا النادي 🤷🏻‍♀\n⇜ فلوسك اقل من 50000 💰*","md",true)
end
cccallcc = tonumber(ballance) - 50000
Redis:set(Gold.."boob"..data.sender_user_id,cccallcc)
lkbnade = Redis:get(Gold.."lkbnade"..data.sender_user_id)
Redis:sadd(Gold.."lkbnadesadd", lkbnade)
namenade = "الزمالك"
Redis:set(Gold.."namenade"..data.sender_user_id,namenade)
Redis:set(Gold.."nokatnade"..data.sender_user_id,0)
Redis:sadd(Gold.."ownernade",data.sender_user_id)
Redis:set(Gold.."energynade"..data.sender_user_id,10)
ballance = Redis:get(Gold.."boob"..data.sender_user_id) or 0
local convert_mony = string.format("%.0f",ballance)
ttshakse = '⌯ تم انشاء النادي ⚽️\n\n⇜ اسم النادي : الزمالك\n⇜ لقب النادي : '..lkbnade..'\n⇜ السعر : 50000 ﷼ 💵\n⇜ رصيدك الان : `'..convert_mony..'` ﷼ 💵\n\n⇜ اكتب ( `ناديي` ) لمعلومات اكثر \n ✓'
edit(ChatId,Msg_id,ttshakse, 'md', true)
end
end
if Text and Text:match('/Mahibes(%d+)') then
local GetMahibes = Text:match('/Mahibes(%d+)') 
local NumMahibes = math.random(1,6)
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..UserInfo.first_name..'](tg://user?id='..IdUser..')'
if tonumber(GetMahibes) == tonumber(NumMahibes) then
Redis:incrby(Gold.."Gold:Num:Add:Games"..ChatId..IdUser, 1)  
MahibesText = Teext..'\n⇜ الف مبروك حظك حلو اليوم\n⇜ فزت وطلعت المحيبس باليد رقم ( '..NumMahibes..' )'
else
MahibesText = Teext..'\n⇜ للاسف لقد خسرت المحيبس باليد رقم ( '..NumMahibes..' )\n⇜ جرب حضك مرة اخرى'
end
return edit(ChatId,Msg_id,MahibesText, 'md', true, false, reply_markup)
end
if Text and Text:match('(%d+)/joinhzer') then
local UserId = Text:match('(%d+)/joinhzer')
if Redis:get(Gold.."hazrlock"..ChatId) == UserId then
if Redis:sismember(Gold.."listhzerid"..ChatId, IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ لقد انضممت الى اللعبة مسبقاً ", true)
end
if tonumber(Redis:get(Gold.."hazrmalek"..ChatId)) == IdUser then
return bot.answerCallbackQuery(data.id, "⇜ انتا مالك اللعبة حاليا", true)
end
Redis:sadd(Gold.."listhzerid"..ChatId, IdUser)
local nameuser = bot.getUser(IdUser)
if nameuser.first_name then
nameuser = "["..nameuser.first_name.."](tg://user?id="..nameuser.id..")"
else
nameuser = 'لا يوجد اسم'
end
send(ChatId,Msg_id,"\n⇜ انضم "..nameuser.." الى اللعبة \n✓","md",true)
end
end
if Text and Text:match('(%d+):kk:(%d+)/delreb:(%d+)') then
local UserId = {string.match(Text,"^(%d+):kk:(%d+)/delreb:(%d+)$")}
if tonumber(IdUser) == tonumber(UserId[3]) then
gt = "-100"..UserId[2]
bot.deleteMessages(gt,{[1]= UserId[1]})
edit(tonumber(UserId[3]),Msg_id,'⇜ تم مسح الرسالة من القروب', 'md', true)
end
end
-----------------
if Text and Text:match('(.*):socl:(.*)') then
local UserId = {string.match(Text,"^(.*):socl:(.*)$")}
if Redis:get(Gold.."soundidche"..ChatId..IdUser) == UserId[1] then
link = "https://soundcloud.com/"..UserId[2]
title = UserId[1]
local nameuser = bot.getUser(IdUser)
if nameuser.first_name then
nameuser = "["..nameuser.first_name.."](tg://user?id="..nameuser.id..")"
else
nameuser = 'لا يوجد اسم'
end
os.execute("yt-dlp "..link.." --max-filesize 25M -o '"..title..".mp3'")
local titfile = io.open("./"..title..".mp3","r")
if titfile then
bot.sendAudio(ChatId,Msg_id,'./'..title..'.mp3',"- من قبل : "..nameuser.." ","md",nil,title)
bot.deleteMessages(ChatId,{[1]= Msg_id})
sleep(1)
os.remove(""..title..".mp3")
Redis:del(Gold.."soundidche"..ChatId..IdUser)
else
Redis:del(Gold.."soundidche"..ChatId..IdUser)
return edit(ChatId,Msg_id,'\n⇜ لا استطيع تحميل اكثر من 25 ميغا',"md",true)
end
else
bot.answerCallbackQuery(data.id, "⇜ هـذا الامـر ليس لك ياحمـار 😒", true)
end
end
-----------------
if Text and Text:match('(.*):yout:(.*)') then
local UserId = {string.match(Text,"^(.*):yout:(.*)$")}
if Redis:get(Gold.."youtidche"..ChatId..IdUser) == UserId[1] then
link = "https://youtu.be/"..UserId[2]
title = UserId[1]
local nameuser = bot.getUser(IdUser)
if nameuser.first_name then
nameuser = "["..nameuser.first_name.."](tg://user?id="..nameuser.id..")"
else
nameuser = 'لا يوجد اسم'
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'تحميل صوت', data = title..'sound/'..UserId[2]}, {text = 'تحميل فيديو', data = title..'video/'..UserId[2]}, 
},
}
}
local txx = "["..title.."](http://youtu.be/"..UserId[2]..")\n\n- من قبل : "..nameuser.."\n✓"
bot.editMessageText(ChatId,Msg_id,txx, 'md', true, false, reply_markup)
else
bot.answerCallbackQuery(data.id, "⇜ هـذا الامـر ليس لك ياحمـار 😒", true)
end
end
-----------------
if Text and Text:match('(.*)sound/(.*)') then
local UserId = {string.match(Text,"^(.*)sound/(.*)$")}
if Redis:get(Gold.."youtidche"..ChatId..IdUser) == UserId[1] then
link = "https://youtu.be/"..UserId[2]
title = UserId[1]
local nameuser = bot.getUser(IdUser)
if nameuser.first_name then
nameuser = "["..nameuser.first_name.."](tg://user?id="..nameuser.id..")"
else
nameuser = 'لا يوجد اسم'
end
os.execute("yt-dlp "..link.." --max-filesize 25M -f 251 -o '"..title..".mp3'")
local yosfile = io.open("./"..title..".mp3","r")
if yosfile then
bot.sendAudio(ChatId,Msg_id,'./'..title..'.mp3',"- من قبل : "..nameuser.." ","md",nil,title)
bot.deleteMessages(ChatId,{[1]= Msg_id})
sleep(1)
os.remove(""..title..".mp3")
Redis:del(Gold.."youtidche"..ChatId..IdUser)
else
Redis:del(Gold.."youtidche"..ChatId..IdUser)
return edit(ChatId,Msg_id,'\n⇜ لا استطيع تحميل اكثر من 25 ميغا',"md",true)
end
else
bot.answerCallbackQuery(data.id, "⇜ هـذا الامـر ليس لك ياحمـار 😒", true)
end
end
-----------------
if Text and Text:match('(.*)video/(.*)') then
local UserId = {string.match(Text,"^(.*)video/(.*)$")}
if Redis:get(Gold.."youtidche"..ChatId..IdUser) == UserId[1] then
link = "https://youtu.be/"..UserId[2]
title = UserId[1]
local nameuser = bot.getUser(IdUser)
if nameuser.first_name then
nameuser = "["..nameuser.first_name.."](tg://user?id="..nameuser.id..")"
else
nameuser = 'لا يوجد اسم'
end
os.execute("yt-dlp "..link.." --max-filesize 50M -f 18 -o '"..title..".mp4'")
local yovfile = io.open("./"..title..".mp4","r")
if yovfile then
bot.sendVideo(IdUser,0,'./'..title..'.mp4'," ","md")
edit(ChatId,Msg_id,'( '..nameuser..' )\n⇜ تم ارسال الفيديو لك بخاص البوت', 'md', true)
sleep(2)
os.remove(""..title..".mp4")
Redis:del(Gold.."youtidche"..ChatId..IdUser)
else
Redis:del(Gold.."youtidche"..ChatId..IdUser)
return edit(ChatId,Msg_id,'\n⇜ لا استطيع تحميل اكثر من 50 ميغا',"md",true)
end
else
bot.answerCallbackQuery(data.id, "⇜ هـذا الامـر ليس لك ياحمـار 😒", true)
end
end
-----------------
if Text == '/akabmute' then
local kk_id = Redis:get(Gold.."kk_Akab"..ChatId)
if Redis:sismember(Gold..'members_Ahkamm'..ChatId,IdUser) then
Redis:sadd(Gold.."Gold:SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'الغاء كتم', data = '/unakabmute'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم كتمه في القروب لعدم تنفيذه العقاب").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('هذا الامر للمشاركين في لعبة العقاب')..'&show_alert=true')
end
end
if Text == '/unakabmute' then
local kk_id = Redis:get(Gold.."kk_Akab"..ChatId)
if Redis:sismember(Gold..'members_Ahkamm'..ChatId,IdUser) then
Redis:srem(Gold.."Gold:SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '✦ اعـادة الكتـم ✦', data = '/akabmute'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم الغاء كتمه في القروب").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('هذا الامر للمشاركين في لعبة العقاب')..'&show_alert=true')
end
end
-----------------
if Text == '/ahkmute' then
local ff_id = Redis:get(Gold.."ff_Ahkam"..ChatId)
local kk_id = Redis:get(Gold.."kk_Ahkam"..ChatId)
if tonumber(IdUser) == tonumber(ff_id) then
Redis:sadd(Gold.."Gold:SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'الغاء كتم', data = '/unahkmute'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم كتمه في القروب لعدم تنفيذه الاحكام").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('هذا الامر للمشاركين في لعبة الاحكام')..'&show_alert=true')
end
end
if Text == '/unahkmute' then
local ff_id = Redis:get(Gold.."ff_Ahkam"..ChatId)
local kk_id = Redis:get(Gold.."kk_Ahkam"..ChatId)
if tonumber(IdUser) == tonumber(ff_id) then
Redis:srem(Gold.."Gold:SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'اعادة الكتم', data = '/ahkmute'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم الغاء كتمه في القروب").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('هذا الامر للمشاركين في لعبة الاحكام')..'&show_alert=true')
end
end
-----------------
if Text == '/ahkkmute' then
local ff_id = Redis:get(Gold.."ff_Ahkkam"..ChatId)
local kk_id = Redis:get(Gold.."kk_Ahkkam"..ChatId)
if tonumber(IdUser) == tonumber(ff_id) then
Redis:sadd(Gold.."Gold:SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'الغاء كتم', data = '/unahkmute'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم كتمه في القروب لعدم تنفذه الاحكام").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('هذا الامر للفائز بلعبة الاحكام')..'&show_alert=true')
end
end
if Text == '/unahkkmute' then
local ff_id = Redis:get(Gold.."ff_Ahkkam"..ChatId)
local kk_id = Redis:get(Gold.."kk_Ahkkam"..ChatId)
if tonumber(IdUser) == tonumber(ff_id) then
Redis:srem(Gold.."Gold:SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'اعادة الكتم', data = '/ahkkmute'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم الغـاء كتمه في القروب").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('هذا الامر للفائز بلعبة الاحكام')..'&show_alert=true')
end
end
-----------------
if Text == '/koomute' then
local kk_id = Redis:get(Gold.."kk_koorsi"..ChatId)
if Redis:sismember(Gold..'List_Koorsi'..ChatId,IdUser) then
Redis:sadd(Gold.."Gold:SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'الغاء كتم', data = '/unkoomute'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم كتمه في المجمـوعـة لعـدم جوابـه اسئلـة كرسـي الاعتـراف").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('⇜ هـذا الامـر للفائـز بلعبـة الكـرسي')..'&show_alert=true')
end
end
if Text == '/unkoomute' then
local kk_id = Redis:get(Gold.."kk_koorsi"..ChatId)
if Redis:sismember(Gold..'List_Koorsi'..ChatId,IdUser) then
Redis:srem(Gold.."Gold:SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '✦ اعـادة الكتـم ✦', data = '/koomute'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم الغـاء كتمـه في المجمـوعـة").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('⇜ هـذا الامـر للفائـز بلعبـة الكـرسي')..'&show_alert=true')
end
end
-----------------
if Text == '/soomute' then
local ff_id = Redis:get(Gold.."ff_saraha"..ChatId)
local kk_id = Redis:get(Gold.."kk_saraha"..ChatId)
if tonumber(IdUser) == tonumber(ff_id) then
Redis:sadd(Gold.."Gold:SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'الغاء كتم', data = '/unsoomute'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم كتمه في المجمـوعـة لعـدم جوابـه اسئلـة لعبـة الصـراحه").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('⇜ هـذا الامـر للفائـز بلعبـة الصراحـه')..'&show_alert=true')
end
end
if Text == '/unsoomute' then
local ff_id = Redis:get(Gold.."ff_saraha"..ChatId)
local kk_id = Redis:get(Gold.."kk_saraha"..ChatId)
if tonumber(IdUser) == tonumber(ff_id) then
Redis:srem(Gold.."Gold:SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '✦ اعـادة الكتـم ✦', data = '/soomute'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم الغـاء كتمـه في المجمـوعـة").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('⇜ هـذا الامـر للفائـز بلعبـة الصراحـه')..'&show_alert=true')
end
end
-----------------
if Text == '/akmute' then
local ff_id = Redis:get(Gold.."ff_Ahkam"..ChatId)
local kk_id = Redis:get(Gold.."kk_Ahkam"..ChatId)
if tonumber(IdUser) == tonumber(ff_id) then
Redis:sadd(Gold.."Gold:SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'الغاء كتم', data = '/unakmute'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم كتمه في المجمـوعـة لعـدم تنفيـذه الاحكام").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('⇜ هـذا الامـر للفائـز بلعبـة احكـام')..'&show_alert=true')
end
end
if Text == '/unakmute' then
local ff_id = Redis:get(Gold.."ff_Ahkam"..ChatId)
local kk_id = Redis:get(Gold.."kk_Ahkam"..ChatId)
if tonumber(IdUser) == tonumber(ff_id) then
Redis:srem(Gold.."Gold:SilentGroup:Group"..ChatId,kk_id) 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '✦ اعـادة الكتـم ✦', data = '/akmute'},},}}
local TextHelp = Reply_Status(kk_id,"⇜ تم الغـاء كتمـه في المجمـوعـة").Reply
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
else
https.request("https://api.telegram.org/bot"..Token..'/answerCallbackQuery?callback_query_id='..data.id..'&text='..URL.escape('⇜ هـذا الامـر للفائـز بلعبـة احكـام')..'&show_alert=true')
end
end
---------------------- Dev ZilZal ----------------------
if Text == '/Aktmooh' then
if not Redis:sismember(Gold..'List_Aktooh'..ChatId,IdUser) then 
Redis:sadd(Gold..'List_Aktooh'..ChatId,IdUser)
Redis:setex(Gold.."Witting_StartGameAk"..ChatId,1400,true)
local list = Redis:smembers(Gold..'List_Aktooh'..ChatId) 
if #list == 2 then
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).id
name1 = '- ['..FlterBio(Nname)..'](tg://user?id='..Uname..')'
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).id
name2 = '- ['..FlterBio(Nname)..'](tg://user?id='..Uname..')'
end
if k == #list then
local message = '*⇜ عـدد المصـوتين ⇜*'..#list..' \n*⇜ اسمـاء المصـوتين ⇩\n'..name1..'*\n'..name2
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '✦ اضغط لـ التصـويت ✦', data = '/Aktmooh'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 3 then
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).id
name1 = '- ['..FlterBio(Nname)..'](tg://user?id='..Uname..')'
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).id
name2 = '- ['..FlterBio(Nname)..'](tg://user?id='..Uname..')'
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).id
name3 = '- ['..FlterBio(Nname)..'](tg://user?id='..Uname..')'
end
if k == #list then
local Ak_Tm = Redis:get(Gold.."Ak_Tmooh"..ChatId)
local ban = bot.getUser(Ak_Tm)
local AkName = '['..ban.first_name..'](tg://user?id='..ban.id..')' or 'لا يوجد اسم'
local message = '*⇜ عـدد المصـوتين ⇜*'..#list..' \n*⇜ اسمـاء المصـوتين ⇩*\n'..name1..'\n'..name2..'\n'..name3..'\n\n*⇜ المستخـدم* '..AkName..'\n*⇜ تم كتمـه .. بنجـاح ✓*'
Redis:sadd(Gold.."Gold:SilentGroup:Group"..ChatId,Ak_Tm)
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '✦ الغـاء الـ كتـم ✦', data = '/Unaktmooh'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
end
else
return bot.answerCallbackQuery(data.id, "⇜ انت مصـوت مسبقـاً .. على الشخص", true)
end
end
---------------------- Dev ZilZal ----------------------
if Text == '/Unaktmooh' and Redis:get(Gold.."Witting_StartGameAk"..ChatId) then
local raeaktooh = Redis:get(Gold.."raeaktooh"..ChatId)
if tonumber(IdUser) == tonumber(raeaktooh) then
local list = Redis:smembers(Gold..'List_Aktooh'..ChatId) 
local Ak_Tm = Redis:get(Gold.."Ak_Tmooh"..ChatId)
local ban = bot.getUser(Ak_Tm)
local AkName = '['..ban.first_name..'](tg://user?id='..ban.id..')' or 'لا يوجد اسم'
local zelzzal = '*⇜ المستخـدم* '..AkName..'\n*⇜ تم الغـاء كتمـه .. بنجـاح ✓*'
Redis:srem(Gold.."Gold:SilentGroup:Group"..ChatId,Ak_Tm)
Redis:srem(Gold..'List_Aktooh'..ChatId,UserName) 
Redis:del(Gold..'raeaktooh'..ChatId) 
Redis:del(Gold..'List_Aktooh'..ChatId) 
Redis:del(Gold.."Witting_StartGameAk"..ChatId)
Redis:del(Gold.."Start_Aktmooh"..ChatId)
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.', url = 't.me/'..chsource..''},},}}
edit(ChatId,Msg_id,zelzzal, 'md', true, false, reply_markup)
else
return bot.answerCallbackQuery(data.id, "⇜ عـذراً .. الامـر ليـس لـك", true)
end
end
---------------------- Dev ZilZal ----------------------
if Text == '/joineahkam' then
if not Redis:sismember(Gold..'List_Ahkkam'..ChatId,IdUser) then 
Redis:sadd(Gold..'List_Ahkkam'..ChatId,IdUser)
Redis:setex(Gold.."Witting_StartGameh"..ChatId,1400,true)
local list = Redis:smembers(Gold..'List_Ahkkam'..ChatId) 
if #list == 2 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local zzllzz = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة احكـام ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/joineahkam'},},}}
edit(ChatId,Msg_id,zzllzz, 'md', true, false, reply_markup)
end
end
elseif #list == 3 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة احكـام ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/joineahkam'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startahkam'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 4 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة احكـام ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/joineahkam'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startahkam'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 5 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة احكـام ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/joineahkam'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startahkam'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 6 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة احكـام ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/joineahkam'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startahkam'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 7 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة احكـام ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/joineahkam'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startahkam'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 8 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة احكـام ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/joineahkam'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startahkam'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 9 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة احكـام ⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == 9 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id8 = "t.me/"..Uname
name9 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = name9, url = id8},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/joineahkam'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startahkam'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 10 then
local message = '*⇜ لقـد وصـل اللاعبيـن للحـد الاقصـى\n⇜ المشتـركيـن الـ10 فـي لعبـة احكـام هـم :*' 
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == 9 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id8 = "t.me/"..Uname
name9 = FlterBio(Nname)
end
if k == 10 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id9 = "t.me/"..Uname
name10 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = name9, url = id8},},
{{text = name10, url = id9},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startahkam'},},}}
return edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
end
else
return bot.answerCallbackQuery(data.id, "⇜ انت منضـم مسبقـاً .. الـى اللعبـه", true)
end
end
---------------------- Dev ZilZal ----------------------
if Text == '/startahkam' and Redis:get(Gold.."Witting_StartGameh"..ChatId) then
local rarahkam = Redis:get(Gold.."raeahkkam"..ChatId)
if tonumber(IdUser) == tonumber(rarahkam) then
local list = Redis:smembers(Gold..'List_Ahkkam'..ChatId) 
local UserName = list[math.random(#list)]
local UserId_Info = bot.getUser(UserName)
if UserId_Info.username and UserId_Info.username ~= "" then
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
else
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
end
Redis:set(Gold.."kk_Ahkkam"..ChatId,UserId_Info.id)
Redis:srem(Gold..'List_Ahkkam'..ChatId,UserName) 
local liiist = Redis:smembers(Gold..'List_Ahkkam'..ChatId) 
local User2Name = liiist[math.random(#liiist)]
local UserId2_Info = bot.getUser(User2Name)
if UserId2_Info.username and UserId2_Info.username ~= "" then
Hs = '['..UserId2_Info.first_name..'](tg://user?id='..User2Name..')'
else
Hs = '['..UserId2_Info.first_name..'](tg://user?id='..User2Name..')'
end
Redis:set(Gold.."ff_Ahkkam"..ChatId,UserId2_Info.id)
local GetLike = Redis:incrby(Gold.."Num:Add:Ahkam"..ChatId..UserId2_Info.id, 5) 
Redis:hset(Gold..':GroupUserCountAhkam:'..ChatId,UserId2_Info.id,GetLike)
local UserrInfo = bot.getUser(User2Name) 
if UserrInfo.first_name then
NameLUser = UserrInfo.first_name
else
NameLUser = UserrInfo.first_name
end
NameLUser = NameLUser
NameLUser = NameLUser:gsub("]","")
NameLUser = NameLUser:gsub("[[]","")
Redis:hset(Gold..':GroupAhkamNameUser:'..ChatId,UserrInfo.id,NameLUser)
Redis:del(Gold..'raeahkkam'..ChatId) 
Redis:del(Gold..'List_Ahkkam'..ChatId) 
Redis:del(Gold.."Witting_StartGameh"..ChatId)
Redis:del(Gold.."Start_Ahkkam"..ChatId)
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '✦ كتـم الخـاسر ✦', data = '/ahkkmute'},},}}
return edit(ChatId,Msg_id,'*⚖┊تم إختيار الشخـص ⇜* '..ls..'\n*👩🏻‍⚖┊ليتـم الحكـم عليـه من قبـل ⇜* '..Hs..'\n\n*🎁┊وتم اضـافـة 5 نقـاط للحـاكـم\n⛓┊تستطيـع كتم المتهـم اذ لم ينفـذ الحكـم*', 'md', true, false, reply_markup)
else
return bot.answerCallbackQuery(data.id, "⇜ الامـر للي بـدأ اللعبـه ...", true)
end
end
---------------------- Dev ZilZal ----------------------
if Text == '/Koorsy' then
if not Redis:sismember(Gold..'List_Koorsi'..ChatId,IdUser) then 
Redis:sadd(Gold..'List_Koorsi'..ChatId,IdUser)
Redis:setex(Gold.."Witting_StartGameek"..ChatId,1400,true)
local list = Redis:smembers(Gold..'List_Koorsi'..ChatId) 
if #list == 2 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local zzllzz = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة كرسـي الاعتراف 🪑⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Koorsy'},},}}
edit(ChatId,Msg_id,zzllzz, 'md', true, false, reply_markup)
end
end
elseif #list == 3 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة كرسـي الاعتراف 🪑⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Koorsy'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startkoorsi'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 4 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة كرسـي الاعتراف 🪑⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Koorsy'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startkoorsi'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 5 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة كرسـي الاعتراف 🪑⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Koorsy'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startkoorsi'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 6 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة كرسـي الاعتراف 🪑⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Koorsy'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startkoorsi'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 7 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة كرسـي الاعتراف 🪑⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Koorsy'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startkoorsi'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 8 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة كرسـي الاعتراف 🪑⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Koorsy'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startkoorsi'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 9 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة كرسـي الاعتراف 🪑⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == 9 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id8 = "t.me/"..Uname
name9 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = name9, url = id8},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Koorsy'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startkoorsi'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 10 then
local message = '*⇜ لقـد وصـل اللاعبيـن للحـد الاقصـى\n⇜ المشتـركيـن الـ10 فـي كرسـي الاعتراف 🪑⇩*' 
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == 9 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id8 = "t.me/"..Uname
name9 = FlterBio(Nname)
end
if k == 10 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id9 = "t.me/"..Uname
name10 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = name9, url = id8},},
{{text = name10, url = id9},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startkoorsi'},},}}
return edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
end
else
return bot.answerCallbackQuery(data.id, "⇜ انت منضـم مسبقـاً .. الـى اللعبـه", true)
end
end
---------------------- Dev ZilZal ----------------------
if Text == '/startkoorsi' and Redis:get(Gold.."Witting_StartGameek"..ChatId) then
local rarahkam = Redis:get(Gold.."raekoorsi"..ChatId)
if tonumber(IdUser) == tonumber(rarahkam) then
local list = Redis:smembers(Gold..'List_Koorsi'..ChatId) 
local UserName = list[math.random(#list)]
local UserId_Info = bot.getUser(UserName)
local tskoorsi = math.random(1,9999999999999)
local testkoorsi = math.random(1,9999999999999)
Redis:set(Gold.."koorsi:"..testkoorsi.."chat_id", ChatId)
Redis:set(Gold.."koorsi:"..testkoorsi.."to", UserId_Info.id)
Redis:set(Gold.."koorsi:"..testkoorsi.."msg_id",Msg_id)
if UserId_Info.username and UserId_Info.username ~= "" then
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
else
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
end
Redis:set(Gold.."kk_koorsi"..ChatId,UserId_Info.id)
Redis:srem(Gold..'List_Koorsi'..ChatId,UserName) 
Redis:del(Gold..'raekoorsi'..ChatId) 
Redis:del(Gold..'List_Koorsi'..ChatId) 
Redis:del(Gold.."Witting_StartGameek"..ChatId)
Redis:del(Gold.."Start_Koorsi"..ChatId)
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ إضغـط لارسـال السـؤال 📬✦', url = 't.me/'..UserBot..'?start=koorsi'..testkoorsi..''}, 
},
}
}
return edit(ChatId,Msg_id,"*⇜ تـم اختيـار ⇜(*  "..ls.."  *) لـ كرسـي الاعتـراف 🪑*\n*⇜ وتـم اختيـار بقية اللاعبين كـ فائزين\n⇜ لديكـم فقـط 10 اسئلـه لـ طرحهـا على الخـاسـر*", 'md', true, false, reply_markup)
else
return bot.answerCallbackQuery(data.id, "⇜ الامـر للي بـدأ اللعبـه ...", true)
end
end
---------------------- صراحه ----------------------
if Text == '/Sarraha' then
if not Redis:sismember(Gold..'List_Saraha'..ChatId,IdUser) then 
Redis:sadd(Gold..'List_Saraha'..ChatId,IdUser)
Redis:setex(Gold.."Witting_StartGameS"..ChatId,1400,true)
local list = Redis:smembers(Gold..'List_Saraha'..ChatId) 
if #list == 2 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local zzllzz = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة كرسـي الاعتراف 🪑⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Sarraha'},},}}
edit(ChatId,Msg_id,zzllzz, 'md', true, false, reply_markup)
end
end
elseif #list == 3 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة كرسـي الاعتراف 🪑⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Sarraha'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startsaraha'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 4 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة كرسـي الاعتراف 🪑⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Sarraha'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startsaraha'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 5 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة كرسـي الاعتراف 🪑⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Sarraha'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startsaraha'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 6 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة كرسـي الاعتراف 🪑⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Sarraha'},},
{{text = '✦ او اضغط لبدء اللعبه ✦', data = '/startsaraha'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 7 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة كرسـي الاعتراف 🪑⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Sarraha'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startsaraha'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 8 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة كرسـي الاعتراف 🪑⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Sarraha'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startsaraha'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 9 then
local UserInfo = bot.getUser(IdUser)
local Teext = '- ['..FlterBio(UserInfo.first_name)..'](tg://user?id='..IdUser..')'
local message = '*⇜ عـدد اللاعبيـن ⇜*'..#list..' \n*⇜ لقـد انضـم للعبـة كرسـي الاعتراف 🪑⇩*\n'..Teext
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == 9 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id8 = "t.me/"..Uname
name9 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = name9, url = id8},},
{{text = '✦ اضغط للانضمام الى اللعبه ✦', data = '/Sarraha'},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startsaraha'},},}}
edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
elseif #list == 10 then
local message = '*⇜ لقـد وصـل اللاعبيـن للحـد الاقصـى\n⇜ المشتـركيـن الـ10 فـي كرسـي الاعتراف 🪑⇩*' 
for k,v in pairs(list) do
if k == 1 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id = "t.me/"..Uname
name1 = FlterBio(Nname)
end
if k == 2 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id1 = "t.me/"..Uname
name2 = FlterBio(Nname)
end
if k == 3 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id2 = "t.me/"..Uname
name3 = FlterBio(Nname)
end
if k == 4 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id3 = "t.me/"..Uname
name4 = FlterBio(Nname)
end
if k == 5 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id4 = "t.me/"..Uname
name5 = FlterBio(Nname)
end
if k == 6 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id5 = "t.me/"..Uname
name6 = FlterBio(Nname)
end
if k == 7 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id6 = "t.me/"..Uname
name7 = FlterBio(Nname)
end
if k == 8 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id7 = "t.me/"..Uname
name8 = FlterBio(Nname)
end
if k == 9 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id8 = "t.me/"..Uname
name9 = FlterBio(Nname)
end
if k == 10 then
local Nname = bot.getUser(v).first_name
local Uname = bot.getUser(v).username
id9 = "t.me/"..Uname
name10 = FlterBio(Nname)
end
if k == #list then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = name1, url = id},},
{{text = name2, url = id1},},
{{text = name3, url = id2},},
{{text = name4, url = id3},},
{{text = name5, url = id4},},
{{text = name6, url = id5},},
{{text = name7, url = id6},},
{{text = name8, url = id7},},
{{text = name9, url = id8},},
{{text = name10, url = id9},},
{{text = '✦ الان اضغط لبدء اللعبه ✦', data = '/startsaraha'},},}}
return edit(ChatId,Msg_id,message, 'md', true, false, reply_markup)
end
end
end
else
return bot.answerCallbackQuery(data.id, "⇜ انت منضـم مسبقـاً .. الـى اللعبـه", true)
end
end
---------------------- صراحه ----------------------
if Text == '/startsaraha' and Redis:get(Gold.."Witting_StartGameS"..ChatId) then
local rarahkam = Redis:get(Gold.."raesaraha"..ChatId)
if tonumber(IdUser) == tonumber(rarahkam) then
local list = Redis:smembers(Gold..'List_Saraha'..ChatId) 
local UserName = list[math.random(#list)]
local UserId_Info = bot.getUser(UserName)
local testsaraha = math.random(1,9999999999999)
Redis:set(Gold.."saraha:"..testsaraha.."chat_id", ChatId)
Redis:set(Gold.."saraha:"..testsaraha.."to", UserId_Info.id)
Redis:set(Gold.."saraha:"..testsaraha.."msg_id",Msg_id)
if UserId_Info.username and UserId_Info.username ~= "" then
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
else
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
end
Redis:set(Gold.."kk_saraha"..ChatId,UserId_Info.id)
Redis:srem(Gold..'List_Saraha'..ChatId,UserName) 
local liiiist = Redis:smembers(Gold..'List_Saraha'..ChatId) 
local User2Name = liiiist[math.random(#liiiist)]
local UserId2_Info = bot.getUser(User2Name)
Redis:incrby(Gold..'Num:Add:Games'..ChatId..UserId2_Info.id,5)
Redis:set(Gold.."ff_saraha"..ChatId,UserId2_Info.id)
Redis:del(Gold..'raesaraha'..ChatId) 
Redis:del(Gold..'List_Saraha'..ChatId) 
Redis:del(Gold.."Witting_StartGameS"..ChatId)
Redis:del(Gold.."Start_Saraha"..ChatId)
local liiist = Redis:sismember(Gold..'List_Saraha'..ChatId,IdUser)
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ إضغـط لارسـال السـؤال 📬✦', url = 't.me/'..UserBot..'?start=saraha'..testsaraha..'from_id'..UserId2_Info.id}, 
},
}
}
return edit(ChatId,Msg_id,"*⇜ صارحني بسـرية تامـه 🤔⁉️*\n\n*⇜ تـم اختيـار ⇜(*  "..ls.."  *) \n⇜ وتـم اختيـار الفـائـز واخفـائـه 🥷\n⇜ لدى الفائـز فقـط ⇜ 5 اسئلـه*", 'md', true, false, reply_markup)
else
return bot.answerCallbackQuery(data.id, "⇜ الامـر للي بـدأ اللعبـه ...", true)
end
end
-----------------
if Text and Text:match('/Akab(.*)') then
local UserId = Text:match('/Akab(.*)')
if Redis:sismember(Gold..'List_Ahkamm'..ChatId,IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ انت منضـم مسبقـاً .. الـى اللعبـه", true)
end
bot.answerCallbackQuery(data.id, "✦ تم ضفتك للعبـة ⛓ ✓", true)
Redis:sadd(Gold..'List_Ahkamm'..ChatId,IdUser)
Redis:sadd(Gold..'members_Ahkamm'..ChatId,IdUser)
Redis:setex(Gold.."Witting_StartGamehh"..ChatId,1400,true)
end
if Text and Text:match('/Ahkam(.*)') then
local UserId = Text:match('/Ahkam(.*)')
if Redis:sismember(Gold..'List_Ahkam'..ChatId,IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ انت منضـم مسبقـاً .. الـى اللعبـه", true)
end
bot.answerCallbackQuery(data.id, "✦ تم ضفتك للعبـة 👩🏻‍⚖⚖ ✓", true)
Redis:sadd(Gold..'List_Ahkam'..ChatId,IdUser)
Redis:setex(Gold.."Witting_StartGameh"..ChatId,1400,true)
end
if Text and Text:match('/Korsy(.*)') then
local UserId = Text:match('/Korsy(.*)')
if Redis:sismember(Gold..'List_Korsi'..ChatId,IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ انت منضـم مسبقـاً .. الـى اللعبـه", true)
end
bot.answerCallbackQuery(data.id, "✦ تم ضفتك للعبـة ⛓ ✓", true)
Redis:sadd(Gold..'List_Korsi'..ChatId,IdUser)
Redis:setex(Gold.."Witting_StartGamek"..ChatId,1400,true)
end
if Text and Text:match('/Sarahy(.*)') then
local UserId = Text:match('/Sarahy(.*)')
if Redis:sismember(Gold..'List_Saraha'..ChatId,IdUser) then
return bot.answerCallbackQuery(data.id, "⇜ انت منضـم مسبقـاً .. الـى اللعبـه", true)
end
bot.answerCallbackQuery(data.id, "✦ تم ضفتك للعبـة ⛓ ✓", true)
Redis:sadd(Gold..'List_Saraha'..ChatId,IdUser)
Redis:setex(Gold.."Witting_StartGameS"..ChatId,1400,true)
end
-----------------
if Text and Text:match('(%d+)/startttahkam') and Redis:get(Gold.."Witting_StartGameh"..ChatId) then
local UserId = Text:match('(%d+)/startttahkam')
local rarahkam = Redis:get(Gold.."raeahkam"..ChatId)
if tonumber(IdUser) ~= tonumber(rarahkam) then
return bot.answerCallbackQuery(data.id, "⇜ الامـر للي بـدأ اللعبـه ...", true)
else
local list = Redis:smembers(Gold..'List_Ahkam'..ChatId) 
local UserName = list[math.random(#list)]
local UserId_Info = bot.getUser(UserName)
if UserId_Info.username and UserId_Info.username ~= "" then
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
else
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
end
Redis:set(Gold.."kk_Ahkam"..ChatId,UserId_Info.id)
Redis:srem(Gold..'List_Ahkam'..ChatId,UserId_Info.id) 
local User2Name = list[math.random(#list)]
local UserId2_Info = bot.getUser(User2Name)
if UserId2_Info.username and UserId2_Info.username ~= "" then
Hs = '['..UserId2_Info.first_name..'](tg://user?id='..User2Name..')'
else
Hs = '['..UserId2_Info.first_name..'](tg://user?id='..User2Name..')'
end
Redis:set(Gold.."ff_Ahkam"..ChatId,UserId2_Info.id)
Redis:incrby(Gold..'Num:Add:Ahkam'..ChatId..UserId2_Info.id,5)
Redis:del(Gold..'raeahkam'..ChatId) 
Redis:del(Gold..'List_Ahkam'..ChatId) 
Redis:del(Gold.."Witting_StartGameh"..ChatId)
Redis:del(Gold.."Start_Ahkam"..ChatId)
local Gold = '*⚖┊تم إختيار الشخـص ⇜* '..ls..'\n*👩🏻‍⚖┊ليتـم الحكـم عليـه من قبـل ⇜* '..Hs..'\n\n*🎁┊وتم اضـافـة 5 نقـاط للحـاكـم*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url='http://t.me/'..chsource..''}},
}
local msg_idd = Msg_id/2097152/0.5
return https.request("https://api.telegram.org/bot"..Token..'/editMessageText?chat_id='..data.id..'&text='..URL.escape(Gold)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
-----------------
if Text and Text:match('(%d+)/help1') then
local UserId = Text:match('(%d+)/help1')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجـوع', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[*
『  اوامــر الادارة 💡🦾  』
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
- اوامــر الـرفـع والتنـزيـل
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
- رتب الإشـراف كالتالي 🎗 :

• رفع ↢ مشرف بكل الصلاحيات
• رفع - تنزيل ↢ مشرف
 • عدد الرتب ↢ احصائيات بالعدد
•  كشف الرتب ↢ احصائيات عام
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
- رتب الاولاد كالتالي 🙋🏻‍♂ :
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• رفع - تنزيل ↢ مالك اساسي
• رفع - تنزيل ↢ مالك
• رفع - تنزيل ↢ منشئ اساسي
• رفع - تنزيل ↢ منشئ
• رفع - تنزيل ↢ مدير
• رفع - تنزيل ↢ ادمن
• رفع - تنزيل ↢ مميز
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
- رتب البنات كالتالي 🙋🏻‍♀ :
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• رفع - تنزيل ↢ مالكه اساسيه
• رفع - تنزيل ↢ مالكه
• رفع - تنزيل ↢ منشئه اساسيه
• رفع - تنزيل ↢ منشئه
• رفع - تنزيل ↢ مديره
• رفع - تنزيل ↢ ادمونه
• رفع - تنزيل ↢ مميزه
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
- اوامــر القفــل الذكيــه
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• قفل - فتح ↢ امر حظر
• قفل - فتح ↢ امر كتم
• قفل - فتح ↢ امر رفع
• قفل - فتح ↢ امر تثبيت
• قفل - فتح ↢ امر همسه
• قفل - فتح ↢ امر اضف رد
• قفل - فتح ↢ امر مسح رد
• قفل - فتح ↢ امر تفعيل افتاري
• قفل - فتح ↢ امر تفعيل صورتي
• قفل - فتح ↢ امر تفعيل الايدي
• قفل - فتح ↢ امر تفعيل الايدي بالصوره
• تعطيل - تفعيل ↢ الحظر المحدود
• تعطيل - تفعيل ↢ الحظر - التقييد
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
- اوامــر المســح
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• مسح الكل
• المالكين الاساسيين
• المالكين
• المنشئين الاساسيين 
• المنشئين
• المدراء
• الادمنيه
• المميزين
• المالكات الاساسيات
• المالكات
• المنشئات الاساسيات
• المنشئات
• المديرات
• الادمونات
• المميزات
• مسح المحظورين
• مسح المكتومين
• مسح قائمه المنع
• مسح الردود
• مسح ردي
• مسح رده
• مسح ردود الاعضاء
• مسح الردود المتعدده
• مسح ردود الانلاين
• مسح الردود المميزه
• مسح الاوامر المضافه
• مسح + عدد
• مسح بالرد
• مسح الترحيب
• مسح القوانين
• مسح الرابط
• مسح رسائله
• مسح نقاطه
• مسح تعديلاته
• مسح الرتب
• مسح القوائم
• مسح نقاطي
• مسح رسائلي
• مسح جهاتي
• مسح سحكاتي
• مسح تفاعل الرتب
• مسح تفاعل
• مسح الميديا / امسح
• مسح الملصقات
• مسح الصوت
• مسح البصمات
• مسح الملفات
• مسح المتحركات
• مسح الصور
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
- اوامــر الحظـر - الكتـم - التقييـد
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• تقييد + الوقت
• حظر / الغاء حظر
• طرد
• كتم / الغاء كتم
• تقييد / الغاء تقييد
• رفع القيود
• منع بالرد
• طرد المحذوفين
• طرد البوتات
• كشف البوتات
*]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help2') then
local UserId = Text:match('(%d+)/help2')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجـوع', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[*
『  اوامــر القفـل والتعطيـل 💡🦾  』
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
- اوامـر القفـل
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• قفل - فتح ↢ الروابط
• قفل - فتح ↢ المعرفات
• قفل - فتح ↢ التاك
• قفل - فتح ↢ الشارحه
• قفل - فتح ↢ التثبيت
• قفل - فتح ↢ المتحركه
• قفل - فتح ↢ الشات
• قفل - فتح ↢ الصور
• قفل - فتح ↢ الملفات
• قفل - فتح ↢ البوتات
• قفل - فتح ↢ التكرار
• قفل - فتح ↢ الكلايش
• قفل - فتح ↢ الانلاين
• قفل - فتح ↢ الفيديو
• قفل - فتح ↢ السيلفي
• قفل - فتح ↢ الماركدوان
• قفل - فتح ↢ التوجيه
• قفل - فتح ↢ الاغاني
• قفل - فتح ↢ الصوت
• قفل - فتح ↢ الجهات
• قفل - فتح ↢ الاشعارات
• قفل - فتح ↢ السب
• قفل - فتح ↢ الاباحي
• قفل - فتح ↢ الوسائط
• قفل - فتح ↢ الانكليزيه
• قفل - فتح ↢ الفشار
• قفل - فتح ↢ الدخول
• قفل - فتح ↢ دخول الايران
• قفل - فتح ↢ الفارسيه
• قفل - فتح ↢ جمثون
• قفل - فتح ↢ التعديل
• قفل - فتح ↢ تعديل الميديا
• قفل - فتح ↢ التفليش
• قفل - فتح ↢ الحمايه
• قفل - فتح ↢ الدردشه
• قفل - فتح ↢ الكل
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
- اوامـر التعطيـل
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• تفعيل - تعطيل ↢ الترحيب
• تفعيل - تعطيل ↢ الردود
• تفعيل - تعطيل ↢ الرفع
• تفعيل - تعطيل ↢ الايدي
• تفعيل - تعطيل ↢ الحظر
• تفعيل - تعطيل ↢ البنك
• تفعيل - تعطيل ↢ التحميل
• تفعيل - تعطيل ↢ الرابط
• تفعيل - تعطيل ↢ اطردني
• تفعيل - تعطيل ↢ نزلني
• تفعيل - تعطيل ↢ الحمايه
• تفعيل - تعطيل ↢ المنشن
• تفعيل - تعطيل ↢ الايدي بالصوره
• تفعيل - تعطيل ↢  ايدي العضو
• تفعيل - تعطيل ↢ التحقق
• تفعيل - تعطيل ↢ الالعاب
• تفعيل - تعطيل ↢ الالعاب للمالكين
• تفعيل - تعطيل ↢ انذار
• تفعيل - تعطيل ↢ التحذير
• تفعيل - تعطيل ↢ انطق
• تفعيل - تعطيل ↢ صورتي/افتاري
• تفعيل - تعطيل ↢  اسمي
• تفعيل - تعطيل ↢  منشن
• تفعيل - تعطيل ↢  زوجني
• تفعيل - تعطيل ↢  البايو
• تفعيل - تعطيل ↢  الاقتباسات
• تفعيل - تعطيل ↢  الصوتيات
• تفعيل - تعطيل ↢ نداء المالك
• تفعيل - تعطيل ↢ المسح التلقائي
• تفعيل - تعطيل ↢ ردود الاعضاء
• تفعيل - تعطيل ↢ ردود البوت
• تفعيل - تعطيل ↢ البلاغات
• تفعيل - تعطيل ↢ القفل التلقائي
• تفعيل - تعطيل ↢ التاك التلقائي
• تفعيل - تعطيل ↢ الهمسه
• تفعيل - تعطيل ↢ اهمسلي
• تفعيل - تعطيل ↢ زاجل
• تفعيل - تعطيل ↢ شعر
• تفعيل - تعطيل ↢ التسليه
• تفعيل - تعطيل ↢ الحظر المحدود
• تفعيل - تعطيل ↢ الصيغ
• تفعيل - تعطيل ↢ انطق
• تفعيل - تعطيل ↢ متحركه
• تفعيل - تعطيل ↢ ميمز
• تفعيل - تعطيل ↢ ريمكس
• تفعيل - تعطيل ↢ صوره
• تفعيل - تعطيل ↢ انمي
• تفعيل - تعطيل ↢ فلم
• تفعيل - تعطيل ↢ مسلسل
• تفعيل - تعطيل ↢ رتب التسليه
• تفعيل - تعطيل ↢ امسح
• تفعيل - تعطيل ↢ المسح التلقائي
• تفعيل - تعطيل ↢ قول
• تفعيل - تعطيل ↢ حساب العمر
• تفعيل - تعطيل ↢ اغنيه
• تفعيل - تعطيل ↢ الشعار/التوحيد
• تفعيل - تعطيل ↢ التفاعل
• تفعيل - تعطيل ↢ نداء المالك
• تفعيل - تعطيل ↢ الاوامر
• تفعيل - تعطيل ↢ اكتموه
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
- اوامــر القفــل الذكيــه
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• قفل امر ↢ اسـم الامـر
• فتح امر ↢ اسـم الامـر
*]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help3') then
local UserId = Text:match('(%d+)/help3')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'لوحـة الفتـح / القفـل', data = IdUser..'/NoNextSeting'},
},
{
{text = 'لوحـة التفعيـل / التعطيـل', data = IdUser..'/listallAddorrem'},
},
{
{text = 'رجـوع', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[*
『  لوحـات التحكـم 💡🦾  』
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
- قوائـم ازرار القفــل والتعطيــل انـلايــن :
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
اختـر احـدى القوائـم للتحكـم بالاقفـال الخاصـه بالبـوت انـلايـن
*]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help5') then
local UserId = Text:match('(%d+)/help5')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجـوع', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[*
⎚┊قـائمـة اوامـــر الـتحـشيش 🌚😹
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
⇜ رفـع - تنزيـل / التـاك
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ كيكه  ←  الكيكـات
✦ عسل  ←  العسـل
✦ عروسه  ←  تاك للعروسات
✦ حات  ←  تاك للحات
✦ حاته  ←  تاك للحاتات
✦ صاك  ←  تاك للصاكين
✦ صاكه  ←  تاك للصاكات
✦ قلب  ←  تاك للقلوب
✦ مزه  ←  تاك للمزز
✦ ورع  ←  تاك للورعان
✦ صايع  ←  تاك للصيع
✦ قرد  ←  تاك للقرود
✦ حمار  ←  تاك للحمير
✦ مطي  ←  تاك للمطايه
✦ طلي  ←  الطليان
✦ خروف  ←  تاك للخرفان
✦ كلب  ←  تاك للكلاب
✦ زاحف  ←  تاك للزواحف
✦ غبي  ←  تاك للاغبياء
✦ خول  ←  الخولات
✦ زق  ←  تاك زق
✦ ملك  ←  الملوك
✦ ملكه  ←  الملكات
✦ تاج  ←  التيجان
✦ هطف  ←  قائمة الهطف
✦ زوجتي  ←  الزوجات
✦ بقره  ←  البقرات
✦ اثول  ←  الثولان
✦ جلب  ←  الجلاب
✦ لوكي  ←  اللوكيه
✦ ربح  ←  الرباح
✦ ربحه  ←  الربحات
✦ دبدوب  ←  الدببه
✦ دبدوبه  ←  الدبدوبات
✦ خادم  ←  الاخدام
✦ خادمه  ←  الخادمات
✦ كذاب  ←  الكذابين
✦ كذابه  ←  الكذابات
✦ خراط  ← الخراطين
✦ خراطه  ← الخراطات
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
⇜ اوامـر تحشيـش مطـوره
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ رفع - تنزيل  ←  قلبي
✦ قائمة قلبي
✦ انا قلب مين
✦ فرمت قلبي
✦ رفع - تنزيل  ←  وليدي
✦ ولادي
✦ انا وليد مين
✦ مسح ولادي
✦ رفع - تنزيل  ←  بنيتي
✦ بناتي
✦ انا بنت مين
✦ مسح بناتي
✦ رفع - تنزيل  ←  اخو
✦ اخواني
✦ انا اخو مين
✦ مسح اخواني
✦ رفع - تنزيل  ←  ضلع
✦ ضلوعي
✦ انا ضلع مين
✦ مسح ضلوعي
✦ رفع - تنزيل  ←  صديق
✦ اصدقائي
✦ انا صديق مين
✦ مسح اصدقائي
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
⇜ اوامـر النسب الجديـدة
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ نسبه الحب
✦ نسبه الكره
✦ نسبه الصداقه
✦ نسبه الرجوله ↢ بالـرد
✦ نسبه الانوثه ↢ بالـرد
✦ نسبه الذكاء ↢ بالـرد
✦ نسبه الغباء ↢ بالـرد
✦ نسبه الهنجمه ↢ بالـرد
✦ نسبه الدلع ↢ بالـرد
✦ نسبه الكذب ↢ بالـرد
✦ نسبه الخيانه ↢ بالـرد
✦ نسبه الغدر ↢ بالـرد
*]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/helpp6') then
local UserId = Text:match('(%d+)/helpp6')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجـوع', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[*
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
『  اوامــر الخدمـات والترفيـه 💡🦾  』
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ اليوتيوب🎞𝗬𝗼𝘂𝗧𝘂𝗯𝗲⇜ يوتيوب
✦ الاغانـي 🎶 ⇜ بحث + اسم الاغنيه
✦ الفيديـو 🎬 ⇜ فيديو + اسم المقطـع
✦ العـروض 🎞 ⇜ مسلسل - فلم
✦ ريمكسات اغـاني 🎵 ⇜ ريمكس
✦ بصمـات ميمـز 🦹🏻‍♂ ⇜ ميمز
✦ اشعـار صوتيـة 🎙 ⇜ شعر
✦ قـرآن كريـم 🕋 ⇜ سوره - قران
✦ رقيـة شرعيـة 🕋 ⇜ رقيه
✦ الاذكــار 🕋 ⇜ ذكر
✦ حـالات واتس قصيرة 🎬 ⇜ حالات
✦ ستوريات انمي 🎩 ⇜ ستوري
✦ معلومات عامة بالصور 👓 ⇜ معلومه
✦ حكم واقتباسات 🔖 ⇜ حكم
✦ اغـاني قصيـرة 🎶 ⇜ غنيلي
✦ رياكشن تحشيش 🤹🏻‍♂ ⇜ ري
✦ مقاطـع ايديت منوعـه 🎭 ⇜ ادت
✦ صور ولـد انمي 🧝🏻 ⇜ انمي ولد
✦ صـور بنـات انمي 🧝🏻‍♀ ⇜ انمي بنت
✦ صـور عشوائـي 🎇 ⇜ صوره
✦ متحـركـات عشوائـي 🎆 ⇜ متحركه
✦ افتـار بنـات تمبلـر 🧚‍♀ ⇜ افتار بنت
✦ افتـار بنـات تمبلـر 2🧚‍♀ ⇜ افتار ب
✦ افتـار بنات رماديه 🙋🏻‍♀ ⇜ رمادي بنت
✦ افتـار ولـد تمبلـر 🧚‍♀ ⇜ افتار و
✦ افتـار ولـد رمـاديه 🙋🏻‍♂ ⇜ رمادي ولد
✦ افتـار بيست بنـات 👯‍♀ ⇜ بيست بنت
✦ افتـار تطقيم حـب ❤️‍🔥 ⇜ تطقيم حب
✦ ثيمـات مميـزه 🎆 ⇜ ثيم
✦ سيارتي
✦ تقييم
✦ هذا منو ⇜ بالـرد
✦ انا مين
✦ ثنائي 
✦ نبذه - بايو
✦ لوكيت
✦ عبارات
✦ تحدي
✦ اقتباس - اقتباسات
✦ هيدرات - جداريات
✦ شخصيتي
✦ ايدت انمي
✦ اكتموه - بالرد
✦ شبيهي - شبيهتي
✦ شبيهه - شبيهته ⇜ بالـرد
✦ تتزوجيني ⇜ بالـرد
✦ زوجتي - زوجي
✦ زوجني - زوجيني
✦ طقس + اسم المدينة
✦ صلاة + اسم المدينة او الدولة ⦇ New ⦈
✦ افتاري - صورتي
✦ قيفات بنات ، عيال ، كيبوب
✦ قيفات قطط ، كوكسال ، انمي
✦ افتارات بنات ، عيال ، كيبوب
✦ افتارات رسم ، انمي ، سنمائيه
✦ افتارات كيبوب ، لاعبين ، فكتوري
*]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help4') then
local UserId = Text:match('(%d+)/help4')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ رجـوع ✦', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[*
『 اوامــر الوضــع والاضافــات💡🦾  』
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• اوامــر الاضـافــات كالتـالـي :
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ اضف امر
✦ حذف امر
✦ الاوامر المضافه
✦ مسح الاوامر المضافه

✦ اضف ميزه
✦ حذف ميزه
✦ الميزات
✦ حذف الميزات

✦ اضف قناه
✦ حذف قناه
✦ القناه المضافه

✦ استبدال كلمه
✦ الكلمات المستبدله
✦ مسح الكلمات المستبدله

✦ تحذير ← بالـرد
✦ انذار ← بالـرد
✦ انذار ← + يوزر
✦ بلاغ

✦ منع
✦ الغاء منع
✦ قائمه المنع
✦ مسح قائمه المنع
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• اوامــر وضــع المجـمـوعــة كالتـالـي :
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ ضع اسم + الاسـم
✦ ضع صوره
✦ ضع وصف
✦ مسح الوصف
✦ ضع ترحيب
✦ الترحيب
✦ مسح الترحيب
✦ ضع قوانين
✦ القوانين
✦ مسح القوانين
✦ ضع لقب + اللقب ← بالـرد
✦ ضع لقب + المعرف + اللقب
✦ ضع التكرار + عـدد

✦ ضع عدد التنظيف + عدد ← بالعدد وليس بالوقت

✦ ضع شعار + شعار التوحيد
✦ ضع توحيد + شعار التوحيد
✦ تعيين عدد الكتم + عـدد
✦ الشعار/التوحيد
✦ مسح التوحيد/مسح الشعار

✦ تثبيت
✦ الغاء تثبيت
✦ الغاء تثبيت الكل
✦ ضع لقب + اللقب
✦ تعيين الايدي
✦ مسح الايدي
✦ تغيير الايدي
✦ ضع قناتي + المعرف
✦ حذف قناتي
✦ قناتي

✓
*]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help6') then
local UserId = Text:match('(%d+)/help6')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'شروحـات الالعـاب', data = IdUser..'/gamesdes'},
},
{
{text = 'رجـوع', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[
*✦ قائمــة العــاب البــوت ⁦.🎳 𓌗*
ٴ★┉ ┉ ┉ ┉ ┉ ᴹᴬᵀᴿᴵˣ ┉  ┉ ┉ ┉ ┉★
✦ اكـثـر من 100 لعبـه مسليـه وجديـده 
ٴ★┉ ┉ ┉ ┉ ┉ ᴹᴬᵀᴿᴵˣ ┉  ┉ ┉ ┉ ┉★
✦ العـاب الانـلايـن 🕹  » بلاي
✦ البنـك الشهيـرة 🏦  » بنك
✦ أحكـام الشهيـره ⚖  » احكام
✦ النـوادي ⚽️  » نوادي
✦ المـزرعـة 🪵  » مزرعه
✦ لعبـة الصراحـه والغموض 🕳  » صراحه
✦ كرسـي الاعتـراف 🪑  » كرسي
✦ لعبـة عقــاب 🔪  » عقاب
✦ لعبـة الرعـب 🪬  » مريم
✦ لونك المفضل 💈  » الوان
✦ أعـلام الـدول 🚩  » اعلام
✦ عواصـم الـدول 🏭  » عواصم
✦ شخصيات ومشاهيـر 👨‍🎤  » مشاهير
✦ لعبة التحدي  » تحدي
✦ حجره - ورقه - مقص » حجره
✦ الـروليت بالمعرفـات » روليت
✦ الـروليت بالإنضمـام » الروليت
✦ لـو خيـروك  » خيرني
✦ لـو خيـروك بالصـور  » خيرني بالصور
✦ كـت تـويت  » كت
✦ كـت تـويت بالصـور  » كت صوره
✦ لعبـة الغـاز الذكـاء » لغز
✦ اسمـاء الحيوانـات » حيوانات
✦ تقـريب الصـور » زوم
✦ لعبـة الصـور » صوره
✦ المختـلـف » المختلف
✦ الامثــله » امثله
✦ العكــس » العكس
✦ الحــزوره » حزوره - حزر
✦ المعــانـي » معاني
✦ المـحيبـس » بات
✦ التخـميـن » خمن
✦ الاســرع » الاسرع - ترتيب
✦ السمـايـلات » سمايلات
✦ لعبـة اكمـل الجُمـله » جمل
✦ لعبـة الكلمـات » كلمات
✦ مسائـل رياضيـات » رياضيات
✦ معانـي كلمـات انكليزيـه » انكليزي
✦ لعبـة الحـظ » الحظ - حظي
✦ لعبـة اللغـة العربيـة » عربي
✦ اسئــله متنـوعـة » اسئله
✦ لعبـة اسئلـه دينيـة » دين
✦ لعبـة التفكيـك » تفكيك
ٴ★┉ ┉ ┉ ┉ ┉ ᴹᴬᵀᴿᴵˣ ┉  ┉ ┉ ┉ ┉★
*✦ متجـر الـرتب 💳🎖*
- لشـراء رتبه بالبوت مقابل نقاط الالعاب
← ❨ متجر الرتب ❩ لعـرض المتجـر
← ❨ شراء رتبه ❩ لشـراء رتبـه مقابـل نقـاط
← تفعيل / تعطيل ❨ متجر الرتب ❩
ٴ★┉ ┉ ┉ ┉ ┉ ᴹᴬᵀᴿᴵˣ ┉  ┉ ┉ ┉ ┉★
✦ نقاطي ← لعـرض عـدد نقـاطك
✦ بيع نقاطي + { العدد }
كل نقطه مقابل (50) رساله
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help7') then
local UserId = Text:match('(%d+)/help7')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'شروحـات الالعـاب', data = IdUser..'/gamesdes'},
},
{
{text = 'رجـوع', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[
*✦ قائمــة العــاب البــوت ⁦.🎳 𓌗*
ٴ★┉ ┉ ┉ ┉ ┉ ᴹᴬᵀᴿᴵˣ ┉  ┉ ┉ ┉ ┉★
✦ اكـثـر من 100 لعبـه مسليـه وجديـده 
ٴ★┉ ┉ ┉ ┉ ┉ ᴹᴬᵀᴿᴵˣ ┉  ┉ ┉ ┉ ┉★
✦ العـاب الانـلايـن 🕹  » بلاي
✦ البنـك الشهيـرة 🏦  » بنك
✦ أحكـام الشهيـره ⚖  » احكام
✦ النـوادي ⚽️  » نوادي
✦ المـزرعـة 🪵  » مزرعه
✦ لعبـة الصراحـه والغموض 🕳  » صراحه
✦ كرسـي الاعتـراف 🪑  » كرسي
✦ لعبـة عقــاب 🔪  » عقاب
✦ لعبـة الرعـب 🪬  » مريم
✦ لونك المفضل 💈  » الوان
✦ أعـلام الـدول 🚩  » اعلام
✦ عواصـم الـدول 🏭  » عواصم
✦ شخصيات ومشاهيـر 👨‍🎤  » مشاهير
✦ لعبة التحدي  » تحدي
✦ حجره - ورقه - مقص » حجره
✦ الـروليت بالمعرفـات » روليت
✦ الـروليت بالإنضمـام » الروليت
✦ لـو خيـروك  » خيرني
✦ لـو خيـروك بالصـور  » خيرني بالصور
✦ كـت تـويت  » كت
✦ كـت تـويت بالصـور  » كت صوره
✦ لعبـة الغـاز الذكـاء » لغز
✦ اسمـاء الحيوانـات » حيوانات
✦ تقـريب الصـور » زوم
✦ لعبـة الصـور » صوره
✦ المختـلـف » المختلف
✦ الامثــله » امثله
✦ العكــس » العكس
✦ الحــزوره » حزوره - حزر
✦ المعــانـي » معاني
✦ المـحيبـس » بات
✦ التخـميـن » خمن
✦ الاســرع » الاسرع - ترتيب
✦ السمـايـلات » سمايلات
✦ لعبـة اكمـل الجُمـله » جمل
✦ لعبـة الكلمـات » كلمات
✦ مسائـل رياضيـات » رياضيات
✦ معانـي كلمـات انكليزيـه » انكليزي
✦ لعبـة الحـظ » الحظ - حظي
✦ لعبـة اللغـة العربيـة » عربي
✦ اسئــله متنـوعـة » اسئله
✦ لعبـة اسئلـه دينيـة » دين
✦ لعبـة التفكيـك » تفكيك
ٴ★┉ ┉ ┉ ┉ ┉ ᴹᴬᵀᴿᴵˣ ┉  ┉ ┉ ┉ ┉★
*✦ متجـر الـرتب 💳🎖*
- لشـراء رتبه بالبوت مقابل نقاط الالعاب
← ❨ متجر الرتب ❩ لعـرض المتجـر
← ❨ شراء رتبه ❩ لشـراء رتبـه مقابـل نقـاط
← تفعيل / تعطيل ❨ متجر الرتب ❩
ٴ★┉ ┉ ┉ ┉ ┉ ᴹᴬᵀᴿᴵˣ ┉  ┉ ┉ ┉ ┉★
✦ نقاطي ← لعـرض عـدد نقـاطك
✦ بيع نقاطي + { العدد }
كل نقطه مقابل (50) رساله
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/gamesdes') then
local UserId = Text:match('(%d+)/gamesdes')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'العـاب الانـلايـن', data = IdUser..'/gamesmtor'}, {text = 'لعبـة البنـك 🏦', data = IdUser..'/helpts'},
},
{
{text = 'لعبـة نوادي ⚽️', data = IdUser..'/noady'}, {text = 'لعبـة المزرعـة 🪵', data = IdUser..'/farmer'},
},
{
{text = 'رجوع', data = IdUser..'/help6'},
},
}
}
local TextHelp = [[*
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• شروحـات بعـض العـاب البـوت المحدثـه كليـاً :
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ لعبـة صارحني بسـريه تامـه 🤔⁉️
- لعبـه ممطـروقـه وحصـريه ازرار انلاين واخفـاء الفائـز واسئلـه على شكـل همسـات مجهـولة الهويـه عبـر البوت
← ❨ صارحني ❩ لبـدء اللعبـه
← ❨ زر الانضمام ❩ للانضمـام
← ❨ ازرار اللاعبين ❩ لعـرض المنضميـن
← ❨ زر البـدء ❩ لبـدء القرعـة والاختيار
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ لعبـة كرسـي الإعتـراف 🪑💡
- لعبـه ممطـروقـه وحصـريه ازرار انلاين واسئلـه على شكـل همسـات مكشوفة الهويـه عبـر البوت
← ❨ كرسي ❩ لبـدء اللعبـه
← ❨ زر الانضمام ❩ للانضمـام
← ❨ ازرار اللاعبين ❩ لعـرض المنضميـن
← ❨ زر البـدء ❩ لبـدء القرعـة والاختيار
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ لعبـة أحكـام الشهيـرة 👩🏻‍⚖⚖
- لعبـه ممطـروقـه وحصـريه بـ ازرار انضمـام انلايـن
← ❨ احكام ❩ لبـدء اللعبـه
← ❨ زر الانضمام ❩ للانضمـام
← ❨ ازرار اللاعبين ❩ لعـرض المنضميـن
← ❨ زر البـدء ❩ لبـدء القرعـة والاختيار
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ لعبـة النـوادي (الكـرة) ⚽️🏆
- لعبـه محدثـه وحصـريه لـ انشـاء نادي كـرة قدم
والتنافس مع اصدقائك في المجموعـات ⛹🏻‍♂
← ❨ النادي ❩ لـ عـرض اوامـر اللعبـه
← ❨ انشاء نادي + اسم ❩ لبـدء اللعبـه
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ متجـر الـرتب 💳🎖
- لشـراء رتبه بالبوت مقابل نقاط الالعاب
← ❨ متجر الرتب ❩ لعـرض المتجـر
← ❨ شراء رتبه ❩ لشـراء رتبـه مقابـل نقـاط
← تفعيل / تعطيل ❨ متجر الرتب ❩
*]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help8') then
local UserId = Text:match('(%d+)/help8')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ رجـوع ✦', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[*
『 اوامــر الــردود والـهمسـات 💡🦾  』
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• اوامــر الــردود كالتـالـي :
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ اضف رد
✦ مسح رد
✦ الردود
✦ مسح الردود

✦ اضف ردي
✦ مسح ردي
✦ ردي
✦ ردود الاعضاء
✦ مسح ردود الاعضاء

✦ رده ← بالـرد
✦ حذف رده ← بالـرد
✦ حذف رده + يـوزر الشخص
✦ حذف رده + ايـدي الشخص

✦ اضف رد انلاين
✦ مسح رد انلاين
✦ ردود الانلاين
✦ مسح الردود الانلاين

✦ اضف رد مميز
✦ مسح رد مميز
✦ الردود المميزه
✦ مسح الردود المميزه

✦ اضف رد متعدد
✦ حذف رد متعدد
✦ الردود المتعدده
✦ مسح الردود المتعدده
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• اوامــر الهـمسـات كالتـالـي :
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ همسه ↢ بالــرد

✦ همسه ميديا ↢ بالــرد
- لـ اول مـرة ع بـوت حمـايـة ⦇ New ⦈

✦ @يوزرالبوت + الرسـالة + @يوزرالشخص
- لـ عمـل همسـه انـلايـن لـ شخـص

✦ اهمسلي
- لـ جعـل البـوت يقـوم بالهمـس لك

✦ زاجل
- لـ جعل البوت يقوم بهمسه عشوائيه لك ولـ شخـص آخـر عشوائياً
*]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help9') then
local UserId = Text:match('(%d+)/help9')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ رجـوع ✦', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[*
『 اوامــر التــاك والمنشــن 💡🦾  』
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• اوامــر التـاك كالتـالـي :
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ تاك ← تاك عـادي
✦ تاك ايموجي ← تاك سمـايـلات
✦ المتفائل ← تاك الشخصية المتفائلة
✦ تفعيل التاك التلقائي ← تاك عبارات تلقائي
✦ تاك عام / all / نداء ← تاك مـاركـادون
✦ نداء + نص ← تاك مـع النـص
✦ صـورة مـع نداء + نص ← تاك صـوره
✦ صيح + معــرف/ايـدي ← يزعجه خاص
✦ ثنائي اليوم
✦ صيحه ← بالــرد
✦ نادي ← بالــرد
✦ رزله - هينه
✦ بوسه
✦ رأيك بهذا
✦ رأيك بهاي
✦ انطي هديه
✦ اتفل - تفل
✦ اسم البوت + اتفل
✦ قتل - تخ
✦ تف
✦ قول + الكلمه
✦ انطق + نص
✦ انطقي + نص
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ المشرفين / تاك للمشرفين
✦ المالك
✦ نادي المطور
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ تاك غنيلي / تاك غ
✦ تاك شعر / تاك ش
✦ تاك ريمكس / تاك ر
✦ تاك ميمز / تاك م
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ نادي المطور
✦ الثانويين
✦ الثانويات
✦ المطورين
✦ المطورات
✦ المالكين الاساسيين
✦ المالكات الاساسيات
✦ المالكين
✦ المالكات
✦ المنشئين الاساسيين
✦ المنشئات الاساسيات
✦ المنشئين
✦ المنشئات
✦ المدراء
✦ المديرات
✦ الادمنيه
✦ الادمونات
✦ المميزين
✦ المميزات
✦ المحظورين
✦ المكتومين
✦ المقيدين
✦ المطرودين
✦ البوتات
✦ المحذوفين
✦ كشف القيود

✓
*]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/hellp10') then
local UserId = Text:match('(%d+)/hellp10')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '✦ رجـوع ✦', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[*
『 اوامــر التــوب تــرنـد 💡🦾  』
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• اوامــر قوائــم التــوب تــرنـد كالتـالـي :
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
✦ المتفاعلين
✦ تصفير المتفاعلين
✦ المتفاعلين اليوم
✦ تصفير المتفاعلين اليوم
✦ المتفاعلين عام
✦ ترند الكروبات
✦ تفاعل المجموعه
✦ تفاعل الرتب
✦ المعجبين
✦ المعجبين ← بالــرد
✦ ترند لايك

✦ صلاحياتي / صلاحياته
✦ تفاعلي / تفاعله
✦ يوزري / معرفي
✦ اسمي / ايديي
✦ رتبتي / رتبته / الرتبه
✦ جهاتي / جهاته
✦ رسائلي / رسائله
✦ لايكاتي/ المعجبين / المعجبين بالـرد
✦ بايو
✦ سحكاتي
✦ نقاطي

✓
*]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/hellp13') then
local UserId = Text:match('(%d+)/hellp13')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجـوع', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[*
『  تشغيــل الميـوزك فـي المكــالمـات 🎸🥁  』
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
البـوت يدعـم التشغيـل فـي المجمـوعـات والتشغيـل المباشـر فـي القنـوات ايضـاً

استمتـع بالموسيقـى بـدون تقطيـع للصـوت & قـوة في التشغيـل & والمزيـد مـن المميـزات
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
لـ تصفـح اوامـر الميـوزك ارسـل الامـر :
ميوزك
*]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/hellp12') then
local UserId = Text:match('(%d+)/hellp12')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجـوع', data = IdUser..'/helpall'},
},
}
}
local TextHelp = [[*
『  الذكــاء الاصطنــاعــي 💡🦾  』
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
اول بوت حماية يدعم الذكاء الاصطناعي ChatGpt 🔅

يتميز البوت عن بقية البوتات بدعمه لـ آخر اصدار من اصدارات الذكاء الاصطناعي
ChatGpt3.5-turbo 
الذي يتميز بـ :
- آخر اصدار ذكي ومحدث
- الإجابة على الأسئلة بشكل دقيق وسريع
- دعم جميع اللغات والمواضيع بما فيها اللغة العربية
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
كل ماعليك هو فقط ارسـال
بوت + سؤالك
*]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/hellp11') then
local UserId = Text:match('(%d+)/hellp11')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'قفـل الاوامـر بالـرتب 🧑🏻‍💻', data = IdUser..'/stlocker'},},
{{text = 'قفـل الخيانـه 🚷', data = IdUser..'/lockkh'}, {text = 'قفـل الاباحـي 🔞', data = IdUser..'/lockpor'},},
{{text = 'الاشعـارات الذكيـه 💡', data = IdUser..'/stnotfication'},},
{{text = 'رجوع', data = IdUser..'/help6'},},}}
local TextHelp = [[
*『  اوامــر المجـمـوعـة الذكيــه 💡  』*
ٴ*⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆*

❶- اوامــر القفـل الـذكيـه

❷- اوامــر قفـل الخيـانـه

❸- اوامــر قفـل الاباحـي

❹- اوامــر الاشـعـارات الـذكيـة


*• اختـر احـد الازرار بالاسفـل لـ التعـرف اكثـر عـلى احـدى هـذه الاوامــر الـذكيـه*
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/stlocker') then
local UserId = Text:match('(%d+)/stlocker')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'رجـوع', data = IdUser..'/hellp11'},},}}
local TextHelp = [[
ٴ*⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆*
- اوامــر القفــل الذكيــه
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• قفل امر ↢ اسـم الامـر
• فتح امر ↢ اسـم الامـر
ٴ*⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆*
*- ملاحظـه هامـه🔅*
امـر (قفـل امـر | فتـح امـر) يدعـم قفـل جميـع الاوامـر 🔐
الاوامـر لـ مالك المجموعـة او المالك الاساسي 👨🏻‍✈️
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lockpor') then
local UserId = Text:match('(%d+)/lockpor')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'رجـوع', data = IdUser..'/hellp11'},},}}
local TextHelp = [[
*『  قفـل الاباحـي الذكـي 🔞  』*
ٴ*⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆*
*• اضافه ممطروقه لـ البـوت
بحيث يتعـرف بدقـه ع جميع الوسائط الاباحيه وحذفهـا*

*- هناك طريقتان لـ قفـل الاباحـي كالتـالي :*

❶- *الامـر الاول (قفل الاباحي)*
سيتم منع اي ميديا اباحيه وحذفها واشعار المالك بالشخص المرسل
مع الابقاء ع بعض الاوامر بصوره مفتوحه في القروب


❷- *الامـر الثاني (تفعيل الحمايه 2)*
مشابه للامر الاول حيث يقوم بقفل الاباحي + قفل الايدي بالصوره واوامـر اخـرى يستخدمونها هكر القروبات لـ ارسال الاباحي مثل امر صورتي ... الخ

ٴ*⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆*
*هـذه الميـزه حصريه فقـط ع سـورس زلـزال 🔅*
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lockkh') then
local UserId = Text:match('(%d+)/lockkh')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'رجـوع', data = IdUser..'/hellp11'},},}}
local TextHelp = [[
*『  قفـل الخيانـه الذكـي 🔞  』*
ٴ*⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆*
*• يتميـز البـوت بمنـع المشـرف الخايـن من تصفيـر اعضـاء القـروب ويقـوم بتنزيلـه*

*- لكي يعمـل الامـر بشكـل صحيـح اتبـع التالـي :*

❶- *ارسـل (قفل الخيانه)*
لـ تفعيـل الامـر


❷- *قم بالتأكد ان البوت لديه جميع الصلاحيات 
وقم بتنزيـل جميـع مشرفيـن القـروب ورفعـهم اشـراف عبـر البـوت*
(رفع مشرف)
(رفع مشرف كامل الصلاحيات)
ٴ*⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆*
*- ملاحظـه هامـه🔅*
يجب رفـع المشرفيـن عبـر البـوت لكي يعمـل الامـر بشكـل صحيـح
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/stnotfication') then
local UserId = Text:match('(%d+)/stnotfication')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'رجـوع', data = IdUser..'/hellp11'},},}}
local TextHelp = [[*
『  اشعـارات المجمـوعـة الذكيـه 💡  』
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• لـ تفعيـل هـذه الميـزه اتبـع الخطـوات التاليـه :*

❶- قم بعمـل مجموعة جديدة 
❷- ارفع البوت مشرفاً فيها كامـل الصلاحيات
❸- قم بجلب ايـدي المجموعة
❹- ارجع للقروب الاساسي ثم ارسـل
(تفعيل الاشعارات الذكيه)
❺- ارسـل ايـدي قروب الاشعـارات


*• الوصـف :*
- مجموعة خاصه بالاشعارات والرقابه ع القـروب الاساسي

- لـ متابعـة المـالك لـ كـل مايجـري في مجموعته
من حظـر وكتـم ورفـع وتفليـش واشعـارات ٱخـرى
بدلاً من الاشعـارات التقليديـه داخـل القـروب

- يستطيـع المالك ايضـاً اضافة المشرفيـن فيهـا
حتى يكونون ع اطـلاع تام بكل مايجري في القـروب
في حال غياب المالك الاساسي
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
*هـذه الميـزه حصريه فقـط ع سـورس زلـزال 🔅*
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/helpmalk') then
local UserId = Text:match('(%d+)/helpmalk')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{{text="• إخفـاء القائمـة •",data="/HideChannelVip:"..IdUser}},
},
}
}
local TextHelp = [[*
『  اشعـارات المجمـوعـة الذكيـه 💡  』
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• لـ تفعيـل هـذه الميـزه اتبـع الخطـوات التاليـه :*

❶- قم بعمـل مجموعة جديدة 
❷- ارفع البوت مشرفاً فيها كامـل الصلاحيات
❸- قم بجلب ايـدي المجموعة
❹- ارجع للقروب الاساسي ثم ارسـل
(تفعيل الاشعارات الذكيه)
❺- ارسـل ايـدي قروب الاشعـارات


*• الوصـف :*
- مجموعة خاصه بالاشعارات والرقابه ع القـروب الاساسي

- لـ متابعـة المـالك لـ كـل مايجـري في مجموعته
من حظـر وكتـم ورفـع وتفليـش واشعـارات ٱخـرى
بدلاً من الاشعـارات التقليديـه داخـل القـروب

- يستطيـع المالك ايضـاً اضافة المشرفيـن فيهـا
حتى يكونون ع اطـلاع تام بكل مايجري في القـروب
في حال غياب المالك الاساسي
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
*هـذه الميـزه حصريه فقـط ع سـورس زلـزال 🔅*
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/helpall') then
local UserId = Text:match('(%d+)/helpall')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '❶', data = IdUser..'/help1'},{text = '❷', data = IdUser..'/help2'},{text = '❸', data = IdUser..'/help3'},{text = '❹', data = IdUser..'/help4'},{text = '❺', data = IdUser..'/help5'},
},
{
{text = '❻', data = IdUser..'/helpp6'},{text = '❼', data = IdUser..'/help7'},{text = '❽', data = IdUser..'/help8'},{text = '❾', data = IdUser..'/help9'},{text = '❿', data = IdUser..'/hellp10'},
},
{
{text = '⓫', data = IdUser..'/hellp11'},{text = '⓬', data = IdUser..'/hellp12'},{text = '⓭', data = IdUser..'/hellp13'},
},
}
}
local TextHelp = [[
*⎙┊يـوجـد ← 𝟙𝟛 قـائمــة فـي البــوت
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
 ⦇ ① ⦈  ←  اوامــر الإدارة & الـرتب
 ⦇ ② ⦈  ←  اوامــر القفـل والتعطيـل
 ⦇ ③ ⦈  ←  قوائــم القفــل / التعطيـل
 ⦇ ④ ⦈  ←  اوامــر الوضــع والاضـافـات
 ⦇ ⑤ ⦈  ←  اوامــر التسليـه والتحشيش
 ⦇ ⑥ ⦈  ←  اوامــر الخدمـات والتـرفيـه
 ⦇ ⑦ ⦈  ←  اوامــر الالعــاب
 ⦇ ⑧ ⦈  ←  اوامــر الـــردود والهـمسـات
 ⦇ ⑨ ⦈  ←  اوامــر التـاك والمنشــن
 ⦇ ⑩ ⦈  ←  اوامــر التــوب تــرنـد
 ⦇ ⑪ ⦈  ←  اوامــر الحـمـاية الـذكـيــه
 ⦇ ⑫ ⦈  ←  اوامــر الذكــاء الاصطنــاعـي
 ⦇ ⑬ ⦈  ←  اوامــر الميـوزك فـي المكالمـات
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
⭐┊لـ تقييـم اداء البـوت ارسـل ← تقييم
*
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/helpts') then
local UserId = Text:match('(%d+)/helpts')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجوع', data = IdUser..'/help6'},
},
}
}
local TextHelp = [[*
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
• اوامــر لعبــة البنــك
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
⌯ انشاء حساب بنكي  ↢ تسوي حساب وتقدر تحول فلوس مع مزايا ثانيه

⌯ مسح حساب بنكي  ↢ تلغي حسابك البنكي

⌯ تحويل ↢ تطلب رقم حساب الشخص وتحول له فلوس

⌯ حسابي  ↢ يطلع لك رقم حسابك عشان تعطيه للشخص اللي بيحول لك

⌯ فلوسي ↢ يعلمك كم فلوسك

⌯ راتب ↢ يعطيك راتب كل ١٠ دقائق

⌯ بخشيش ↢ يعطيك بخشيش كل ١٠ دقايق

⌯ رشوة ↢ يعطيك رشوة كل ١٠ دقايق

⌯ زرف ↢ تزرف فلوس اشخاص كل ١٠ دقايق

⌯ شرطه ↢ فيك تبلغ الشرطه عن اي حدا زرفك

⌯ استثمار ↢ تستثمر بالمبلغ اللي تبيه مع نسبة ربح مضمونه من ١٪؜ الى ١٥٪؜

⌯ استثمار فلوسي ↢ تستثمر فلوسك كامل مع نسبة ربح مضمونه من ١٪؜ الى ١٥٪؜

⌯ حظ ↢ تلعبها بأي مبلغ ياتدبله ياتخسره انت وحظك

⌯ مضاربه ↢ تضارب بأي مبلغ تبيه والنسبة من ٩٠٪؜ الى -٩٠٪؜ انت وحظك

⌯ هجوم ↢ تهجم عالخصم مع زيادة نسبة كل هجوم

⌯ كنز ↢ يعطيك كنز بسعر مختلف انتا وحظك

⌯ مراهنه ↢ تحط مبلغ وتراهن عليه

⌯ توب الفلوس ↢ يطلع توب اكثر ناس معهم فلوس بكل القروبات

⌯ توب الحراميه ↢ يطلع لك اكثر ناس زرفوا

⌯ زواج  ↢ تكتبه بالرد على رسالة شخص مع المهر ويزوجك

⌯ زواجي  ↢ يطلع وثيقة زواجك اذا متزوج

⌯ طلاق ↢ يطلقك اذا متزوج

⌯ خلع  ↢ يخلع زوجك ويرجع له المهر

⌯ زواجات ↢ يطلع اغلى ٣٠ زواجات

⌯ ترتيبي ↢ يطلع ترتيبك باللعبة

⌯ ميدالياتي ↢ لـ عرض مستواك والميداليات التي ربحتها

⌯ المعرض ↢ يمديك تشتري سيارات وعقارات وكثير اشياء

⌯ ممتلكاتي ↢ يطلع لك مشترياتك من المعرض

⌯ تبرع ↢ تتبرع الى افقر اللاعبين

⌯ بناء مزرعه ↢ تبني مزرعتك وتزرع وتحصد خضار

⌯ لعبه الكره ↢ تنشئ ناديك وتشتري لاعبين وتنافس الخصم
*]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/noady') then
local UserId = Text:match('(%d+)/noady')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجوع', data = IdUser..'/help6'},
},
}
}
local TextHelp = [[
ٴ*⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆*
*☆ اوامـر لعبـة النـوادي (الكـرة) ⚽️🏆*
*☆ إضغــط علـى الامــر لـ النســخ 💡*
ٴ*⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆*
⌯ `انشاء نادي` + الاسم
*↢ تسوي نادي وتقدر تلعب مباريات مع اصحابك*

⌯ `مسح ناديي`
*↢ تمسح ناديك*

⌯ `ناديي`
*↢ يطلع لك اسم ناديك ومعلومات عنه*

⌯ `تدريب`
*↢ يعطيك طاقه كل 20 دقيقة*

⌯ `مباره وديه`
*↢ تلعب مباره وديه مع نادي في فوز ، خساره او تعادل؜*

⌯ `مباره`
*↢ بالرد تلعب مع شخص مباره في فوز ، تعادل او خساره الاقوى راح يفوز*

⌯ `شراء لاعب`
*↢ تشتري لاعب لناديك*

⌯ `بيع لاعب`
*↢ تبيع لاعب من ناديك*

⌯ `تغيير لقب النادي`
*↢ يغير لقب ناديك*

⌯ `توب النوادي`
*↢ اعلى 10 نوادي باللعبة*
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/farmer') then
local UserId = Text:match('(%d+)/farmer')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'رجوع', data = IdUser..'/help6'},
},
}
}
local TextHelp = [[
ٴ*⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆*
*☆ اوامــر لـعبــة المـزرعـة 🌲🪵👨🏻‍🌾*
ٴ*⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆*
*⇜ فقـط اضغـط عـلى الامـر لـ النسـخ :*

⌯ `انشاء مزرعه`  *↢  لـ انشـاء مـزرعتـك الخاصـه بـك*

⌯ `مزرعتي`  *↢  لـ عـرض مـزرعتـك*

⌯ `مزرعته`  *↢  بالـرد لـ عـرض مـزرعـة الشخـص*

⌯ `مسح مزرعتي`  *↢  لـ مسـح مـزرعتـك*

⌯ `توب المزارع` *↢  لـ عـرض قائمـة ترتيب المـزارع في البـوت*

*⇜ طريقـة الـزراعـة كالتالـي :*
⌯ `زراعه بندوره` + العـدد
⌯ `زراعه خيار` + العـدد
⌯ `زراعه فريز` + العـدد
⌯ `زراعه فليفله` + العـدد
⌯ `زراعه خس` + العـدد
⌯ `زراعه جزر` + العـدد
⌯ `زراعه بطاطا` + العـدد
⌯ `زراعه شجر تفاح` + العـدد
⌯ `زراعه شجر موز` + العـدد
⌯ `زراعه شجر مانجا` + العـدد
⌯ `زراعه شجر زيتون` + العـدد
⌯ `زراعه شجر عنب` + العـدد

*⇜ طريقـة حصـاد المـزروعـات كالتالـي :*
⌯ `حصد بندوره`
⌯ `حصد خيار`
⌯ `حصد فريز`
⌯ `حصد فليفله`
⌯ `حصد خس`
⌯ `حصد جزر`
⌯ `حصد بطاطا`
⌯ `حصد شجر تفاح`
⌯ `حصد شجر موز`
⌯ `حصد شجر مانجا`
⌯ `حصد شجر زيتون`
⌯ `حصد شجر عنب`

*⇜ المـزروعـات واسعـارهـا :*
- بطاطا : 75 ﷼ 💵
- بندوره : 100 ﷼ 💵
- خس : 125 ﷼ 💵
- خيار : 150 ﷼ 💵
- جزر : 175 ﷼ 💵
- فليفله : 200 ﷼ 💵
- فريز : 300 ﷼ 💵
- ذره : 400 ﷼ 💵
- ثوم : 500 ﷼ 💵
- فطر : 800 ﷼ 💵
- شجره تفاح : 1000 ﷼ 💵
- شجره عنب : 1250 ﷼ 💵
- شجره زيتون : 1500 ﷼ 💵
- شجره موز : 2000 ﷼ 💵
- شجره مانجا : 3000 ﷼ 💵

*⇜ مثـال طـريقـة الزراعـة :*
- زراعه بطاطا 10
- زراعه شجر موز 15

*⇜ مـلاحـظـه هـامـه 🧧:*
في حال اردت وصـول مزرعتـك لـ تـوب المـزارع 🥇
قم بـ زرع مزروعـات اكثـر 🏝
]]
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)toar') then
local UserId = Text:match('(%d+)toar')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
local TextHelp = [[*
⌯︙ارسل النص لترجمته الى العربيه
*]]
Redis:set(Gold.."toar"..IdUser,"on")
bot.editMessageText(ChatId,msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)toen') then
local UserId = Text:match('(%d+)toen')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
local TextHelp = [[*
⌯︙ارسل النص لترجمته الى الانجليزيه
*]]
Redis:set(Gold.."toen"..IdUser,"on")
bot.editMessageText(ChatId,msg_id,TextHelp, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/lock_link') then
local UserId = Text:match('(%d+)/lock_link')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Link"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الروابط").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_spam') then
local UserId = Text:match('(%d+)/lock_spam')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Spam"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الكلايش").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_keypord') then
local UserId = Text:match('(%d+)/lock_keypord')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Keyboard"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الكيبورد").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_voice') then
local UserId = Text:match('(%d+)/lock_voice')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:vico"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الاغاني").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gif') then
local UserId = Text:match('(%d+)/lock_gif')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Animation"..ChatId,"del")
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل المتحركات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_files') then
local UserId = Text:match('(%d+)/lock_files')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Document"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الملفات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_text') then
local UserId = Text:match('(%d+)/lock_text')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:text"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الشات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_video') then
local UserId = Text:match('(%d+)/lock_video')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Video"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الفيديو").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_photo') then
local UserId = Text:match('(%d+)/lock_photo')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Photo"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الصور").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_username') then
local UserId = Text:match('(%d+)/lock_username')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:User:Name"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل المعرفات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_tags') then
local UserId = Text:match('(%d+)/lock_tags')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:hashtak"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التاك").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_bots') then
local UserId = Text:match('(%d+)/lock_bots')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Bot:kick"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل البوتات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fwd') then
local UserId = Text:match('(%d+)/lock_fwd')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:forward"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التوجيه").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_audio') then
local UserId = Text:match('(%d+)/lock_audio')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Audio"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الصوت").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_stikear') then
local UserId = Text:match('(%d+)/lock_stikear')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Sticker"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الملصقات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_phone') then
local UserId = Text:match('(%d+)/lock_phone')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Contact"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الجهات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_joine') then
local UserId = Text:match('(%d+)/lock_joine')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Join"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الدخول").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_addmem') then
local UserId = Text:match('(%d+)/lock_addmem')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:AddMempar"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الاضافه").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videonote') then
local UserId = Text:match('(%d+)/lock_videonote')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Unsupported"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل بصمة الفيديو").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_pin') then
local UserId = Text:match('(%d+)/lock_pin')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:lockpin"..ChatId,(bot.getChatPinnedMessage(ChatId).id or true)) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التثبيت").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_tgservir') then
local UserId = Text:match('(%d+)/lock_tgservir')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:tagservr"..ChatId,true)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الاشعارات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_markdaun') then
local UserId = Text:match('(%d+)/lock_markdaun')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Markdaun"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الماركدون").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_edits') and (data.Originators or data.Origimators) then
local UserId = Text:match('(%d+)/lock_edits')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:edit"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التعديل").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_games') then
local UserId = Text:match('(%d+)/lock_games')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:geam"..ChatId,"del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الالعاب").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_flood') then
local UserId = Text:match('(%d+)/lock_flood')
if tonumber(IdUser) == tonumber(UserId) then
Redis:hset(Gold.."Gold:Spam:Group:User"..ChatId ,"Spam:User","del")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التكرار").Lock, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/lock_linkkid') then
local UserId = Text:match('(%d+)/lock_linkkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Link"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الروابط").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_spamkid') then
local UserId = Text:match('(%d+)/lock_spamkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Spam"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الكلايش").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_keypordkid') then
local UserId = Text:match('(%d+)/lock_keypordkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Keyboard"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الكيبورد").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_voicekid') then
local UserId = Text:match('(%d+)/lock_voicekid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:vico"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الاغاني").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gifkid') then
local UserId = Text:match('(%d+)/lock_gifkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Animation"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل المتحركات").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fileskid') then
local UserId = Text:match('(%d+)/lock_fileskid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Document"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الملفات").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videokid') then
local UserId = Text:match('(%d+)/lock_videokid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Video"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الفيديو").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_photokid') then
local UserId = Text:match('(%d+)/lock_photokid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Photo"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الصور").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_usernamekid') then
local UserId = Text:match('(%d+)/lock_usernamekid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:User:Name"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل المعرفات").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_tagskid') then
local UserId = Text:match('(%d+)/lock_tagskid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:hashtak"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التاك").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fwdkid') then
local UserId = Text:match('(%d+)/lock_fwdkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:forward"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التوجيه").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_audiokid') then
local UserId = Text:match('(%d+)/lock_audiokid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Audio"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الصوت").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_stikearkid') then
local UserId = Text:match('(%d+)/lock_stikearkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Sticker"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الملصقات").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_phonekid') then
local UserId = Text:match('(%d+)/lock_phonekid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Contact"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الجهات").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videonotekid') then
local UserId = Text:match('(%d+)/lock_videonotekid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Unsupported"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل بصمة الفيديو").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_markdaunkid') then
local UserId = Text:match('(%d+)/lock_markdaunkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Markdaun"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الماركدون").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gameskid') then
local UserId = Text:match('(%d+)/lock_gameskid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:geam"..ChatId,"ked")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الالعاب").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_floodkid') then
local UserId = Text:match('(%d+)/lock_floodkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:hset(Gold.."Gold:Spam:Group:User"..ChatId ,"Spam:User","keed")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التكرار").lockKid, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/lock_linkktm') then
local UserId = Text:match('(%d+)/lock_linkktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Link"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الروابط").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_spamktm') then
local UserId = Text:match('(%d+)/lock_spamktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Spam"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الكلايش").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_keypordktm') then
local UserId = Text:match('(%d+)/lock_keypordktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Keyboard"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الكيبورد").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_voicektm') then
local UserId = Text:match('(%d+)/lock_voicektm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:vico"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الاغاني").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gifktm') then
local UserId = Text:match('(%d+)/lock_gifktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Animation"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل المتحركات").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_filesktm') then
local UserId = Text:match('(%d+)/lock_filesktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Document"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الملفات").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videoktm') then
local UserId = Text:match('(%d+)/lock_videoktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Video"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الفيديو").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_photoktm') then
local UserId = Text:match('(%d+)/lock_photoktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Photo"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الصور").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_usernamektm') then
local UserId = Text:match('(%d+)/lock_usernamektm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:User:Name"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل المعرفات").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_tagsktm') then
local UserId = Text:match('(%d+)/lock_tagsktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:hashtak"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التاك").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fwdktm') then
local UserId = Text:match('(%d+)/lock_fwdktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:forward"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التوجيه").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_audioktm') then
local UserId = Text:match('(%d+)/lock_audioktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Audio"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الصوت").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_stikearktm') then
local UserId = Text:match('(%d+)/lock_stikearktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Sticker"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الملصقات").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_phonektm') then
local UserId = Text:match('(%d+)/lock_phonektm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Contact"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الجهات").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videonotektm') then
local UserId = Text:match('(%d+)/lock_videonotektm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Unsupported"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل بصمة الفيديو").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_markdaunktm') then
local UserId = Text:match('(%d+)/lock_markdaunktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Markdaun"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الماركدون").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gamesktm') then
local UserId = Text:match('(%d+)/lock_gamesktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:geam"..ChatId,"ktm")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الالعاب").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_floodktm') then
local UserId = Text:match('(%d+)/lock_floodktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:hset(Gold.."Gold:Spam:Group:User"..ChatId ,"Spam:User","mute")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التكرار").lockKtm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/lock_linkkick') then
local UserId = Text:match('(%d+)/lock_linkkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Link"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الروابط").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_spamkick') then
local UserId = Text:match('(%d+)/lock_spamkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Spam"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الكلايش").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_keypordkick') then
local UserId = Text:match('(%d+)/lock_keypordkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Keyboard"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الكيبورد").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_voicekick') then
local UserId = Text:match('(%d+)/lock_voicekick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:vico"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الاغاني").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gifkick') then
local UserId = Text:match('(%d+)/lock_gifkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Animation"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل المتحركات").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fileskick') then
local UserId = Text:match('(%d+)/lock_fileskick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Document"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الملفات").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videokick') then
local UserId = Text:match('(%d+)/lock_videokick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Video"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الفيديو").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_photokick') then
local UserId = Text:match('(%d+)/lock_photokick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Photo"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الصور").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_usernamekick') then
local UserId = Text:match('(%d+)/lock_usernamekick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:User:Name"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل المعرفات").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_tagskick') then
local UserId = Text:match('(%d+)/lock_tagskick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:hashtak"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التاك").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fwdkick') then
local UserId = Text:match('(%d+)/lock_fwdkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:forward"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التوجيه").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_audiokick') then
local UserId = Text:match('(%d+)/lock_audiokick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Audio"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الصوت").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_stikearkick') then
local UserId = Text:match('(%d+)/lock_stikearkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Sticker"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الملصقات").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_phonekick') then
local UserId = Text:match('(%d+)/lock_phonekick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Contact"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الجهات").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videonotekick') then
local UserId = Text:match('(%d+)/lock_videonotekick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Unsupported"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل بصمة الفيديو").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_markdaunkick') then
local UserId = Text:match('(%d+)/lock_markdaunkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:Markdaun"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الماركدون").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gameskick') then
local UserId = Text:match('(%d+)/lock_gameskick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:geam"..ChatId,"kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الالعاب").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_floodkick') then
local UserId = Text:match('(%d+)/lock_floodkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:hset(Gold.."Gold:Spam:Group:User"..ChatId ,"Spam:User","kick")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل التكرار").lockKick, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/unmute_link') then
local UserId = Text:match('(%d+)/unmute_link')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Status:Link"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الرابط").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_welcome') then
local UserId = Text:match('(%d+)/unmute_welcome')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Status:Welcome"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الترحيب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_Id') then
local UserId = Text:match('(%d+)/unmute_Id')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Status:Id"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الايدي").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_IdPhoto') then
local UserId = Text:match('(%d+)/unmute_IdPhoto')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Status:IdPhoto"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الايدي بالصوره").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_ryple') then
local UserId = Text:match('(%d+)/unmute_ryple')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Status:Reply"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الردود").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_ryplesudo') then
local UserId = Text:match('(%d+)/unmute_ryplesudo')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Status:ReplySudo"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الردود عام").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/zilzal_zizo') then
local UserId = Text:match('(%d+)/zilzal_zizo')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Gold:iraqq"..ChatId) 
Redis:del(Gold.."Gold:Gold:yemenn"..ChatId) 
Redis:del(Gold.."Gold:Gold:egibtt"..ChatId) 
Redis:del(Gold.."Gold:Gold:syriaa"..ChatId) 
Redis:del(Gold.."Gold:Gold:ksaa"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '•✦| 𝙱𝙰𝙲𝙺 |✦•', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيـل ردود البـوت .. بنجـاح ✓").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_setadmib') then
local UserId = Text:match('(%d+)/unmute_setadmib')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Status:SetId"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الرفع").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_kickmembars') then
local UserId = Text:match('(%d+)/unmute_kickmembars')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Status:BanId"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل ( الطرد - الحظر)").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_games') then
local UserId = Text:match('(%d+)/unmute_games')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Status:Games"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل الالعاب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_kickme') then
local UserId = Text:match('(%d+)/unmute_kickme')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Status:KickMe"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تعطيل اطردني").unLock, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/mute_link') then
local UserId = Text:match('(%d+)/mute_link')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Status:Link"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الرابط").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_welcome') then
local UserId = Text:match('(%d+)/mute_welcome')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Status:Welcome"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الترحيب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_Id') then
local UserId = Text:match('(%d+)/mute_Id')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Status:Id"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الايدي").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_IdPhoto') and (data.TheBasics or data.TheMasics) then
local UserId = Text:match('(%d+)/mute_IdPhoto')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Status:IdPhoto"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الايدي بالصوره").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_ryple') then
local UserId = Text:match('(%d+)/mute_ryple')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Status:Reply"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الردود").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_ryplesudo') then
local UserId = Text:match('(%d+)/mute_ryplesudo')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Status:ReplySudo"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الردود عام").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_ryplesudo') then
local UserId = Text:match('(%d+)/mute_ryplesudo')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Status:ReplySudo"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '•✦| 𝙱𝙰𝙲𝙺 |✦•', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيـل الـردود العـامـه .. بنجـاح ✓").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Gold_iraq') then
local UserId = Text:match('(%d+)/Gold_iraq')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Gold:iraqq"..ChatId,true) 
Redis:del(Gold.."Gold:Gold:yemenn"..ChatId) 
Redis:del(Gold.."Gold:Gold:egibtt"..ChatId) 
Redis:del(Gold.."Gold:Gold:syriaa"..ChatId) 
Redis:del(Gold.."Gold:Gold:ksaa"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '•✦| 𝙱𝙰𝙲𝙺 |✦•', data =UserId..'/'.. 'listallRodood'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل ردود البوت ع اللهجـه العـراقيـة ✓").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Gold_yemen') then
local UserId = Text:match('(%d+)/Gold_yemen')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Gold:yemenn"..ChatId,true) 
Redis:del(Gold.."Gold:Gold:iraqq"..ChatId) 
Redis:del(Gold.."Gold:Gold:egibtt"..ChatId) 
Redis:del(Gold.."Gold:Gold:syriaa"..ChatId) 
Redis:del(Gold.."Gold:Gold:ksaa"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '•✦| 𝙱𝙰𝙲𝙺 |✦•', data =UserId..'/'.. 'listallRodood'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل ردود البوت ع اللهجـه اليمنيـة ✓").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Gold_egibt') then
local UserId = Text:match('(%d+)/Gold_egibt')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Gold:egibtt"..ChatId,true) 
Redis:del(Gold.."Gold:Gold:yemenn"..ChatId) 
Redis:del(Gold.."Gold:Gold:iraqq"..ChatId) 
Redis:del(Gold.."Gold:Gold:syriaa"..ChatId) 
Redis:del(Gold.."Gold:Gold:ksaa"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '•✦| 𝙱𝙰𝙲𝙺 |✦•', data =UserId..'/'.. 'listallRodood'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل ردود البوت ع اللهجـه المصريـة ✓").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Gold_syria') then
local UserId = Text:match('(%d+)/Gold_syria')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Gold:syriaa"..ChatId,true) 
Redis:del(Gold.."Gold:Gold:yemenn"..ChatId) 
Redis:del(Gold.."Gold:Gold:egibtt"..ChatId) 
Redis:del(Gold.."Gold:Gold:iraqq"..ChatId) 
Redis:del(Gold.."Gold:Gold:ksaa"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '•✦| 𝙱𝙰𝙲𝙺 |✦•', data =UserId..'/'.. 'listallRodood'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل ردود البوت ع اللهجـه السـورية ✓").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Gold_ksa') then
local UserId = Text:match('(%d+)/Gold_ksa')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Gold:ksaa"..ChatId,true) 
Redis:del(Gold.."Gold:Gold:yemenn"..ChatId) 
Redis:del(Gold.."Gold:Gold:egibtt"..ChatId) 
Redis:del(Gold.."Gold:Gold:syriaa"..ChatId) 
Redis:del(Gold.."Gold:Gold:iraqq"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '•✦| 𝙱𝙰𝙲𝙺 |✦•', data =UserId..'/'.. 'listallRodood'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل ردود البوت ع اللهجـه الخليجيـة ✓").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_setadmib') then
local UserId = Text:match('(%d+)/mute_setadmib')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Status:SetId"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الرفع").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_kickmembars') then
local UserId = Text:match('(%d+)/mute_kickmembars')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Status:BanId"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل ( الطرد - الحظر )").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_games') then
local UserId = Text:match('(%d+)/mute_games')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Status:Games"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل الالعاب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_kickme') then
local UserId = Text:match('(%d+)/mute_kickme')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Status:KickMe"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم تفعيل اطردني").unLock, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/addAdmins@(.*)') then
local UserId = {Text:match('(%d+)/addAdmins@(.*)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
local Info_Members = bot.getSupergroupMembers(UserId[2], "Administrators", "*", 0, 200)
local List_Members = Info_Members.members
x = 0
y = 0
for k, v in pairs(List_Members) do
if Info_Members.members[k].bot_info == nil then
if Info_Members.members[k].status.luatele == "chatMemberStatusCreator" then
Redis:sadd(Gold.."Gold:TheBasicsQ:Group"..UserId[2],v.member_id.user_id) 
x = x + 1
else
Redis:sadd(Gold.."Gold:Addictive:Group"..UserId[2],v.member_id.user_id) 
y = y + 1
end
end
end
bot.answerCallbackQuery(data.id, "⇜ تم رفع ("..y..") ادمنية \n⇜ وتم رفع المالك ", true)
end
end
if Text and Text:match('(%d+)/LockAllGroup@(.*)') then
local UserId = {Text:match('(%d+)/LockAllGroup@(.*)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
Redis:set(Gold.."Gold:Lock:tagservrbot"..UserId[2],true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
Redis:set(Gold..'Gold:'..lock..UserId[2],"del")    
end
bot.answerCallbackQuery(data.id, "⇜ تم قفل جميع الاوامر ", true)
end
end
if Text and Text:match('/leftgroup@(.*)') then
local UserId = Text:match('/leftgroup@(.*)')
bot.answerCallbackQuery(data.id, "⇜ تم مغادره البوت من القروب", true)
bot.leaveChat(UserId)
end
if Text and Text:match('(%d+)/trtep@(.*)') then
local UserId = {Text:match('(%d+)/trtep@(.*)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'تعط','تعطيل الايدي بالصوره')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'تفع','تفعيل الايدي بالصوره')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'ا','ايدي')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'م','رفع مميز')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'اد', 'رفع ادمن')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'مد','رفع مدير')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'منش', 'رفع منشئ')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'اس', 'رفع منشئ اساسي')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'مط','رفع مطور')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'تن','تنزيل الكل')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'را','الرابط')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'رر','الردود')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'،،','مسح المكتومين')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'رد','اضف رد')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'غ','غنيلي')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'رس','رسائلي')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'ثانوي','رفع مطور ثانوي')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'مس','مسح تعديلاتي')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'ن','نقاطي')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'س','اسالني')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'ل','لغز')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'مع','معاني')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'ح','حزوره')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'رف','رفع القيود')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'الغ','الغاء حظر')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'ث','تثبيت')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'ك','كشف')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'تت','تاك')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'تك','تاك للكل')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'تغ','تغيير الايدي')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'تنز','تنزيل جميع الرتب')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'قق','قفل الاشعارات')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'فف','فتح الاشعارات')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'مر','مسح رد')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'امر','اضف امر')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'ش','شعر')
Redis:set(Gold.."Gold:Get:Reides:Commands:Group"..UserId[2]..":"..'غغ','اغنيه')
bot.answerCallbackQuery(data.id, "⇜ تم ترتيب الاوامر ", true)
end
end
if Text and Text:match('(%d+)/groupNumseteng//(%d+)') then
local UserId = {Text:match('(%d+)/groupNumseteng//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
return GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id)
end
end
if Text and Text:match('(%d+)/rankup//(%d+)') then
local UserId = {Text:match('(%d+)/rankup//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
return editrtp(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('(%d+)/sting//(%d+)') then
local UserId = {Text:match('(%d+)/sting//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
return muteUser(ChatId,UserId[1],Msg_id,UserId[2])
end
end
if Text and Text:match('(%d+)/groupNum1//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum1//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).change_info) == 1 then
bot.answerCallbackQuery(data.id, "⇜ تم تعطيل صلاحيه تغيير المعلومات", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,'❬ ❌ ❭',nil,nil,nil,nil,nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,0, 0, 0, 0,0,0,1,0})
else
bot.answerCallbackQuery(data.id, "⇜ تم تفعيل صلاحيه تغيير المعلومات", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,'❬ ✔️ ❭',nil,nil,nil,nil,nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,1, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
end
end
end
if Text and Text:match('(%d+)/groupNum2//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum2//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).pin_messages) == 1 then
bot.answerCallbackQuery(data.id, "⇜ تم تعطيل صلاحيه التثبيت", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,'❬ ❌ ❭',nil,nil,nil,nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,0, GetAdminsNum(ChatId,UserId[2]).promote})
else
bot.answerCallbackQuery(data.id, "⇜ تم تفعيل صلاحيه التثبيت", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,'❬ ✔️ ❭',nil,nil,nil,nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,1, GetAdminsNum(ChatId,UserId[2]).promote})
end
end
end
if Text and Text:match('(%d+)/groupNum3//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum3//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).restrict_members) == 1 then
bot.answerCallbackQuery(data.id, "⇜ تم تعطيل صلاحيه الحظر", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,'❬ ❌ ❭',nil,nil,nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, 0 ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
else
bot.answerCallbackQuery(data.id, "⇜ تم تفعيل صلاحيه الحظر", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,'❬ ✔️ ❭',nil,nil,nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, 1 ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
end
end
end
if Text and Text:match('(%d+)/groupNum4//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum4//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).invite_users) == 1 then
bot.answerCallbackQuery(data.id, "⇜ تم تعطيل صلاحيه دعوه المستخدمين", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,'❬ ❌ ❭',nil,nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, 0, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
else
bot.answerCallbackQuery(data.id, "⇜ تم تفعيل صلاحيه دعوه المستخدمين", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,'❬ ✔️ ❭',nil,nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, 1, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
end
end
end
if Text and Text:match('(%d+)/groupNum5//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum5//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).delete_messages) == 1 then
bot.answerCallbackQuery(data.id, "⇜ تم تعطيل صلاحيه مسح الرسائل", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,nil,'❬ ❌ ❭',nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, 0, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
else
bot.answerCallbackQuery(data.id, "⇜ تم تفعيل صلاحيه مسح الرسائل", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,nil,'❬ ✔️ ❭',nil)
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, 1, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
end
end
end
if Text and Text:match('(%d+)/groupNum6//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum6//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).promote) == 1 then
bot.answerCallbackQuery(data.id, "⇜ تم تعطيل صلاحيه اضافه مشرفين", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,nil,nil,'❬ ❌ ❭')
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, 0})
else
bot.answerCallbackQuery(data.id, "⇜ تم تفعيل صلاحيه اضافه مشرفين", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,nil,nil,'❬ ✔️ ❭')
bot.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, 1})
end
end
end
if Text and Text:match('(%d+)/web') then
local UserId = Text:match('(%d+)/web')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).web == true then
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, false, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, true, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/info') then
local UserId = Text:match('(%d+)/info')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).info == true then
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, false, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, true, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/invite') then
local UserId = Text:match('(%d+)/invite')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).invite == true then
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, false, Getpermissions(ChatId).pin)
else
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, true, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/pin') then
local UserId = Text:match('(%d+)/pin')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).pin == true then
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, false)
else
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, true)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/media') then
local UserId = Text:match('(%d+)/media')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).media == true then
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, false, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, true, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/messges') then
local UserId = Text:match('(%d+)/messges')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).messges == true then
bot.setChatPermissions(ChatId, false, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
bot.setChatPermissions(ChatId, true, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/other') then
local UserId = Text:match('(%d+)/other')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).other == true then
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, false, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, true, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/polls') then
local UserId = Text:match('(%d+)/polls')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).polls == true then
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, false, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
bot.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, true, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
end
if Text and Text:match('(%d+)/listallRodood') then
local UserId = Text:match('(%d+)/listallRodood')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'تغييـر الـردود عراقيـة 🇮🇶', data = IdUser..'/'.. 'Gold_iraq'},},
{{text = 'تغييـر الـردود يمنيـة 🇾🇪', data = IdUser..'/'.. 'Gold_yemen'},},
{{text = 'تغييـر الـردود مصريـة 🇪🇬', data = IdUser..'/'.. 'Gold_egibt'},},
{{text = 'تغييـر الـردود سوريـة 🇸🇾', data = IdUser..'/'.. 'Gold_syria'},},
{{text = 'تغييـر الـردود خليجيـة 🇸🇦', data = IdUser..'/'.. 'Gold_ksa'},},
{{text = 'تعطيل ردود البـوت', data = IdUser..'/'.. 'zilzal_zizo'},},
{{text = '✦ القائمـه الرئيسيـه ✦', data = IdUser..'/helpall'},},
{{text = '✦ إخفـاء الامـر ✦', data =IdUser..'/'.. 'delAmr'}}}}
return edit(ChatId,Msg_id,'*⇜ لـوحـة تحكـم اوامـر ردود البـوت ع حسب اللهجــه ✓*', 'md', false, false, reply_markup)
end
end
if Text and Text:match('(%d+)/listallAddorrem') then
local UserId = Text:match('(%d+)/listallAddorrem')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'تعطيل الرابط', data = IdUser..'/'.. 'unmute_link'},{text = 'تفعيل الرابط', data = IdUser..'/'.. 'mute_link'},
},
{
{text = 'تعطيل الترحيب', data = IdUser..'/'.. 'unmute_welcome'},{text = 'تفعيل الترحيب', data = IdUser..'/'.. 'mute_welcome'},
},
{
{text = 'تعطيل الايدي', data = IdUser..'/'.. 'unmute_Id'},{text = 'تفعيل الايدي', data = IdUser..'/'.. 'mute_Id'},
},
{
{text = 'تعطيل الايدي بالصوره', data = IdUser..'/'.. 'unmute_IdPhoto'},{text = 'تفعيل الايدي بالصوره', data = IdUser..'/'.. 'mute_IdPhoto'},
},
{
{text = 'تعطيل الردود', data = IdUser..'/'.. 'unmute_ryple'},{text = 'تفعيل الردود', data = IdUser..'/'.. 'mute_ryple'},
},
{
{text = 'تعطيل الردود العامه', data = IdUser..'/'.. 'unmute_ryplesudo'},{text = 'تفعيل الردود العامه', data = IdUser..'/'.. 'mute_ryplesudo'},
},
{
{text = 'تعطيل الرفع', data = IdUser..'/'.. 'unmute_setadmib'},{text = 'تفعيل الرفع', data = IdUser..'/'.. 'mute_setadmib'},
},
{
{text = 'تعطيل الطرد', data = IdUser..'/'.. 'unmute_kickmembars'},{text = 'تفعيل الطرد', data = IdUser..'/'.. 'mute_kickmembars'},
},
{
{text = 'تعطيل الالعاب', data = IdUser..'/'.. 'unmute_games'},{text = 'تفعيل الالعاب', data = IdUser..'/'.. 'mute_games'},
},
{
{text = 'تعطيل اطردني', data = IdUser..'/'.. 'unmute_kickme'},{text = 'تفعيل اطردني', data = IdUser..'/'.. 'mute_kickme'},
},
{
{text = 'تعطيل التسليه', data = IdUser..'/'.. 'unmute_thshesh'},{text = 'تفعيل التسليه', data = IdUser..'/'.. 'mute_thshesh'},
},
{
{text = 'تعطيل الحظر المحدود', data = IdUser..'/'.. 'unmute_kicknum'},{text = 'تفعيل الحظر المحدود', data = IdUser..'/'.. 'mute_kicknum'},
},
{
{text = 'تعطيل الصيغ', data = IdUser..'/'.. 'unmute_seck'},{text = 'تفعيل الصيغ', data = IdUser..'/'.. 'mute_seck'},
},
{
{text = 'تعطيل غنيلي', data = IdUser..'/'.. 'unmute_knile'},{text = 'تفعيل غنيلي', data = IdUser..'/'.. 'mute_knile'},
},
{
{text = 'تعطيل الابراح', data = IdUser..'/'.. 'unmute_brj'},{text = 'تفعيل الابراج', data = IdUser..'/'.. 'mute_brj'},
},
{
{text = 'تعطيل الصوتيات', data = IdUser..'/'.. 'unmute_audio'},{text = 'تفعيل الصوتيات', data = IdUser..'/'.. 'mute_audio'},
},
{
{text = 'تعطيل الصوتيات العامه', data = IdUser..'/'.. 'unmute_audioall'},{text = 'تفعيل الصوتيات العامه', data = IdUser..'/'.. 'mute_audioall'},
},
{
{text = 'تعطيل تاك عام', data = IdUser..'/'.. 'unmute_takall'},{text = 'تفعيل تاك عام', data = IdUser..'/'.. 'mute_takall'},
},
{
{text = 'تعطيل التنبيه', data = IdUser..'/'.. 'unmute_namemy'},{text = 'تفعيل التنبيه', data = IdUser..'/'.. 'mute_namemy'},
},
{
{text = 'القائمة الرئيسية', data = IdUser..'/helpall'},
},
{
{text = '- اخفاء الامر ', data ='/delAmr'}
},
}
}
return edit(ChatId,Msg_id,'⇜ اوامر التفعيل والتعطيل ', 'md', false, false, reply_markup)
end
end
if Text and Text:match('(%d+)/NextSeting') then
local UserId = Text:match('(%d+)/NextSeting')
if tonumber(IdUser) == tonumber(UserId) then
local Text = "\n⇜ اعدادات القروب ".."\n⇜ نعم تعني - مقفل".."\n⇜ لا تعني - مفتوح\n✓"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = GetSetieng(ChatId).lock_fwd, data =IdUser..'/'.. 'Status_fwd'},{text = 'التوجبه : ', data =IdUser..'/'.. 'Status_fwd'},
{text = GetSetieng(ChatId).lock_muse, data =IdUser..'/'.. 'Status_audio'},{text = 'الصوت : ', data =IdUser..'/'.. 'Status_audio'},
},
{
{text = GetSetieng(ChatId).lock_ste, data =IdUser..'/'.. 'Status_stikear'},{text = 'الملصقات : ', data =IdUser..'/'.. 'Status_stikear'},
{text = GetSetieng(ChatId).lock_phon, data =IdUser..'/'.. 'Status_phone'},{text = 'الجهات : ', data =IdUser..'/'.. 'Status_phone'},
},
{
{text = GetSetieng(ChatId).lock_join, data =IdUser..'/'.. 'Status_joine'},{text = 'الدخول : ', data =IdUser..'/'.. 'Status_joine'},
{text = GetSetieng(ChatId).lock_add, data =IdUser..'/'.. 'Status_addmem'},{text = 'الاضافه : ', data =IdUser..'/'.. 'Status_addmem'},
},
{
{text = GetSetieng(ChatId).lock_self, data =IdUser..'/'.. 'Status_videonote'},{text = 'بصمه فيديو : ', data =IdUser..'/'.. 'Status_videonote'},
{text = GetSetieng(ChatId).lock_pin, data =IdUser..'/'.. 'Status_pin'},{text = 'التثبيت : ', data =IdUser..'/'.. 'Status_pin'},
},
{
{text = GetSetieng(ChatId).lock_tagservr, data =IdUser..'/'.. 'Status_tgservir'},{text = 'الاشعارات : ', data =IdUser..'/'.. 'Status_tgservir'},
{text = GetSetieng(ChatId).lock_mark, data =IdUser..'/'.. 'Status_markdaun'},{text = 'الماركدون : ', data =IdUser..'/'.. 'Status_markdaun'},
},
{
{text = GetSetieng(ChatId).lock_edit, data =IdUser..'/'.. 'Status_edits'},{text = 'التعديل : ', data =IdUser..'/'.. 'Status_edits'},
{text = GetSetieng(ChatId).lock_geam, data =IdUser..'/'.. 'Status_games'},{text = 'الالعاب : ', data =IdUser..'/'.. 'Status_games'},
},
{
{text = GetSetieng(ChatId).flood, data =IdUser..'/'.. 'Status_flood'},{text = 'التكرار : ', data =IdUser..'/'.. 'Status_flood'},
},
{
{text = '- الرجوع .. ', data =IdUser..'/'.. 'NoNextSeting'}
},
{
{text = 'القائمة الرئيسية', data = IdUser..'/helpall'},
},
{
{text = '- اخفاء الامر ', data ='/delAmr'}
},
}
}
edit(ChatId,Msg_id,Text, 'md', false, false, reply_markup)
end
end
if Text and Text:match('(%d+)/NoNextSeting') then
local UserId = Text:match('(%d+)/NoNextSeting')
if tonumber(IdUser) == tonumber(UserId) then
local Text = "\n⇜ اعدادات القروب ".."\n⇜ نعم تعني - مقفل".."\n⇜ لا تعني - مفتوح\n✓"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = GetSetieng(ChatId).lock_links, data =IdUser..'/'.. 'Status_link'},{text = 'الروابط : ', data =IdUser..'/'.. 'Status_link'},
{text = GetSetieng(ChatId).lock_spam, data =IdUser..'/'.. 'Status_spam'},{text = 'الكلايش : ', data =IdUser..'/'.. 'Status_spam'},
},
{
{text = GetSetieng(ChatId).lock_inlin, data =IdUser..'/'.. 'Status_keypord'},{text = 'الكيبورد : ', data =IdUser..'/'.. 'Status_keypord'},
{text = GetSetieng(ChatId).lock_vico, data =IdUser..'/'.. 'Status_voice'},{text = 'الاغاني : ', data =IdUser..'/'.. 'Status_voice'},
},
{
{text = GetSetieng(ChatId).lock_gif, data =IdUser..'/'.. 'Status_gif'},{text = 'المتحركه : ', data =IdUser..'/'.. 'Status_gif'},
{text = GetSetieng(ChatId).lock_file, data =IdUser..'/'.. 'Status_files'},{text = 'الملفات : ', data =IdUser..'/'.. 'Status_files'},
},
{
{text = GetSetieng(ChatId).lock_text, data =IdUser..'/'.. 'Status_text'},{text = 'الشات : ', data =IdUser..'/'.. 'Status_text'},
{text = GetSetieng(ChatId).lock_ved, data =IdUser..'/'.. 'Status_video'},{text = 'الفيديو : ', data =IdUser..'/'.. 'Status_video'},
},
{
{text = GetSetieng(ChatId).lock_photo, data =IdUser..'/'.. 'Status_photo'},{text = 'الصور : ', data =IdUser..'/'.. 'Status_photo'},
{text = GetSetieng(ChatId).lock_user, data =IdUser..'/'.. 'Status_username'},{text = 'المعرفات : ', data =IdUser..'/'.. 'Status_username'},
},
{
{text = GetSetieng(ChatId).lock_hash, data =IdUser..'/'.. 'Status_tags'},{text = 'التاك : ', data =IdUser..'/'.. 'Status_tags'},
{text = GetSetieng(ChatId).lock_bots, data =IdUser..'/'.. 'Status_bots'},{text = 'البوتات : ', data =IdUser..'/'.. 'Status_bots'},
},
{
{text = GetSetieng(ChatId).farsia, data =IdUser..'/'.. 'Status_farsia'},{text = 'الفارسيه : ', data =IdUser..'/'.. 'Status_farsia'},
{text = GetSetieng(ChatId).tphlesh, data =IdUser..'/'.. 'Status_tphlesh'},{text = 'الحمايه : ', data =IdUser..'/'.. 'Status_tphlesh'},
},
{
{text = GetSetieng(ChatId).alphsar, data =IdUser..'/'.. 'Status_alphsar'},{text = 'السب : ', data =IdUser..'/'.. 'Status_alphsar'},
},
{
{text = '- التالي .. ', data =IdUser..'/'.. 'NextSeting'}
},
{
{text = 'القائمة الرئيسية', data = IdUser..'/helpall'},
},
{
{text = '- اخفاء الامر ', data ='/delAmr'}
},
}
}
edit(ChatId,Msg_id,Text, 'md', false, false, reply_markup)
end
end  
if Text and Text:match('/delAmr') then
local UserId = Text:match('/delAmr')
if data.Managers or data.Mamagers then
return bot.deleteMessages(ChatId,{[1]= Msg_id})
end
end
-----------------
if Text and Text:match('/gamesmtor') then
local UserId = Text:match('/gamesmtor')
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'حرب الفضاء 🛸', url="https://t.me/gamee?game=ATARIAsteroids"},{text = '🚀 لعبة الصواريخ', url="https://t.me/T4TTTTBOT?game=rocket"},},
{{text = 'القط المشاكس 🐱', url="https://t.me/gamee?game=CrazyCat"},{text = 'صيد الاسماك 🐟', url="https://t.me/gamee?game=SpikyFish3"},},
{{text = 'سباق الدراجات 🏍', url="https://t.me/gamee?game=MotoFX2"},{text = 'سباق سيارات 🏎', url="https://t.me/gamee?game=F1Racer"},},
{{text = 'شطرنج ♟', url="https://t.me/T4TTTTBOT?game=chess"},{text = 'ضرب الاسهم 🏹', url="https://t.me/T4TTTTBOT?game=arrow"},},
{{text = 'كرة القدم ⚽', url="https://t.me/gamee?game=FootballStar"},{text = 'كرة السلة 🏀', url="https://t.me/gamee?game=BasketBoyRush"},},
{{text = 'سلة 2 🎯', url="https://t.me/gamee?game=DoozieDunks"},{text = 'لعبة الالوان 🔵🔴', url="https://t.me/T4TTTTBOT?game=color"},},
{{text = 'نينجـا 🥷', url="https://t.me/gamee?game=GravityNinja21"},{text = 'كونج فو 🎽', url="https://t.me/gamee?game=KungFuInc"},},
{{text = 'فلابي بيرد 🐥', url="https://t.me/awesomebot?game=FlappyBird"},{text = 'جيت واي 🚨',url="https://t.me/gamee?game=Getaway"},},
{{text = 'لعبه دراجات', url="https://t.me/gamee?game=MotoFX"},{text = 'سباق سيارات', url="https://t.me/gamee?game=F1Racer"},},
{{text = 'تشابه', url="https://t.me/gamee?game=DiamondRows"},{text = 'كره القدم', url="https://t.me/gamee?game=FootballStar"},},
{{text = 'ورق', url="https://t.me/gamee?game=Hexonix"},{text = 'لعبه 2048', url="https://t.me/awesomebot?game=g2048"},},
{{text = 'كره القدم 2', url="https://t.me/gamee?game=PocketWorldCup"},{text = 'جمع المياه', url="https://t.me/gamee?game=BlockBuster"},},
{{text = 'لا تجعلها تسقط', url="https://t.me/gamee?game=Touchdown"},{text = 'نينجـا 2', url="https://t.me/gamee?game=GravityNinjaEmeraldCity"},},
{{text = '🐍 الافعى 🐍', url="https://t.me/T4TTTTBOT?game=snake"},{text = 'مدفع الكرات🏮', url="https://t.me/gamee?game=NeonBlaster"},},
{{text = 'الالـوان 🔮', url="https://t.me/gamee?game=ColorHit"},{text = 'كيب اب 🧿', url="https://t.me/gamee?game=KeepItUp"},},
{{text = 'رجوع', data = IdUser..'/help6'},},
}
}
edit(ChatId,Msg_id,'⇜ قائمة الالعاب المتطورة ',"md", true, false, reply_markup)
end
if Text and Text:match('(%d+)/mp3(.*)') then
local UserId = {Text:match('(%d+)/mp3(.*)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
local TextHelp = [[*
✠┊ارسل ما تريد تحميله
*]]
Redis:set(Gold.."youtube"..IdUser..ChatId,'mp3')
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/mp4(.*)') then
local UserId = {Text:match('(%d+)/mp4(.*)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = '˹𓌗 قنـاة البـوت 𓌗.',url="t.me/"..chsource..""}},
}
}
local TextHelp = [[*
✠┊ارسل ما تريد تحميله
*]]
Redis:set(Gold.."youtube"..IdUser..ChatId,'mp4')
edit(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/Status_link') then
local UserId = Text:match('(%d+)/Status_link')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الروابط', data =UserId..'/'.. 'lock_link'},{text = 'قفل الروابط بالكتم', data =UserId..'/'.. 'lock_linkktm'},
},
{
{text = 'قفل الروابط بالطرد', data =UserId..'/'.. 'lock_linkkick'},{text = 'قفل الروابط بالتقييد', data =UserId..'/'.. 'lock_linkkid'},
},
{
{text = 'فتح الروابط', data =UserId..'/'.. 'unlock_link'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_farsia') then
local UserId = Text:match('(%d+)/Status_farsia')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الفارسيه', data =UserId..'/'.. 'lock_Status_farsia'},
},
{
{text = 'فتح الفارسيه', data =UserId..'/'.. 'unlock_Status_farsia'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_tphlesh') then
local UserId = Text:match('(%d+)/Status_tphlesh')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الحمايه', data =UserId..'/'.. 'lock_Status_tphlesh'},
},
{
{text = 'فتح الحمايه', data =UserId..'/'.. 'unlock_Status_tphlesh'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_alphsar') then
local UserId = Text:match('(%d+)/Status_alphsar')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل السب', data =UserId..'/'.. 'lock_Status_alphsar'},
},
{
{text = 'فتح السب', data =UserId..'/'.. 'unlock_Status_alphsar'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_spam') then
local UserId = Text:match('(%d+)/Status_spam')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الكلايش', data =UserId..'/'.. 'lock_spam'},{text = 'قفل الكلايش بالكتم', data =UserId..'/'.. 'lock_spamktm'},
},
{
{text = 'قفل الكلايش بالطرد', data =UserId..'/'.. 'lock_spamkick'},{text = 'قفل الكلايش بالتقييد', data =UserId..'/'.. 'lock_spamid'},
},
{
{text = 'فتح الكلايش', data =UserId..'/'.. 'unlock_spam'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_keypord') then
local UserId = Text:match('(%d+)/Status_keypord')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الكيبورد', data =UserId..'/'.. 'lock_keypord'},{text = 'قفل الكيبورد بالكتم', data =UserId..'/'.. 'lock_keypordktm'},
},
{
{text = 'قفل الكيبورد بالطرد', data =UserId..'/'.. 'lock_keypordkick'},{text = 'قفل الكيبورد بالتقييد', data =UserId..'/'.. 'lock_keypordkid'},
},
{
{text = 'فتح الكيبورد', data =UserId..'/'.. 'unlock_keypord'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_voice') then
local UserId = Text:match('(%d+)/Status_voice')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الاغاني', data =UserId..'/'.. 'lock_voice'},{text = 'قفل الاغاني بالكتم', data =UserId..'/'.. 'lock_voicektm'},
},
{
{text = 'قفل الاغاني بالطرد', data =UserId..'/'.. 'lock_voicekick'},{text = 'قفل الاغاني بالتقييد', data =UserId..'/'.. 'lock_voicekid'},
},
{
{text = 'فتح الاغاني', data =UserId..'/'.. 'unlock_voice'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_gif') then
local UserId = Text:match('(%d+)/Status_gif')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل المتحركه', data =UserId..'/'.. 'lock_gif'},{text = 'قفل المتحركه بالكتم', data =UserId..'/'.. 'lock_gifktm'},
},
{
{text = 'قفل المتحركه بالطرد', data =UserId..'/'.. 'lock_gifkick'},{text = 'قفل المتحركه بالتقييد', data =UserId..'/'.. 'lock_gifkid'},
},
{
{text = 'فتح المتحركه', data =UserId..'/'.. 'unlock_gif'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_files') then
local UserId = Text:match('(%d+)/Status_files')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الملفات', data =UserId..'/'.. 'lock_files'},{text = 'قفل الملفات بالكتم', data =UserId..'/'.. 'lock_filesktm'},
},
{
{text = 'قفل الملفات بالطرد', data =UserId..'/'.. 'lock_fileskick'},{text = 'قفل الملفات بالتقييد', data =UserId..'/'.. 'lock_fileskid'},
},
{
{text = 'فتح الملفات', data =UserId..'/'.. 'unlock_files'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_text') then
local UserId = Text:match('(%d+)/Status_text')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الشات', data =UserId..'/'.. 'lock_text'},
},
{
{text = 'فتح الشات', data =UserId..'/'.. 'unlock_text'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_video') then
local UserId = Text:match('(%d+)/Status_video')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الفيديو', data =UserId..'/'.. 'lock_video'},{text = 'قفل الفيديو بالكتم', data =UserId..'/'.. 'lock_videoktm'},
},
{
{text = 'قفل الفيديو بالطرد', data =UserId..'/'.. 'lock_videokick'},{text = 'قفل الفيديو بالتقييد', data =UserId..'/'.. 'lock_videokid'},
},
{
{text = 'فتح الفيديو', data =UserId..'/'.. 'unlock_video'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_photo') then
local UserId = Text:match('(%d+)/Status_photo')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الصور', data =UserId..'/'.. 'lock_photo'},{text = 'قفل الصور بالكتم', data =UserId..'/'.. 'lock_photoktm'},
},
{
{text = 'قفل الصور بالطرد', data =UserId..'/'.. 'lock_photokick'},{text = 'قفل الصور بالتقييد', data =UserId..'/'.. 'lock_photokid'},
},
{
{text = 'فتح الصور', data =UserId..'/'.. 'unlock_photo'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_username') then
local UserId = Text:match('(%d+)/Status_username')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل المعرفات', data =UserId..'/'.. 'lock_username'},{text = 'قفل المعرفات بالكتم', data =UserId..'/'.. 'lock_usernamektm'},
},
{
{text = 'قفل المعرفات بالطرد', data =UserId..'/'.. 'lock_usernamekick'},{text = 'قفل المعرفات بالتقييد', data =UserId..'/'.. 'lock_usernamekid'},
},
{
{text = 'فتح المعرفات', data =UserId..'/'.. 'unlock_username'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_tags') then
local UserId = Text:match('(%d+)/Status_tags')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل التاك', data =UserId..'/'.. 'lock_tags'},{text = 'قفل التاك بالكتم', data =UserId..'/'.. 'lock_tagsktm'},
},
{
{text = 'قفل التاك بالطرد', data =UserId..'/'.. 'lock_tagskick'},{text = 'قفل التاك بالتقييد', data =UserId..'/'.. 'lock_tagskid'},
},
{
{text = 'فتح التاك', data =UserId..'/'.. 'unlock_tags'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_bots') then
local UserId = Text:match('(%d+)/Status_bots')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل البوتات', data =UserId..'/'.. 'lock_bots'},{text = 'قفل البوتات بالطرد', data =UserId..'/'.. 'lock_botskick'},
},
{
{text = 'فتح البوتات', data =UserId..'/'.. 'unlock_bots'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_fwd') then
local UserId = Text:match('(%d+)/Status_fwd')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل التوجيه', data =UserId..'/'.. 'lock_fwd'},{text = 'قفل التوجيه بالكتم', data =UserId..'/'.. 'lock_fwdktm'},
},
{
{text = 'قفل التوجيه بالطرد', data =UserId..'/'.. 'lock_fwdkick'},{text = 'قفل التوجيه بالتقييد', data =UserId..'/'.. 'lock_fwdkid'},
},
{
{text = 'فتح التوجيه', data =UserId..'/'.. 'unlock_link'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_audio') then
local UserId = Text:match('(%d+)/Status_audio')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الصوت', data =UserId..'/'.. 'lock_audio'},{text = 'قفل الصوت بالكتم', data =UserId..'/'.. 'lock_audioktm'},
},
{
{text = 'قفل الصوت بالطرد', data =UserId..'/'.. 'lock_audiokick'},{text = 'قفل الصوت بالتقييد', data =UserId..'/'.. 'lock_audiokid'},
},
{
{text = 'فتح الصوت', data =UserId..'/'.. 'unlock_audio'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_stikear') then
local UserId = Text:match('(%d+)/Status_stikear')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الملصقات', data =UserId..'/'.. 'lock_stikear'},{text = 'قفل الملصقات بالكتم', data =UserId..'/'.. 'lock_stikearktm'},
},
{
{text = 'قفل الملصقات بالطرد', data =UserId..'/'.. 'lock_stikearkick'},{text = 'قفل الملصقات بالتقييد', data =UserId..'/'.. 'lock_stikearkid'},
},
{
{text = 'فتح الملصقات', data =UserId..'/'.. 'unlock_stikear'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_phone') then
local UserId = Text:match('(%d+)/Status_phone')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الجهات', data =UserId..'/'.. 'lock_phone'},{text = 'قفل الجهات بالكتم', data =UserId..'/'.. 'lock_phonektm'},
},
{
{text = 'قفل الجهات بالطرد', data =UserId..'/'.. 'lock_phonekick'},{text = 'قفل الجهات بالتقييد', data =UserId..'/'.. 'lock_phonekid'},
},
{
{text = 'فتح الجهات', data =UserId..'/'.. 'unlock_phone'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_joine') then
local UserId = Text:match('(%d+)/Status_joine')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الدخول', data =UserId..'/'.. 'lock_joine'},
},
{
{text = 'فتح الدخول', data =UserId..'/'.. 'unlock_joine'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_addmem') then
local UserId = Text:match('(%d+)/Status_addmem')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الاضافه', data =UserId..'/'.. 'lock_addmem'},
},
{
{text = 'فتح الاضافه', data =UserId..'/'.. 'unlock_addmem'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_videonote') then
local UserId = Text:match('(%d+)/Status_videonote')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل السيلفي', data =UserId..'/'.. 'lock_videonote'},{text = 'قفل السيلفي بالكتم', data =UserId..'/'.. 'lock_videonotektm'},
},
{
{text = 'قفل السيلفي بالطرد', data =UserId..'/'.. 'lock_videonotekick'},{text = 'قفل السيلفي بالتقييد', data =UserId..'/'.. 'lock_videonotekid'},
},
{
{text = 'فتح السيلفي', data =UserId..'/'.. 'unlock_videonote'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_pin') then
local UserId = Text:match('(%d+)/Status_pin')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل التثبيت', data =UserId..'/'.. 'lock_pin'},
},
{
{text = 'فتح التثبيت', data =UserId..'/'.. 'unlock_pin'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_tgservir') then
local UserId = Text:match('(%d+)/Status_tgservir')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الاشعارات', data =UserId..'/'.. 'lock_tgservir'},
},
{
{text = 'فتح الاشعارات', data =UserId..'/'.. 'unlock_tgservir'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_markdaun') then
local UserId = Text:match('(%d+)/Status_markdaun')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الماركداون', data =UserId..'/'.. 'lock_markdaun'},{text = 'قفل الماركداون بالكتم', data =UserId..'/'.. 'lock_markdaunktm'},
},
{
{text = 'قفل الماركداون بالطرد', data =UserId..'/'.. 'lock_markdaunkick'},{text = 'قفل الماركداون بالتقييد', data =UserId..'/'.. 'lock_markdaunkid'},
},
{
{text = 'فتح الماركداون', data =UserId..'/'.. 'unlock_markdaun'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_edits') then
local UserId = Text:match('(%d+)/Status_edits')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل التعديل', data =UserId..'/'.. 'lock_edits'},
},
{
{text = 'فتح التعديل', data =UserId..'/'.. 'unlock_edits'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_games') then
local UserId = Text:match('(%d+)/Status_games')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الالعاب', data =UserId..'/'.. 'lock_games'},{text = 'قفل الالعاب بالكتم', data =UserId..'/'.. 'lock_gamesktm'},
},
{
{text = 'قفل الالعاب بالطرد', data =UserId..'/'.. 'lock_gameskick'},{text = 'قفل الالعاب بالتقييد', data =UserId..'/'.. 'lock_gameskid'},
},
{
{text = 'فتح الالعاب', data =UserId..'/'.. 'unlock_games'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_flood') then
local UserId = Text:match('(%d+)/Status_flood')
if tonumber(IdUser) == tonumber(UserId) then

local reply_markup = bot.replyMarkup{type = 'inline',data = {
{
{text = 'قفل التكرار', data =UserId..'/'.. 'lock_flood'},{text = 'قفل التكرار بالكتم', data =UserId..'/'.. 'lock_floodktm'},
},
{
{text = 'قفل التكرار بالطرد', data =UserId..'/'.. 'lock_floodkick'},{text = 'قفل التكرار بالتقييد', data =UserId..'/'.. 'lock_floodkid'},
},
{
{text = 'فتح التكرار', data =UserId..'/'.. 'unlock_flood'},
},
{
{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
edit(ChatId,Msg_id,"⇜ اختار نوع القفل :", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_link') then
local UserId = Text:match('(%d+)/unlock_link')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:Link"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الروابط").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_Status_farsia') then
local UserId = Text:match('(%d+)/unlock_Status_farsia')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:farsia"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الفارسيه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_Status_tphlesh') then
local UserId = Text:match('(%d+)/unlock_Status_tphlesh')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:tphlesh"..ChatId)  
Redis:del(Gold.."Gold:Status:IdPhoto"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الحمايه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_Status_alphsar') then
local UserId = Text:match('(%d+)/unlock_Status_alphsar')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:phshar"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح السب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_Status_farsia') then
local UserId = Text:match('(%d+)/lock_Status_farsia')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:farsia"..ChatId,true)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الفارسيه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_Status_tphlesh') and (data.Managers or data.Mamagers) then
local UserId = Text:match('(%d+)/lock_Status_tphlesh')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:tphlesh"..ChatId,true)
Redis:set(Gold.."Gold:Status:IdPhoto"..ChatId,true)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل الحمايه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_Status_alphsar') then
local UserId = Text:match('(%d+)/lock_Status_alphsar')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(Gold.."Gold:Lock:phshar"..ChatId,true)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم قفل السب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_spam') then
local UserId = Text:match('(%d+)/unlock_spam')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:Spam"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الكلايش").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_keypord') then
local UserId = Text:match('(%d+)/unlock_keypord')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:Keyboard"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الكيبورد").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_voice') then
local UserId = Text:match('(%d+)/unlock_voice')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:vico"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الاغاني").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_gif') then
local UserId = Text:match('(%d+)/unlock_gif')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:Animation"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح المتحركات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_files') then
local UserId = Text:match('(%d+)/unlock_files')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:Document"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الملفات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_text') then
local UserId = Text:match('(%d+)/unlock_text')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:text"..ChatId,true) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الشات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_video') then
local UserId = Text:match('(%d+)/unlock_video')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:Video"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الفيديو").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_photo') then
local UserId = Text:match('(%d+)/unlock_photo')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:Photo"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الصور").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_username') then
local UserId = Text:match('(%d+)/unlock_username')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:User:Name"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح المعرفات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_tags') then
local UserId = Text:match('(%d+)/unlock_tags')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:hashtak"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح التاك").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_bots') then
local UserId = Text:match('(%d+)/unlock_bots')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:Bot:kick"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح البوتات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_fwd') then
local UserId = Text:match('(%d+)/unlock_fwd')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:forward"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح التوجيه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_audio') then
local UserId = Text:match('(%d+)/unlock_audio')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:Audio"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الصوت").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_stikear') then
local UserId = Text:match('(%d+)/unlock_stikear')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:Sticker"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الملصقات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_phone') then
local UserId = Text:match('(%d+)/unlock_phone')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:Contact"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الجهات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_joine') then
local UserId = Text:match('(%d+)/unlock_joine')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:Join"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الدخول").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_addmem') then
local UserId = Text:match('(%d+)/unlock_addmem')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:AddMempar"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الاضافه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_videonote') then
local UserId = Text:match('(%d+)/unlock_videonote')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:Unsupported"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح بصمه الفيديو").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_pin') then
local UserId = Text:match('(%d+)/unlock_pin')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:lockpin"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح التثبيت").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_tgservir') then
local UserId = Text:match('(%d+)/unlock_tgservir')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:tagservr"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الاشعارات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_markdaun') then
local UserId = Text:match('(%d+)/unlock_markdaun')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:Markdaun"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الماركدون").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_edits') then
local UserId = Text:match('(%d+)/unlock_edits')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:edit"..ChatId) 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح التعديل").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_games') then
local UserId = Text:match('(%d+)/unlock_games')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Lock:geam"..ChatId)  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح الالعاب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_flood') then
local UserId = Text:match('(%d+)/unlock_flood')
if tonumber(IdUser) == tonumber(UserId) then
Redis:hdel(Gold.."Gold:Spam:Group:User"..ChatId ,"Spam:User")  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = 'رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
edit(ChatId,Msg_id,Reply_Status(IdUser,"⇜ تم فتح التكرار").unLock, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/backbio') then
local UserId = Text:match('(%d+)/backbio')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'شباب', data = IdUser..'/bioold'},{text = 'بنات', data = IdUser..'/biobnt'},
},
}
}
return edit(ChatId,Msg_id,"اختر نوع البايو", 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/bioold') then
local UserId = Text:match('(%d+)/bioold')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'بايو آخر', data = UserId..'/bioold'},
},
{
{text = 'رجوع', data = UserId..'/backbio'},
},
}
}
local list = {
"ابتليت بحُب ابتسامَته وعيُونه.",
"انتَ فكره رائعه وضعها الربُ في عقلي.",
"اتأمل صورتك وتطيب الدنيا في عيني.",
"ماذا لو اخَترتكَ موِسيقتي.",
"مبسّمك يأخذ من الليّل نُوره.",
"يا ضمادَ جُروحِي و أطيّب أشخاصي.",
"كلما أتبعُ قلبي يدُلني إليك.",
"كُل شيء بجوارك جميل جدًا.‍",
"صُباح الخير يامُلهميِ وشخصيِ الأول.",
"ليتنَي آكثر الناظرينَ اليكِ.",
"حتى الخيال فيّك جبر خاطَر.",
"عنْ ألف نِعمة أنا وقلبي مكتفّين فيك . .",
"﮼سأحاول ، أقـنـاع نَـفسـي بـآن ڪُل شـيء ڪان مُـجرد حلم🥀!",
"حاولت أن لا انظر اليك ، لڪن عيناي تمردت 🖤👁️",
"لا تهمل وردتكَ ، حتى لا يُسقيها غيرك🔥🖤",
"أخبࢪتـك ذات ليلـه أنك ستمـل وتتغيـࢪ ، فأنڪࢪت، 🖤",
"اللهُم إجعل لي نصيب في كل شيء أحببته.",
"ربي .. إني اعوذ بك من طول التمني ، و حرمان الوصول ♥️",
"رسالة واحدة منهُ تعادل سحابة سعادة  🎻🖤",
"العالم الذي نسير إليه، مُختلف تمامًا عن العالم الذي يجول بداخلنا .🤍✨",
"تكاد تنزلق من أطراف قلبي، ولأول مرة أشعر بأني سئمت من الاحتفاظ بك",
"أُعَمّم رَسائلي، وأعنيك أنتَ.",
"لا أجيد إكمال نصف الأشياء، إمَّا أن تأتيني بأكملها، أو لتذهب بجميعها.",
"لم تحملي على كتفك إلا شعرك من أين أتى هذا العِبء؟",
"كأن الحياة تأتي من جِهتك🖤.",
"فمن وثق بالله أغناه ومن توكل عليه كفاه.",
"في فمه حديث متكسر ، يجرح اطراف صوته .",
"ظننتها عابرة ، لكنها ظلت في داخلي الى الأبد ."
}
local bioold = list[math.random(#list)]
return edit(ChatId,Msg_id,"["..bioold.."]", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/biobnt') then
local UserId = Text:match('(%d+)/biobnt')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'بايو آخر', data = UserId..'/biobnt'},
},
{
{text = 'رجوع', data = UserId..'/backbio'},
},
}
}
local list = {
"ابتليت بحُب ابتسامَته وعيُونه.",
"انتَ فكره رائعه وضعها الربُ في عقلي.",
"اتأمل صورتك وتطيب الدنيا في عيني.",
"ماذا لو اخَترتكَ موِسيقتي.",
"مبسّمك يأخذ من الليّل نُوره.",
"يا ضمادَ جُروحِي و أطيّب أشخاصي.",
"كلما أتبعُ قلبي يدُلني إليك.",
"كُل شيء بجوارك جميل جدًا.‍",
"صُباح الخير يامُلهميِ وشخصيِ الأول.",
"ليتنَي آكثر الناظرينَ اليكِ.",
"حتى الخيال فيّك جبر خاطَر.",
"عنْ ألف نِعمة أنا وقلبي مكتفّين فيك . .",
"﮼سأحاول ، أقـنـاع نَـفسـي بـآن ڪُل شـيء ڪان مُـجرد حلم🥀!",
"حاولت أن لا انظر اليك ، لڪن عيناي تمردت 🖤👁️",
"لا تهمل وردتكَ ، حتى لا يُسقيها غيرك🔥🖤",
"أخبࢪتـك ذات ليلـه أنك ستمـل وتتغيـࢪ ، فأنڪࢪت، 🖤",
"اللهُم إجعل لي نصيب في كل شيء أحببته.",
"ربي .. إني اعوذ بك من طول التمني ، و حرمان الوصول ♥️",
"رسالة واحدة منهُ تعادل سحابة سعادة  🎻🖤",
"العالم الذي نسير إليه، مُختلف تمامًا عن العالم الذي يجول بداخلنا .🤍✨",
"تكاد تنزلق من أطراف قلبي، ولأول مرة أشعر بأني سئمت من الاحتفاظ بك",
"أُعَمّم رَسائلي، وأعنيك أنتَ.",
"لا أجيد إكمال نصف الأشياء، إمَّا أن تأتيني بأكملها، أو لتذهب بجميعها.",
"لم تحملي على كتفك إلا شعرك من أين أتى هذا العِبء؟",
"كأن الحياة تأتي من جِهتك🖤.",
"فمن وثق بالله أغناه ومن توكل عليه كفاه.",
"في فمه حديث متكسر ، يجرح اطراف صوته .",
"ظننتها عابرة ، لكنها ظلت في داخلي الى الأبد ."
}
local biobnt = list[math.random(#list)]
return edit(ChatId,Msg_id,"["..biobnt.."]", 'md', true, false, reply_markup)
end
end
if Text and Text:match('^(%d+)/back_lists$') then
local UserId = Text:match('^(%d+)/back_lists$')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="قائمه Dev",data=UserId..'/Redis:Devall'},
},
{
{text="المكتومين عام",data=UserId..'/KtmAll'},{text="المحظورين عام",data=UserId..'/BanAll'},
},
{
{text="قائمه MY",data=UserId..'/DevelopersQ'},{text="قائمه M",data=UserId..'/Developers'},
},
{
{text="المالكين",data=UserId..'/TheBasicsQ'},{text="المنشئين الاساسيين",data=UserId..'/TheBasics'},
},
{
{text="المنشئين",data=UserId..'/Originators'},{text="المدراء",data=UserId..'/Managers'},
},
{
{text="الادمنيه",data=UserId..'/Addictive'},{text="المميزين",data=UserId..'/DelDistinguished'},
},
{
{text="المكتومين",data=UserId..'/SilentGroupGroup'},{text="المحظورين",data=UserId..'/BanGroup'},
},
{
{text = "- اخفاء الامر ", data =UserId.."/delAmr"}
},
}
}
return edit(ChatId,Msg_id,"⇜ اختر احدى القوائم لمسحها", "md",true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/DevelopersQ') and data.ControllerBot then
local UserId = Text:match('(%d+)/DevelopersQ')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:DevelopersQ:Groups") 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح قائمه المطورين الثانويين🎖️", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Developers') and (data.DevelopersQ or data.MevelopersQ) then
local UserId = Text:match('(%d+)/Developers')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Developers:Groups") 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح قائمه المطورين🎖️", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Redis:Devall') and data.ControllerBot then
local UserId = Text:match('(%d+)/Redis:Devall')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:ControlAll:Groups") 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح قائمه Dev²🎖", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/TheBasicsQ') and (data.Developers or data.Mevelopers) then
local UserId = Text:match('(%d+)/TheBasicsQ')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasicsQ:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المالكين", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/MalekAsase') and (data.Developers or data.Mevelopers) then
local UserId = Text:match('(%d+)/MalekAsase')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:MalekAsase:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المالكين الاساسيين", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/MalemAsase') and (data.Developers or data.Mevelopers) then
local UserId = Text:match('(%d+)/MalemAsase')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:MalemAsase:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المالكات الاساسيات", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/TheBasics') and (data.TheBasicsQ or data.TheMasicsQ) then
local UserId = Text:match('(%d+)/TheBasics')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheBasics:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المنشئين الاساسيين", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Originators') and (data.TheBasics or data.TheMasics) then
local UserId = Text:match('(%d+)/Originators')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Originators:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المنشئين", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Managers') and (data.Originators or data.Origimators) then
local UserId = Text:match('(%d+)/Managers')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Managers:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المدراء", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Addictive') and (data.Managers or data.Mamagers) then
local UserId = Text:match('(%d+)/Addictive')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Addictive:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح الادمنيه", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/DelDistinguished') then
local UserId = Text:match('(%d+)/DelDistinguished')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Distinguished:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المميزين", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/MevelopersQ') and data.ControllerBot then
local UserId = Text:match('(%d+)/MevelopersQ')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:MevelopersQ:Groups") 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح قائمه المطورات الثانويات🎖️", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Mevelopers') and (data.DevelopersQ or data.MevelopersQ) then
local UserId = Text:match('(%d+)/Mevelopers')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Mevelopers:Groups") 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح قائمه المطورات🎖️", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/TheMasicsQ') and (data.Developers or data.Mevelopers) then
local UserId = Text:match('(%d+)/TheMasicsQ')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheMasicsQ:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المالكات", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/TheMasics') and (data.TheBasicsQ or data.TheMasicsQ) then
local UserId = Text:match('(%d+)/TheMasics')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:TheMasics:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المنشئات الاساسيات", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Origimators') and (data.TheBasics or data.TheMasics) then
local UserId = Text:match('(%d+)/Origimators')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Origimators:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المنشئات", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Mamagers') and (data.Originators or data.Origimators) then
local UserId = Text:match('(%d+)/Mamagers')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Mamagers:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المديرات", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Mddictive') and (data.Managers or data.Mamagers) then
local UserId = Text:match('(%d+)/Mddictive')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Mddictive:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح الادمونات", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/DelMistinguished') then
local UserId = Text:match('(%d+)/DelMistinguished')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:Mistinguished:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المميزات", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/KtmAll') and data.ControllerBot then
local UserId = Text:match('(%d+)/KtmAll')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:KtmAll:Groups") 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المكتومين عام", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/BanAll') and data.ControllerBot then
local UserId = Text:match('(%d+)/BanAll')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:BanAll:Groups") 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المحظورين عام", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/BanGroup') and (data.Addictive or data.Mddictive) then
local UserId = Text:match('(%d+)/BanGroup')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:BanGroup:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المحظورين", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/SilentGroupGroup') and (data.Addictive or data.Mddictive) then
local UserId = Text:match('(%d+)/SilentGroupGroup')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(Gold.."Gold:SilentGroup:Group"..ChatId) 
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="رجوع",data=UserId..'/back_lists'},
},
}
}
edit(ChatId,Msg_id,"⇜ تم مسح المكتومين", "md",true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Delkholat') then
local UserId = Text:match('(%d+)/Delkholat')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."kholat:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تم مسح جميع خولات المجموعة*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Delwtk') then
local UserId = Text:match('(%d+)/Delwtk')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."wtka:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تـم مسـح جميـع عروسـات المجمـوعـه .. بنجـاح ✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Deltwhd') then
local UserId = Text:match('(%d+)/Deltwhd')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."moza:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تم مسح جميـع مزز المجموعـه .. بنجـاح ✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Delklb') then
local UserId = Text:match('(%d+)/Delklb')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."klb:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تم مسح جميع كـلاب المجموعـة ✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Delmar') then
local UserId = Text:match('(%d+)/Delmar')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."mar:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تم مسح جميع حمير المجموعة*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Delsmb') then
local UserId = Text:match('(%d+)/Delsmb')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."smb:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تم مسح صـاكين الكـروب .. بنجـاح*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Delsmba') then
local UserId = Text:match('(%d+)/Delsmba')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."smba:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تم مسح صـاكات الكـروب .. بنجـاح*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Delhat') then
local UserId = Text:match('(%d+)/Delhat')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."hat:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تم مسح حتيت الكـروب .. بنجـاح*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Delhata') then
local UserId = Text:match('(%d+)/Delhata')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."hata:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تم مسح حـاتات الكـروب .. بنجـاح*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Delkdbw') then
local UserId = Text:match('(%d+)/Delkdbw')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."kdbw:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تـم مسـح جميـع الخراطيـن .. بنجـاح ✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Delkdbb') then
local UserId = Text:match('(%d+)/Delkdbb')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."kdbb:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تـم مسـح جميـع الخـراطات .. بنجـاح ✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Del2rd') then
local UserId = Text:match('(%d+)/Del2rd')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."2rd:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تـم مسـح جميـع القـرود .. بنجـاح ✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Del3ra') then
local UserId = Text:match('(%d+)/Del3ra')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."3ra:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تم مسح صايعيـن الجـروب .. بنجـاح ✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Del2rbh') then
local UserId = Text:match('(%d+)/Del2rbh')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."2rbh:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تم مسح رُبـاح القـروب .. بنجـاح ✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Del3rbh') then
local UserId = Text:match('(%d+)/Del3rbh')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."3rbh:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تم مسح ربحـات القـروب .. بنجـاح ✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Del2db') then
local UserId = Text:match('(%d+)/Del2db')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."2db:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تم مسح دببـه القـروب .. بنجـاح ✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Del3db') then
local UserId = Text:match('(%d+)/Del3db')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."3db:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تم مسح دبدوبـات القـروب .. بنجـاح ✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Del2kdm') then
local UserId = Text:match('(%d+)/Del2kdm')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."2kdm:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تم مسح اخطـام القـروب .. بنجـاح ✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Del3kdm') then
local UserId = Text:match('(%d+)/Del3kdm')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."3kdm:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تم مسح خاطمـات القـروب .. بنجـاح ✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/Del8by') then
local UserId = Text:match('(%d+)/Del8by')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."8by:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تـم مسـح جميـع الأغبيـاء .. بنجـاح ✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/bwoman:Group') then
local UserId = Text:match('(%d+)/bwoman:Group')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."bwoman:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تـم مسـح جميـع بنـاتـك .. بنجـاح ✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/botaua:Group') then
local UserId = Text:match('(%d+)/botaua:Group')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."botaua:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تـم مسـح جميـع ولادك .. بنجـاح ✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/bkika:Group') then
local UserId = Text:match('(%d+)/bkika:Group')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."kika:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تـم مسـح جميـع كيكـات الكـروب .. بنجـاح 🍰😭✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/bassl:Group') then
local UserId = Text:match('(%d+)/bassl:Group')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."assl:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تـم مسـح قائمـة العسـل .. بنجـاح 🍯😭✓*", 'md', false)
end
end
elseif Text and Text:match('(%d+)/bzk:Group') then
local UserId = Text:match('(%d+)/bzk:Group')
if tonumber(IdUser) == tonumber(UserId) then
if not data.Originators or not data.Origimators then
edit(ChatId,Msg_id,"*⇜ هـذا الامـر يخـص المنشئيـن*", 'md', false)
else
Redis:del(Gold.."zk:Group"..ChatId) 
edit(ChatId,Msg_id,"*⇜ تـم تنظيـف قائمـة الـزق .. بنجـاح 💩 👉😹✓*", 'md', false)
end
end
end
end
end
