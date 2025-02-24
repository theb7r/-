if text== ""  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*لا يمكنك استخدام الامر على *","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تستخدم الامر على (مبرمج السورس)*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜  عذرا عزيزي مايمديك تستخدم الامر على (مطور السورس)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تستخدم الامر على (المالك الاساسي)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜Dev🎖️ عذرا عزيزي مايمديك تستخدم الامر على  *","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تسىخدم الامر على (Myth)*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:tahaath"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو الى هطف\n⇜ تمت اضافته الى قائمه الهطوف\n✓️*","md") 
elseif text== "رفع هطف"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ مايمديك تستخدم الامر على البوت!*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:tahaath"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل العضو هطف\n⇜ تمت تنزيله من قائمه الهطوف\n✓️*","md") 
elseif text== "تنزيل هطف"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜مايمديك تستخدم الامر على البوت ؟!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تستخدم الامر على (مبرمج السورس)*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تستخدم الامر على (مطور السورس)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜عذرا عزيزي مايمديك تستخدم الامر على (المالك الاساسي)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜Dev🎖️عذرا عزيزي مايمديك تستخدم الامر على *","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تسىخدم الامر على (Myth)*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:klp"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو إلى كلب  \n⇜ تم اضافته الى قائمه الكلاب\n✓️*","md") 
elseif text== "تنزيل كلب  "  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ مايمديك تستخدم الامر على البوت !*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜  عذرا عزيزي مايمديك تستخدم الامر على (مطور السورس)*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تستخدم الامر على (مطور السورس)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تستخدم الامر على (المالك الاساسي)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ Dev🎖️عذرا عزيزي مايمديك تستخدم الامر على*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تسىخدم الامر على (Myth)*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:donke"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو إلى حمار  \n⇜ تم اضافته الى قائمه الحمير\n✓️*","md") 
elseif text== "تنزيل حمار"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:donke"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل العضو حمار \n⇜ تمت ازالته من قائمه الخمير\n✓️*","md") 
elseif text== "رفع بقره"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ مايمديك تستخدم الامر على البوت *","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜عذرا عزيزي مايمديك تستخدم الامر على (مبرمج السورس)*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تستخدم الامر على (مطور السورس)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تستخدم الامر على (المالك الاساسي)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜  Dev🎖️عذرا عزيزي مايمديك تستخدم الامر على*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜  عذرا عزيزي مايمديك تسىخدم الامر على (Myth)*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:bkra"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو بقره \n⇜تم اضافته الى قائمه الابقار\n✓️*","md") 
elseif text== "تنزيل بقره"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ مايمديك تستخدم الامر على البوت*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:bkra"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل العضو بقره \n⇜ تمت ٳزالته من قائمة البقرات 🐄😺\n✓️*","md") 
elseif text== "رفع ملك"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ مايمديك تستخدم الامر على البوت!*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:kink"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو ملك \n⇜ تم اضافته الى قائمه الملوك   \n✓️*","md") 
elseif text== "تنزيل ملك"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:kink"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل العضو ملك\n⇜تم ازالته من قائمه الملوك \n✓️*","md") 
elseif text== "رفع ملكه"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:Quean"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو ملكه \n⇜ تم اضافته الى قائمه الملكات  \n✓️*","md") 
elseif text== "تنزيل ملكه"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:Quean"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜تم تنزيل العضو ملكه\n⇜ تم ازاله العضو من قائمه الملكات \n✓️*","md") 
elseif text== "تنزيل كلب"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜  مايمديك تستخدم الامر على البوت!*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:klp"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي \n⇜ تم تنزيل العضو كلب \n⇜ تمت إزالته من قائمه الكلاب\n✓️*","md") 
elseif text== "تنزيل زاحف"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜  مايمديك تستخدم الامر على البوت!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:zahf"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل العضو زاحف \n⇜ تم ازالته من قائمه الزواحف🐊😹\n✓️*","md") 
elseif text== "رفع زاحف"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ مايمديك تستخدم الامر على البوت!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜عذرا عزيزي مايمديك تستخدم الامر على (مبرمج السورس)*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تستخدم الامر على (مطور السورس)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜  عذرا عزيزي مايمديك تستخدم الامر على (المالك الاساسي)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜  Dev🎖️عذرا عزيزي مايمديك تستخدم الامر على*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜  عذرا عزيزي مايمديك تسىخدم الامر على (Myth)*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:zahf"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفعه العضو زاحف \n⇜ تم اضافته الى قائمه الزواحف\n✓️*","md") 
elseif text== "رفع قرد"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ هييه ياورع .. مايمديك تهينني ؟!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تستخدم الامر على (مبرمج السورس)*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜عذرا عزيزي مايمديك تستخدم الامر على (مطور السورس)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تستخدم الامر على (المالك الاساسي)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ Dev🎖️عذرا عزيزي مايمديك تستخدم الامر على*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜عذرا عزيزي مايمديك تسىخدم الامر على (Myth)*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:sakl"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو قرد \n⇜ تم اضافته الى قائمه القرود\n✓️*","md") 
elseif text== "تنزيل قرد"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜مايمديك تستخدم الامر على البوت!*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:sakl"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل العضو قرد \n⇜ تمت ٳزالته من قائمة القرود\n✓️*","md") 
elseif text== "رفع بقلبي"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:klpe"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو في قلبك\n⇜ تمت ترقيته بنجاح \n✓️*","md") 
elseif text== "تنزيل من قلبي"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then  
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:klpe"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل من داخل قلبك\n⇜ تمت ازالته من قائمه القلوب\n✓️*","md") 
elseif text== "رفع تاج"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:tagge"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو تاج   \n⇜ تم اضافته الى قائمه التاج ❗️ \n✓️*","md") 
elseif text== "تنزيل تاج"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:tagge"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم تنزيل العضو تاج\n⇜ من قائمة ألتاج بنجاح \n✓️*","md") 
elseif text== "رفع زوجتي"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜مايمديك تستخدم الامر على البوت!*","md",true)  
end
if Controller(msg.chat_id,Message_Reply.sender_id.user_id) then
return send(msg.chat_id,msg_id,"\n* ⇜مايمديك تستخدم الامر على 『 "..Controller(msg.chat_id,Message_Reply.sender_id.user_id).." 』*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:mrtee"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو زوجتك بنجاح\nتم اضافتكم الى قائمه الازواج\n✓️*","md") 
elseif text== "تنزيل زوجتي"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ مايمديك تستخدم الامر على البوت!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜  عذرا عزيزي مايمديك تستخدم الامر على (مبرمج السورس)*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜  عذرا عزيزي مايمديك تستخدم الامر على (مطور السورس)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜  عذرا عزيزي مايمديك تستخدم الامر على (المالك الاساسي)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تستخدم الامر على (Dev🎖️)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تستخدم الامر على (Myth)*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:mrtee"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ كنت عارف انك مب قد المسوليه\nتمت ازالتكم من قائمه الازواج\n✓️*","md") 
elseif text== "رفع غبي"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ مايمديك تستخدم الامر على البوت  ؟!*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜  عذرا عزيزي مايمديك تستخدم الامر على (مبرمج السورس)*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜  عذرا عزيزي مايمديك تستخدم الامر على (مطور السورس)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜  عذرا عزيزي مايمديك تستخدم الامر على (المالك الاساسي)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜عذرا عزيزي مايمديك تستخدم الامر على (Dev🎖️)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تستخدم الامر على (Myth)*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:loke"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم اضافته الى قائمه الاغبياء\n✓️*","md") 
elseif text== "تنزيل غبي"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ مايمديك تستخدم الامر على البوت*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:srem(Zelzal.."mero:loke"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم ازالته من قائمه الاغبياء\n✓️*","md") 
elseif text== "رفع خروف"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ لا يمكنك استخدام الامر على البوت !*","md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if UserInfo.id == 6616199029 or UserInfo.id == 6616199029 or UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜عذرا عزيزي مايمديك تستخدم الامر على (مبرمج السورس)*","md",true)  
elseif UserInfo.id == 6616199029 then
return send(msg.chat_id,msg_id,"*⇜ عذرا عزيزي مايمديك تستخدم الامر على (مطور السورس)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:MalekAsase:Group",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜عذرا عزيزي مايمديك تستخدم الامر على (المالك الاساسي)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:DevelopersQ:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:MevelopersQ:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜عذرا عزيزي مايمديك تستخدم الامر على (Dev🎖️)*","md",true)  
elseif Redis:sismember(Zelzal.."Zelzal:Developers:Groups",UserInfo) or Redis:sismember(Zelzal.."Zelzal:Mevelopers:Groups",UserInfo) then
return send(msg.chat_id,msg_id,"*⇜عذرا عزيزي مايمديك تستخدم الامر على (Myth)*","md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:sadd(Zelzal.."mero:tele"..msg.chat_id, Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,"*⇜ اهلا عزيزي\n⇜ تم رفع العضو خروف \n⇜ تم اضافته الى قائمه الخرفان*","md") 
elseif text== "تنزيل خروف"  and msg.reply_to_message_id and not Redis:get(Zelzal.."amrthshesh"..msg.chat_id) then    
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return send(msg.chat_id,msg_id,"\n*⇜ لا يمكنك استخدام الامر على البوت !*","md",true)  
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
t = t..""..k.."-* King  : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("الابقار") then
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
t = t..""..k.."-* البقرة  : "..username.."*\n"
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
t = t..""..k.."-* Queen  : "..username.."*\n"
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
t = t..""..k.."-* الغبي  : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("مسح قائمه الخرفان")  then
if not msg.Managers or not msg.Mamagers then
return send(msg.chat_id,msg_id,'\n*⇜ هذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
Redis:del(Zelzal.."mero:tele"..msg.chat_id)
send(msg.chat_id,msg_id,'*تم مسح الطليان *',"md")
elseif text == ("الخرفان") then
local list = Redis:smembers(Zelzal.."mero:tele"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد خرفان*","md") end
t = "\n*⇜ قائمة الخرفان\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.."-* الخروف  : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("المطلقين") or text == ("قائمه المطلقين") then
local list = Redis:smembers(Zelzal.."mero:taha1"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد مطلقين*","md") end
t = "\n*⇜ قائمة الطلاك\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '[@'..UserInfo.username..']'
else
username = v 
end
t = t..""..k.."-* المطلقه  : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("قائمه الكلاب") or text == ("قائمه الكلاب") then
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
t = t..""..k.."-* الكلب  : "..username.."*\n"
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
t = "\n*⇜ قائمة الحمبر\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.."-* الحمار  : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("قائمه الزاحفين") or text == ("قائمه زواحف") or text == ("قائمه الزواحف") then
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
t = t..""..k.."-* الزاحف  : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("قائمه القرود") then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local list = Redis:smembers(Zelzal.."mero:sakl"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد قرود*","md") end
t = "\n*⇜ قائمة القرود\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.."-* القرد  : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("التيجان") or text == ("قائمه التاج") then
local list = Redis:smembers(Zelzal.."mero:tagge"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد  تاج*","md") end
t = "\n*⇜ قائمة التاج\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.."-* التاج  : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("الزوجات") then
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
t = t..""..k.."-*🤰🏻 : "..username.."*\n"
if #list == k then
return send(msg.chat_id,msg_id, t,"md")
end
end
elseif text == ("قائمه الاغبياء") then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local list = Redis:smembers(Zelzal.."mero:loke"..msg.chat_id)
if #list == 0 then return send(msg.chat_id,msg_id, "*⇜ لا يوجد اغبياء*","md") end
t = "\n*⇜ قائمة الاغبياء\nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(list) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
username = '@'..UserInfo.username..''
else
username = v 
end
t = t..""..k.."-* غبي : "..username.."*\n"
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
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"⇜ تم رفعه ل قلبك .. بنجاح ").Reply,"md",true)
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
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"تم تنزيله من قائمة قلوبك .. بنجاح").Reply,"md",true) 
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ انت اهبل يبني عاوز تنزل نفسك ؟!*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ اقول توكل بس ما بخش قلب احد غير مطوري*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_heart:")) ~= tonumber(msg.sender_id.user_id)then
return send(msg.chat_id,msg_id,"*⇜ العضو ليس موجود في قلبك!*","md")
end
end
if text == "انا فقلب مين" or text == "انا قلب مين" then
if not Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_heart:") then
return send(msg.chat_id,msg_id,"*⇜ خذلك ذا النشبه مفكر نفسه محور الكون!*","md")
elseif Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_heart:") then
local in_heart_id = Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_heart:")
local heart_name = bot.getUser(in_heart_id).first_name
return send(msg.chat_id,msg_id,"*⇜ انت ف قلب* ["..heart_name.."](tg://user?id="..in_heart_id..")","md")
end
end
if text == "قائمه قلبي" or text == "قائمة قلبي" or text == "قائمه قلبي" or text == "قائمة قلبي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local heart_list = Redis:smembers(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_heart:")
if #heart_list == 0 then
return send(msg.chat_id,msg_id,"*⇜ مافيه احد يبي يدخل قلبك *","md")
elseif #heart_list > 0 then
your_heart = "*- الناس الي ف قلبك ←  \nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
for k,v in pairs(heart_list) do
local user_info = bot.getUser(v)
local name = user_info.first_name
your_heart = your_heart..k.." - ["..name.."](tg://user?id="..v..")\n"
end
return send(msg.chat_id,msg_id,your_heart,"md")
end
end
if text == "مسح قلبي" or text == "مسح قائمه قلبي" or text == "حذف قلبي" then
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
return send(msg.chat_id,msg_id,"*⇜ تم مسخ قلبك *","md")
end
-------
if text == "رفع عضيدي" or text == "رفع عشيري" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_frinds:")) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ مرفوع عشيرك مسبقاً *","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*انت اهبل يبني عاوز ترفع نفسك عشير ؟؟*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ مع الاسف ما اصاحب الا المحترمين*","md")
elseif Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_frinds:") then
return send(msg.chat_id,msg_id,"*العضو عشير شخص ثاني*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_frinds:")) ~= tonumber(msg.sender_id.user_id) and not Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_frinds:") then
Redis:set(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_frinds:", msg.sender_id.user_id)
Redis:sadd(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_frinds:", Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"⇜ تم رفعه صديقك .. بنجاح ").Reply,"md",true)
end
end
if text == "تنزيل عضيدي" or text == "تنزيل عشيري" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_frinds:")) == tonumber(msg.sender_id.user_id) then
Redis:del(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_frinds:")
Redis:srem(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_frinds:", msg.chat_id..Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"تم تنزيله من قائمة اصدقائك .. بنجاح").Reply,"md",true) 
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ هطف انت تبي تنزل نفسك!*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ توكل ما اصاحب الا المحترمين*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_frinds:")) ~= tonumber(msg.sender_id.user_id)then
return send(msg.chat_id,msg_id,"*⇜ تم تنزيل العضو صديقك مسبقا ؟!*","md")
end
end
if text == "انا عشير مين" or text == "انا عشيره مين" or text == "انا صديقة مين" or text == "اني صديقة مين" then
if not Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_frinds:") then
return send(msg.chat_id,msg_id,"*⇜ يبوي من يتحمل سوالفك ويعاشرك !*","md")
elseif Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_frinds:") then
local in_frinds_id = Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_frinds:")
local heart_name = bot.getUser(in_frinds_id).first_name
return send(msg.chat_id,msg_id,"*⇜ انت عشير* ["..heart_name.."](tg://user?id="..in_frinds_id..")","md")
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
return send(msg.chat_id,msg_id,"*⇜ تم مسح قائمة اصدقائك *","md")
end
-------
if text == "رفع اخ" or text == "رفع اخي" or text == "رفع اخوي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_brothers:")) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ مرفوع اخوك مسبقاً *","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*هطف انت تبي  ترفع نفسك  ؟؟*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜*","md")
elseif Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_brothers:") then
return send(msg.chat_id,msg_id,"*للاسف هذا العضو اخ حد تاني*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_brothers:")) ~= tonumber(msg.sender_id.user_id) and not Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_brothers:") then
Redis:set(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_brothers:", msg.sender_id.user_id)
Redis:sadd(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_brothers:", Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"⇜ تم رفعه اخوك .. بنجاح ").Reply,"md",true)
end
end
if text == "تنزيل اخ" or text == "تنزيل اخي" or text == "تنزيل اخوي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_brothers:")) == tonumber(msg.sender_id.user_id) then
Redis:del(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_brothers:")
Redis:srem(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_brothers:", msg.chat_id..Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"تم تنزيله من قائمة اخوانك .. بنجاح").Reply,"md",true) 
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ هطف انت تبي تنزل نفسك  ؟؟!*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ *","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_brothers:")) ~= tonumber(msg.sender_id.user_id)then
return send(msg.chat_id,msg_id,"*⇜تم تنزيله اخوك مسبقا ؟!*","md")
end
end
if text == "انا اخ مين" or text == "انا اخت مين" or text == "انا اخت مين" or text == "اني اخت مين" or text == "انا اخو مين" then
if not Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_brothers:") then
return send(msg.chat_id,msg_id,"*⇜ تبيني اصدقكك انه في احد يبي يخاويك!*","md")
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
return send(msg.chat_id,msg_id,"*⇜ تم مسح قائمة اخوانك *","md")
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
return send(msg.chat_id,msg_id,"*هطف انت تبي  ترفع نفسك  ؟؟*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ *","md")
elseif Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_toloii:") then
return send(msg.chat_id,msg_id,"*للاسف هذا العضو ضلع حد ثاني*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_toloii:")) ~= tonumber(msg.sender_id.user_id) and not Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_toloii:") then
Redis:set(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_toloii:", msg.sender_id.user_id)
Redis:sadd(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_toloii:", Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"⇜ تم رفعه ضلع .. بنجاح ").Reply,"md",true)
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
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"تم تنزيله من قائمة ضلوعك .. بنجاح").Reply,"md",true) 
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ هطف انت تبي  تنزل نفسك  ؟؟!*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ *","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_toloii:")) ~= tonumber(msg.sender_id.user_id)then
return send(msg.chat_id,msg_id,"*⇜ هو ضلع اصلا عشان تنزلو ؟!*","md")
end
end
if text == "انا ضلع مين" or text == "انا ضلعة مين" or text == "انا ضلعة مين" or text == "اني ضلعة مين" or text == "اني ضلع مين" then
if not Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_toloii:") then
return send(msg.chat_id,msg_id,"*⇜ !*","md")
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
return send(msg.chat_id,msg_id,"*⇜ تم*","md")
end
-------
if text == "رفع ولدي" or text == "رفع ابني" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_waladi:")) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ مرفوع ولدك مسبقاً *","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*هطف انت تبي  ترفع نفسك  ؟؟*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ *","md")
elseif Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_waladi:") then
return send(msg.chat_id,msg_id,"*للاسف هذا العضو ولد حد ثاني*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_waladi:")) ~= tonumber(msg.sender_id.user_id) and not Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_waladi:") then
Redis:set(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_waladi:", msg.sender_id.user_id)
Redis:sadd(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_waladi:", Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"⇜ تم رفعه ولدك .. بنجاح ").Reply,"md",true)
end
end
if text == "تنزيل ولدي" or text == "تنزيل ابني" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_waladi:")) == tonumber(msg.sender_id.user_id) then
Redis:del(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_waladi:")
Redis:srem(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_waladi:", msg.chat_id..Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"تم تنزيله من قائمة ولادك .. بنجاح").Reply,"md",true) 
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ هطف انت تبي  تنزل نفسك  ؟؟!*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ *","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_waladi:")) ~= tonumber(msg.sender_id.user_id)then
return send(msg.chat_id,msg_id,"*⇜ هو ولدك اصلا عشان تنزله ؟!*","md")
end
end
if text == "انا ابن من" or text == "انا ولد من" or text == " ابن مين" or text == " ولد مين" then
if not Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_waladi:") then
return send(msg.chat_id,msg_id,"*⇜ !*","md")
elseif Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_waladi:") then
local in_waladi_id = Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_waladi:")
local heart_name = bot.getUser(in_waladi_id).first_name
return send(msg.chat_id,msg_id,"*⇜ انت ولد* ["..heart_name.."](tg://user?id="..in_waladi_id..")","md")
end
end
if text == "" or text == "" or text == "قائمه ولادي" or text == "قائمه عيالي" or text == "قائمة عيالي" then
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
if text == "مسح عيالي" or text == "مسح عيالي" or text == "مسح قائمه عيالي" then
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
return send(msg.chat_id,msg_id,"*⇜ تم مسح قائمة عيالك *","md")
end
-------
if text == "رفع اميرتي" or text == "رفع جميلتي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_banati:")) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ مرفوعه اميرتك مسبقاً *","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*هطف انت تبي ترفع نفسك*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ *","md")
elseif Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_banati:") then
return send(msg.chat_id,msg_id,"*للاسف هذا العضو اميره احد ثاني*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_banati:")) ~= tonumber(msg.sender_id.user_id) and not Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_banati:") then
Redis:set(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_banati:", msg.sender_id.user_id)
Redis:sadd(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_banati:", Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"⇜ تم رفعها اميرتك .. بنجاح ").Reply,"md",true)
end
end
if text == "تنزيل بنتي" or text == "تنزيل بنيتي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_banati:")) == tonumber(msg.sender_id.user_id) then
Redis:del(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_banati:")
Redis:srem(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_banati:", msg.chat_id..Message_Reply.sender_id.user_id)
return send(msg.chat_id,msg_id,Reply_Status(Message_Reply.sender_id.user_id,"تم تنزيله من قائمة بناتك .. بنجاح").Reply,"md",true) 
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return send(msg.chat_id,msg_id,"*⇜ انت اهبل يبني عاوز تنزل نفسك ؟!*","md")
elseif tonumber(Message_Reply.sender_id.user_id) == tonumber(Zelzal) then
return send(msg.chat_id,msg_id,"*⇜ ابعد عني  . . ماريد اكون بنت حد 😡🚫*","md")
elseif tonumber(Redis:get(Zelzal..msg.chat_id..Message_Reply.sender_id.user_id.."in_banati:")) ~= tonumber(msg.sender_id.user_id)then
return send(msg.chat_id,msg_id,"*⇜ هو بنيتك اصلا عشان تنزلو ؟!*","md")
end
end
if text == "انا بنت مين" or text == "انا بنية مين" or text == "اني بنت مين" or text == "اني بنية مين" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
if not Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_banati:") then
return send(msg.chat_id,msg_id,"*⇜ اقعدي يبت انتي محدش طايقك اصلاً ؟!*","md")
elseif Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_banati:") then
local in_banati_id = Redis:get(Zelzal..msg.chat_id..msg.sender_id.user_id.."in_banati:")
local heart_name = bot.getUser(in_banati_id).first_name
return send(msg.chat_id,msg_id,"*⇜ انت بنت* ["..heart_name.."](tg://user?id="..in_banati_id..")","md")
end
end
if text == "اميراتي" or text == "نادي اميراتي" or text == "قائمه اميراتي" or text == "قائمه بناتي" or text == "قائمة اميراتي" then
if Redis:sismember(Zelzal.."Zelzal:Text:Cmd:Lock"..msg_chat_id,text) then
if Locks_Status(msg.sender_id.user_id,msg,text) ~= "noon" then
return send(msg_chat_id,msg_id,Locks_Status(msg.sender_id.user_id,msg,text),"md",true)
end
end
local heart_list = Redis:smembers(Zelzal..msg.chat_id..msg.sender_id.user_id.."my_banati:")
if #heart_list == 0 then
return send(msg.chat_id,msg_id,"*⇜ مسكين ماعندك اميرات*","md")
elseif #heart_list > 0 then
your_heart = "*- قائمة اميرات ←  \nٴ⋆┄─┄─┄─┄┄─┄─┄─┄─┄┄⋆\n*"
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
