function rdood(msg)
text = nil
if msg and msg.content and msg.content.text then
xname =  (Redis:get(Zelzal.."Zelzal:Name:Bot") or "لا يوجد بعد") 
text = msg.content.text.text
if text:match("^"..xname.." (.*)$") then
text = text:match("^"..xname.." (.*)$")
end
end
local msg_chat_id = msg.chat_id
local msg_id = msg.id
local msg_reply_id = msg.reply_to_message_id
local msg_user_send_id = msg.sender_id.user_id
if tonumber(msg.sender_id.user_id) == tonumber(Zelzal) then
return false
end
if text then
local neww = Redis:get(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..text) or Redis:get(Zelzal.."All:Get:Reides:Commands:Group"..text)
if neww then
text = neww or text
end
end
-----------------
if text or msg.content.video_note or msg.content.document or msg.content.audio or msg.content.video or msg.content.voice_note or msg.content.sticker or msg.content.animation or msg.content.photo then
local test = Redis:get(Zelzal.."Zelzal:Text:Manager"..msg.sender_id.user_id..":"..msg_chat_id.."")
if Redis:get(Zelzal.."Zelzal:Set:Manager:rd"..msg.sender_id.user_id..":"..msg_chat_id) == "true1" then
Redis:del(Zelzal.."Zelzal:Set:Manager:rd"..msg.sender_id.user_id..":"..msg_chat_id)
if msg.content.sticker then
Redis:set(Zelzal.."Zelzal:Add:Rd:Manager:Stekrs"..test..msg_chat_id, msg.content.sticker.sticker.remote.id)  
end   
if msg.content.voice_note then
if msg.content.caption.text then
Redis:set(Zelzal.."Zelzal:Add:Rd:caption:vico"..msg.content.voice_note.voice.remote.id..msg_chat_id, msg.content.caption.text)  
end
Redis:set(Zelzal.."Zelzal:Add:Rd:Manager:Vico"..test..msg_chat_id, msg.content.voice_note.voice.remote.id)  
end   
if text then
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("","") 
Redis:set(Zelzal.."Zelzal:Add:Rd:Manager:Text"..test..msg_chat_id, text)  
end  
if msg.content.audio then
if msg.content.caption.text then
Redis:set(Zelzal.."Zelzal:Add:Rd:caption:audio"..msg.content.audio.audio.remote.id..msg_chat_id, msg.content.caption.text)  
end
Redis:set(Zelzal.."Zelzal:Add:Rd:Manager:Audio"..test..msg_chat_id, msg.content.audio.audio.remote.id)  
end
if msg.content.document then
if msg.content.caption.text then
Redis:set(Zelzal.."Zelzal:Add:Rd:caption:document"..msg.content.document.document.remote.id..msg_chat_id, msg.content.caption.text)  
end
Redis:set(Zelzal.."Zelzal:Add:Rd:Manager:File"..test..msg_chat_id, msg.content.document.document.remote.id)  
end
if msg.content.animation then
if msg.content.caption.text then
Redis:set(Zelzal.."Zelzal:Add:Rd:caption:gif"..msg.content.animation.animation.remote.id..msg_chat_id, msg.content.caption.text)  
end
Redis:set(Zelzal.."Zelzal:Add:Rd:Manager:Gif"..test..msg_chat_id, msg.content.animation.animation.remote.id)  
end
if msg.content.video_note then
Redis:set(Zelzal.."Zelzal:Add:Rd:Manager:video_note"..test..msg_chat_id, msg.content.video_note.video.remote.id)  
end
if msg.content.video then
if msg.content.caption.text then
Redis:set(Zelzal.."Zelzal:Add:Rd:caption:video"..msg.content.video.video.remote.id..msg_chat_id, msg.content.caption.text)  
end
Redis:set(Zelzal.."Zelzal:Add:Rd:Manager:Video"..test..msg_chat_id, msg.content.video.video.remote.id)  
end
if msg.content.photo then
if msg.content.photo.sizes[1].photo.remote.id then
idPhoto = msg.content.photo.sizes[1].photo.remote.id
elseif msg.content.photo.sizes[2].photo.remote.id then
idPhoto = msg.content.photo.sizes[2].photo.remote.id
elseif msg.content.photo.sizes[3].photo.remote.id then
idPhoto = msg.content.photo.sizes[3].photo.remote.id
end
if msg.content.caption.text then
Redis:set(Zelzal.."Zelzal:Add:Rd:caption:Photo"..idPhoto..msg_chat_id, msg.content.caption.text)  
end
Redis:set(Zelzal.."Zelzal:Add:Rd:Manager:Photo"..test..msg_chat_id, idPhoto)  
end
return send(msg_chat_id,msg_id,"「  "..test.."  」\nواضفنا الرد ياحلو \n✓","md",true)
end  
end
if text and text:match("^(.)$") then
if Redis:get(Zelzal.."Zelzal:Set:Manager:rd"..msg.sender_id.user_id..":"..msg_chat_id) == "true" then
Redis:set(Zelzal.."Zelzal:Set:Manager:rd"..msg.sender_id.user_id..":"..msg_chat_id,"true1")
Redis:set(Zelzal.."Zelzal:Text:Manager"..msg.sender_id.user_id..":"..msg_chat_id, text)
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:Gif"..text..msg_chat_id)   
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:Vico"..text..msg_chat_id)   
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:Stekrs"..text..msg_chat_id)     
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:Text"..text..msg_chat_id)   
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:Photo"..text..msg_chat_id)
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:Video"..text..msg_chat_id)
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:File"..text..msg_chat_id)
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:video_note"..text..msg_chat_id)
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:Audio"..text..msg_chat_id)
Redis:sadd(Zelzal.."Zelzal:List:Manager"..msg_chat_id.."", text)
send(msg_chat_id,msg_id,[[
⇜ حلو , الحين ارسل جواب الرد
⇜ ( نص,صوره,فيديو,متحركه,بصمه,اغنيه )
ٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆
 `{اليوزر}` ↬ يوزر المستخدم
 `{الرسائل}` ↬ عدد الرسائل
 `{الاسم}` ↬ اسم المستخدم
 `{الايدي}` ↬ ايدي المستخدم
 `{الرتبه}` ↬ رتبة المستخدم
 `{التعديل}` ↬ عدد التعديلات

]],"md",true)  
return false
end
end
if text and text:match("^(.)$") then
if Redis:get(Zelzal.."Zelzal:Set:Manager:rd"..msg.sender_id.user_id..":"..msg_chat_id.."") == "true2" then
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:Gif"..text..msg_chat_id)   
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:Vico"..text..msg_chat_id)   
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:Stekrs"..text..msg_chat_id)     
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:Text"..text..msg_chat_id)   
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:Photo"..text..msg_chat_id)
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:Video"..text..msg_chat_id)
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:File"..text..msg_chat_id)
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:Audio"..text..msg_chat_id)
Redis:del(Zelzal.."Zelzal:Add:Rd:Manager:video_note"..text..msg_chat_id)
Redis:del(Zelzal.."Zelzal:Set:Manager:rd"..msg.sender_id.user_id..":"..msg_chat_id)
Redis:srem(Zelzal.."Zelzal:List:Manager"..msg_chat_id.."", text)
send(msg_chat_id,msg_id,"⇜ ابشر .. مسحت الرد من الردود ","md",true)  
return false
end
end
-----------------
if text and msg.reply_to_message_id == 0 and Redis:get(Zelzal.."Zelzal:Status:ReplySudo"..msg_chat_id) then
local anemi = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:Gif"..text)   
local veico = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:vico"..text)   
local stekr = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:stekr"..text)     
local Text = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:Text"..text)   
local photo = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:Photo"..text)
local video = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:Video"..text)
local document = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:File"..text)
local audio = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:Audio"..text)
local video_note = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:video_note"..text)
if Text then 
local UserInfo = bot.getUser(msg.sender_id.user_id)
local NumMsg = Redis:get(Zelzal..'Zelzal:Num:Message:User'..msg_chat_id..':'..msg.sender_id.user_id) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = msg.Name_Controller
local NumMessageEdit = Redis:get(Zelzal..'Zelzal:Num:Message:Edit'..msg_chat_id..msg.sender_id.user_id) or 0
local Text = Text:gsub('{اليوزر}',(UserInfo.username or 'لا يوجد')) 
local Text = Text:gsub('{الاسم}',UserInfo.first_name)
local Text = Text:gsub('{الايدي}',msg.sender_id.user_id)
local Text = Text:gsub('{التعديل}',NumMessageEdit)
local Text = Text:gsub('{الرسائل}',NumMsg)
local Text = Text:gsub('{الرتبه}',Status_Gps)
if Text:match("]") then
return send(msg_chat_id,msg_id,""..Text.."","md",true)  
else
return send(msg_chat_id,msg_id,"["..Text.."]","md",true)  
end
end
if video_note then
return bot.sendVideoNote(msg_chat_id, msg.id, video_note)
end
if photo then
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:Photo"..photo) or ''
return bot.sendPhoto(msg.chat_id, msg.id, photo,'['..captionsend..']',"md")
end
if stekr then 
return bot.sendSticker(msg_chat_id, msg.id, stekr)
end
if veico then 
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:vico"..veico) or ''
return bot.sendVoiceNote(msg_chat_id, msg.id, veico, '['..captionsend..']',"md")
end
if video then 
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:video"..video) or ''
return bot.sendVideo(msg_chat_id, msg.id, video, '['..captionsend..']', "md")
end
if anemi then 
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:gif"..anemi) or ''
return bot.sendAnimation(msg_chat_id, msg.id, anemi, '['..captionsend..']', "md")
end
if document then
return bot.sendDocument(msg_chat_id, msg.id, document, '', 'md')
end  
if audio then
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:audio"..audio) or ''
return bot.sendAudio(msg_chat_id, msg.id, audio, '['..captionsend..']',"md")
end
end
if text and msg.reply_to_message_id ~= 0 and Redis:get(Zelzal.."Zelzal:Status:ReplySudo"..msg_chat_id) then
local anemi = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:Gif"..text)   
local veico = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:vico"..text)   
local stekr = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:stekr"..text)     
local Text = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:Text"..text)   
local photo = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:Photo"..text)
local video = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:Video"..text)
local document = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:File"..text)
local audio = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:Audio"..text)
local video_note = Redis:get(Zelzal.."Zelzal:Add:Rd:Sudo:video_note"..text)
if Text then 
local UserInfo = bot.getUser(msg.sender_id.user_id)
local NumMsg = Redis:get(Zelzal..'Zelzal:Num:Message:User'..msg_chat_id..':'..msg.sender_id.user_id) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = msg.Name_Controller
local NumMessageEdit = Redis:get(Zelzal..'Zelzal:Num:Message:Edit'..msg_chat_id..msg.sender_id.user_id) or 0
local Text = Text:gsub('{اليوزر}',(UserInfo.username or 'لا يوجد')) 
local Text = Text:gsub('{الاسم}',UserInfo.first_name)
local Text = Text:gsub('{الايدي}',msg.sender_id.user_id)
local Text = Text:gsub('{التعديل}',NumMessageEdit)
local Text = Text:gsub('{الرسائل}',NumMsg)
local Text = Text:gsub('{الرتبه}',Status_Gps)
if Text:match("]") then
return send(msg_chat_id,msg_reply_id,""..Text.."","md",true)  
else
return send(msg_chat_id,msg_reply_id,"["..Text.."]","md",true)  
end
end
if video_note then
return bot.sendVideoNote(msg_chat_id, msg_reply_id, video_note)
end
if photo then
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:Photo"..photo) or ''
return bot.sendPhoto(msg.chat_id, msg_reply_id, photo,'['..captionsend..']',"md")
end
if stekr then 
return bot.sendSticker(msg_chat_id, msg_reply_id, stekr)
end
if veico then 
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:vico"..veico) or ''
return bot.sendVoiceNote(msg_chat_id, msg_reply_id, veico, '['..captionsend..']',"md")
end
if video then 
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:video"..video) or ''
return bot.sendVideo(msg_chat_id, msg_reply_id, video, '['..captionsend..']', "md")
end
if anemi then 
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:gif"..anemi) or ''
return bot.sendAnimation(msg_chat_id, msg_reply_id, anemi, '['..captionsend..']', "md")
end
if document then
return bot.sendDocument(msg_chat_id, msg_reply_id, document, '', 'md')
end  
if audio then
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:audio"..audio) or ''
return bot.sendAudio(msg_chat_id, msg_reply_id, audio, '['..captionsend..']',"md")
end
end
---- ردود العادية ----
if text and msg.reply_to_message_id == 0 and Redis:get(Zelzal.."Zelzal:Status:Reply"..msg_chat_id) then
local anemi = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:Gif"..text..msg_chat_id)   
local veico = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:Vico"..text..msg_chat_id)   
local stekr = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:Stekrs"..text..msg_chat_id)     
local Texingt = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:Text"..text..msg_chat_id)   
local photo = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:Photo"..text..msg_chat_id)
local video = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:Video"..text..msg_chat_id)
local document = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:File"..text..msg_chat_id)
local audio = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:Audio"..text..msg_chat_id)
local video_note = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:video_note"..text..msg_chat_id)
if Texingt then 
local UserInfo = bot.getUser(msg.sender_id.user_id)
local NumMsg = Redis:get(Zelzal..'Zelzal:Num:Message:User'..msg_chat_id..':'..msg.sender_id.user_id) or 0
local TotalMsg = Total_message(NumMsg) 
local Status_Gps = msg.Name_Controller
local NumMessageEdit = Redis:get(Zelzal..'Zelzal:Num:Message:Edit'..msg_chat_id..msg.sender_id.user_id) or 0
local Texingt = Texingt:gsub('{اليوزر}',(UserInfo.username or 'لا يوجد')) 
local Texingt = Texingt:gsub('{الاسم}',UserInfo.first_name)
local Texingt = Texingt:gsub('{الايدي}',msg.sender_id.user_id)
local Texingt = Texingt:gsub('{التعديل}',NumMessageEdit)
local Texingt = Texingt:gsub('{الرسائل}',NumMsg)
local Texingt = Texingt:gsub('{الرتبه}',Status_Gps)
if Texingt:match("]") then
return send(msg_chat_id,msg_id,""..Texingt.."","md",true)  
else
return send(msg_chat_id,msg_id,"["..Texingt.."]","md",true)  
end
end
if video_note then
return bot.sendVideoNote(msg_chat_id, msg.id, video_note)
end
if photo then
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:Photo"..photo..msg_chat_id) or ''
return bot.sendPhoto(msg.chat_id, msg.id, photo,'['..captionsend..']',"md")
end  
if stekr then 
return bot.sendSticker(msg_chat_id, msg.id, stekr)
end
if veico then
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:vico"..veico..msg_chat_id) or ''
return bot.sendVoiceNote(msg_chat_id, msg.id, veico, '['..captionsend..']',"md")
end
if video then 
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:video"..video..msg_chat_id) or ''
return bot.sendVideo(msg_chat_id, msg.id, video, '['..captionsend..']', "md")
end
if anemi then
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:gif"..anemi..msg_chat_id) or ''
return bot.sendAnimation(msg_chat_id, msg.id, anemi, '['..captionsend..']', "md")
end
if document then
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:document"..document..msg_chat_id) or ''
return bot.sendDocument(msg_chat_id, msg.id, document, '['..captionsend..']', 'md')
end  
if audio then
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:audio"..audio..msg_chat_id) or ''
return bot.sendAudio(msg_chat_id, msg.id, audio, '['..captionsend..']',"md")
end
end
if text and msg.reply_to_message_id ~= 0 and Redis:get(Zelzal.."Zelzal:Status:Reply"..msg_chat_id) then
local anemi = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:Gif"..text..msg_chat_id)   
local veico = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:Vico"..text..msg_chat_id)   
local stekr = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:Stekrs"..text..msg_chat_id)     
local Texingt = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:Text"..text..msg_chat_id)   
local photo = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:Photo"..text..msg_chat_id)
local video = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:Video"..text..msg_chat_id)
local document = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:File"..text..msg_chat_id)
local audio = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:Audio"..text..msg_chat_id)
local video_note = Redis:get(Zelzal.."Zelzal:Add:Rd:Manager:video_note"..text..msg_chat_id)
if Texingt then 
local UserInfo = bot.getUser(msg.sender_id.user_id)
local NumMsg = Redis:get(Zelzal..'Zelzal:Num:Message:User'..msg_chat_id..':'..msg.sender_id.user_id) or 0
local TotalMsg = Total_message(NumMsg) 
local Status_Gps = msg.Name_Controller
local NumMessageEdit = Redis:get(Zelzal..'Zelzal:Num:Message:Edit'..msg_chat_id..msg.sender_id.user_id) or 0
local Texingt = Texingt:gsub('{اليوزر}',(UserInfo.username or 'لا يوجد')) 
local Texingt = Texingt:gsub('{الاسم}',UserInfo.first_name)
local Texingt = Texingt:gsub('{الايدي}',msg.sender_id.user_id)
local Texingt = Texingt:gsub('{التعديل}',NumMessageEdit)
local Texingt = Texingt:gsub('{الرسائل}',NumMsg)
local Texingt = Texingt:gsub('{الرتبه}',Status_Gps)
if Texingt:match("]") then
return send(msg_chat_id,msg_reply_id,""..Texingt.."","md",true)  
else
return send(msg_chat_id,msg_reply_id,"["..Texingt.."]","md",true)  
end
end
if video_note then
return bot.sendVideoNote(msg_chat_id, msg_reply_id, video_note)
end
if photo then
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:Photo"..photo..msg_chat_id) or ''
return bot.sendPhoto(msg.chat_id, msg_reply_id, photo,'['..captionsend..']',"md")
end  
if stekr then 
return bot.sendSticker(msg_chat_id, msg_reply_id, stekr)
end
if veico then
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:vico"..veico..msg_chat_id) or ''
return bot.sendVoiceNote(msg_chat_id, msg_reply_id, veico, '['..captionsend..']',"md")
end
if video then 
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:video"..video..msg_chat_id) or ''
return bot.sendVideo(msg_chat_id, msg_reply_id, video, '['..captionsend..']', "md")
end
if anemi then
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:gif"..anemi..msg_chat_id) or ''
return bot.sendAnimation(msg_chat_id, msg_reply_id, anemi, '['..captionsend..']', "md")
end
if document then
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:document"..document..msg_chat_id) or ''
return bot.sendDocument(msg_chat_id, msg_reply_id, document, '['..captionsend..']', 'md')
end  
if audio then
local captionsend = Redis:get(Zelzal.."Zelzal:Add:Rd:caption:audio"..audio..msg_chat_id) or ''
return bot.sendAudio(msg_chat_id, msg_reply_id, audio, '['..captionsend..']',"md")
end
end
-----------------
if Redis:get(Zelzal..'Zelzal:zelzal:egibtt'..msg.chat_id) then
if text == "" or text== "" then
local ban = bot.getUser(msg.sender_id.user_id)
local ZelzalTeaM = {"*جعل مساك حالي مثل وجهك يا*  ["..ban.first_name.."](tg://user?id="..ban.id..") 🌚"}
send(msg.chat_id,msg_id,''..ZelzalTeaM[math.random(#ZelzalTeaM)]..'',"md",true)  
return false
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match('^ايدي (%d+)$') then
numberidd = text:match('^ايدي (%d+)$')
numberid = math.floor(numberidd)
if not Redis:get(Zelzal.."Zelzal:Status:Id"..msg.chat_id) then
return false
end
if (not msg.Distinguished or not msg.Mistinguished) and Redis:get(Zelzal..'idnotmem'..msg.chat_id)  then
return send(msg.chat_id,msg.id,'\n*⇜ عذراً ايدي العضو معطل*',"md")
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,"ايدي") ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local UserInfo = bot.getUser(msg.sender_id.user_id)
local InfoUser = bot.getUserFullInfo(msg.sender_id.user_id)
local Bio = FlterBio(getbio(msg.sender_id.user_id))
local nameuser = FlterBio(UserInfo.first_name)
local photo = bot.getUserProfilePhotos(msg.sender_id.user_id)
local UserId = msg.sender_id.user_id
local RinkBot = msg.Name_Controller
local TotalMsg = Redis:get(Zelzal..'Zelzal:Num:Message:User'..msg.chat_id..':'..msg.sender_id.user_id) or 0
local TotalPhoto = photo.total_count or 0
local TotalEdit = Redis:get(Zelzal..'Zelzal:Num:Message:Edit'..msg.chat_id..msg.sender_id.user_id) or 0
local TotalMsgT = Total_message(TotalMsg) 
local NumberGames = Redis:get(Zelzal.."Zelzal:Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
local NumAdd = Redis:get(Zelzal.."Zelzal:Num:Add:Memp"..msg.chat_id..":"..msg.sender_id.user_id) or 0
if UserInfo.username then
UserInfousername = '@'..UserInfo.username..''
else
UserInfousername = 'لا يوجد يوزر'
end
if Redis:get(Zelzal.."Zelzal:Status:IdPhoto"..msg.chat_id) then
if photo.total_count < numberid then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text= UserInfo.first_name ,url = "tg://user?id="..UserInfo.id..""},
},
}
}
return bot.sendText(msg.chat_id, msg.id,
'لا يمكنني عرض الصورة رقم '..numberid..' لان عدد صورك '..photo.total_count..
'\n• 𝖭𝖺𝗆𝖾 𖦹 '..UserInfo.first_name..
'\n• 𝖨𝖣 𖦹 '..UserId..
'\n• 𝖴𝗌𝖾𝗋𝗇𝖺𝗆𝖾 𖦹 ['..UserInfousername..
']\n• 𝖱𝖺𝗇𝗄 𖦹 '..RinkBot..
'\n• 𝖬𝗌𝗀 𖦹 '..TotalMsg..
'\n• 𝖯𝗁𝗈𝗍𝗈 𖦹 '..TotalPhoto..
'\n• Bio 𖦹 ['..Bio..
']', "md",false, false, false, false, reply_markup)
end
if photo and photo.total_count and photo.total_count > 0 then
if photo.photos[numberid].animation then
if Redis:get(Zelzal..'porn'..msg.chat_id) then
local thumb_id = photo.photos[numberid].animation.file.remote.id
local idd = photo.photos[numberid].animation.file.id
if Redis:sismember(Zelzal.."sex_ids",idd) then
os.remove(""..num..".mp4")
return false 
end
if Redis:sismember(Zelzal.."not_sex_ids",idd) then
local File = request("https://api.telegram.org/bot" .. Token .. "/getfile?file_id="..photo.photos[numberid].animation.file.remote.id) 
local fc = JSON.decode(File)
local Name_File = download("https://api.telegram.org/file/bot"..Token.."/"..JSON.decode(File).result.file_path, "./id.mp4") 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text= UserInfo.first_name ,url = "tg://user?id="..UserInfo.id..""},
},
}
}
else
local num = math.random(99999)
local Fille = json:decode(https.request('https://api.telegram.org/bot'..Token..'/getfile?file_id='..thumb_id))
local dw = download('https://api.telegram.org/file/bot'..Token..'/'..Fille.result.file_path,""..num..".mp4")
local out = io.popen("python3.8 ./detect.py '"..dw.."'"):read('*a')
print(out)
if string.find(out, "NONPORN") then
Redis:sadd(Zelzal.."not_sex_ids",idd)
os.remove(""..num..".mp4")
else
Redis:sadd(Zelzal.."sex_ids",idd) 
os.remove(""..num..".mp4")
return false 
end
end
end
local File = request("https://api.telegram.org/bot" .. Token .. "/getfile?file_id="..photo.photos[numberid].animation.file.remote.id) 
local fc = JSON.decode(File)
local Name_File = download("https://api.telegram.org/file/bot"..Token.."/"..JSON.decode(File).result.file_path, "./id.mp4") 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text= UserInfo.first_name ,url = "tg://user?id="..UserInfo.id..""},
},
}
}
return bot.sendAnimation(msg.chat_id, msg.id, Name_File,
'\n• 𝖭𝖺m𝖾 𖦹 '..UserInfo.first_name..
'\n• 𝖨𝖣 𖦹 '..UserId..
'\n• 𝖴𝗌𝖾𝗋n𝖺𝗆𝖾 𖦹 ['..UserInfousername..
']\n• 𝖱𝖺𝗇𝗄 𖦹 '..RinkBot..
'\n• 𝖬𝗌𝗀 𖦹 '..TotalMsg..
'\n• 𝖯𝗁𝗈𝗍𝗈 𖦹 '..TotalPhoto..
'\n• 𝖡𝗂𝗈 𖦹 ['..Bio..
']', "md", true, nil, nil, nil, nil, nil, nil, nil, nil, reply_markup)
else
if Redis:get(Zelzal..'porn'..msg.chat_id) then
local thumb_id = photo.photos[numberid].sizes[#photo.photos[numberid].sizes].photo.remote.id
local idd = photo.photos[numberid].sizes[#photo.photos[numberid].sizes].photo.id
if Redis:sismember(Zelzal.."sex_ids",idd) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text= UserInfo.first_name ,url = "tg://user?id="..UserInfo.id..""},
},
}
}
os.remove(""..num..".jpg")
return bot.sendText(msg.chat_id, msg.id,
'\n• 𝖭𝖺𝗆𝖾 𖦹 '..UserInfo.first_name..
'\n• 𝖨𝖣 𖦹 '..UserId..
'\n• 𝖴𝗌𝖾𝗋𝗇𝖺𝗆𝖾 𖦹 ['..UserInfousername..
']\n• 𝖱𝖺𝗇𝗄 𖦹 '..RinkBot..
'\n• 𝖬𝗌𝗀 𖦹 '..TotalMsg..
'\n• 𝖯𝗁𝗈𝗍𝗈 𖦹 '..TotalPhoto..
'\n• 𝖡𝗂𝗈 𖦹 ['..Bio..
']', "md",false, false, false, false, reply_markup)
end
if Redis:sismember(Zelzal.."not_sex_ids",idd) then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text= UserInfo.first_name ,url = "tg://user?id="..UserInfo.id..""},
},
}
}
return bot.sendPhoto(msg.chat_id, msg.id, photo.photos[numberid].sizes[#photo.photos[1].sizes].photo.remote.id,
'\n• 𝖭a𝗆𝖾 𖦹 '..UserInfo.first_name..
'\n• 𝖨𝖣 𖦹 '..UserId..
'\n• 𝖴𝗌𝖾𝗋𝗇𝖺𝗆𝖾 𖦹 ['..UserInfousername..
']\n• 𝖱𝖺𝗇k 𖦹 '..RinkBot..
'\n• 𝖬𝗌𝗀 𖦹 '..TotalMsg..
'\n• 𝖯𝗁oto 𖦹 '..TotalPhoto..
'\n• 𝖡𝗂𝗈 𖦹 ['..Bio..
']', "md", true, nil, nil, nil, nil, nil, nil, nil, nil, reply_markup)
else
local num = math.random(99999)
local Fille = json:decode(https.request('https://api.telegram.org/bot'..Token..'/getfile?file_id='..thumb_id))
local dw = download('https://api.telegram.org/file/bot'..Token..'/'..Fille.result.file_path,""..num..".jpg")
local out = io.popen("python3.8 ./detect.py '"..dw.."'"):read('*a')
print(out)
if string.find(out, "NONPORN") then
Redis:sadd(Zelzal.."not_sex_ids",idd)
os.remove(""..num..".jpg")
else
Redis:sadd(Zelzal.."sex_ids",idd) 
os.remove(""..num..".jpg")
return false 
end
end
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text= UserInfo.first_name ,url = "tg://user?id="..UserInfo.id..""},
},
}
}
return bot.sendPhoto(msg.chat_id, msg.id, photo.photos[numberid].sizes[#photo.photos[1].sizes].photo.remote.id,
'\n• 𝖭a𝗆𝖾 𖦹 '..UserInfo.first_name..
'\n• 𝖨𝖣 𖦹 '..UserId..
'\n• 𝖴𝗌𝖾𝗋𝗇𝖺𝗆𝖾 𖦹 ['..UserInfousername..
']\n• 𝖱𝖺𝗇k 𖦹 '..RinkBot..
'\n• 𝖬𝗌𝗀 𖦹 '..TotalMsg..
'\n• 𝖯𝗁oto 𖦹 '..TotalPhoto..
'\n• 𝖡𝗂𝗈 𖦹 ['..Bio..
']', "md", true, nil, nil, nil, nil, nil, nil, nil, nil, reply_markup)
end
else
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text= UserInfo.first_name ,url = "tg://user?id="..UserInfo.id..""},
},
}
}
return bot.sendText(msg.chat_id, msg.id,
'\n• 𝖭𝖺𝗆𝖾 𖦹 '..UserInfo.first_name..
'\n• 𝖨𝖣 𖦹 '..UserId..
'\n• 𝖴𝗌𝖾𝗋𝗇𝖺𝗆𝖾 𖦹 ['..UserInfousername..
']\n• 𝖱𝖺𝗇𝗄 𖦹 '..RinkBot..
'\n• 𝖬𝗌𝗀 𖦹 '..TotalMsg..
'\n• 𝖯𝗁𝗈𝗍𝗈 𖦹 '..TotalPhoto..
'\n• 𝖡𝗂𝗈 𖦹 ['..Bio..
']', "md",false, false, false, false, reply_markup)
end
end
end
if text == "الحاسبه" or text == "اله حاسبه" or text == "الاله الحاسبه" or text == "الالة الحاسبة" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
Redis:del(Zelzal..msg.sender_id.user_id..msg.chat_id.."num")
start_mrkup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'ON', data = msg.sender_id.user_id..'ON'},{text = 'DEL', data = msg.sender_id.user_id..'DEL'},{text = 'AC', data = msg.sender_id.user_id..'rest'},{text = 'OFF', data = msg.sender_id.user_id..'OFF'},
},
{
{text = '^', data = msg.sender_id.user_id..'calc&^'},{text = '√', data = msg.sender_id.user_id..'calc&√'},{text = '(', data = msg.sender_id.user_id..'calc&('},{text = ')', data = msg.sender_id.user_id..'calc&)'},
},
{
{text = '7', data = msg.sender_id.user_id..'calc&7'},{text = '8', data = msg.sender_id.user_id..'calc&8'},{text = '9', data = msg.sender_id.user_id..'calc&9'},{text = '÷', data = msg.sender_id.user_id..'calc&/'},
},
{
{text = '4', data = msg.sender_id.user_id..'calc&4'},{text = '5', data = msg.sender_id.user_id..'calc&5'},{text = '6', data = msg.sender_id.user_id..'calc&6'},{text = 'x', data = msg.sender_id.user_id..'calc&*'},
},
{
{text = '1', data = msg.sender_id.user_id..'calc&1'},{text = '2', data = msg.sender_id.user_id..'calc&2'},{text = '3', data = msg.sender_id.user_id..'calc&3'},{text = '-', data = msg.sender_id.user_id..'calc&-'},
},
{
{text = '0', data = msg.sender_id.user_id..'calc&0'},{text = '.', data = msg.sender_id.user_id..'calc&.'},{text = '+', data = msg.sender_id.user_id..'calc&+'},{text = '=', data = msg.sender_id.user_id..'equal'},
},
}
}
bot.sendText(msg.chat_id,msg.id," الالة الحاسبة\n✓","md",false, false, false, false, start_mrkup)
return false 
end
--------------
if text== ""  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مبرمج السورس*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مطور السورس*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المالك الاساسي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور الثانوي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:tahaath"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو غبي \n⇜ تمت إضافته إلى قائمه الاغبياء\n✓️*","md") 
elseif text== ""  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:tahaath"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل العضو غبي \n⇜ تمت الزاله من قائمة الاغبياء\n✓️*","md") 
elseif text== ""  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مبرمج السورس*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مطور السورس*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المالك الاساسي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور الثانوي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:klp"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو كلب  \n⇜ تمت إضافته إلى قائمه الكلاب\n✓️*","md") 
elseif text== ""  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مبرمج السورس*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مطور السورس*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المالك الاساسي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور الثانوي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:donke"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو حمار \n⇜ تمت إضافته إلى قائمه الحمير\n✓️*","md") 
elseif text== "تنزيل حمار"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:donke"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل العضو حمار \n⇜ تمت ازالته من قائمه الحمير \n✓️*","md") 
elseif text== "رفع بقره"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مبرمج السورس*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مطور السورس*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المالك الاساسي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور الثانوي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:bkra"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو بقره \n⇜ تم اضافته الى قائمه الابقار  \n✓️*","md") 
elseif text== "تنزيل بقره"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:bkra"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل العضو بقره \n⇜ تمت ٳزالته من قائمة البقرات \n✓️*","md") 
elseif text== "رفع ملك"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:kink"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو ملك \n⇜ تم اضافته الى قائمه الملوك \n✓️*","md") 
elseif text== "تنزيل ملك"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:kink"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل العضو ملك\n⇜ تم ازالته من قائمة ألملوك  \n✓️*","md") 
elseif text== "رفع ملكه"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:Quean"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو ملكه \n⇜ تم اضافتها الى قائمه الملكات \n✓️*","md") 
elseif text== "تنزيل ملكه"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:Quean"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل العضو ملكه\n⇜ تم ازالته من قائمة الملكات  \n✓️*","md") 
elseif text== "تنزيل كلب"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:klp"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي \n⇜ تم تنزيل العضو كلب \n⇜ تمت إزالته من قائمه الكلاب\n✓️*","md") 
elseif text== "تنزيل زاحف"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:zahf"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل العضو زاحف \n⇜ تم ازالته من قائمه الزواحف\n✓️*","md") 
elseif text== "رفع زاحف"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مبرمج السورس*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مطور السورس*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المالك الاساسي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور الثانوي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:zahf"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو زاحف \n⇜ تم اضافته الى قائمه الزواحف\n✓️*","md") 
elseif text== "رفع ماعز"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مبرمج السورس*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مطور السورس*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المالك الاساسي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور الثانوي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:sakl"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو ماعز \n⇜  تم اضافته الى قائمه ماعز  \n✓️*","md") 
elseif text== "تنزيل ماعز"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:sakl"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل العضو ماعز \n⇜ تمت ٳزالته من قائمة الماعز\n✓️*","md") 
elseif text== "رفع بقلبي"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:klpe"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو قلبك\n⇜ تم اضافته الى قائمة قلبك \n✓️*","md") 
elseif text== "تنزيل من قلبي"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then  
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:klpe"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل العضو قلبك\n⇜ تمت ازالته من قائمه قلبك\n✓️*","md") 
elseif text== "رفع تاج"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:tagge"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو تاج =  \n⇜ تم اضافته الى قائمه التيجان \n✓️*","md") 
elseif text== "تنزيل تاج"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:tagge"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل العضو تاج\n⇜ تم تنزيله من قائمة التيجان  \n✓️*","md") 
elseif text== "رفع زوجتي"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
if Controller(msg.chat_id,Message_Reply.sender_id.user_id) then
return send(msg.chat_id,msg_id,"\n* ⇜ هييه ياورع .. مايمديك تهين『 "..Controller(msg.chat_id,Message_Reply.sender_id.user_id).." 』*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:mrtee"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜تم رفع العضو زوجتك\n تم اضافتكم الى قائمه المتزوجين\n✓️*","md") 
elseif text== "تنزيل زوجتي"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مبرمج السورس*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مطور السورس*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المالك الاساسي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور الثانوي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:mrtee"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل العضو زوجتك\nتم ازالتكم من قائمه المتزوجين\n✓️*","md") 
elseif text== "رفع لوكي"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مبرمج السورس*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مطور السورس*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المالك الاساسي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور الثانوي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:loke"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفعه ضمن اللوكيه👨‍🦯😹\n✓️*","md") 
elseif text== "تنزيل لوكي"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:loke"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ \n✓️*","md") 
elseif text== "رفع خروف"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مبرمج السورس*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين مطور السورس*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المالك الاساسي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور الثانوي*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ هييه ياورع .. مايمديك تهين المطور*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:tele"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو خروف \n⇜ تم اضافته في قائمه الخرفان *","md") 
elseif text== "تنزيل خروف"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:tele"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيله من قائمه الخرفان\n✓️*","md") 
elseif text == ("الملوك") then
local list = Redis:smembers(Zelzal.."mero:kink"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد ملوك*","md") end
t = "\n*⇜ قائمة الملوك\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.."-*  : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("البقرات") then
local list = Redis:smembers(Zelzal.."mero:bkra"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد بقرات*","md") end
t = "\n*⇜ قائمة البقرات\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.."-*   : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("الملكات") then
local list = Redis:smembers(Zelzal.."mero:Quean"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد ملكات*","md") end
t = "\n*⇜ قائمة الملكات\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.."-*   : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("مسح الملوك") then
if not msg.Managers or not msg.Mamagers then
return send(msg.chat_id,msg_id,'\n*⇜ هذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
Redis:del(Zelzal.."mero:kink"..msg.chat_id)
send(msg.chat_id,msg_id,'*تم مسح الملوك* ',"md")
elseif text == ("مسح البقرات") then
if not msg.Managers or not msg.Mamagers then
return send(msg.chat_id,msg_id,'\n*⇜ هذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
Redis:del(Zelzal.."mero:bkra"..msg.chat_id)
send(msg.chat_id,msg_id,'*تم مسح البقرات *',"md")
elseif text == ("مسح الملكات")  then
if not msg.Managers or not msg.Mamagers then
return send(msg.chat_id,msg_id,'\n*⇜ هذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
Redis:del(Zelzal.."mero:Quean"..msg.chat_id)
send(msg.chat_id,msg_id,'*تم مسح الملكات *',"md")
elseif text == ("قائمه الاغبياء") then
local list = Redis:smembers(Zelzal.."mero:tahaath"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد اغبياء*","md") end
t = "\n*⇜ قائمة الاغبياء\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.."-*  : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("مسح قائمه الاغبياء ")  then
if not msg.Managers or not msg.Mamagers then
return send(msg.chat_id,msg_id,'\n*⇜ هذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
Redis:del(Zelzal.."mero:tele"..msg.chat_id)
send(msg.chat_id,msg_id,'* تم مسح قائمه الخرفان *',"md")
elseif text == ("قائمه الخرفان") then
local list = Redis:smembers(Zelzal.."mero:tele"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد طليان*","md") end
t = "\n*⇜ قائمة الخرفان\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.."-*  : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("قائمه المطلقين") or text == ("المطلقين") then
local list = Redis:smembers(Zelzal.."mero:taha1"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد مطلقين*","md") end
t = "\n*⇜ قائمة المطلقين\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '[@'..UserInfo.username..']'
else
username = v 
end
t = t..""..k.."-*  : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("قائمه الكلاب") or text == ("قائمة الكلاب") then
local list = Redis:smembers(Zelzal.."mero:klp"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد كلاب*","md") end
t = "\n*⇜ قائمة الكلاب\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.."-* الكلب 🦮 : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("قائمه الحمير") then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local list = Redis:smembers(Zelzal.."mero:donke"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد حمير*","md") end
t = "\n*⇜ قائمة الحمير\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.."-*   : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("قائمه الزواحف") or text == ("قائمة الزواحف") or text == (" ") then
local list = Redis:smembers(Zelzal.."mero:zahf"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد زواحف*","md") end
t = "\n*⇜ قائمة الزواحف\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.."-*   : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("قائمه المعيز") then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local list = Redis:smembers(Zelzal.."mero:sakl"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد معيز*","md") end
t = "\n*⇜ قائمة المعيز\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.."-*  : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("قائمة التيجان") or text == ("قائمه التيجان") then
local list = Redis:smembers(Zelzal.."mero:tagge"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد تيجان *","md") end
t = "\n*⇜ قائمة التيجان\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.."-*  : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("قائمه الزوجات") then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local list = Redis:smembers(Zelzal.."mero:mrtee"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد زوجات*","md") end
t = "\n*⇜ قائمة الزوجات\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.."-* : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("salih") then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local list = Redis:smembers(Zelzal.."mero:loke"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد لوكيه*","md") end
t = "\n*⇜ قائمة اللوكيه\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.."-* لوكي🕴 : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
end
------------
if text == "رفع بقلبي" or text == "رفع قلبي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_heart:")) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ مرفوع في قلبك مسبقاً *","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*غبي انت تبي ترفع نفسك وبقلبك بعد؟؟ *","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*اقول وخر بس*","md")
elseif Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_heart:") then
return send(msg.chat_id,msg_id,"*للاسف العضو فقلب حد تاني*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_heart:")) ~= tonumber(msg.sender_id.user_id) and not Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_heart:") then
Redis:set(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_heart:", msg.sender_id.user_id)
Redis:sadd(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_heart:", Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"⇜ تم رفعه ل قلبك  ").Reply,"md",true)
end
end
if text == "تنزيل من قلبي" or text == "تنزيل قلبي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_heart:")) == tonumber(msg.sender_id.user_id) then
Redis:del(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_heart:")
Redis:srem(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_heart:", msg.chat_id..Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"تم تنزيله من قائمة قلوبك ").Reply,"md",true) 
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ هطف انت تبي تنزل نفسك من قلبك ؟*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ مايمديك تستخدم الامر على البوت*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_heart:")) ~= tonumber(msg.sender_id.user_id)then
return send(msg.chat_id,msg_id,"*⇜ تم تنزيله من قلبك مسبقا؟!*","md")
end
end
if text == "انا فقلب مين" or text == "انا قلب مين" then
if not Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_heart:") then
return send(msg.chat_id,msg_id,"*⇜ شف النشبه ذا مفكر نفسه محور الكون !*","md")
elseif Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_heart:") then
local in_heart_id = Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_heart:")
local heart_name = bot.getUser(in_heart_id).first_name
return send(msg.chat_id,msg_id,"*⇜ انت ف قلب* ["..heart_name.."](tg://user?id="..in_heart_id..")","md")
end
end
if text == "قائمه قلبي" or text == "قائمة قلبي" or text == " " or text == " " then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local heart_list = Redis:smembers(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_heart:")
if #heart_list == 0 then
return send(msg.chat_id,msg_id,"*⇜ لايوجد احد في قلبك*","md")
elseif #heart_list > 0 then
your_heart = "*-  قائمه قلبك ←  \nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(heart_list) do
local user_info = bot.getUser(v)
local name = user_info.first_name
your_heart = your_heart..k.." - ["..name.."](tg://user?id="..v..")\n"
end
return send(msg.chat_id,msg_id,your_heart,"md")
end
end
if text == "" or text == "مسح قائمه قلبي" or text == "" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local list = Redis:smembers(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_heart:")
for k,v in pairs(list) do
Redis:del(Zelzal..msg.chat_id..v.."in_heart:")
end
Redis:del(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_heart:")
return send(msg.chat_id,msg_id,"*⇜تم مسح قائمه قلبك*","md")
end
-------
if text == "رفع صديق" or text == "رفع صديقي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_frinds:")) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ مرفوع صديقك مسبقاً *","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*انت اهبل يبني عاوز ترفع نفسك صديق ؟؟*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ ابعد عني  . . صديقي هو مطوري 😡🚫*","md")
elseif Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_frinds:") then
return send(msg.chat_id,msg_id,"*للاسف هذا العضو صديق حد تاني*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_frinds:")) ~= tonumber(msg.sender_id.user_id) and not Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_frinds:") then
Redis:set(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_frinds:", msg.sender_id.user_id)
Redis:sadd(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_frinds:", Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"⇜ تم رفعه صديقك  ").Reply,"md",true)
end
end
if text == "تنزيل صديق" or text == "تنزيل صديقي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_frinds:")) == tonumber(msg.sender_id.user_id) then
Redis:del(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_frinds:")
Redis:srem(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_frinds:", msg.chat_id..Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"تم تنزيله من قائمة اصدقائك ").Reply,"md",true) 
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ انت اهبل يبني عاوز تنزل نفسك ؟!*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ ابعد عني  . . صديقي هو مطوري 😡🚫*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_frinds:")) ~= tonumber(msg.sender_id.user_id)then
return send(msg.chat_id,msg_id,"*⇜ هو صديق اصلا عشان تنزلو ؟!*","md")
end
end
if text == "انا صديق مين" or text == "انا صديقه مين" or text == "انا صديقة مين" or text == "اني صديقة مين" then
if not Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_frinds:") then
return send(msg.chat_id,msg_id,"*⇜ اقعد يعم انت محدش طايقك اصلاً ؟!*","md")
elseif Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_frinds:") then
local in_frinds_id = Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_frinds:")
local heart_name = bot.getUser(in_frinds_id).first_name
return send(msg.chat_id,msg_id,"*⇜ انت صديق* ["..heart_name.."](tg://user?id="..in_frinds_id..")","md")
end
end
if text == "اصدقائي" or text == "قائمة اصدقائي" or text == "قائمه الاصدقاء" or text == "قائمة الاصدقاء" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local heart_list = Redis:smembers(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_frinds:")
if #heart_list == 0 then
return send(msg.chat_id,msg_id,"*⇜ مسكين ماعندك اصدقاء*","md")
elseif #heart_list > 0 then
your_heart = "*- قائمة اصدقائك ←  \nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(heart_list) do
local user_info = bot.getUser(v)
local name = user_info.first_name
your_heart = your_heart..k.." - ["..name.."](tg://user?id="..v..")\n"
end
return send(msg.chat_id,msg_id,your_heart,"md")
end
end
if text == "مسح اصدقائي" or text == "مسح الاصدقاء" or text == "مسح قائمه اصدقائي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local list = Redis:smembers(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_frinds:")
for k,v in pairs(list) do
Redis:del(Zelzal..msg.chat_id..v.."in_frinds:")
end
Redis:del(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_frinds:")
return send(msg.chat_id,msg_id,"*⇜ تم مسح قائمة اصدقائك 🥲*","md")
end
-------
if text == "رفع اخ" or text == "رفع اخي" or text == "رفع اخو" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_brothers:")) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ مرفوع اخو مسبقاً *","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*انت اهبل يبني عاوز ترفع نفسك اخ ؟؟*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ ابعد عني  . . ماريد اخوان 😡🚫*","md")
elseif Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_brothers:") then
return send(msg.chat_id,msg_id,"*للاسف هذا العضو اخ حد تاني*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_brothers:")) ~= tonumber(msg.sender_id.user_id) and not Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_brothers:") then
Redis:set(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_brothers:", msg.sender_id.user_id)
Redis:sadd(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_brothers:", Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"⇜ تم رفعه اخو  ").Reply,"md",true)
end
end
if text == "تنزيل اخ" or text == "تنزيل اخي" or text == "تنزيل اخو" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_brothers:")) == tonumber(msg.sender_id.user_id) then
Redis:del(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_brothers:")
Redis:srem(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_brothers:", msg.chat_id..Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"تم تنزيله من قائمة اخوانك ").Reply,"md",true) 
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ انت اهبل يبني عاوز تنزل نفسك ؟!*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ ابعد عني  . . ماريد اخوان 😡🚫*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_brothers:")) ~= tonumber(msg.sender_id.user_id)then
return send(msg.chat_id,msg_id,"*⇜ هو اخ اصلا عشان تنزلو ؟!*","md")
end
end
if text == "انا اخ مين" or text == "انا اخت مين" or text == "انا اخت مين" or text == "اني اخت مين" or text == "انا اخو مين" then
if not Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_brothers:") then
return send(msg.chat_id,msg_id,"*⇜ اقعد يعم انت محدش طايقك اصلاً ؟!*","md")
elseif Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_brothers:") then
local in_brothers_id = Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_brothers:")
local heart_name = bot.getUser(in_brothers_id).first_name
return send(msg.chat_id,msg_id,"*⇜ انت اخو* ["..heart_name.."](tg://user?id="..in_brothers_id..")","md")
end
end
if text == "قائمة اخواني" or text == "اخواني" or text == "قائمه اخواني" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local heart_list = Redis:smembers(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_brothers:")
if #heart_list == 0 then
return send(msg.chat_id,msg_id,"*⇜ مسكين ماعندك اخوان*","md")
elseif #heart_list > 0 then
your_heart = "*- قائمة اخوانك ←  \nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(heart_list) do
local user_info = bot.getUser(v)
local name = user_info.first_name
your_heart = your_heart..k.." - ["..name.."](tg://user?id="..v..")\n"
end
return send(msg.chat_id,msg_id,your_heart,"md")
end
end
if text == "مسح اخواني" or text == "مسح الاخوان" or text == "مسح قائمه اخواني" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local list = Redis:smembers(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_brothers:")
for k,v in pairs(list) do
Redis:del(Zelzal..msg.chat_id..v.."in_brothers:")
end
Redis:del(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_brothers:")
return send(msg.chat_id,msg_id,"*⇜ تم مسح قائمة اخوانك 🥲*","md")
end
-------
if text == "رفع ضلع" or text == "رفع ضلعي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_toloii:")) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ مرفوع ضلعك مسبقاً *","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*انت اهبل يبني عاوز ترفع نفسك ضلع ؟؟*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ ابعد عني  . . ماريد ضلوع 😡🚫*","md")
elseif Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_toloii:") then
return send(msg.chat_id,msg_id,"*للاسف هذا العضو ضلع حد تاني*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_toloii:")) ~= tonumber(msg.sender_id.user_id) and not Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_toloii:") then
Redis:set(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_toloii:", msg.sender_id.user_id)
Redis:sadd(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_toloii:", Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"⇜ تم رفعه ضلع  ").Reply,"md",true)
end
end
if text == "تنزيل ضلع" or text == "تنزيل ضلعي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_toloii:")) == tonumber(msg.sender_id.user_id) then
Redis:del(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_toloii:")
Redis:srem(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_toloii:", msg.chat_id..Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"تم تنزيله من قائمة ضلوعك ").Reply,"md",true) 
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ انت اهبل يبني عاوز تنزل نفسك ؟!*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ ابعد عني  . . ماريد ضلوع 😡🚫*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_toloii:")) ~= tonumber(msg.sender_id.user_id)then
return send(msg.chat_id,msg_id,"*⇜ هو ضلع اصلا عشان تنزلو ؟!*","md")
end
end
if text == "انا ضلع مين" or text == "انا ضلعة مين" or text == "انا ضلعة مين" or text == "اني ضلعة مين" or text == "اني ضلع مين" then
if not Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_toloii:") then
return send(msg.chat_id,msg_id,"*⇜ اقعد يعم انت محدش طايقك اصلاً ؟!*","md")
elseif Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_toloii:") then
local in_toloii_id = Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_toloii:")
local heart_name = bot.getUser(in_toloii_id).first_name
return send(msg.chat_id,msg_id,"*⇜ انت ضلع* ["..heart_name.."](tg://user?id="..in_toloii_id..")","md")
end
end
if text == "ضلوعي" or text == "قائمة ضلوعي" or text == "قائمه الضلوع" or text == "قائمة الضلوع" or text == "الضلوع" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local heart_list = Redis:smembers(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_toloii:")
if #heart_list == 0 then
return send(msg.chat_id,msg_id,"*⇜ مسكين ماعندك ضلوع*","md")
elseif #heart_list > 0 then
your_heart = "*- قائمة ضلوعك ←  \nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(heart_list) do
local user_info = bot.getUser(v)
local name = user_info.first_name
your_heart = your_heart..k.." - ["..name.."](tg://user?id="..v..")\n"
end
return send(msg.chat_id,msg_id,your_heart,"md")
end
end
if text == "مسح ضلوعي" or text == "مسح الضلوع" or text == "مسح قائمه الضلوع" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local list = Redis:smembers(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_toloii:")
for k,v in pairs(list) do
Redis:del(Zelzal..msg.chat_id..v.."in_toloii:")
end
Redis:del(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_toloii:")
return send(msg.chat_id,msg_id,"*⇜ تم مسح قائمة ضلوعك 🥲*","md")
end
-------
if text == "رفع ابني" or text == "رفع ولدي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_waladi:")) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ مرفوع ولدك مسبقاً *","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*هطف انت تبي ترفع  نفسك ك ولدك ؟؟*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ *","md")
elseif Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_waladi:") then
return send(msg.chat_id,msg_id,"*للاسف هذا العضو ولد حد تاني*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_waladi:")) ~= tonumber(msg.sender_id.user_id) and not Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_waladi:") then
Redis:set(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_waladi:", msg.sender_id.user_id)
Redis:sadd(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_waladi:", Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"⇜ تم رفعه ولدك  ").Reply,"md",true)
end
end
if text == "تنزيل ابني" or text == "تنزيل ولدي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_waladi:")) == tonumber(msg.sender_id.user_id) then
Redis:del(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_waladi:")
Redis:srem(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_waladi:", msg.chat_id..Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"تم تنزيله من قائمة ولادك ").Reply,"md",true) 
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ هطف انت تبي تنزل نفسك ؟!*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ *","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_waladi:")) ~= tonumber(msg.sender_id.user_id)then
return send(msg.chat_id,msg_id,"*⇜ تم تنزيله ولدك مسبقا!*","md")
end
end
if text == "انا ابن من" or text == "انا ولد من" or text == "انا ابن مين" or text == "انا ولد مين" then
if not Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_waladi:") then
return send(msg.chat_id,msg_id,"*⇜ خذلك النشبه يبي يتبلى على الناس!*","md")
elseif Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_waladi:") then
local in_waladi_id = Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_waladi:")
local heart_name = bot.getUser(in_waladi_id).first_name
return send(msg.chat_id,msg_id,"*⇜ انت ولد* ["..heart_name.."](tg://user?id="..in_waladi_id..")","md")
end
end
if text == "قائمه ابنائي" or text == "قائمة عيالي" or text == "قائمه عيالي" or text == "ابنائي" or text == "قائمة ابنائي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local heart_list = Redis:smembers(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_waladi:")
if #heart_list == 0 then
return send(msg.chat_id,msg_id,"*⇜ مسكين ماعندك عيال*","md")
elseif #heart_list > 0 then
your_heart = "*- قائمة عيالك ←  \nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(heart_list) do
local user_info = bot.getUser(v)
local name = user_info.first_name
your_heart = your_heart..k.." - ["..name.."](tg://user?id="..v..")\n"
end
return send(msg.chat_id,msg_id,your_heart,"md")
end
end
if text == "مسح ابنائي" or text == "مسح عيالي" or text == "مسح قائمه عيالي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local list = Redis:smembers(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_waladi:")
for k,v in pairs(list) do
Redis:del(Zelzal..msg.chat_id..v.."in_waladi:")
end
Redis:del(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_waladi:")
return send(msg.chat_id,msg_id,"*⇜ تم مسح قائمة ابنائك *","md")
end
-------
if text == "رفع اميرتي" or text == " " then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_banati:")) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ مرفوعه اميرتك مسبقاً *","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*هطف انت تبي ترفع نفسك اميره ؟؟*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ *","md")
elseif Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_banati:") then
return send(msg.chat_id,msg_id,"*للاسف هذا العضو اميره شخص ثاني*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_banati:")) ~= tonumber(msg.sender_id.user_id) and not Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_banati:") then
Redis:set(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_banati:", msg.sender_id.user_id)
Redis:sadd(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_banati:", Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"⇜ تم رفعها بنيتك  ").Reply,"md",true)
end
end
if text == " " or text == "تنزيل اميرتي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_banati:")) == tonumber(msg.sender_id.user_id) then
Redis:del(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_banati:")
Redis:srem(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_banati:", msg.chat_id..Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"تم تنزيله من قائمة اميراتك ").Reply,"md",true) 
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ هطف انت يبني تبي نفسك اميره ؟!*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ *","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_banati:")) ~= tonumber(msg.sender_id.user_id)then
return send(msg.chat_id,msg_id,"*⇜ تم تنزيله اميرتك مسبقا ؟!*","md")
end
end
if text == "انا اميره مين" or text == "انا اميره من" or text == " " or text == " " then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if not Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_banati:") then
return send(msg.chat_id,msg_id,"*⇜ خذلك النشبه ذا مفكره نفسها محور الكون؟!*","md")
elseif Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_banati:") then
local in_banati_id = Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_banati:")
local heart_name = bot.getUser(in_banati_id).first_name
return send(msg.chat_id,msg_id,"*⇜ انت اميره* ["..heart_name.."](tg://user?id="..in_banati_id..")","md")
end
end
if text == "" or text == " " or text == " " or text == "قائمه اميراتي" or text == "قائمة اميراتي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local heart_list = Redis:smembers(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_banati:")
if #heart_list == 0 then
return send(msg.chat_id,msg_id,"*⇜ مسكين ماعندك اميرات*","md")
elseif #heart_list > 0 then
your_heart = "*- قائمة اميراتك ←  \nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(heart_list) do
local user_info = bot.getUser(v)
local name = user_info.first_name
your_heart = your_heart..k.." - ["..name.."](tg://user?id="..v..")\n"
end
return send(msg.chat_id,msg_id,your_heart,"md")
end
end
if text == "مسح اميراتي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local list = Redis:smembers(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_banati:")
for k,v in pairs(list) do
Redis:del(Zelzal..msg.chat_id..v.."in_banati:")
end
Redis:del(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_banati:")
return send(msg.chat_id,msg_id,"*⇜ تم مسح قائمة اميراتك *","md")
end
--------------------------------------------------------------------------------------------------------------
if text and text:match('^ضع تفاعل (%d+) (.*)$') or text and text:match('^وضع تفاعل (%d+) (.*)$') then
if not msg.MalekAsase and not msg.MaleAsase then
return send(msg_chat_id,msg_id,'*⇜ عذراً .. عزيزي *\n*⇜ هذا الامر يخص المالك الاساسي 🎖*',"md",true)
end
local msgcountneed = {text:match('^ضع تفاعل (%d+) (.*)$') } or {text:match('^وضع تفاعل (%d+) (.*)$') }
if tonumber(msgcountneed[1]:match('(%d+)')) <= 999 then
return send(msg.chat_id,msg_id,'\n*• عذراً يجب ان تكون عدد الرسائل اكثر من 1000* ',"md",true)
end
if tonumber(msgcountneed[1]:match('(%d+)')) == tonumber(Redis:get(Zelzal.."rtpamalekassmsg"..msg.chat_id)) then
Redis:del(Zelzal.."rtpamalekass"..msg.chat_id)
Redis:del(Zelzal.."rtpamalekassmsg"..msg.chat_id)
elseif tonumber(msgcountneed[1]:match('(%d+)')) == tonumber(Redis:get(Zelzal.."rtpamalekmsg"..msg.chat_id)) then
Redis:del(Zelzal.."rtpamalek"..msg.chat_id)
Redis:del(Zelzal.."rtpamalekmsg"..msg.chat_id)
elseif tonumber(msgcountneed[1]:match('(%d+)')) == tonumber(Redis:get(Zelzal.."rtpamonsheassmsg"..msg.chat_id)) then
Redis:del(Zelzal.."rtpamonsheass"..msg.chat_id)
Redis:del(Zelzal.."rtpamonsheassmsg"..msg.chat_id)
elseif tonumber(msgcountneed[1]:match('(%d+)')) == tonumber(Redis:get(Zelzal.."rtpamonshemsg"..msg.chat_id)) then
Redis:del(Zelzal.."rtpamonsge"..msg.chat_id)
Redis:del(Zelzal.."rtpamonshemsg"..msg.chat_id)
elseif tonumber(msgcountneed[1]:match('(%d+)')) == tonumber(Redis:get(Zelzal.."rtpamanagermsg"..msg.chat_id)) then
Redis:del(Zelzal.."rtpamanager"..msg.chat_id)
Redis:del(Zelzal.."rtpamanagermsg"..msg.chat_id)
elseif tonumber(msgcountneed[1]:match('(%d+)')) == tonumber(Redis:get(Zelzal.."rtpaadminmsg"..msg.chat_id)) then
Redis:del(Zelzal.."rtpaadmin"..msg.chat_id)
Redis:del(Zelzal.."rtpaadminmsg"..msg.chat_id)
elseif tonumber(msgcountneed[1]:match('(%d+)')) == tonumber(Redis:get(Zelzal.."rtpaspecialmsg"..msg.chat_id)) then
Redis:del(Zelzal.."rtpaspecial"..msg.chat_id)
Redis:del(Zelzal.."rtpaspecialmsg"..msg.chat_id)
end
if msgcountneed[2] == "مالك اساسي" or msgcountneed[2] == "مالك الاساسي" or msgcountneed[2] == "المالك الاساسي" then
local StatusMember = bot.getChatMember(msg.chat_id,msg.sender_id.user_id).status.luatele
if (StatusMember == "chatMemberStatusCreator") then
statusvar = true
else
statusvar = false
end
if statusvar == false then
return send(msg.chat_id,msg_id,'\n*⇜ هذا الامر يخص مالك القروب فقط *',"md",true)  
end
Redis:set(Zelzal.."rtpamalekass"..msg.chat_id,msgcountneed[2])
Redis:set(Zelzal.."rtpamalekassmsg"..msg.chat_id,tonumber(msgcountneed[1]:match('(%d+)')))
send(msg.chat_id,msg_id,'\n*⇜ تم وضع التفاعل بنجاح ✔️*\n*⇜ عدد الرسائل :* '..msgcountneed[1]:match('(%d+)')..'\n*⇜ الرتبه :* مالك اساسي\n\n*⇜ سيتم رفع الرتبه تلقائياً*\n ✓',"md")
elseif msgcountneed[2] == "مالك" or msgcountneed[2] == "المالك" then
Redis:set(Zelzal.."rtpamalek"..msg.chat_id,msgcountneed[2])
Redis:set(Zelzal.."rtpamalekmsg"..msg.chat_id,tonumber(msgcountneed[1]:match('(%d+)')))
send(msg.chat_id,msg_id,'\n*⇜ تم وضع التفاعل بنجاح ✔️*\n*⇜ عدد الرسائل :* '..msgcountneed[1]:match('(%d+)')..'\n*⇜ الرتبه :* مالك\n\n*⇜ سيتم رفع الرتبه تلقائياً*\n ✓',"md")
elseif msgcountneed[2] == "منشئ اساسي" or msgcountneed[2] == "منشئ الاساسي" or msgcountneed[2] == "المنشئ الاساسي" then
Redis:set(Zelzal.."rtpamonsheass"..msg.chat_id,msgcountneed[2])
Redis:set(Zelzal.."rtpamonsheassmsg"..msg.chat_id,tonumber(msgcountneed[1]:match('(%d+)')))
send(msg.chat_id,msg_id,'\n*⇜ تم وضع التفاعل بنجاح ✔️*\n*⇜ عدد الرسائل :* '..msgcountneed[1]:match('(%d+)')..'\n*⇜ الرتبه :* منشئ اساسي\n\n*⇜ سيتم رفع الرتبه تلقائياً*\n ✓',"md")
elseif msgcountneed[2] == "منشئ" or msgcountneed[2] == "المنشئ" then
Redis:set(Zelzal.."rtpamonsge"..msg.chat_id,msgcountneed[2])
Redis:set(Zelzal.."rtpamonshemsg"..msg.chat_id,tonumber(msgcountneed[1]:match('(%d+)')))
send(msg.chat_id,msg_id,'\n*⇜ تم وضع التفاعل بنجاح ✔️*\n*⇜ عدد الرسائل :* '..msgcountneed[1]:match('(%d+)')..'\n*⇜ الرتبه :* منشئ\n\n*⇜ سيتم رفع الرتبه تلقائياً*\n ✓',"md")
elseif msgcountneed[2] == "مدير" or msgcountneed[2] == "المدير" then
Redis:set(Zelzal.."rtpamanager"..msg.chat_id,msgcountneed[2])
Redis:set(Zelzal.."rtpamanagermsg"..msg.chat_id,tonumber(msgcountneed[1]:match('(%d+)')))
send(msg.chat_id,msg_id,'\n*⇜ تم وضع التفاعل بنجاح ✔️*\n*⇜ عدد الرسائل :* '..msgcountneed[1]:match('(%d+)')..'\n*⇜ الرتبه :* مدير\n\n*⇜ سيتم رفع الرتبه تلقائياً*\n ✓',"md")
elseif msgcountneed[2] == "ادمن" or msgcountneed[2] == "الادمن" then
Redis:set(Zelzal.."rtpaadmin"..msg.chat_id,msgcountneed[2])
Redis:set(Zelzal.."rtpaadminmsg"..msg.chat_id,tonumber(msgcountneed[1]:match('(%d+)')))
send(msg.chat_id,msg_id,'\n*⇜ تم وضع التفاعل بنجاح ✔️*\n*⇜ عدد الرسائل :* '..msgcountneed[1]:match('(%d+)')..'\n*⇜ الرتبه :* ادمن\n\n*⇜ سيتم رفع الرتبه تلقائياً*\n ✓',"md")
elseif msgcountneed[2] == "مميز" or msgcountneed[2] == "المميز" then
Redis:set(Zelzal.."rtpaspecial"..msg.chat_id,msgcountneed[2])
Redis:set(Zelzal.."rtpaspecialmsg"..msg.chat_id,tonumber(msgcountneed[1]:match('(%d+)')))
send(msg.chat_id,msg_id,'\n*⇜ تم وضع التفاعل بنجاح ✔️*\n*⇜ عدد الرسائل :* '..msgcountneed[1]:match('(%d+)')..'\n*⇜ الرتبه :* مميز\n\n*⇜ سيتم رفع الرتبه تلقائياً*\n ✓',"md")
else
return send(msg.chat_id,msg_id,'\n*⇜ مافي رتبة بالاسم هذا* ',"md")
end
end
if text == "حذف تفاعل الرتب" or text == "مسح تفاعل الرتب" then
if not msg.MalekAsase and not msg.MaleAsase then
return send(msg_chat_id,msg_id,'*⇜ عذراً .. عزيزي *\n*⇜ هذا الامر يخص المالك الاساسي 🎖*',"md",true)
end
Redis:del(Zelzal.."rtpamalekass"..msg.chat_id)
Redis:del(Zelzal.."rtpamalekassmsg"..msg.chat_id)
Redis:del(Zelzal.."rtpamalek"..msg.chat_id)
Redis:del(Zelzal.."rtpamalekmsg"..msg.chat_id)
Redis:del(Zelzal.."rtpamonsheass"..msg.chat_id)
Redis:del(Zelzal.."rtpamonsheassmsg"..msg.chat_id)
Redis:del(Zelzal.."rtpamonsge"..msg.chat_id)
Redis:del(Zelzal.."rtpamonshemsg"..msg.chat_id)
Redis:del(Zelzal.."rtpamanager"..msg.chat_id)
Redis:del(Zelzal.."rtpamanagermsg"..msg.chat_id)
Redis:del(Zelzal.."rtpaadmin"..msg.chat_id)
Redis:del(Zelzal.."rtpaadminmsg"..msg.chat_id)
Redis:del(Zelzal.."rtpaspecial"..msg.chat_id)
Redis:del(Zelzal.."rtpaspecialmsg"..msg.chat_id)
return send(msg.chat_id,msg_id,'\n*⇜ تم حذف وتعطيل توزيع رتب المتفاعلين*',"md",true)
end
if text and text:match('^حذف تفاعل (.*)$') or text and text:match('^مسح تفاعل (.*)$') or text and text:match('^مسح التفاعل (.*)$') or text and text:match('^حذف التفاعل (.*)$') then
if not msg.MalekAsase and not msg.MaleAsase then
return send(msg_chat_id,msg_id,'*⇜ عذراً .. عزيزي *\n*⇜ هذا الامر يخص المالك الاساسي 🎖*',"md",true)
end
local msgcountdel = text:match('^حذف تفاعل (.*)$') or text:match('^مسح تفاعل (.*)$')  or text:match('^مسح التفاعل (.*)$') or text:match('^حذف التفاعل (.*)$')
if msgcountdel == "مالك اساسي" or msgcountdel == "مالك الاساسي" or msgcountdel == "المالك الاساسي" then
local StatusMember = bot.getChatMember(msg.chat_id,msg.sender_id.user_id).status.luatele
if (StatusMember == "chatMemberStatusCreator") then
statusvar = true
else
statusvar = false
end
if statusvar == false then
return send(msg.chat_id,msg_id,'\n*⇜ هذا الامر يخص مالك القروب فقط* ',"md",true)  
end
Redis:del(Zelzal.."rtpamalekass"..msg.chat_id)
Redis:del(Zelzal.."rtpamalekassmsg"..msg.chat_id)
send(msg.chat_id,msg_id,'\n*⇜ تم مسح رتبة المالك الاساسي من التفاعل*',"md")
elseif msgcountdel == "مالك" or msgcountdel == "المالك" then
Redis:del(Zelzal.."rtpamalek"..msg.chat_id)
Redis:del(Zelzal.."rtpamalekmsg"..msg.chat_id)
send(msg.chat_id,msg_id,'\n*⇜ تم مسح رتبة المالك من التفاعل*',"md")
elseif msgcountdel == "منشئ اساسي" or msgcountdel == "منشئ الاساسي" or msgcountdel == "المنشئ الاساسي" then
Redis:del(Zelzal.."rtpamonsheass"..msg.chat_id)
Redis:del(Zelzal.."rtpamonsheassmsg"..msg.chat_id)
send(msg.chat_id,msg_id,'\n*⇜ تم مسح رتبة المنشئ الاساسي من التفاعل*',"md")
elseif msgcountdel == "منشئ" or msgcountdel == "المنشئ" then
Redis:del(Zelzal.."rtpamonsge"..msg.chat_id)
Redis:del(Zelzal.."rtpamonshemsg"..msg.chat_id)
send(msg.chat_id,msg_id,'\n*⇜ تم مسح رتبة المنشئ من التفاعل*',"md")
elseif msgcountdel == "مدير" or msgcountdel == "المدير" then
Redis:del(Zelzal.."rtpamanager"..msg.chat_id)
Redis:del(Zelzal.."rtpamanagermsg"..msg.chat_id)
send(msg.chat_id,msg_id,'\n*⇜ تم مسح رتبة المدير من التفاعل*',"md")
elseif msgcountdel == "ادمن" or msgcountdel == "الادمن" then
Redis:del(Zelzal.."rtpaadmin"..msg.chat_id)
Redis:del(Zelzal.."rtpaadminmsg"..msg.chat_id)
send(msg.chat_id,msg_id,'\n*⇜ تم مسح رتبة الادمن من التفاعل*',"md")
elseif msgcountdel == "مميز" or msgcountdel == "المميز" then
Redis:del(Zelzal.."rtpaspecial"..msg.chat_id)
Redis:del(Zelzal.."rtpaspecialmsg"..msg.chat_id)
send(msg.chat_id,msg_id,'\n*⇜ تم مسح رتبة المميز من التفاعل*',"md")
else
return send(msg.chat_id,msg_id,'\n*⇜ مافي رتبة بالاسم هذا* ',"md")
end
end
if text == "تفاعل الرتب" or text == "تفاعل رتب" then
rtpamalekass = Redis:get(Zelzal.."rtpamalekass"..msg.chat_id)
rtpamalekassmsg = Redis:get(Zelzal.."rtpamalekassmsg"..msg.chat_id)
rtpamalek = Redis:get(Zelzal.."rtpamalek"..msg.chat_id)
rtpamalekmsg = Redis:get(Zelzal.."rtpamalekmsg"..msg.chat_id)
rtpamonsheass = Redis:get(Zelzal.."rtpamonsheass"..msg.chat_id)
rtpamonsheassmsg = Redis:get(Zelzal.."rtpamonsheassmsg"..msg.chat_id)
rtpamonsge = Redis:get(Zelzal.."rtpamonsge"..msg.chat_id)
rtpamonshemsg = Redis:get(Zelzal.."rtpamonshemsg"..msg.chat_id)
rtpamanager = Redis:get(Zelzal.."rtpamanager"..msg.chat_id)
rtpamanagermsg = Redis:get(Zelzal.."rtpamanagermsg"..msg.chat_id)
rtpaadmin = Redis:get(Zelzal.."rtpaadmin"..msg.chat_id)
rtpaadminmsg = Redis:get(Zelzal.."rtpaadminmsg"..msg.chat_id)
rtpaspecial = Redis:get(Zelzal.."rtpaspecial"..msg.chat_id)
rtpaspecialmsg = Redis:get(Zelzal.."rtpaspecialmsg"..msg.chat_id)
if not rtpamalekass and not rtpamalek and not rtpamonsheass and not rtpamonsge and not rtpamanager and not rtpaadmin and not rtpaspecial then
return send(msg.chat_id,msg_id,"\n*⇜ عذراً عزيزي لا توجد رتب للتفاعل هنا *","md",true)  
end
if rtpamalekass then
rtpamalekassres = '▪︎ '..rtpamalekass..' ↤︎ '..rtpamalekassmsg..' رسالة\n'
else
rtpamalekassres = ''
end
if rtpamalek then
rtpamalekres = '▪︎ '..rtpamalek..' ↤︎ '..rtpamalekmsg..' رسالة\n'
else
rtpamalekres = ''
end
if rtpamonsheass then
rtpamonsheassres = '▪︎ '..rtpamonsheass..' ↤︎ '..rtpamonsheassmsg..' رسالة\n'
else
rtpamonsheassres = ''
end
if rtpamonsge then
rtpamonsgeres = '▪︎ '..rtpamonsge..' ↤︎ '..rtpamonshemsg..' رسالة\n'
else
rtpamonsgeres = ''
end
if rtpamanager then
rtpamanagerres = '▪︎ '..rtpamanager..' ↤︎ '..rtpamanagermsg..' رسالة\n'
else
rtpamanagerres = ''
end
if rtpaadmin then
rtpaadminres = '▪︎ '..rtpaadmin..' ↤︎ '..rtpaadminmsg..' رسالة\n'
else
rtpaadminres = ''
end
if rtpaspecial then
rtpaspecialres = '▪︎ '..rtpaspecial..' ↤︎ '..rtpaspecialmsg..' رسالة\n'
else
rtpaspecialres = ''
end
send(msg.chat_id,msg_id,"\n*⇜ مرحباً بك عزيزي في تفاعل الرتب :*\n\n"..rtpamalekassres..rtpamalekres..rtpamonsheassres..rtpamonsgeres..rtpamanagerres..rtpaadminres..rtpaspecialres.."\n✓","md",true)
end
if text then
nummaguser = Redis:get(Zelzal..'Zelzal:Num:Message:Usertrand'..msg.chat_id..':'..msg.sender_id.user_id) or 1
local name = bot.getUser(msg.sender_id.user_id)
if name.first_name then
namee = ""..name.first_name..""
else
namee = " لا يوجد اسم"
end
if Redis:get(Zelzal.."rtpamalekassmsg"..msg.chat_id) == nummaguser then
Redis:sadd(Zelzal.."Zelzal:MalekAsase:Group"..msg.chat_id,msg.sender_id.user_id) 
send(msg.chat_id,msg_id,"\n*⇜ مبروك ل الحلو ↤︎* "..namee.."\n*⇜ وصل تفاعلك الى :* "..math.floor(nummaguser).." *رسالة*\n*⇜ وحصلت بالمقابل على رتبة :* "..Redis:get(Zelzal.."rtpamalekass"..msg.chat_id).."\n✓","md")
elseif Redis:get(Zelzal.."rtpamalekmsg"..msg.chat_id) == nummaguser then
Redis:sadd(Zelzal.."Zelzal:TheBasicsQ:Group"..msg.chat_id,msg.sender_id.user_id)
send(msg.chat_id,msg_id,"\n*⇜ مبروك ل الحلو ↤︎* "..namee.."\n*⇜ وصل تفاعلك الى :* "..math.floor(nummaguser).." *رسالة*\n*⇜ وحصلت بالمقابل على رتبة :* "..Redis:get(Zelzal.."rtpamalek"..msg.chat_id).."\n✓","md")
elseif Redis:get(Zelzal.."rtpamonsheassmsg"..msg.chat_id) == nummaguser then
Redis:sadd(Zelzal.."Zelzal:TheBasics:Group"..msg.chat_id,msg.sender_id.user_id) 
send(msg.chat_id,msg_id,"\n*⇜ مبروك ل الحلو ↤︎* "..namee.."\n*⇜ وصل تفاعلك الى :* "..math.floor(nummaguser).." *رسالة*\n*⇜ وحصلت بالمقابل على رتبة :* "..Redis:get(Zelzal.."rtpamonsheass"..msg.chat_id).."\n✓","md")
elseif Redis:get(Zelzal.."rtpamonshemsg"..msg.chat_id) == nummaguser then
Redis:sadd(Zelzal.."Zelzal:Originators:Group"..msg.chat_id,msg.sender_id.user_id) 
send(msg.chat_id,msg_id,"\n*⇜ مبروك ل الحلو ↤︎* "..namee.."\n*⇜ وصل تفاعلك الى :* "..math.floor(nummaguser).." *رسالة*\n*⇜ وحصلت بالمقابل على رتبة :* "..Redis:get(Zelzal.."rtpamonsge"..msg.chat_id).."\n✓","md")
elseif Redis:get(Zelzal.."rtpamanagermsg"..msg.chat_id) == nummaguser then
Redis:sadd(Zelzal.."Zelzal:Managers:Group"..msg.chat_id,msg.sender_id.user_id) 
send(msg.chat_id,msg_id,"\n*⇜ مبروك ل الحلو ↤︎* "..namee.."\n*⇜ وصل تفاعلك الى :* "..math.floor(nummaguser).." *رسالة*\n*⇜ وحصلت بالمقابل على رتبة :* "..Redis:get(Zelzal.."rtpamanager"..msg.chat_id).."\n✓","md")
elseif Redis:get(Zelzal.."rtpaadminmsg"..msg.chat_id) == nummaguser then
Redis:sadd(Zelzal.."Zelzal:Addictive:Group"..msg.chat_id,msg.sender_id.user_id) 
send(msg.chat_id,msg_id,"\n*⇜ مبروك ل الحلو ↤︎* "..namee.."\n*⇜ وصل تفاعلك الى :* "..math.floor(nummaguser).." *رسالة*\n*⇜ وحصلت بالمقابل على رتبة :* "..Redis:get(Zelzal.."rtpaadmin"..msg.chat_id).."\n✓","md")
elseif Redis:get(Zelzal.."rtpaspecialmsg"..msg.chat_id) == nummaguser then
Redis:sadd(Zelzal.."Zelzal:Distinguished:Group"..msg.chat_id,msg.sender_id.user_id) 
send(msg.chat_id,msg_id,"\n*⇜ مبروك ل الحلو ↤︎* "..namee.."\n*⇜ وصل تفاعلك الى :* "..math.floor(nummaguser).." *رسالة*\n*⇜ وحصلت بالمقابل على رتبة :* "..Redis:get(Zelzal.."rtpaspecial"..msg.chat_id).."\n✓","md")
end
end
--------------------------------------------------------------------------------------------------------------
if text == "ضع الردود للمميزين" or text == "وضع الردود للمميزين" then
if not msg.TheBasicsQ or not msg.TheMasicsQ then
return send(msg_chat_id,msg_id,'*⇜ عذراً .. عزيزي *\n*⇜ هذا الامر يخص المالك🎖*',"md",true)
end
Redis:set(Zelzal.."myrdspecial"..msg.chat_id,"true")
return send(msg.chat_id,msg.id,"*⇜ تم وضع اضافة ردي للمميزين ومافوق* ","md",true)
end
if text == "ضع الردود للاعضاء" or text == "وضع الردود للاعضاء" then
if not msg.TheBasicsQ or not msg.TheMasicsQ then
return send(msg_chat_id,msg_id,'*⇜ عذراً .. عزيزي *\n*⇜ هذا الامر يخص المالك🎖*',"md",true)
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
Redis:del(Zelzal.."myrdspecial"..msg.chat_id)
return send(msg.chat_id,msg.id,"*⇜ تم وضع اضافة ردي لجميع الاعضاء* ","md",true)
end
if text == "تفعيل اضف ردي" or text == "تفعيل ردي" or text == "تفعيل ردود الاعضاء" then
if not msg.TheBasicsQ or not msg.TheMasicsQ then
return send(msg_chat_id,msg_id,'*⇜ عذراً .. عزيزي *\n*⇜ هذا الامر يخص المالك🎖*',"md",true)
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if Redis:get(Zelzal.."onmyrd"..msg.chat_id) then
return send(msg.chat_id,msg.id,"*⇜ تم تفعيل ردود الاعضاء مسبقاً* ","md",true)
else
Redis:set(Zelzal.."onmyrd"..msg.chat_id,"true")
return send(msg.chat_id,msg.id,"*⇜ تم تفعيل ردود الاعضاء* ","md",true)
end
end
if text == "تعطيل اضف ردي" or text == "تعطيل ردي" or text == "تعطيل ردود الاعضاء" then
if not msg.TheBasicsQ or not msg.TheMasicsQ then
return send(msg_chat_id,msg_id,'*⇜ عذراً .. عزيزي *\n*⇜ هذا الامر يخص المالك🎖*',"md",true)
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if Redis:get(Zelzal.."onmyrd"..msg.chat_id) then
Redis:del(Zelzal.."onmyrd"..msg.chat_id)
return send(msg.chat_id,msg.id,"*⇜ تم تعطيل ردود الاعضاء *","md",true)
else
return send(msg.chat_id,msg.id,"*⇜ تم تعطيل ردود الاعضاء مسبقاً *","md",true)
end
end
if text == "اضف ردي" then
if not Redis:get(Zelzal.."onmyrd"..msg.chat_id) then
return send(msg.chat_id,msg.id,"*⇜ اضافة الردود للاعضاء معطلة*\n*⇜ لتفعيلها ( تفعيل ردود الاعضاء )*","md",true)
end
if not msg.Distinguished or not msg.Mistinguished then
if Redis:get(Zelzal.."myrdspecial"..msg.chat_id) then
return send(msg.chat_id,msg.id,"*⇜ عذراً عزيزي اضافة ردي للمميزين ومافوق فقط*","md",true)
end
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if Redis:sismember(Zelzal.."Zelzal:List:myrdmyid"..msg.chat_id,msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"\n*⇜ عذراً عزيزي انت ضايف ردك من قبل*\n*⇜ لحذف ردك ( حذف ردي )*","md",true)
end
Redis:set(Zelzal.."Zelzal:Set:myrd"..msg.sender_id.user_id..":"..msg.chat_id,true)
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '- الغاء الامر ', data =msg.sender_id.user_id..'/cancelamr'}
},
}
}
return send(msg.chat_id,msg_id,"*⇜ حسناً عزيزي ارسل اسمك الان*", 'md', false, false, false, false, reply_markup)
end
if text == "حذف ردي" or text == "مسح ردي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local myrd = Redis:get(Zelzal.."Zelzal:List:myrdmyrd"..msg.sender_id.user_id..":"..msg.chat_id)
send(msg.chat_id, msg.id,"*⇜ تم مسح ردك بنجاح*\n*⇜ الرد (* "..myrd.." *)*", 'md')
Redis:srem(Zelzal.."Zelzal:List:myrd"..msg.chat_id, myrd)
Redis:srem(Zelzal.."Zelzal:List:myrdmyid"..msg.chat_id, msg.sender_id.user_id)
Redis:del(Zelzal.."Zelzal:Add:myrdtext"..myrd..msg.chat_id)
Redis:del(Zelzal.."Zelzal:Add:myrdid"..myrd..msg.chat_id)
Redis:del(Zelzal.."Zelzal:List:myrdmyrd"..msg.sender_id.user_id..":"..msg.chat_id)
end
if (text == "حذف رده" or text == "مسح رده") and msg.reply_to_message_id ~= 0 then
if not msg.Managers or not msg.Mamagers then
return send(msg.chat_id,msg_id,'\n*⇜ هذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(Message_Reply.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه مايمديك تستخدم الامر علي ياورع ؟!*","md",true)  
end
local myrd = Redis:get(Zelzal.."Zelzal:List:myrdmyrd"..Message_Reply.sender_id.user_id..":"..msg.chat_id)
send(msg.chat_id, msg.id,"*⇜ الرد (* "..myrd.." *)\n⇜ تم مسح رده *", 'md')
Redis:srem(Zelzal.."Zelzal:List:myrd"..msg.chat_id, myrd)
Redis:srem(Zelzal.."Zelzal:List:myrdmyid"..msg.chat_id, Message_Reply.sender_id.user_id)
Redis:del(Zelzal.."Zelzal:Add:myrdtext"..myrd..msg.chat_id)
Redis:del(Zelzal.."Zelzal:Add:myrdid"..myrd..msg.chat_id)
Redis:del(Zelzal.."Zelzal:List:myrdmyrd"..Message_Reply.sender_id.user_id..":"..msg.chat_id)
end
if text and text:match('^مسح رده @(%S+)$') or text and text:match('^حذف رده @(%S+)$') then
local UserName = text:match('^مسح رده @(%S+)$') or text:match('^حذف رده @(%S+)$')
if not msg.Managers or not msg.Mamagers then
return send(msg.chat_id,msg_id,'\n*⇜ هذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
local UserId_Info = bot.searchPublicChat(UserName)
if not UserId_Info.id then
return send(msg.chat_id,msg_id,"\n*⇜ عذراً .. لا يوجد حساب بهذا اليوزر ؟!*","md",true)  
end
if UserId_Info.type.is_channel == true then
return send(msg.chat_id,msg_id,"\n*⇜ عذراً  .. لا تستطيع استخدام معرف قناة او مجموعة ؟!*","md",true)  
end
if UserName and UserName:match('(%S+)[Bb][Oo][Tt]') then
return send(msg.chat_id,msg_id,"\n*⇜ عذراً  .. لا تستطيع استخدام معرف البوت ؟!*","md",true)  
end
local myrd = Redis:get(Zelzal.."Zelzal:List:myrdmyrd"..UserId_Info.id..":"..msg.chat_id)
send(msg.chat_id, msg.id,"*⇜ الرد (* "..myrd.." *)\n⇜ تم مسح رده *", 'md')
Redis:srem(Zelzal.."Zelzal:List:myrd"..msg.chat_id, myrd)
Redis:srem(Zelzal.."Zelzal:List:myrdmyid"..msg.chat_id, UserId_Info.id)
Redis:del(Zelzal.."Zelzal:Add:myrdtext"..myrd..msg.chat_id)
Redis:del(Zelzal.."Zelzal:Add:myrdid"..myrd..msg.chat_id)
Redis:del(Zelzal.."Zelzal:List:myrdmyrd"..UserId_Info.id..":"..msg.chat_id)
end
if text and text:match('^مسح رده (%d+)$') or text and text:match('^حذف رده (%d+)$') then
local UserId = text:match('^مسح رده (%d+)$') or text:match('^حذف رده (%d+)$')
if not msg.Managers or not msg.Mamagers then
return send(msg.chat_id,msg_id,'\n*⇜ هذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if msg.can_be_deleted_for_all_users == false then
return send(msg.chat_id,msg_id,"\n*⇜ عذراً البوت ليس مشرفاً .. يرجى رفعه وإعطائه كافة الصلاحيات*","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return send(msg.chat_id,msg_id,'\n⇜ البوت ليس لديه صلاحيه حظر المستخدمين ',"md",true)  
end
if not msg.Originators and not Redis:get(Zelzal.."Zelzal:Status:BanId"..msg.chat_id) then
return send(msg.chat_id,msg_id,"⇜ ( الحظر - الطرد - التقييد ) معطل من قبل المنشئين","md",true)
end 
local UserInfo = bot.getUser(UserId)
if UserInfo.luatele == "error" and UserInfo.code == 6 then
return send(msg.chat_id,msg_id,"\n⇜ عذراً لا تستطيع استخدام ايدي خطأ ","md",true)  
end
local myrd = Redis:get(Zelzal.."Zelzal:List:myrdmyrd"..UserId..":"..msg.chat_id)
send(msg.chat_id, msg.id,"*⇜ الرد (* "..myrd.." *)\n⇜ تم مسح رده *", 'md')
Redis:srem(Zelzal.."Zelzal:List:myrd"..msg.chat_id, myrd)
Redis:srem(Zelzal.."Zelzal:List:myrdmyid"..msg.chat_id, UserId)
Redis:del(Zelzal.."Zelzal:Add:myrdtext"..myrd..msg.chat_id)
Redis:del(Zelzal.."Zelzal:Add:myrdid"..myrd..msg.chat_id)
Redis:del(Zelzal.."Zelzal:List:myrdmyrd"..UserId..":"..msg.chat_id)
end
if text == "ردي" then
if not Redis:get(Zelzal.."onmyrd"..msg.chat_id) then
return send(msg.chat_id,msg.id,"*⇜ اضافة الردود للاعضاء معطلة*\n*⇜ لتفعيلها ( تفعيل ردود الاعضاء )*","md",true)
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
checkmyrde = Redis:get(Zelzal.."Zelzal:List:myrdmyrd"..msg.sender_id.user_id..":"..msg.chat_id)
if Redis:get(Zelzal.."Zelzal:Add:myrdid"..checkmyrde..msg.chat_id) then
myrd = Redis:get(Zelzal.."Zelzal:List:myrdmyrd"..msg.sender_id.user_id..":"..msg.chat_id)
local UserInfo = bot.getUser(msg.sender_id.user_id)
local Bio = FlterBio(getbio(msg.sender_id.user_id))
local photo = bot.getUserProfilePhotos(msg.sender_id.user_id)
local ban = bot.getUser(msg.sender_id.user_id)
if ban.first_name then
news = ban.first_name
else
news = " لا يوجد اسم"
end
if UserInfo.username then
UserInfousername = '@'..UserInfo.username..''
else
UserInfousername = 'لا يوجد يوزر'
end
if photo and photo.total_count and photo.total_count > 0 then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text= UserInfo.first_name ,url = "tg://user?id="..UserInfo.id..""},
},
}
}
return bot.sendPhoto(msg.chat_id, msg.id, photo.photos[1].sizes[#photo.photos[1].sizes].photo.remote.id,
'\n• الاسم 𖦹 '..news..
'\n• اليوزر 𖦹 ['..UserInfousername..
']\n• النبذه 𖦹 ['..Bio..
']', "md", true, nil, nil, nil, nil, nil, nil, nil, nil, reply_markup)
else
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text= UserInfo.first_name ,url = "tg://user?id="..UserInfo.id..""},
},
}
}
return bot.sendText(msg.chat_id,msg_id,
'\n• الاسم 𖦹 '..news..
'\n• اليوزر 𖦹 ['..UserInfousername..
']\n• النبذه 𖦹 ['..Bio..
']', "md",false, false, false, false, reply_markup)
end
else
send(msg.chat_id, msg.id,"*⇜ لا يوجد لديك رد*\n*⇜ لأضافة ردك ( اضف ردي )*", 'md')
end
end
if text == "رده" and msg.reply_to_message_id ~= 0 then
if not Redis:get(Zelzal.."onmyrd"..msg.chat_id) then
return send(msg.chat_id,msg.id,"*⇜ اضافة الردود للاعضاء معطلة*\n*⇜ لتفعيلها ( تفعيل ردود الاعضاء )*","md",true)
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(Message_Reply.sender_id.user_id)
if UserInfo.message == "Invalid user ID" then
return send(msg.chat_id,msg_id,"\n*⇜ عذراً .. تستطيع فقط استخدام الامر على المستخدمين*","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه مايمديك تستخدم الامر علي ياورع ؟!*","md",true)  
end
checkmyrde = Redis:get(Zelzal.."Zelzal:List:myrdmyrd"..Message_Reply.sender_id.user_id..":"..msg.chat_id)
if Redis:get(Zelzal.."Zelzal:Add:myrdid"..checkmyrde..msg.chat_id) then
myrd = Redis:get(Zelzal.."Zelzal:List:myrdmyrd"..Message_Reply.sender_id.user_id..":"..msg.chat_id)
local UserInfo = bot.getUser(Message_Reply.sender_id.user_id)
local Bio = FlterBio(getbio(Message_Reply.sender_id.user_id))
local photo = bot.getUserProfilePhotos(Message_Reply.sender_id.user_id)
local ban = bot.getUser(Message_Reply.sender_id.user_id)
if ban.first_name then
news = ban.first_name
else
news = " لا يوجد اسم"
end
if UserInfo.username then
UserInfousername = '@'..UserInfo.username..''
else
UserInfousername = 'لا يوجد يوزر'
end
if photo and photo.total_count and photo.total_count > 0 then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text= UserInfo.first_name ,url = "tg://user?id="..UserInfo.id..""},
},
}
}
return bot.sendPhoto(msg.chat_id, msg.id, photo.photos[1].sizes[#photo.photos[1].sizes].photo.remote.id,
'\n• الاسم 𖦹 '..news..
'\n• اليوزر 𖦹 ['..UserInfousername..
']\n• النبذه 𖦹 ['..Bio..
']', "md", true, nil, nil, nil, nil, nil, nil, nil, nil, reply_markup)
else
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text= UserInfo.first_name ,url = "tg://user?id="..UserInfo.id..""},
},
}
}
return bot.sendText(msg.chat_id,msg_id,
'\n• الاسم 𖦹 '..news..
'\n• اليوزر 𖦹 ['..UserInfousername..
']\n• النبذه 𖦹 ['..Bio..
']', "md",false, false, false, false, reply_markup)
end
else
send(msg.chat_id, msg.id,"*⇜ لا يوجد لديه رد*\n*⇜ لأضافة رده يجب ان يرسل ( اضف ردي )*", 'md')
end
end
if text == "ردود الاعضاء" or text == "ردود اعضاء" then
if not Redis:get(Zelzal.."onmyrd"..msg.chat_id) then
return send(msg.chat_id,msg.id,"*⇜ اضافة الردود للاعضاء معطلة*\n*⇜ لتفعيلها ( تفعيل ردود الاعضاء )*","md",true)
end
if not msg.Addictive or not msg.Mddictive then
return send(msg.chat_id,msg_id,'\n*⇜ هذا الامر يخص* ( '..Controller_Num(7)..' ) ',"md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local list = Redis:smembers(Zelzal.."Zelzal:List:myrd"..msg.chat_id.."")
text = "*⇜ قائمة ردود الأعضاء*\nٴ*⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆*\n"
for k,v in pairs(list) do
if Redis:get(Zelzal.."Zelzal:Add:myrdtext"..v..msg.chat_id) then
local rdid = Redis:get(Zelzal.."Zelzal:Add:myrdid"..v..msg.chat_id)
local ban = bot.getUser(rdid)
if ban.first_name then
news = ban.first_name
else
news = " لا يوجد اسم"
end
db = "["..ban.first_name.."](tg://user?id="..rdid..")"
end
text = text..""..k.." - ( "..v.." ) | ( "..db.." )\n"
end
if #list == 0 then
text = "*⇜ مافيه ردود اعضاء مضافة !* "
end
return send(msg.chat_id,msg_id,text,"md",true)  
end
if text == "مسح ردود الاعضاء" or text == "حذف ردود الاعضاء" then
if not msg.Managers or not msg.Mamagers then
return send(msg.chat_id,msg_id,'\n*⇜ هذا الامر يخص* ( '..Controller_Num(6)..' ) ',"md",true)  
end
local list = Redis:smembers(Zelzal.."Zelzal:List:myrd"..msg.chat_id)
for k,v in pairs(list) do   
Redis:del(Zelzal.."Zelzal:Add:myrdtext"..v..msg.chat_id)
Redis:del(Zelzal.."Zelzal:Add:myrdid"..v..msg.chat_id)
Redis:del(Zelzal.."Zelzal:List:myrd"..msg.chat_id)
Redis:del(Zelzal.."Zelzal:List:myrdmyid"..msg.chat_id)
end
return send(msg.chat_id,msg_id,"*⇜ تم مسح جميع ردود الاعضاء*","md",true)
end
if text and Redis:get(Zelzal.."onmyrd"..msg.chat_id) then
local Texingt = Redis:get(Zelzal.."Zelzal:Add:myrdtext"..text..msg.chat_id)
if Texingt then
local Texingtowner = Redis:get(Zelzal.."Zelzal:Add:myrdid"..text..msg.chat_id)
local UserInfo = bot.getUser(Texingtowner)
local Bio = FlterBio(getbio(Texingtowner))
local photo = bot.getUserProfilePhotos(Texingtowner)
local ban = bot.getUser(Texingtowner)
if ban.first_name then
news = ban.first_name
else
news = " لا يوجد اسم"
end
if UserInfo.username then
UserInfousername = '@'..UserInfo.username..''
else
UserInfousername = 'لا يوجد يوزر'
end
if photo and photo.total_count and photo.total_count > 0 then
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text= UserInfo.first_name ,url = "tg://user?id="..UserInfo.id..""},
},
}
}
return bot.sendPhoto(msg.chat_id, msg.id, photo.photos[1].sizes[#photo.photos[1].sizes].photo.remote.id,
'\n• Name 𖦹 '..news..
'\n• 𝖴𝗌𝖾𝗋𝗇𝖺𝗆𝖾 𖦹 ['..UserInfousername..
']\n• 𝖡𝗂𝗈 𖦹 ['..Bio..
']', "md", true, nil, nil, nil, nil, nil, nil, nil, nil, reply_markup)
else
return bot.sendText(msg.chat_id,msg_id,
'\n• Name 𖦹 '..news..
'\n• 𝖴𝗌𝖾𝗋𝗇𝖺𝗆𝖾 𖦹 ['..UserInfousername..
']\n• 𝖡𝗂𝗈 𖦹 ['..Bio..
']', "md")
end
end
end
-----------------
if text and text:match("^(.*)$") then
if Redis:get(Zelzal.."Zelzal:Set:myrd"..msg.sender_id.user_id..":"..msg.chat_id) == "true" then
if text and #text:match("^(.*)$") >= 30 then
Redis:del(Zelzal.."Zelzal:Set:myrd"..msg.sender_id.user_id..":"..msg.chat_id)
return send(msg.chat_id, msg.id,"*⇜ قلل من عدد الاحرف*", 'md')
end
local Texingt = Redis:get(Zelzal.."Zelzal:Add:myrdtext"..text..msg.chat_id)
if Texingt == text then
return send(msg.chat_id,msg_id,"\n*⇜ عذراً عزيزي الرد ( "..text.." ) مضاف مسبقاً *","md",true)  
end
Redis:set(Zelzal.."Zelzal:List:myrdmyrd"..msg.sender_id.user_id..":"..msg.chat_id, text)
Redis:sadd(Zelzal.."Zelzal:List:myrdmyid"..msg.chat_id, msg.sender_id.user_id)
Redis:sadd(Zelzal.."Zelzal:List:myrd"..msg.chat_id, text)
Redis:set(Zelzal.."Zelzal:Add:myrdtext"..text..msg.chat_id, text)
Redis:set(Zelzal.."Zelzal:Add:myrdid"..text..msg.chat_id, msg.sender_id.user_id)
Redis:del(Zelzal.."Zelzal:Set:myrd"..msg.sender_id.user_id..":"..msg.chat_id)
send(msg.chat_id, msg.id,"*⇜ واضفنا ردك ياحلو *\n*⇜ اكتب (* "..text.." *) ل تجربته*", 'md')
end
end
if text == 'ترتيب الاوامر' then
if not msg.Managers or not msg.Mamagers then
return send(msg.chat_id,msg_id,'\n*⇜ هذا الامر يخص* ( '..Controller_Num(6)..' ) ',"md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'تعط','تعطيل الايدي بالصوره')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'تفع','تفعيل الايدي بالصوره')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'ا','ايدي')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'م','رفع مميز')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'اد', 'رفع ادمن')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'مد','رفع مدير')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'منش', 'رفع منشئ')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'اس', 'رفع منشئ اساسي')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'مط','رفع مطور')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'تن','تنزيل الكل')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'را','الرابط')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'رر','الردود')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'،،','مسح المكتومين')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'رد','اضف رد')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'غ','غنيلي')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'رس','رسائلي')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'ثانوي','رفع مطور اساسي')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'مس','مسح تعديلاتي')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'ن','نقاطي')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'س','اسالني')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'ل','لغز')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'مع','معاني')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'ح','حزوره')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'رف','رفع القيود')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'الغ','الغاء حظر')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'ث','تثبيت')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'ك','كشف')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'تت','تاك')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'تك','تاك للكل')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'تغ','تغيير الايدي')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'تنز','تنزيل جميع الرتب')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'قق','قفل الاشعارات')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'فف','فتح الاشعارات')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'مر','مسح رد')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'امر','اضف امر')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'ش','شعر')
Redis:set(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'غغ','اغنيه')
return send(msg.chat_id,msg_id,[[
*⇜ تم ترتيب الاوامر بالشكل التالي :*
ٴ*⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆*
⇜ ايدي - ا 
⇜ رفع مميز - م 
⇜ رفع ادمن - اد 
⇜ رفع مدير - مد 
⇜ رفع منشئ - منش 
⇜ رفع منشئ الاساسي - اس  
⇜ رفع مطور - مط 
⇜ رفع مطور ثانوي - ثانوي 
⇜ تنزيل الكل بالرد - تن 
⇜ تعطيل الايدي بالصوره - تعط 
⇜ تفعيل الايدي بالصوره - تفع 
⇜ تغيير الايدي - تغ 
⇜ تنزيل جميع الرتب - تنز 
⇜ قفل الاشعارات - قق 
⇜ فتح الاشعارات - فف 
⇜ الرابط - را
⇜ الردود - رر 
⇜ تثبيت - ث 
⇜ كشف - ك 
⇜ تاك - تت 
⇜ تاك للكل - تك 
⇜ رفع القيود - رف 
⇜ الغاء حظر - الغ 
⇜ مسح المكتومين - ،، 
⇜ اضف رد - رد 
⇜ مسح رد - مر 
⇜ اضف امر - امر 
⇜ مسح تعديلاتي - مس 
⇜ مسح رسائلي - رس 

]],"md")
end
if text == 'استعاده الاوامر' or text == "استعادة الاوامر" then
if not msg.Managers or not msg.Mamagers then
return send(msg.chat_id,msg_id,'\n*⇜ هذا الامر يخص* ( '..Controller_Num(6)..' ) ',"md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'تعط','تعطيل الايدي بالصوره')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'تفع','تفعيل الايدي بالصوره')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'ا','ايدي')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'م','رفع مميز')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'اد', 'رفع ادمن')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'مد','رفع مدير')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'منش', 'رفع منشئ')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'اس', 'رفع منشئ اساسي')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'مط','رفع مطور')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'تن','تنزيل الكل')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'را','الرابط')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'رر','الردود')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'،،','مسح المكتومين')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'رد','اضف رد')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'مس','مسح تعديلاتي')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'غ','غنيلي')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'رس','رسائلي')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'ثانوي','رفع مطور ثانوي')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'ن','نقاطي')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'س','اسالني')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'ل','لغز')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'مع','مغاني')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'ح','حزوره')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'رف','رفع القيود')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'الغ','الغاء حظر')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'ث','تثبيت')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'ك','كشف')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'تت','تاك')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'تك','تاك للكل')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'تغ','تغيير الايدي')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'تنزل','تنزيل جميع الرتب')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'قق','قفل الاشعارات')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'فف','فتح الاشعارات')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'مر','مسح رد')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'امر','اضف امر')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'ش','شعر')
Redis:del(Zelzal.."Zelzal:Get:Reides:Commands:Group"..msg.chat_id..":"..'غغ','اغنيه')
return send(msg.chat_id,msg_id,[[*
⇜ تم استعادة الاوامر
*]],"md")
end
if text == "احسب عمري" or text == "احسب العمر" or text == "حساب العمر" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if not Redis:get(Zelzal.."myages"..msg.chat_id) then
Redis:setex(Zelzal.."Age:send:"..msg.chat_id..":"..msg.sender_id.user_id, 30, true)
return send(msg.chat_id, msg.id,"⇜ ارسل عمرك بالصيغيه التالية :\n يوم/شهر/سنة\n- مثال : 20/2/2002 ", 'md')
end
end
if text and Redis:get(Zelzal.."Age:send:"..msg.chat_id..":"..msg.sender_id.user_id) then
if text and text:match('(%d+)/(%d+)/(%d+)') then
local input = {text:match('(%d+)/(%d+)/(%d+)')}
local day = input[1]
local month = input[2]
local year = input[3]
local api = http.request("http://ahmed-yad.ml/Anubis/birth_day_pro.php?day="..day.."&month="..month.."&year="..year)
local api_decode = JSON.decode(api)
if not api_decode["العمر الميلادي"] then
return send(msg.chat_id, msg.id,"⇜ صيغة العمر خطأ\n ⇜ ارسل عمرك بالصيغيه التالية :\n يوم/شهر/سنة\n- مثال : 20/2/2002", 'md')
end
local birth_date = "- عمرك الميلادي : "..api_decode["العمر الميلادي"]
local birth_hijri = "- عمرك الهجري : "..api_decode["العمر الهيجري"]
local next_birth_day = "- عيد ميلادك القادم : ".. api_decode["عيد الميلاد القادم"]
local birth_months = "- عمرك بالاشهر : " .. api_decode["العمر بالشهور"]
local birth_weeks = "- عمرك بالاسابيع : ".. api_decode["العمر بالاسابيع"]
local birth_days = "- عمرك بالايام : ".. api_decode["العمر بالايام"]
local birth_hours = "- عمرك بالساعات : ".. api_decode["العمر بالساعات"]
local birth_day_name = "- ولدت يوم : ".. api_decode["يوم الميلاد"]
local in_Season = "- فصل : ".. api_decode["ولد في فصل"]
local brg = "- برجك : ".. api_decode["برج"]
local breath = "- اتنفست : ".. api_decode["عدد الانفاس"].." نفس "
local heart_beat = "- نبضات قلبك : ".. api_decode["عدد نبضات القلب"] .." نبضه "
local lol = "- ضحكت : ".. api_decode["كم مره ضحك"].."ضحكه "
local sleep_time = "- نمت : ".. api_decode["مده النوم في العمر"].." ساعه 🕔"
local eat_times = api_decode["مده الاكل في العمر"]
Redis:del(Zelzal.."Age:send:"..msg.chat_id..":"..msg.sender_id.user_id)
local Msg_text = birth_date.."\n"..birth_hijri.."\n"..birth_months.."\n"..birth_weeks.."\n"..birth_days.."\n"..birth_hours.."\n"..birth_day_name.." "..in_Season.." "..brg.."\n"..breath.."\n"..heart_beat.."\n"..lol.."\n"..sleep_time.."\n✬"
return send(msg.chat_id, msg.id,Msg_text, 'html')
else
return send(msg.chat_id, msg.id,"⇜ صيغة العمر خطأ\n ⇜ ارسل عمرك بالصيغيه التالية :\n يوم/شهر/سنة\n- مثال : 20/2/2002", 'md')
end
end
if text == "" and not Redis:get(Zelzal.."BotaTyp") then
local NamesBot = (Redis:get(Zelzal.."Zelzal:Name:Bot") or "لا يوجد بعد")
local ban = bot.getUser(msg.sender_id.user_id)
Botyname = "*عمري*  ["..ban.first_name.."](tg://user?id="..ban.id..")  *اسمي "..NamesBot.." *"
send(msg.chat_id,msg_id,Botyname,"md") 
end
if text == "" and Redis:get(Zelzal.."BotaTyp") then
local NamesBot = (Redis:get(Zelzal.."Zelzal:Name:Bot") or "لا يوجد بعد")
local ban = bot.getUser(msg.sender_id.user_id)
Botyname = "*ياروحها*  ["..ban.first_name.."](tg://user?id="..ban.id..")  *اسمي "..NamesBot.." *"
send(msg.chat_id,msg_id,Botyname,"md") 
end
if (text == "" or text == "" or text == "") and msg.chat_id == "-1002368822488" then
local Rules = Redis:get(Zelzal.."Zelzal:Group:Rules" .. msg.chat_id)   
if Rules then     
return send(msg.chat_id,msg_id,Rules,"md",true)     
else      
local zorder =[[
مغلق
]]
return send(msg.chat_id,msg_id,zorder,"md",true)   
end
end
--------------------------------------------------------------------------------------------------------------


end
return {Zelzal = rdood}
