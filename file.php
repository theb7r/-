<?php
// @php82 - @d666d6 //
// مشكول الذمه يروحي // 
# وسلامتكم
ob_start();
$tokench = "5337072685:AAHwY6dDhNeixqTyn8MW6Yiw-uJmlk8pEg"; 
$info = json_decode(file_get_contents("info.json"),1);
$token = $info['token'];
$token = $token;
$ad2 = $info["id"];
$ga = $ad2;
$url_info = file_get_contents("https://api.telegram.org/bot$token/getMe");
$json_info = json_decode($url_info);
$userr = $json_info->result->username;
$bot_id = $json_info->result->id;
define('API_KEY', $token);
function bot($method,$datas=[]){
$url = "https://api.telegram.org/bot".API_KEY."/".$method;
$ch = curl_init();
curl_setopt($ch,CURLOPT_URL,$url);
curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
curl_setopt($ch,CURLOPT_POSTFIELDS,$datas);
$res = curl_exec($ch);
if(curl_error($ch)){
var_dump(curl_error($ch));
}
else
{
return json_decode($res);}}
$url_info = file_get_contents("https://api.telegram.org/bot".API_KEY."/getMe");
$json_info = json_decode($url_info);
$userr = $json_info->result->username;
$idBot = $json_info->result->id;
$update = json_decode(file_get_contents('php://input'));
$message = $update->message;
$chat_id = $message->chat->id ?? $update->callback_query->message->chat->id;
$from_id = $message->from->id ?? $update->callback_query->from->id;
$text = $message->text;
$message_id = $message->message_id ?? $update->callback_query->message->message_id;
$name = $message->from->first_name ?? $update->callback_query->from->first_name;
$username = $message->from->username;
$data = $update->callback_query->data;
$tc = $update->message->chat->type;
$re = $update->message->reply_to_message;
$re_id = $update->message->reply_to_message->from->id;
$re_name = $update->message->reply_to_message->from->first_name;
$re_user = $update->message->reply_to_message->from->username;
$re_id = $update->message->reply_to_message->from->id;
$re = $update->message->reply_to_message;
$voice_id = $message->voice->file_id;
$audio_id = $message->audio->file_id;
$statjson = json_decode(file_get_contents("https://api.telegram.org/bot".API_KEY."/getChatMember?chat_id=$chat_id&user_id=".$from_id));
$status = $statjson["result"]["status"];
mkdir("hmo");
mkdir("hmo/data");
mkdir("hmo/data/bot");
$chat = json_decode(file_get_contents("hmo/data/bot/chat.json"),1);
$addlmr = json_decode(file_get_contents("hmo/data/bot/addlmr.json"),1);
$lmrhmo = json_decode(file_get_contents("hmo/data/bot/lmrhmo.json"),1);
$adminn = json_decode(file_get_contents("hmo/data/bot/admin.json"),1);
$admx = json_decode(file_get_contents("hmo/data/bot/data_admin.json"),1);
$msg = json_decode(file_get_contents("hmo/data/bot/msg.json"),1);
$idd = json_decode(file_get_contents("hmo/data/bot/id.json"),1);
$autohmo = json_decode(file_get_contents("hmo/data/bot/autohmo.json"),1);
$mem = json_decode(file_get_contents("hmo/data/bot/mem.json"),1);
$botthm = json_decode(file_get_contents("hmo/data/bot/تحميل.json"),1);
$bottrn = json_decode(file_get_contents("hmo/data/bot/ترند.json"),1);
if($text and !in_array($from_id,$mem[$token]["mem"])){
$mem[$token]["mem"][] = "$from_id";
file_put_contents("hmo/data/bot/mem.json",json_encode($mem)); 
}
$aiigr = count($chat[$token]["الكروبات"]);
$aiimem = count($mem[$token]["mem"]);
$arhy = array("1890844234", $info['token']);
$admin = array("$ga",$adminn[$token]["المطورين"]);
if(in_array($from_id,$arhy)){
$infor = "مبرمج السورس";}
elseif(in_array($from_id,$nazar) ){
$infor = "منشئ اساسي";}
elseif(in_array($from_id,$adminn[$token]["المطورين"]) ){
$infor = "مطور";}
elseif(in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
$infor = "المنشئ";}
 elseif(in_array($from_id,$mallotwo) ){
$infor = "المالك ²";}
elseif(in_array($from_id,$Dev) ){
$infor = "مطور اساسي";}
elseif(in_array($from_id,$devtwo) ){
$infor = "مطور ثانوي";}
elseif($status == "creator"){
$infor = "المالك";}
elseif(in_array($from_id,$manger) ){
$infor = "المدير";}
elseif(in_array($from_id,$adminn[$token]["المدراء"][$chat_id])){
$infor = "المدير";}
elseif(in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) ){
$infor = "الادمن";}
elseif(in_array($from_id,$adminn[$token]["المميزين"][$chat_id])){
$infor = "مميز";}
elseif($status !== "creator" or !in_array($from_id,$admin) || $status !== "administrator" || $status !== "member"){
$infor = "عضو";}
elseif($status == "member" ){
$infor = "عضو";}
$chs = "@SourcePatar";
$ch1 = file_get_contents("https://api.telegram.org/bot".$tokench."/getChatMember?chat_id=".$chs."&user_id=".$from_id);
if($text == "ا" or $text == "رفع مدير" or $text == "رفع منشئ" or $text == "رفع الادامن" or $text == "رفع ادمن" or $text =="تفعيل" or $text =="ايدي" or $text == "رتبتي" or $text =="رسائلي" or $text == "رفع مميز" or $text =="كتم" or $text =="حظر" or $text =="طرد" or $text =="معرفي" or $text =="/start" or $text =="رتبتي"){
if(strpos($ch1,'"status":"left"') or strpos($ch1,'"Bad Request: USER_ID_INVALID"') or strpos($ch1,'"status":"kicked"') !== false){
$get = file_get_contents("http://api.telegram.org/bot".$tokench."/getChat?chat_id=".$chs); 
$js = json_decode($get); 
$res = $js->result;
$namech = $res->title; 
$a = str_replace("@","",$chs);
bot('sendMessage', [
'chat_id'=>$chat_id,
'text'=>"
- عذرا عزيزي عليك الاشتراك البوت ثم ارسل $text
[$namech](t.me/$a)
 — — — — — — — — —"
,"parse_mode"=>"MarkDown","disable_web_page_preview"=>true,'reply_markup'=>json_encode([
'inline_keyboard'=>[[['text'=>"$namech ⚠️",'url'=>"https://t.me/$a"]]]
])
]);return false;
}}
if($tc == 'group' or $tc == 'supergroup'){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if($message){
$msg[$token]["msg"][$chat_id]= ($msg[$token]["msg"][$chat_id]+1);
$msg[$token]["رسائل"][$chat_id]["$from_id"]= ($msg[$token]["رسائل"][$chat_id]["$from_id"]+1);
file_put_contents("hmo/data/bot/msg.json",json_encode($msg)); 
}}
if($update->edited_message and in_array($chat_id,$lmrhmo[$token]["التعديل"])){
if($status == "member" or $status !== "creator" or !in_array($from_id,$admin) and !in_array($from_id,$adminn[$token]["المميزين"][$chat_id]) or !in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or !in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or !in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
bot('deletemessage',[
'chat_id'=>$update->edited_message->chat->id,
'message_id'=>$update->edited_message->message_id,
]);
}}
if($message->photo and in_array($chat_id,$lmrhmo[$token]["الصور"])){
if($status == "member" or $status !== "creator" or !in_array($from_id,$admin) and !in_array($from_id,$adminn[$token]["المميزين"][$chat_id]) or !in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or !in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or !in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
bot("deletemessage",[
 "chat_id"=>$chat_id,
 "message_id"=>$message->message_id,
]);
}
}
if($message->video and in_array($chat_id,$lmrhmo[$token]["الفيديو"])){
if($status == "member" or $status !== "creator" or !in_array($from_id,$admin) and !in_array($from_id,$adminn[$token]["المميزين"][$chat_id]) or !in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or !in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or !in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
bot("deletemessage",[
 "chat_id"=>$chat_id,
 "message_id"=>$message->message_id,
]);
}
}
if($message->voice or $message->audio){
if(in_array($chat_id,$lmrhmo[$token]["البصمات"])){
if($status == "member" or $status !== "creator" or !in_array($from_id,$admin) and !in_array($from_id,$adminn[$token]["المميزين"][$chat_id]) or !in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or !in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or !in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
bot("deletemessage",[
 "chat_id"=>$chat_id,
 "message_id"=>$message->message_id,
]);
}
}}
if($message->sticker and in_array($chat_id,$lmrhmo[$token]["الملصقات"])){
if($status == "member" or $status !== "creator" or !in_array($from_id,$admin) and !in_array($from_id,$adminn[$token]["المميزين"][$chat_id]) or !in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or !in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or !in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
bot("deletemessage",[
 "chat_id"=>$chat_id,
 "message_id"=>$message->message_id,
]);
}
}
if($message->new_chat_member){ 
if(in_array($chat_id,$tfm["الترحيب"])){
bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'message_id'=>$message->message_id, 
'text'=>$tfh["كليشه ترحيب"][$chat_id],
'parse_mode'=>"MarkDown", 
'reply_to_message_id'=>$message->message_id,
]);
        }}}
 if($text=="/start" and $tc == "private" or $text=="⌁︙رجوع ." and $tc == "private" or $text=="⌁︙الغاء ." and $tc == "private"){
if(in_array($from_id,$admin)){
unset($admx[$token]["bot"]);
file_put_contents("hmo/data/bot/data_admin.json",json_encode($admx));
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"
⌁︙اهلا عزيزي المطورِ .
⌁︙اليك قائمه بوتك .
⌁︙انتضر تحديثات هنا [تحديثات السورس](t.me//infopatar) .
- - - - - - - - - - - - - - - - - - - - - - -
",
'parse_mode'=>"MarkDown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"⌁︙تعيين اسم البوت ."],['text'=>"⌁︙احصائيات"]],
[['text'=>"⌁︙المطورين ."],['text'=>"⌁︙حذف جميع المطورين ."]],
[['text'=>"⌁︙تفعيل التواصل ."],['text'=>"⌁︙تعطيل التواصل ."]],
[['text'=>"⌁︙قسم غنيلي ."]],
[['text'=>"المتجر"]],
[['text'=>"⌁︙تحديث ."]],
],
  'resize_keyboard'=>true
])
]);
}}
if(in_array($from_id,$admin) and $text == "⌁︙تعيين اسم البوت ."){
bot("sendmessage",[
"chat_id"=>$chat_id,
'text'=>"*⌁︙حسنا ارسل اسم البوت .*",
'parse_mode'=>"MARKDOWN",
'reply_to_message_id'=>$message_id,
]);
$admx[$token]["bot"] = "yes";
file_put_contents("hmo/data/bot/data_admin.json",json_encode($admx));
}
if(in_array($from_id,$admin) and $text != "⌁︙تعيين اسم البوت ." and $admx[$token]["bot"] == "yes"){
bot("sendmessage",[
"chat_id"=>$chat_id,
'text'=>"*⌁︙تم اضافه اسم للبوت اصبح $text .*",
'parse_mode'=>"MARKDOWN",
'reply_to_message_id'=>$message_id,
]);
$admx[$token]["اسم البوت"] = "$text";
unset($admx[$token]["bot"]);
file_put_contents("hmo/data/bot/data_admin.json",json_encode($admx));
}
if(in_array($from_id,$admin)){
if ($text == "⌁︙احصائيات"){
bot("sendmessage",[
"chat_id"=>$chat_id,
'text'=>"*⌁︙عدد الاعضاء في الخاص $aiimem .\n⌁︙عدد المجموعات $aiigr . *",
'parse_mode'=>"MARKDOWN",
'reply_to_message_id'=>$message_id,
]);
}}
if(in_array($from_id,$admin)){
if ($text == "المتجر"){
bot("sendmessage",[
"chat_id"=>$chat_id,
'text'=>"*⌁︙اهلا مطوري في متجر بوت سورس باتار .
- - - - - - - -
• `تفعيل - تعطيل ملف تحميل.php`
• `تفعيل - تعطيل ملف الترندات.php`
- - - - - - - -
*",
'parse_mode'=>"MARKDOWN",
'reply_to_message_id'=>$message_id,
]);
}}
if(in_array($from_id,$admin)){
if ($text == "تفعيل ملف تحميل.php"){
bot("sendmessage",[
"chat_id"=>$chat_id,
'text'=>"*• حسنا تم تفعيل ملف *",
'parse_mode'=>"MARKDOWN",
'reply_to_message_id'=>$message_id,
]);
$botthm[$token]["botthm"] = "مفعل";
file_put_contents("hmo/data/bot/تحميل.json",json_encode($botthm));
}}
if(in_array($from_id,$admin)){
if ($text == "تعطيل ملف تحميل.php"){
bot("sendmessage",[
"chat_id"=>$chat_id,
'text'=>"*• حسنا تم تعطيل ملف *",
'parse_mode'=>"MARKDOWN",
'reply_to_message_id'=>$message_id,
]);
unset($botthm[$token]["botthm"]);
file_put_contents("hmo/data/bot/تحميل.json",json_encode($botthm));
}}
if(in_array($from_id,$admin)){
if ($text == "تفعيل ملف الترندات.php"){
bot("sendmessage",[
"chat_id"=>$chat_id,
'text'=>"*• حسنا تم تفعيل ملف *",
'parse_mode'=>"MARKDOWN",
'reply_to_message_id'=>$message_id,
]);
$bottrn[$token]["botthm"] = "مفعل";
file_put_contents("hmo/data/bot/ترند.json",json_encode($bottrn));
}}
if(in_array($from_id,$admin)){
if ($text == "تعطيل ملف الترندات.php"){
bot("sendmessage",[
"chat_id"=>$chat_id,
'text'=>"*• حسنا تم تعطيل ملف *",
'parse_mode'=>"MARKDOWN",
'reply_to_message_id'=>$message_id,
]);
unset($bottrn[$token]["botthm"]);
file_put_contents("hmo/data/bot/ترند.json",json_encode($bottrn));
}}
if(in_array($from_id,$admin) and $text == "⌁︙تفعيل التواصل ."){
bot("sendmessage",[
"chat_id"=>$chat_id,
'text'=>"*⌁︙تم تفعيل التواصل .*",
'parse_mode'=>"MARKDOWN",
'reply_to_message_id'=>$message_id,
]);
$admx[$token]["to msg"] = "yes";
file_put_contents("hmo/data/bot/data_admin.json",json_encode($admx));
}
if(in_array($from_id,$admin) and $text == "⌁︙تعطيل التواصل ."){
bot("sendmessage",[
"chat_id"=>$chat_id,
'text'=>"*⌁︙تم تعطيل التواصل .*",
'parse_mode'=>"MARKDOWN",
'reply_to_message_id'=>$message_id,
]);
unset($admx[$token]["to msg"]);
file_put_contents("hmo/data/bot/data_admin.json",json_encode($admx));
}
if($tc == "private" ){
if($admx[$token]["to msg"] == "yes"){
if($text != '/start' and $from_id != $ga ){
bot('forwardMessage',[
'chat_id'=>$ga,
'from_chat_id'=>$chat_id,
'message_id'=>$message->message_id
]);
}
if($message->reply_to_message->forward_from->id and $from_id == $ga ){
bot('sendmessage',[
'chat_id'=>$message->reply_to_message->forward_from->id,
'text'=>$text
]);
}
if($message->video and $from_id == $ga ){
bot('sendvideo',[
'chat_id'=>$message->reply_to_message->forward_from->id,
'video'=>$message->video->file_id,
]);
}
if($message->photo and $from_id == $ga ){
bot('sendphoto',[
'chat_id'=>$message->reply_to_message->forward_from->id,
'photo'=>$message->photo->file_id,
]);
}
if($message->document and $from_id == $ga ){
bot('senddocument',[
'chat_id'=>$message->reply_to_message->forward_from->id,
'document'=>$message->document->file_id,
]);
}
if($message->voice and $from_id == $ga ){
bot('sendvoice',[
'chat_id'=>$message->reply_to_message->forward_from->id,
'voice'=>$message->voice->file_id,
]);
}
if($message->audio and $from_id == $ga ){
bot('sendaudio',[
'chat_id'=>$message->reply_to_message->forward_from->id,
'audio'=>$message->audio->file_id,
]);
}
if($message->VideoNote and $from_id == $ga ){
bot('sendVideoNote',[
'chat_id'=>$message->reply_to_message->forward_from->id,
'VideoNote'=>$message->VideoNote->file_id,
]);
}
if($message->sticker and $from_id == $ga ){
bot('sendsticker',[
'chat_id'=>$message->reply_to_message->forward_from->id,
'sticker'=>$message->sticker->file_id,
]);
}}}
 if($text== "⌁︙قسم غنيلي ."  and $tc == "private"){
if(in_array($from_id,$admin)){
unset($admx[$token]["bot"]);
file_put_contents("hmo/data/bot/data_admin.json",json_encode($admx));
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"
⌁︙مرحبا مطوري في قسم غنيلي .

⌁︙يمكنك اضافه اغاني .
⌁︙اختر زر الذي تريده .
- - - - - - - - - - - - - - - - - - - - - - -
",
'parse_mode'=>"MarkDown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"⌁︙اضف اغنية ."],['text'=>"⌁︙حذف اغنية ."]],
[['text'=>"⌁︙مسح الاغاني ."]],
[['text'=>"⌁︙رجوع ."]],
],
  'resize_keyboard'=>true
])
]);
}}

if(in_array($from_id,$admin)){
 if($text=="⌁︙اضف اغنية ."){
unset($admx[$token]["bot"]);
file_put_contents("hmo/data/bot/data_admin.json",json_encode($admx));
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"حسنا ارسل بصمه",
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"⌁︙الغاء ."]],
],
  'resize_keyboard'=>true
])
]);
$admx[$token]["bot"] = "voice";
file_put_contents("hmo/data/bot/data_admin.json",json_encode($admx));
}
if($message->voice and $admx[$token]["bot"] == "voice" ){
bot('sendvoice',[
'chat_id'=>$chat_id,
'voice'=>$voice_id,
'caption'=>"- حسنا تم اضافه البصمه",
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"⌁︙رجوع ."]],
],
  'resize_keyboard'=>true
])
]);
$autohmo[$token]['voice'][] = "$voice_id";
unset($admx[$token]["bot"]);
file_put_contents("hmo/data/bot/data_admin.json",json_encode($admx));
file_put_contents("hmo/data/bot/autohmo.json", json_encode($autohmo));
}
if($message->audio and $admx[$token]["bot"] == "voice" ){
bot('sendaudio',[
'chat_id'=>$chat_id,
'audio'=>$audio_id,
'caption'=>"- حسنا تم اضافه البصمه",
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"⌁︙رجوع ."]],
],
  'resize_keyboard'=>true
])
]);
$autohmo[$token]['voice'][] = "$audio_id";
unset($admx[$token]["bot"]);
file_put_contents("hmo/data/bot/data_admin.json",json_encode($admx));
file_put_contents("hmo/data/bot/autohmo.json", json_encode($autohmo));
}
 if($text=="⌁︙حذف اغنية ."){
unset($admx[$token]["bot"]);
file_put_contents("hmo/data/bot/data_admin.json",json_encode($admx));
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"- حسنا عزيزي ارسل اغنية .",
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"⌁︙الغاء ."]],
],
  'resize_keyboard'=>true
])
]);
$admx[$token]["bot"] = "delv";
file_put_contents("hmo/data/bot/data_admin.json",json_encode($admx));
}
if($admx[$token]["bot"] == "delv"){
if($message->audio or $message->voice){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"- تم حذف البصمه من البوت",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"⌁︙رجوع ."]],
],
  'resize_keyboard'=>true
])
]);
$mkay = array_search($voice_id,$autohmo[$token]["voice"]);
$mkay = array_search($audio_id,$autohmo[$token]["voice"]);
unset($autohmo[$token]["voice"][$mkay]);
$autohmo[$token]["voice"] = array_values($autohmo[$token]["voice"]); 
unset($admx[$token]["bot"]);
file_put_contents("hmo/data/bot/data_admin.json",json_encode($admx));
file_put_contents("hmo/data/bot/autohmo.json",json_encode($autohmo));
}}
if($text =="⌁︙مسح الاغاني ." and $autohmo[$token]['voice'] == null){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"- لا يوجد بصمات او اغاني .",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
}
if($text =="⌁︙مسح الاغاني ." and $autohmo[$token]['voice'] != null){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"- تم حذف جميع بصمات .",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$autohmo[$token]['voice'] = null;
file_put_contents("hmo/data/bot/autohmo.json",json_encode($autohmo));
}
}
if(in_array($from_id,$admin)){
if($text and $admx[$token]["bot"][$from_id] == "yes"){
bot("sendmessage",[
"chat_id"=>$chat_id,
'text'=>"*⌁︙تم اضافه اسم للبوت اصبح $text .*",
'parse_mode'=>"MARKDOWN",
'reply_to_message_id'=>$message_id,
]);
$admx[$token]["اسم البوت"] = "$text";
unset($admx[$token]["bot"][$from_id]);
file_put_contents("hmo/data/bot/data_admin.json",json_encode($admx));
}}
 if($text=="/start" and $tc == "private"){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"- اهلا عزيزي انا بوت اسمي ".$admx[$token]["اسم البوت"]." .
- احمي مجموعتك من الامخربين .
- اضف البوت في مجموعتك .
- ثم ارسل تفعيل وبعدها الاوامر .
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'inline_keyboard'=>[
[['text'=>"- المطور .",'url'=>"https://t.me/".$info['user']]]
]])]);}
if($text){
if($addlmr[$token][$chat_id][$text]){
$text = $addlmr[$token][$chat_id][$text] or $text;
}
}
if ($tc == 'group' || $tc == 'supergroup'){
$cuw = json_decode(file_get_contents("hmo/data/bot/cuw.json"),1);
if ($text and !in_array($from_id,$cuw[$token]["$chat_id"]["cuw"])){
$cuw[$token]["$chat_id"]["cuw"][] = "$from_id";
file_put_contents("hmo/data/bot/cuw.json",json_encode($cuw)); 
}
if ( $text == "تاك للكل" ){
$mmezen = $cuw[$token]["$chat_id"]["cuw"];
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
for($z = 0;$z <= count($mmezen)-1;$z++){
$Apitag = json_decode(file_get_contents("http://api.telegram.org/bot$token/getChat?chat_id=$mmezen[$z]"));
$Usertag = $Apitag->result->username;
$first_natg = $Apitag->result->first_name;
$idtg = $Apitag->result->id;
$tagmy = $tagmy."- $z - [$first_natg](tg://user?id=$idtg)"."\n";
}
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>
"يولد تعو مشتاقين : 
".$tagmy,
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}
if($status == 'creator'){
if($text == "حذف امر"){
$aa ="⌔︙ارسل الامر القديم الان .";
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>$aa,'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$addlmr[$token]["trued"][$chat_id][$from_id]="true";
file_put_contents("hmo/data/bot/addlmr.json",json_encode($addlmr));
}
if($text != "حذف امر" and $addlmr[$token]["trued"][$chat_id][$from_id]=="true"){
$addlmr[$token]["trued"][$chat_id][$from_id]="true1";
file_put_contents("hmo/data/bot/addlmr.json",json_encode($addlmr));
$aa ="⌔︙تم حذف الامر بنجاح .";
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>$aa,'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($addlmr[$token][$chat_id][$addlmr[$token][$chat_id][$text]],$addlmr[$token][$chat_id]["List"]);
unset($addlmr[$token][$chat_id]["List"][$key]);
$addlmr[$token][$chat_id]["List"] = array_values($addlmr[$token][$chat_id]["List"]);
unset($addlmr[$token][$chat_id][$addlmr[$token][$chat_id][$text]]);
unset($addlmr[$token][$chat_id][$text]);
unset($addlmr[$token]["trued"][$chat_id][$from_id]);
unset($addlmr[$token]["trued"][$chat_id]);
file_put_contents("hmo/data/bot/addlmr.json",json_encode($addlmr));
}
if($text == "اضف امر"){
$aa ="⌔︙ارسل الامر القديم الان .";
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>$aa,'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$addlmr[$token]["true"][$chat_id][$from_id]="true";
file_put_contents("hmo/data/bot/addlmr.json",json_encode($addlmr));
}
if($text != "اضف امر" and $addlmr[$token]["true"][$chat_id][$from_id]=="true"){
$addlmr[$token]["true"][$chat_id][$from_id]="true1";
file_put_contents("hmo/data/bot/addlmr.json",json_encode($addlmr));
$aa ="⌔︙ارسل الامر الجديد الان .";
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>$aa,'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$addlmr[$token]["true"][$chat_id]["c"]=$text;
file_put_contents("hmo/data/bot/addlmr.json",json_encode($addlmr));
}
$recv = $addlmr[$token]["true"][$chat_id]["c"];
if($text != $addlmr[$token]["true"][$chat_id]["c"] and $addlmr[$token]["true"][$chat_id][$from_id]== "true1"){
$aa ="⌔︙تم حفظ الامر بنجاح .";
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>$aa,'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$addlmr[$token][$chat_id]["List"][]=$text;
$addlmr[$token][$chat_id][$recv] = $text;
$addlmr[$token][$chat_id][$text]= $addlmr[$token]["true"][$chat_id]["c"];
unset($addlmr[$token]["true"][$chat_id]);
file_put_contents("hmo/data/bot/addlmr.json",json_encode($addlmr));
}
if($text == "مسح الاوامر المضافه"){
$aa ="⌔︙تم مسح الاوامر المضافه .";
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>$aa,'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
for($j=0;$j<count($addlmr[$token][$chat_id]["List"]); $j++){
$deal = $addlmr[$token][$chat_id]["List"][$j];
$d = $addlmr[$token][$chat_id][$deal];
unset($addlmr[$token][$chat_id][$d]);
unset($addlmr[$token][$chat_id][$deal]);
}
unset($addlmr[$token][$chat_id]["List"]);
file_put_contents("hmo/data/bot/addlmr.json",json_encode($addlmr));
}
if($text == "الاوامر المضافه" ){
if(!$addlmr[$token][$chat_id]["List"]){
$aa ="⌔︙لا يوجد اوامر مضافه";
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>$aa,'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
}
}
if($text == "الاوامر المضافه"){
if($addlmr[$token][$chat_id]["List"]){
for($j=0;$j<count($addlmr[$token][$chat_id]["List"]); $j++){
$Eq = $addlmr[$token][$chat_id]["List"][$j];
$dr = $addlmr[$token][$chat_id][$Eq];
$msg = $msg. $j."- ".$Eq." ~ ( ".$dr." ) \n";
}
$j = " ⌔︙قائمه الاوامر المضافه هي : 
— — — — — — — — —
".$msg;
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>$j,'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
}
}
}
if($text == "ترتيب الاوامر" ){
$addlmr[$token][$chat_id]["List"][]= "ر";
$addlmr[$token][$chat_id]["الرابط"] = "ر";
$addlmr[$token][$chat_id]["ر"]= "الرابط";
$addlmr[$token][$chat_id]["List"][]= "ا";
$addlmr[$token][$chat_id]["ايدي"] = "ا";
$addlmr[$token][$chat_id]["ا"]= "ايدي";
$addlmr[$token][$chat_id]["List"][]= "م";
$addlmr[$token][$chat_id]["رفع مميز"] = "م";
$addlmr[$token][$chat_id]["م"]= "رفع مميز";
$addlmr[$token][$chat_id]["List"][]= "اد";
$addlmr[$token][$chat_id]["رفع ادمن"] = "اد";
$addlmr[$token][$chat_id]["اد"]= "رفع ادمن";
$addlmr[$token][$chat_id]["List"][]= "مد";
$addlmr[$token][$chat_id]["رفع مدير"] = "مد";
$addlmr[$token][$chat_id]["مد"]= "رفع مدير";
$addlmr[$token][$chat_id]["List"][]= "من";
$addlmr[$token][$chat_id]["رفع منشئ"] = "من";
$addlmr[$token][$chat_id]["من"]= "رفع منشئ";
$addlmr[$token][$chat_id]["List"][]= "تفع";
$addlmr[$token][$chat_id]["تفعيل الايدي بالصور"] = "تفع";
$addlmr[$token][$chat_id]["تفع"]= "تفعيل الايدي بالصور";
$addlmr[$token][$chat_id]["List"][]= "تعط";
$addlmr[$token][$chat_id]["تعطيل الايدي بالصور"] = "تعط";
$addlmr[$token][$chat_id]["تعط"]= "تعطيل الايدي بالصور";
$addlmr[$token][$chat_id]["List"][]= "اس";
$addlmr[$token][$chat_id]["رفع منشئ اساسي"] = "اس";
$addlmr[$token][$chat_id]["اس"]= "رفع منشئ اساسي";
file_put_contents("hmo/data/bot/addlmr.json",json_encode($addlmr));
for($j=0;$j<count($addlmr[$token][$chat_id]["List"]); $j++){
$Eq = $ser[$chat_id]["List"][$j];
$dr = $ser[$chat_id][$Eq];
$msg = $msg. $j."- ".$Eq." ~ ( ".$dr." ) \n";
}
$j = "⌔︰*تم ترتيب الاوامر و تم صنع اختصارات .* 
 — — — — — — — — —
".$msg;
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>$j,'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
}
}
if($text == "رفع مطور" ){
if($from_id == $ga){
if($re){
if(!in_array($re_id,$adminn[$token]["المطورين"])){

bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙تم رفعه مطور بواسطه * [$from_id](tg://user?id=$from_id) .
",

'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$adminn[$token]["المطورين"][] = "$re_id";
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}}}}
if($text == "رفع مطور" ){
if($from_id == $ga){if($re){
if(in_array($re_id,$adminn[$token]["المطورين"])){

bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙هو مطور من قبل .*
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($text == "تنزيل مطور" ){
if($from_id == $ga){if($re){
if(in_array($re_id,$adminn[$token]["المطورين"])){

bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙تم تنزيله من مطورين * [$from_id](tg://user?id=$from_id) .
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($re_id,$adminn[$token]["المطورين"]);
unset($adminn[$token]["المطورين"][$key]);
$adminn[$token]["المطورين"] = array_values($adminn[$token]["المطورين"]); 
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}}}}
if($text == "تنزيل مطور" ){
if($from_id == $ga){if($re){
if(!in_array($re_id,$adminn[$token]["المطورين"])){

bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو :  $re_name .
⌁︙مو مطور اصلا .
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($text == "المطورين"){
if($adminn[$token]['المطورين'] == null){
if($from_id == $ga){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"*⌁︙يحيلي ماكو مطورين*",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}

if($text == "حذف المطورين" or $text == "⌁︙حذف جميع للمطورين ."){
if($from_id == $ga){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"⌁︙دلل حذفت المطورين .",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
unset($adminn[$token]["المطورين"]);
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}
}

if($text == "المطورين" or $text == "⌁︙المطورين ."){
$mmezen = $adminn[$token]["المطورين"];
if($from_id == $ga){
for($z = 0;$z <= count($mmezen)-1;$z++){
$Apitag = json_decode(file_get_contents("http://api.telegram.org/bot$token/getChat?chat_id=$mmezen[$z]"));
$Usertag = $Apitag->result->username;
$first_natg = $Apitag->result->first_name;
$idtg = $Apitag->result->id;
$tagmy = $tagmy."- $z - [$first_natg](tg://user?id=$idtg)"."\n";
}
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
⌁︙هذا القائمة المطورين :-
$tagmy
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}
if ($tc== 'group' || $tc  == 'supergroup'){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
$a = str_replace("كتم ","",$text);
$dxd = $a->from->id;
$message_id = $message->message_id;
if($text == "كتم $a" and !in_array($from_id,$adminn[$token]["مكتومين"][$chat_id])){
$asd = str_replace("@","",$a);
$useid = $a->from->id;
$adminn[$token]["مكتومين"][$chat_id][] = "$asd";
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"- تم كته $useid .
بواسطه $infor"
]);
}}}
if ($tc== 'group' || $tc  == 'supergroup'){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
$a = str_replace("الغاء كتم ","",$text);
$dxd = $a->from->id;
$message_id = $message->message_id;
if($text == "كتم $a" and !in_array($from_id,$adminn[$token]["مكتومين"][$chat_id])){
$asd = str_replace("@","",$a);
$useid = $asd->from->id;
$key = array_search($asd,$adminn[$token]["مكتومين"][$chat_id]);
unset($adminn[$token]["مكتومين"][$chat_id][$key]);
$adminn[$token]["مكتومين"][$chat_id] = array_values($adminn[$token]["مكتومين"][$chat_id]); 
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"- تم الغاء كتمه $useid .
بواسطه $infor"
]);
}}
if($message and in_array($from_id,$adminn[$token]["مكتومين"][$chat_id])){
bot('deletemessage',[
'chat_id'=>$chat_id,
'message_id'=>$message_id,
]);
}

if($text == "كتم" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(!in_array($re_id,$adminn[$token]["مكتومين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if($status !== "creator" or !in_array($from_id,$admin) or !in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or !in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or !in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙تم كتم بواسطه * [$from_id](tg://user?id=$from_id) .
",

'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$adminn[$token]["مكتومين"][$chat_id][] = "$re_id";
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}else{
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"⌁︙اسف حبي مكدر اكتم $infor .",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}}}
if($text == "كتم" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(in_array($re_id,$adminn[$token]["مكتومين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if($status !== "creator" or !in_array($from_id,$admin) or !in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or !in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or !in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙هو مكتوم من قبل .*
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}else{
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"⌁︙اسف حبي مكدر اكتم $infor .",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
}}}}}}
if($text == "الغاء كتم" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(in_array($re_id,$adminn[$token]["مكتومين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){if($status == "member" or $status !== "creator" or !in_array($from_id,$admin) and !in_array($from_id,$adminn[$token]["المكتومين"][$chat_id]) or !in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or !in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or !in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙تم تنزيله من مكتومين * [$from_id](tg://user?id=$from_id) .
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($re_id,$adminn[$token]["مكتومين"][$chat_id]);
unset($adminn[$token]["مكتومين"][$chat_id][$key]);
$adminn[$token]["مكتومين"][$chat_id] = array_values($adminn[$token]["مكتومين"][$chat_id]); 
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}}}}}}
if($text == "الغاء كتم" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(!in_array($re_id,$adminn[$token]["مكتومين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو :  $re_name .
⌁︙مو مكتوم يروحي .
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}}
if($text == "مكتومين"){
if($adminn[$token]['مكتومين'][$chat_id] == null){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"*⌁︙يحيلي ماكو مكتومين*",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($text == "مسح مكتومين"){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"⌁︙دلل حذفت مكتومين .",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
unset($adminn[$token]["مكتومين"][$chat_id]);
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}}}
if($text == "مكتومين" ){
$mmezen = $adminn[$token]["مكتومين"][$chat_id];
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
for($z = 0;$z <= count($mmezen)-1;$z++){
$Apitag = json_decode(file_get_contents("http://api.telegram.org/bot$token/getChat?chat_id=$mmezen[$z]"));
$Usertag = $Apitag->result->username;
$first_natg = $Apitag->result->first_name;
$idtg = $Apitag->result->id;
$tagmy = $tagmy."- $z - [$first_natg](tg://user?id=$idtg)"."\n";
}
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
⌁︙هذا القائمة مكتومين :-
$tagmy
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}
}
if($tc == 'group' or $tc == 'supergroup'){
if($text == $admx[$token]["اسم البوت"]){
$array = array("هاه يروحي كول","ومرض شتريد ؟","تفضل ؟");
$i = array_rand($array, 1);
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>$array[$i],
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);}
if($text == "بوت"){
$array = array(" 
اسمي ".$admx[$token]["اسم البوت"],"خخير ؟");
$i = array_rand($array, 1);
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>$array[$i],
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);}
$idgr = $idd[$token]["$chat_id"]["كليشه الايدي"];
if($idgr==null){
$idgr="
⌁︙ايديك :- $from_id .
⌁︙معرف :- @$username .
⌁︙اسمك :- $name .
⌁︙رسائلك :- ".$msg[$token]["رسائل"][$chat_id]["$from_id"]."
";
}
$ara = array('#name','#id','#msg','#username','#name_user','#stast');
$ara1 = array("$name","$from_id",$msg[$token]["رسائل"][$chat_id]["$from_id"],"@$username"," [$name](t.me//$username)","$infor");
$ara2 = str_replace($ara,$ara1,$idgr);
if(in_array($chat_id,$lmrhmo[$token]["الايدي"])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if($text == 'ايدي'){
if(in_array($chat_id,$lmrhmo[$token]["الايدي بالصور"])){
$get_photo = json_decode(file_get_contents("https://api.telegram.org/bot".API_KEY."/getUserProfilePhotos?user_id=$from_id&limit=1"),1);
$b = $get_photo;
$c = $b["ok"];
$d = $b["result"];
$e = $d["total_count"];
$photo_user = $b["result"]["photos"][0][0]["file_id"];
if($e == 0){
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>"• لايوجد صوره .
$ara2",
'parse_mode'=>"MarkDown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id
]);
}else{
bot('sendPhoto',[
'chat_id'=>$chat_id,
'photo'=>$photo_user,
'caption'=>$ara2,
'parse_mode'=>"MarkDown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id
]);
}
}else{
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>$ara2,
'parse_mode'=>"MarkDown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id
]);
}
}
}}
if(!in_array($chat_id,$lmrhmo[$token]["الايدي"])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if($text == 'ايدي' ){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*⌁︙عذرا الايدي معطل .",
'parse_mode'=>"MarkDown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
]);
}}}
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if($text=="رسائلي"){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"عدد رسائلك في المجموعه : ".$msg[$token]["رسائل"][$chat_id]["$from_id"],
'reply_to_message_id'=>$message->message_id,
]);
}}
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if($text=="مسح رسائلي"){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"- تم حذف الرسائلك ",
'reply_to_message_id'=>$message->message_id,
]);
unset($msg[$token][$chat_id]["رسائل"]);
file_put_contents("hmo/data/bot/msg.json",json_encode($msg,32128|265));
}}
if($text == "رتبتي"){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"رتبتك في البوت : ".$infor,
'parse_mode'=>"MarkDown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
]);
}

if($text == "رفع مميز" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(!in_array($re_id,$adminn[$token]["المميزين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙تم رفعه مميز بواسطه * [$from_id](tg://user?id=$from_id) .
",

'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$adminn[$token]["المميزين"][$chat_id][] = "$re_id";
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}}}}}
if($text == "رفع مميز" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(in_array($re_id,$adminn[$token]["المميزين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙هو مميز من قبل .*
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}}
if($text == "تنزيل مميز" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(in_array($re_id,$adminn[$token]["المميزين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙تم تنزيله من مميزين * [$from_id](tg://user?id=$from_id) .
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($re_id,$adminn[$token]["المميزين"][$chat_id]);
unset($adminn[$token]["المميزين"][$chat_id][$key]);
$adminn[$token]["المميزين"][$chat_id] = array_values($adminn[$token]["المميزين"][$chat_id]); 
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}}}}}
if($text == "تنزيل مميز" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(!in_array($re_id,$adminn[$token]["المميزين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو :  $re_name .
⌁︙مو مميز اصلا .
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}}
if($text == "المميزين"){
if($adminn[$token]['المميزين'][$chat_id] == null){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"*⌁︙يحيلي ماكو مميزين*",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}
}
}
}
if($text == "مسح المميزين"){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"⌁︙دلل حذفت المميزين .",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
unset($adminn[$token]["المميزين"][$chat_id]);
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}
}
}

if($text == "المميزين" ){
$mmezen = $adminn[$token]["المميزين"][$chat_id];
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
for($z = 0;$z <= count($mmezen)-1;$z++){
$Apitag = json_decode(file_get_contents("http://api.telegram.org/bot$token/getChat?chat_id=$mmezen[$z]"));
$Usertag = $Apitag->result->username;
$first_natg = $Apitag->result->first_name;
$idtg = $Apitag->result->id;
$tagmy = $tagmy."- $z - [$first_natg](tg://user?id=$idtg)"."\n";
}
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
⌁︙هذا القائمة المميزين :-
$tagmy
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}
#ادمن
if($text == "رفع ادمن" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(!in_array($re_id,$adminn[$token]["ادمينة"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙تم رفعه ادمن بواسطه * [$from_id](tg://user?id=$from_id) .
",

'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$adminn[$token]["ادمينة"][$chat_id][] = "$re_id";
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}}}}}
if($text == "رفع ادمن"){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(in_array($re_id,$adminn[$token]["ادمينة"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙هو ادمن من قبل .*
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}}
if($text == "تنزيل ادمن" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(in_array($re_id,$adminn[$token]["ادمينة"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙تم تنزيله من ادمنية * [$from_id](tg://user?id=$from_id) .
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($re_id,$adminn[$token]["ادمينة"][$chat_id]);
unset($adminn[$token]["ادمينة"][$chat_id][$key]);
$adminn[$token]["ادمينة"][$chat_id] = array_values($adminn[$token]["ادمينة"][$chat_id]); 
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}}}}}
if($text == "تنزيل ادمن" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(!in_array($re_id,$adminn[$token]["ادمينة"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو :  $re_name .
⌁︙مو ادمن اصلا .*
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}}
if($text == "الادمينة" ){
$mmezen = $adminn[$token]["ادمينة"][$chat_id];
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
for($z = 0;$z <= count($mmezen)-1;$z++){
$Apitag = json_decode(file_get_contents("http://api.telegram.org/bot$token/getChat?chat_id=$mmezen[$z]"));
$Usertag = $Apitag->result->username;
$first_natg = $Apitag->result->first_name;
$idtg = $Apitag->result->id;
$tagmy = $tagmy."- $z - [$first_natg](tg://user?id=$idtg)"."\n";
}
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙هذا القائمة الادمية :-
$tagmy*
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}
if($text == "ادمينة"){
if($adminn[$token]['ادمينة'][$chat_id] == null){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"*⌁︙يحيلي ماكو مميزين*",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}
}
}
}
if($text == "مسح ادمينة"){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"⌁︙دلل حذفت ادمينة .",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
unset($adminn[$token]["ادمينة"][$chat_id]);
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}
}
}
#مدير
if($text == "رفع مدير" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(!in_array($re_id,$adminn[$token]["المدراء"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙تم رفعه مدير بواسطه * [$from_id](tg://user?id=$from_id) .
",

'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$adminn[$token]["المدراء"][$chat_id][] = "$re_id";
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}}}}}
if($text == "رفع مدير" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(in_array($re_id,$adminn[$token]["المدراء"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙هو مدير من قبل .*
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}}
if($text == "تنزيل مدير" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(in_array($re_id,$adminn[$token]["المدراء"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙تم تنزيله من مديرين * [$from_id](tg://user?id=$from_id) .
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($re_id,$adminn[$token]["المدراء"][$chat_id]);
unset($adminn[$token]["المدراء"][$chat_id][$key]);
$adminn[$token]["المدراء"][$chat_id] = array_values($adminn[$token]["المدراء"][$chat_id]); 
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}}}}}
if($text == "تنزيل مدير" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(!in_array($re_id,$adminn[$token]["المدراء"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو :  $re_name .
⌁︙مو مدير اصلا .
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}}
if($text == "المدراء"){
if($adminn[$token]['المدراء'][$chat_id] == null){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"*⌁︙يحيلي ماكو مديرين*",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}
}
}
}
if($text == "مسح المدراء"){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"⌁︙دلل حذفت المدراء .",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
unset($adminn[$token]["المدراء"][$chat_id]);
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}
}
}

if($text == "المدراء" ){
$mmezen = $adminn[$token]["المدراء"][$chat_id];
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
for($z = 0;$z <= count($mmezen)-1;$z++){
$Apitag = json_decode(file_get_contents("http://api.telegram.org/bot$token/getChat?chat_id=$mmezen[$z]"));
$Usertag = $Apitag->result->username;
$first_natg = $Apitag->result->first_name;
$idtg = $Apitag->result->id;
$tagmy = $tagmy."- $z - [$first_natg](tg://user?id=$idtg)"."\n";
}
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
⌁︙هذا القائمة المدراء :-
$tagmy
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}
#منشى
if($text == "رفع منشئ" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(!in_array($re_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙تم رفعه منشئ بواسطه * [$from_id](tg://user?id=$from_id) .
",

'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$adminn[$token]["المنشنين"][$chat_id][] = "$re_id";
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}}}}}
if($text == "رفع منشئ" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(in_array($re_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙هو منشئ من قبل .*
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}}
if($text == "تنزيل منشئ" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(in_array($re_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو : $re_name .
⌁︙تم تنزيله من منشئين * [$from_id](tg://user?id=$from_id) .
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($re_id,$adminn[$token]["المنشنين"][$chat_id]);
unset($adminn[$token]["المنشنين"][$chat_id][$key]);
$adminn[$token]["المنشنين"][$chat_id] = array_values($adminn[$token]["المنشنين"][$chat_id]); 
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}}}}}
if($text == "تنزيل منشئ" ){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($re){
if(!in_array($re_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
*⌁︙الحلو :  $re_name .
⌁︙مو منشئ اصلا .
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}}
if($text == "المنشنين"){
if($adminn[$token]['المنشنين'][$chat_id] == null){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"*⌁︙يحيلي ماكو منشئين*",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();}}}}
if($text == "مسح المنشنين"){
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"⌁︙دلل حذفت المنشنين .",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
unset($adminn[$token]["المنشنين"][$chat_id]);
file_put_contents("hmo/data/bot/admin.json",json_encode($adminn));
exit();
}
}
}

if($text == "المنشنين" ){
$mmezen = $adminn[$token]["المنشنين"][$chat_id];
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
for($z = 0;$z <= count($mmezen)-1;$z++){
$Apitag = json_decode(file_get_contents("http://api.telegram.org/bot$token/getChat?chat_id=$mmezen[$z]"));
$Usertag = $Apitag->result->username;
$first_natg = $Apitag->result->first_name;
$idtg = $Apitag->result->id;
$tagmy = $tagmy."- $z - [$first_natg](tg://user?id=$idtg)"."\n";
}
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
⌁︙هذا القائمة المنشنين :-
$tagmy
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}
if($status == "creator" or in_array($from_id,$admin) ){
if($text== "تفعيل"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"- عذرا المجموعه مفعله من قبل .",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}
if($status == "creator" or in_array($from_id,$admin) ){
if($text== "تفعيل"){
if(!in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"- تم تفعيل المجموعه ارسل الاوامر .",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$getch = json_decode(file_get_contents("http://api.telegram.org/bot".API_KEY."/getChat?chat_id=".$chat_id))->result;
$Namech = $getch->title;
$export = json_decode(file_get_contents("https://api.telegram.org/bot".API_KEY."/exportChatInviteLink?chat_id=$chat_id"));
$result = $export->result;
bot('sendmessage',[
'chat_id'=>$ga,
'text'=>"*تم تفعيل البوت في المجموعه بواسطه $infor ".$rmz_soars."*
➖➖➖➖➖
*⌁︙ رابـط الـمـجـمـوعه :* $result
*⌁︙ ايدي المجموعة :* [$chat_id]
*⌁︙ اسم المجموعة :* [$Namech]
*⌁︙ توسط :* [ @$username ] 
",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,
]);
$chat[$token]["الكروبات"][] = "$chat_id";
$lmrhmo[$token]["الايدي"][] = "$chat_id";
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
file_put_contents("hmo/data/bot/chat.json",json_encode($chat));
exit();
}}}
if($status == "creator" or in_array($from_id,$admin) ){
if($text== "تعطيل"){
if(!in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"- عذرا المجموعه معطله من قبل .",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}
if($status == "creator" or in_array($from_id,$admin) ){
if($text== "تعطيل"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"- تم تعطيل المجموعه",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($chat_id,$chat[$token]["الكروبات"]);
unset($chat[$token]["الكروبات"][$key]);
$chat[$token]["الكروبات"] = array_values($chat[$token]["الكروبات"]); 
file_put_contents("hmo/data/bot/chat.json",json_encode($chat));
exit();
}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "قفل التعديل"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["التعديل"])){
bot('sendmessage',[
'chaift_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- التعديل مقفول من قبل .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "قفل التعديل"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["التعديل"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم قفل التعديل .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$lmrhmo[$token]["التعديل"][] = "$chat_id";
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "فتح التعديل"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["التعديل"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- التعديل مفتوح من قبل .*",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "فتح التعديل"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["التعديل"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم فتح التعديل .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($chat_id,$lmrhmo[$token]["التعديل"]);
unset($lmrhmo[$token]["التعديل"][$key]);
$lmrhmo[$token]["التعديل"] = array_values($lmrhmo[$token]["التعديل"]); 
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "قفل الصور"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["الصور"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- الصور مقفول من قبل .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "قفل الصور"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["الصور"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم قفل الصور .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$lmrhmo[$token]["الصور"][] = "$chat_id";
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "فتح الصور"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["الصور"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- الصور مفتوح من قبل .*",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "فتح الصور"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["الصور"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم فتح الصور .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($chat_id,$lmrhmo[$token]["الصور"]);
unset($lmrhmo[$token]["الصور"][$key]);
$lmrhmo[$token]["الصور"] = array_values($lmrhmo[$token]["الصور"]); 
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "قفل الفيديو"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["الفيديو"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- الفيديو مقفول من قبل .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "قفل الفيديو"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["الفيديو"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم قفل الفيديو .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$lmrhmo[$token]["الفيديو"][] = "$chat_id";
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "فتح الفيديو"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["الفيديو"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- الفيديو مفتوح من قبل .*",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "فتح الفيديو"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["الفيديو"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم فتح الفيديو .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($chat_id,$lmrhmo[$token]["الفيديو"]);
unset($lmrhmo[$token]["الفيديو"][$key]);
$lmrhmo[$token]["الفيديو"] = array_values($lmrhmo[$token]["الفيديو"]); 
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "قفل البصمات"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["البصمات"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- البصمات مقفول من قبل .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "قفل البصمات"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["البصمات"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم قفل البصمات .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$lmrhmo[$token]["البصمات"][] = "$chat_id";
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "فتح البصمات"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["البصمات"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- البصمات مفتوح من قبل .*",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "فتح البصمات"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["البصمات"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم فتح البصمات .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($chat_id,$lmrhmo[$token]["البصمات"]);
unset($lmrhmo[$token]["البصمات"][$key]);
$lmrhmo[$token]["البصمات"] = array_values($lmrhmo[$token]["البصمات"]); 
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "قفل الملصقات"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["الملصقات"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- الملصقات مقفول من قبل .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "قفل الملصقات"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["الملصقات"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم قفل الملصقات .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$lmrhmo[$token]["الملصقات"][] = "$chat_id";
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "فتح الملصقات"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["الملصقات"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- الملصقات مفتوح من قبل .*",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "فتح الملصقات"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["الملصقات"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم فتح الملصقات .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($chat_id,$lmrhmo[$token]["الملصقات"]);
unset($lmrhmo[$token]["الملصقات"][$key]);
$lmrhmo[$token]["الملصقات"] = array_values($lmrhmo[$token]["الملصقات"]); 
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تفعيل الايدي"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["الايدي"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- الايدي مفعيل من قبل .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تفعيل الايدي"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["الايدي"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم تفعيل الايدي .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$lmrhmo[$token]["الايدي"][] = "$chat_id";
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تعطيل الايدي"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["الايدي"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- الايدي معطل من قبل .*",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تعطيل الايدي"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["الايدي"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم تعطيل الايدي .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($chat_id,$lmrhmo[$token]["الايدي"]);
unset($lmrhmo[$token]["الايدي"][$key]);
$lmrhmo[$token]["الايدي"] = array_values($lmrhmo[$token]["الايدي"]); 
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تفعيل الايدي بالصور"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["الايدي بالصور"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- الايدي بالصور مفعل من قبل .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تفعيل الايدي بالصور"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["الايدي بالصور"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم تفعيل الايدي بالصور .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$lmrhmo[$token]["الايدي بالصور"][] = "$chat_id";
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تعطيل الايدي بالصور"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["الايدي بالصور"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- الايدي بالصور معطل من قبل .*",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تعطيل الايدي بالصور"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["الايدي بالصور"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم تعطيل الايدي بالصور .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($chat_id,$lmrhmo[$token]["الايدي بالصور"]);
unset($lmrhmo[$token]["الايدي بالصور"][$key]);
$lmrhmo[$token]["الايدي بالصور"] = array_values($lmrhmo[$token]["الايدي بالصور"]); 
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تفعيل غنيلي"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["غنيلي"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- غنيلي مفعيل من قبل .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تفعيل غنيلي"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["غنيلي"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم تفعيل غنيلي .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$lmrhmo[$token]["غنيلي"][] = "$chat_id";
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تعطيل غنيلي"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["غنيلي"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- غنيلي معطل من قبل .*",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تعطيل غنيلي"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["غنيلي"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم تعطيل غنيلي .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($chat_id,$lmrhmo[$token]["غنيلي"]);
unset($lmrhmo[$token]["غنيلي"][$key]);
$lmrhmo[$token]["غنيلي"] = array_values($lmrhmo[$token]["غنيلي"]); 
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if(in_array($chat_id,$lmrhmo[$token]["غنيلي"])){
if($text == "غنيلي" or $text == "غ"){
$hurl = $autohmo[$token]['voice'];
$reply_hurl = array_rand($hurl, 1);
$jhr = array("Voice","audio");
$reply_jhr = array_rand($jhr, 1);
bot('send'.$jhr[$reply_jhr],[
'chat_id'=>$chat_id,
$jhr[$reply_jhr]=>$hurl[$reply_hurl],
'caption'=>"تم اختيار اغنية مناسبة .",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'inline_keyboard'=>[
[['text'=>"SourcePatar ." ,'url'=>"t.me/SourcePatar"]]
]])
]);
}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تفعيل الميديا"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["الميديا"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- الميديا مفعيل من قبل .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تفعيل الميديا"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["الميديا"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم تفعيل الميديا .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$lmrhmo[$token]["الميديا"][] = "$chat_id";
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تعطيل الميديا"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["الميديا"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- الميديا معطل من قبل .*",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تعطيل الميديا"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["الميديا"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم تعطيل الميديا .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($chat_id,$lmrhmo[$token]["الميديا"]);
unset($lmrhmo[$token]["الميديا"][$key]);
$lmrhmo[$token]["الميديا"] = array_values($lmrhmo[$token]["الميديا"]); 
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text == "طرد"){
if($re){
if($status == "member" or $status !== "creator" or !in_array($from_id,$admin) and !in_array($from_id,$adminn[$token]["المميزين"][$chat_id]) or !in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or !in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or !in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"⌁︙تم طرد [$re_user] العضو 

من الضلع $infor ",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
bot( kickChatMember ,[
 chat_id =>$chat_id,
 user_id =>$re_id,
]);
}else{
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"⌁︙اسف حبي مكدر اطرد $infor .",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تفعيل اطردني"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["اطردني"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- اطردني مفعيل من قبل .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تفعيل اطردني"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["اطردني"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم تفعيل اطردني .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$lmrhmo[$token]["اطردني"][] = "$chat_id";
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تعطيل اطردني"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["اطردني"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- اطردني معطل من قبل .*",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تعطيل اطردني"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["اطردني"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم تعطيل اطردني .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($chat_id,$lmrhmo[$token]["اطردني"]);
unset($lmrhmo[$token]["اطردني"][$key]);
$lmrhmo[$token]["اطردني"] = array_values($lmrhmo[$token]["اطردني"]); 
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تفعيل التنزيل فيديوات"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["التنزيل فيديوات"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- التنزيل فيديوات مفعيل من قبل .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تفعيل التنزيل فيديوات"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["التنزيل فيديوات"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم تفعيل التنزيل فيديوات .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$lmrhmo[$token]["التنزيل فيديوات"][] = "$chat_id";
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تعطيل التنزيل فيديوات"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(!in_array($chat_id,$lmrhmo[$token]["التنزيل فيديوات"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- التنزيل فيديوات معطل من قبل .*",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text== "تعطيل التنزيل فيديوات"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if(in_array($chat_id,$lmrhmo[$token]["التنزيل فيديوات"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*- يحيلي* [$name](tg://openmessage?user_id=$from_id) .

*- تم تعطيل التنزيل فيديوات .*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($chat_id,$lmrhmo[$token]["التنزيل فيديوات"]);
unset($lmrhmo[$token]["التنزيل فيديوات"][$key]);
$lmrhmo[$token]["التنزيل فيديوات"] = array_values($lmrhmo[$token]["التنزيل فيديوات"]); 
file_put_contents("hmo/data/bot/lmrhmo.json",json_encode($lmrhmo));
exit();
}}}}
 $voice = $message->voice;
 $photo = $message->photo;
 $audio= $message->audio;
 $sticker= $message->sticker;
 $contact = $message->contact;
 $video_note = $message->video_note;
 $document = $message->document;
 $gif = $message->animation;
 $media = json_decode(file_get_contents("hmo/data/bot/media.json"),1);
 $media1 = $media["media"];
if(in_array($chat_id,$lmrhmo[$token]["الميديا"])){
if($gif){
$media["mediagif"][$chat_id][]="$message->message_id";
$media["media"][$chat_id][]="$message->message_id";
file_put_contents("hmo/data/bot/media.json",json_encode($media));
}
if($document ){
$media["mediadocument"][$chat_id][]="$message->message_id";
$media["media"][$chat_id][]="$message->message_id";
file_put_contents("hmo/data/bot/media.json",json_encode($media));
}
if($video){
$media["mediavideo"][$chat_id][]="$message->message_id";
$media["media"][$chat_id][]="$message->message_id";
file_put_contents("hmo/data/bot/media.json",json_encode($media));
}
if($sticker){
$media["mediasticker"][$chat_id][]="$message->message_id";
$media["media"][$chat_id][]="$message->message_id";
file_put_contents("hmo/data/bot/media.json",json_encode($media));
}
if($photo){
$media["mediaphoto"][$chat_id][]="$message->message_id";
$media["media"][$chat_id][]="$message->message_id";
file_put_contents("hmo/data/bot/media.json",json_encode($media));
}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
$media1 = $media["media"][$chat_id];
$mediaph = $media["mediaphoto"][$chat_id];
$mediavd = $media["mediavideo"][$chat_id];
$mediagi = $media["mediagif"][$chat_id];
$mediast = $media["mediasticker"][$chat_id];
$countph = count($mediaph);
$countvd = count($mediavd);
$countst = count($mediast);
$countgiv = count($mediagi);
$countme = count($media1);
if($text == "الميديا"){
bot("Sendmessage",[
"chat_id"=>$chat_id,
"text"=>"*
1~ عدد الصور ~ $countph
2~ عدد الفيديو ~ $countvd
3~ عدد الملصقات ~ $countst
4~ عدد المتحركات ~ $countgiv
5~ عدد الميديا ~ $countme*
",
"reply_to_message_id"=>$message_id,
'parse_mode'=>"MarkDown",
]);
}



if($text == "حذف الصور"){
for($i=0;$i<count($mediaph); $i++){
bot("deletemessage",[
"chat_id"=>$chat_id, 
"message_id"=>$mediaph[$i], 
]);
}
bot("sendmessage",[
"chat_id"=>$chat_id, 
"text"=>"<b>تم حذف ($countph) من الصور</b>", 
"reply_to_message_id"=>$message_id,
'parse_mode'=>"html",
]);
for($i1=0;$i1<count($mediaph); $i1++){
unset($media[$chat_id]["mediaphoto"][$i1]);
$media[$chat_id]["mediaphoto"]=array_values($media[$chat_id]["mediaphoto"]);
file_put_contents("hmo/data/bot/media.json",json_encode($media));
}
}

if($text == "حذف الفيديو"){
for($i=0;$i<count($mediavd); $i++){
bot("deletemessage",[
 "chat_id"=>$chat_id, 
 "message_id"=>$mediavd[$i], 
]);
}
bot("sendmessage",[
 "chat_id"=>$chat_id, 
 "text"=>"<b>تم حذف ($countvd) من الفيديو</b>", 
 "reply_to_message_id"=>$message_id,
'parse_mode'=>"html",
]);
for($i1=0;$i1<count($mediaph); $i1++){
 unset($media[$chat_id]["mediaphoto"][$i1]);
 $media[$chat_id]["mediaphoto"]=array_values($media[$chat_id]["mediaphoto"]);
 file_put_contents("hmo/data/bot/media.json",json_encode($media));
}
}

if($text == "حذف المتحركه"){
 for($i=0;$i<count($mediagi); $i++){
 bot("deletemessage",[
 "chat_id"=>$chat_id, 
 "message_id"=>$mediagi[$i], 
 ]);
 }
 bot("sendmessage",[
 "chat_id"=>$chat_id, 
 "text"=>"<b>تم حذف ($countgiv) من المتحركه</b>",
 "reply_to_message_id"=>$message_id,
'parse_mode'=>"html",
 ]);
 for($i1=0;$i1<count($mediagi); $i1++){
 unset($media[$chat_id]["mediagif"][$i1]);
 $media[$chat_id]["mediagif"]=array_values($media[$chat_id]["mediagif"]);
 file_put_contents("hmo/data/bot/media.json",json_encode($media));
 }
}
 if($text == "حذف الملصقات"){
 for($i=0;$i<count($mediast); $i++){
 bot("deletemessage",[
"chat_id"=>$chat_id, 
"message_id"=>$mediast[$i], 
 ]);
 }
 bot("sendmessage",[
"chat_id"=>$chat_id, 
"text"=>"<b>تم حذف ($countst) من الملصقات</b>",
"reply_to_message_id"=>$message_id,
'parse_mode'=>"html",
 ]);
 for($i1=0;$i1<count($mediast); $i1++){
 unset($media[$chat_id]["mediasticker"][$i1]);
 $media[$chat_id]["mediasticker"]=array_values($media[$chat_id]["mediasticker"]);
 file_put_contents("hmo/data/bot/media.json",json_encode($media));
 }
 }
 if($text == "حذف الميديا"){
 for($i=0;$i<count($media1); $i++){
bot("deletemessage",[
"chat_id"=>$chat_id, 
"message_id"=>$media1[$i], 
]);
 }
bot("sendmessage",[
"chat_id"=>$chat_id, 
"text"=>"<b>تم حذف ($countme) من الميديا</b>",
"reply_to_message_id"=>$message_id,
'parse_mode'=>"html",
]);
for($i1=0;$i1<count($media1); $i1++){
unset($media1[$chat_id]["media"][$i1]);
$media[$chat_id]["media"]=array_values($media[$chat_id]["media"]);
file_put_contents("hmo/data/bot/media.json",json_encode($media));
 }
 }
}}


$up = json_decode(file_get_contents("https://api.telegram.org/bot".API_KEY."/getChatAdministrators?chat_id=".$chat_id));
$result = $up['result'];
foreach($result as $key=>$value){
$found = $result[$key]['status'];
if($found == "creator"){
$id_cr = $result[$key]['user']['id'];
$name_cr = $result[$key]['user']['first_name'];
 $username_cr = $result[$key]['user']['username'];
$ph = bot('getUserProfilePhotos',['user_id'=>$id_cr])->result->photos[0][0]->file_id;
}}
if($text == "المالك"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendphoto',[
'chat_id'=>$chat_id,
'photo'=>$ph,
'caption'=>"
• *المالك الكروب* ↫ [$name_cr](tg://openmessage?user_id=$id_cr)
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
}}
$dev = "$ga";
$s = bot('getchatmember',[
'chat_id'=>$dev,
'user_id'=>$dev,
])->result->user;
if($text == 'المطور' or $text == 'مطور'){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
$iddev = $s->id;
$ph = bot('getUserProfilePhotos',['user_id'=>$dev])->result->photos[0][0]->file_id;
$nadev = $s->first_name." ".$s->last_name;
bot('sendphoto',[
'chat_id'=>$chat_id, 
'photo'=>$ph,
'caption'=>"
• *مطور البوت* ↫ [$nadev](tg://openmessage?user_id=$iddev)
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
}}

if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text == "تعيين الايدي"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
"text"=>'
• ارسال الان الكليشه .

1. `#name_user` : لوضع اسم شخص ووضع معرفه داخل اسمه 
2. `#username` : لوضع اسم مستخدم الشخص مع اضافه @ 
3. `#name` : لوضع اسم الشخص
4. `#id` : لوضع ايدي الشخص 
5. `#msg` لوضع عدد الرسائل
6. `#stast` لوضع رتبه العضو
- - - - - - - - - - - - ',
 'parse_mode'=>"MarkDown",
'disable_web_page_preview'=>'true',
]);
$idd[$token][$chat_id][$from_id]["st"] = "st";
file_put_contents("hmo/data/bot/id.json",json_encode($idd));
}}}

if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text != "تعيين الايدي" and $idd[$token][$chat_id][$from_id]["st"] == "st"){
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>"تم حفظ كليشة الايدي",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$idd[$token]["$chat_id"]["كليشه الايدي"] = "$text";
unset($idd[$token][$chat_id][$from_id]["st"]);
file_put_contents("hmo/data/bot/id.json",json_encode($idd));
}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
$array = array("• USE 𖦹 #username 
• MSG 𖥳 #msg  
• STA 𖦹 #stast 
• iD 𖥳 #id","
⚕ 𓆰 𝑾𝒆𝒍𝒄𝒐𝒎𝒆 𝑻𝒐 ★
• 🖤 | 𝑼𝑬𝑺 : #username ‌‌‏⚚
• 🖤 | 𝑺𝑻𝑨 : #stast 🧙🏻‍♂ ☥
• 🖤 | 𝑰𝑫 : #id ‌‌‏♕
• 🖤 | 𝑴𝑺𝑮 : #msg 𓆊","
• ﮼ايديك  #id 🌻 ٬
• ﮼يوزرك ➺ #username 🌻 ٬
• ﮼مسجاتك ➺ #msg 🌻 ٬
•  ﮼رتبتك➺ #stast 🌻 ٬
• ﮼تعديلك ➺ #edit 🌻 ٬","
⚕𝙐𝙎𝙀𝙍𝙉𝘼𝙈𝙀 : #username
⚕𝙈𝙀𝙎𝙎𝘼𝙂𝙀𝙎 : #msgs
⚕𝙎𝙏𝘼𝙏𝙎 : #stast
⚕𝙄𝘿 : #id
","
- UsEr🇺🇸 ꙰ #username
- StA🇺🇸 ꙰   #msgs
- MsGs🇺🇸 ꙰ #stast
- ID🇺🇸 ꙰  #id
","
𓅓➪:ᗰᔕᘜᔕ : #msgs - ❦ .
𓅓➪ : Iᗪ : #id - ❦ . 
𓅓➪ : ᔕTᗩᔕT : #stast - ❦ . 
𓅓➪ : ᑌᔕᖇᗴᑎᗩᗰᗴ : #username _ ❦ .
"
);
$i = array_rand($array, 1);
if($text == "تغيير الايدي" ){
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>"- حسنا عزيزي تم تغير الايدي",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$idd[$token]["$chat_id"]["كليشه الايدي"] = "$array[$i]";
unset($idd[$token][$chat_id][$from_id]["st"]);
file_put_contents("hmo/data/bot/id.json",json_encode($idd));
}}
$a = str_replace("طرد ","",$text);
$h = $a->from->username;
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text == "طرد $a" and preg_match('/([0-9])/i',$a) and !in_array($from_id,$b)){
if($status == "member" or $status !== "creator" or !in_array($from_id,$admin) and !in_array($from_id,$adminn[$token]["المميزين"][$chat_id]) or !in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or !in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or !in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
$asd = str_replace("@","",$a);
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"⌁︙تم طرد [$a] العضو 

من الضلع $infor ",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
bot( kickChatMember ,[
 chat_id =>$chat_id,
 user_id =>$a,
]);
}else{
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"⌁︙اسف حبي مكدر اطرد $infor .",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
}}}
$h = $re_id->from->username;
$lirdne = json_decode(file_get_contents('hmo/data/bot/lirdne'),1);

if($text == "اطردني"){
if($status !== "creator" and !in_array($from_id,$admin) and !in_array($from_id,$adminn[$token]["المميزين"][$chat_id]) or !in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or !in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or !in_array($from_id,$adminn[$token]["المنشنين"][$chat_id]) and  in_array($chat_id,$lmrhmo[$token]["اطردني"])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*تمام يروحي هل انت متأكد قم بارسال نعم او لا*",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$lirdne[$from_id]["kick"] = "no-or-yes";
file_put_contents("hmo/data/bot/lirdne",json_encode($lirdne));
}else{
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*عذرا الطرد مقفول*",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
}}
elseif($text == "نعم" and $lirdne[$from_id]["kick"] == "no-or-yes"){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"حسنا عزيزي تم طردك ورسرسح",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
bot('kickChatMember',[
'chat_id'=>$chat_id,
'user_id'=>$from_id
]);
unset($lirdne[$from_id]["kick"]);
file_put_contents("hmo/data/bot/lirdne",json_encode($lirdne));
}
elseif($text == "لا" and $lirdne[$from_id]["kick"] == "no-or-yes"){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"تمام مراح اطردك 🌚😂.",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
unset($lirdne[$from_id]["kick"]);
file_put_contents("hmo/data/bot/lirdne",json_encode($lirdne));
}
}
if($botthm[$token]["botthm"] == "مفعل"){
if(in_array($chat_id,$lmrhmo[$token]["التنزيل فيديوات"])){
$sear = str_replace("بحث ","",$text);
if($text == "بحث $sear"){
$search = json_decode(file_get_contents("https://ttpower.tk/api/sh.php?text=".$sear),1);
$title = $search['info'][0]['title'];
if($search['results'][0]['title'] != null){
for($cas=1;$cas<=10;$cas++){
$title = $search['results'][$cas]['title'];
$view = $search['results'][$cas]['view'];
$time = $search['results'][$cas]['time'];
$url = $search['results'][$cas]['url'];
$mb .= "🎬 $title : \n 🕑 $time - 👁 $view \n 🔗 [/$url] \n ⎯ ⎯ ⎯ ⎯ \n";
}
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"♻️┇*اليك نتائج بحث : $sear.*
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
$mb",
'parse_mode'=>"MarkDown",
'reply_markup'=>json_encode([
'inline_keyboard'=>[
[['text'=>'التالي .', 'callback_data'=>"next##$yotup"]],
]
])
]);
}
}
$nex = explode("##", $data);
if($nex[0] == "next"){
$search = json_decode(file_get_contents("https://ttpower.tk/api/sh.php?text=".$nex[1]),1);
$title = $search['info'][0]['title'];
if($search['results'][0]['title'] != null){
for($cas=10;$cas<=20;$cas++){
$title = $search['results'][$cas]['title'];
$view = $search['results'][$cas]['view'];
$time = $search['results'][$cas]['time'];
$url = $search['results'][$cas]['url'];
$mb .= "🎬 $title : \n 🕑 $time - 👁 $view \n 🔗 [/$url] \n ⎯ ⎯ ⎯ ⎯ \n";
}
bot('EditMessageText',[
'chat_id'=>$chat_id,
'message_id'=>$message_id,
'text'=>"♻️┇*اليك نتائج بحث : $nex[1].*
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
$mb",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([ 
'inline_keyboard'=>[
[['text'=>'التالي.' ,'callback_data'=>"next2##$nex[1]"],['text'=>'رجوع.' ,'callback_data'=>"bbaacckk##$nex[1]"]],
]])
]);
}
}
$next = explode("##", $data);
if($next[0] == "next2"){
$search = json_decode(file_get_contents("https://ttpower.tk/api/sh.php?text=".$next[1]),1);
$title = $search['info'][0]['title'];
if($search['results'][0]['title'] != null){
for($cas=20;$cas<=30;$cas++){
$title = $search['results'][$cas]['title'];
$view = $search['results'][$cas]['view'];
$time = $search['results'][$cas]['time'];
$url = $search['results'][$cas]['url'];
$mb .= "🎬 $title : \n 🕑 $time - 👁 $view \n 🔗 [/$url] \n ⎯ ⎯ ⎯ ⎯ \n";
}
bot('EditMessageText',[
'chat_id'=>$chat_id,
'message_id'=>$message_id,
'text'=>"♻️┇*اليك نتائج بحث : $next[1].*
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
$mb",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([ 
'inline_keyboard'=>[
[['text'=>'رجوع.' ,'callback_data'=>"next##$next[1]"]],
]])
]);
}
}
$back = explode("##", $data);
if($back[0] == "bbaacckk"){
$search = json_decode(file_get_contents("https://ttpower.tk/api/sh.php?text=".$back[1]),1);
$title = $search['info'][0]['title'];
if($search['results'][0]['title'] != null){
for($cas=1;$cas<=10;$cas++){
$title = $search['results'][$cas]['title'];
$view = $search['results'][$cas]['view'];
$time = $search['results'][$cas]['time'];
$url = $search['results'][$cas]['url'];
$mb .= "🎬 $title : \n 🕑 $time - 👁 $view \n 🔗 [/$url] \n ⎯ ⎯ ⎯ ⎯ \n";
}
bot('EditMessageText',[
'chat_id'=>$chat_id,
'message_id'=>$message_id,
'text'=>"♻️┇*اليك نتائج بحث : $back[1].*
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
$mb",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([ 
'inline_keyboard'=>[
[['text'=>'التالي .', 'callback_data'=>"next##$back[1]"]],
]])
]);
}
}
$me = bot('getme',['bot'])->result->username;
$se = str_replace("/","",$text);
$se = str_replace("@p4abot","",$se);
if($text == "/$se"){
$api =json_decode(file_get_contents('https://ttpower.tk/api/sitehmos.php?url=http://www.youtube.com/watch?v='.$se),true);
$title = $api["meta"]["title"];
$duration = $api["meta"]["duration"];
$hosting = $api["hosting"];
bot('sendphoto', [
'chat_id'=>$chat_id,
'photo'=>"http://www.youtube.com/watch?v=".$se,
'caption'=>"᥀︙عنوان الفيديو : $title
᥀︙مدة الفيديو : $duration
᥀︙نوع الفيديو : $hosting",
'reply_markup'=>json_encode([
'inline_keyboard'=>[
[['text'=>"اغنية ⍆","callback_data"=>"/audio $se"],['text'=>"فيديو ⍆","callback_data"=>"/video $se"]],
[['text'=>"بصمة ⍆","callback_data"=>"/voice $se"]]
]])
]);
}

if(preg_match('/video /', $data )){
$viideo = explode('/video ',$data)[1];
$api =json_decode(file_get_contents('https://ttpower.tk/api/sitehmos.php?url=http://www.youtube.com/watch?v='.$viideo),true);
$x = curl_file_create($api["url"][0]["url"],"type","محمد ال علي.mp4");$x = curl_file_create($api["url"][0]["url"],"type","محمد ال علي.mp4");
$title = $api["meta"]["title"];
$duration = $api["meta"]["duration"];
$hosting = $api["hosting"];
$vau = bot('Sendvideo',[
'chat_id'=>$chat_id,
'message_id'=>$message_id,
'video'=>$x,
'caption'=>"᥀︙العنوان : $title
᥀︙مدة الفيديو : $duration
᥀︙نوع الرابط : $hosting",
'parse_mode'=>"MARKDOWN",
'reply_to_message_id'=>$message_id,
]);
if(!$vau){
bot("sendmessage",[
"chat_id"=>$chat_id,
'text'=>"*• عذرا لا يمكنني تنزيل الرابط او تحميل اكثر من 20 ميغ*
[يمكنك تحميل عبر رابط مباشر اضغط هنا](".$api["url"][0]["url"].")",
"parse_mode"=>"markdown",
"message_id"=>$vau,
]);
}
}
if(preg_match('/audio /', $data )){
$audio = explode('/audio ',$data)[1];
$api =json_decode(file_get_contents('https://ttpower.tk/api/sitehmos.php?url=http://www.youtube.com/watch?v='.$audio),true);
$title = $api["meta"]["title"];
$duration = $api["meta"]["duration"];
$hosting = $api["hosting"];
$x = curl_file_create($api["url"][0]["url"],"type","$title.mp3");
$vau = bot('Sendaudio',[
'chat_id'=>$chat_id,
'message_id'=>$message_id,
'audio'=>$x,
'caption'=>"᥀︙العنوان : $title
᥀︙مدة الفيديو : $duration
᥀︙نوع الرابط : $hosting",
'parse_mode'=>"MARKDOWN",
'reply_to_message_id'=>$message_id,
]);
if(!$vau){
bot("editmessagetext",[
"chat_id"=>$chat_id,
'text'=>"*• عذرا لا يمكنني تنزيل الرابط او تحميل اكثر من 20 ميغ*
[يمكنك تحميل عبر رابط مباشر اضغط هنا](".$api["url"][0]["url"].")",
"parse_mode"=>"markdown",
"message_id"=>$vau,
]);
}else{
bot("editmessagetext",[
"chat_id"=>$chat_id,
"text"=>"*تم تحميل الفيديو*",
"parse_mode"=>"markdown",
"message_id"=>$vau,
]);}
}
if(preg_match('/voice /', $data )){
$voiice = explode('/voice ',$data)[1];
$api =json_decode(file_get_contents('https://ttpower.tk/api/sitehmos.php?url=http://www.youtube.com/watch?v='.$voiice),true);
$x = curl_file_create($api["url"][0]["url"],"type","محمد ال علي.voice");
$title = $api["meta"]["title"];
$duration = $api["meta"]["duration"];
$hosting = $api["hosting"];
$vau = bot('Sendvoice',[
'chat_id'=>$chat_id,
'message_id'=>$message_id,
'voice'=>$x,
'caption'=>"᥀︙العنوان : $title
᥀︙مدة الفيديو : $duration
᥀︙نوع الرابط : $hosting",
'parse_mode'=>"MARKDOWN",
'reply_to_message_id'=>$message_id,
]);
if(!$vau){
bot("editmessagetext",[
"chat_id"=>$chat_id,
'text'=>"*• عذرا لا يمكنني تنزيل الرابط او تحميل اكثر من 20 ميغ*
[يمكنك تحميل عبر رابط مباشر اضغط هنا](".$api["url"][0]["url"].")",
"parse_mode"=>"markdown",
"message_id"=>$vau,
]);
}else{
bot("editmessagetext",[
"chat_id"=>$chat_id,
"text"=>"*تم تحميل الفيديو*",
"parse_mode"=>"markdown",
"message_id"=>$vau,
]);}
}
$ear = str_replace("تنزيل ","",$text);
if($text == "تنزيل $ear"){
$api =json_decode(file_get_contents('https://ttpower.tk/api/sitehmos.php?url='.$ear),true);
$x = curl_file_create($api["url"][0]["url"],"type","محمد ال علي.mp4");
$title = $api["meta"]["title"];
$duration = $api["meta"]["duration"];
$hosting = $api["hosting"];
$vau = bot('Sendvideo',[
'chat_id'=>$chat_id,
'message_id'=>$message_id,
'video'=>$x,
'caption'=>"᥀︙العنوان : $title
᥀︙مدة الفيديو : $duration
᥀︙نوع الرابط : $hosting",
'parse_mode'=>"MARKDOWN",
'reply_to_message_id'=>$message_id,
]);
if(!$vau){
bot("editmessagetext",[
"chat_id"=>$chat_id,
'text'=>"*• عذرا لا يمكنني تنزيل الرابط او تحميل اكثر من 20 ميغ*
[يمكنك تحميل عبر رابط مباشر اضغط هنا](".$api["url"][0]["url"].")",
"parse_mode"=>"markdown",
"message_id"=>$vau,
]);
}else{
bot("editmessagetext",[
"chat_id"=>$chat_id,
"text"=>"*تم تحميل الفيديو*",
"parse_mode"=>"markdown",
"message_id"=>$vau,
]);}
}
}}
$rdod = json_decode(file_get_contents("hmo/data/bot/rdod.json"),1);
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text == "اضف رد"){
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>"*• حسنأ الان ارسل كلمة ليتم اضافة رد اليها .*",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$rdod[$token]["$chat_id"][$from_id] = "yes";
file_put_contents("hmo/data/bot/rdod.json",json_encode($rdod));
}
elseif($text != "اضف رد" and $rdod[$token]["$chat_id"][$from_id] == "yes"){
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>"*• حسنأ الان ارسل الرد علي الكلمة .
*( نص - صوره - فيديو - متحركة - بصمة - اغنية ).",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$rdod[$token][$chat_id]["v"] = $text;
$rdod[$token]["$chat_id"][$from_id] = "yes1";
file_put_contents("hmo/data/bot/rdod.json",json_encode($rdod));
}
elseif($text and $rdod[$token]["$chat_id"][$from_id] == "yes1"){
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>"• تم حفظ الرد لكلمة ( $text ) .",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$rdod[$token][$chat_id][$rdod[$token][$chat_id]["v"]] = $text;
unset($rdod[$token]["$chat_id"][$from_id]);
unset($rdod[$token][$chat_id]["v"]);
#unset($d);
file_put_contents("hmo/data/bot/rdod.json",json_encode($rdod));
}
elseif($message->sticker and $rdod[$token]["$chat_id"][$from_id] == "yes1"){
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>"• تم حفظ الرد لكلمة ( ملصق ) .",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$rdod[$token][$chat_id]["s"][$rdod[$token][$chat_id]["v"]] = $message->sticker->file_id;
unset($rdod[$token]["$chat_id"][$from_id]);
unset($rdod[$token][$chat_id]["v"]);
file_put_contents("hmo/data/bot/rdod.json",json_encode($rdod));
}
elseif($message->photo and $rdod[$token]["$chat_id"][$from_id] == "yes1"){
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>"• تم حفظ الرد لكلمة ( صوره ) .",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$rdod[$token][$chat_id]["p"][$rdod[$token][$chat_id]["v"]] = $message->photo[1]->file_id;
$rdod[$token][$chat_id]["p"]["الوصف"][$rdod[$token][$chat_id]["v"]] = $message->caption;
unset($rdod[$token]["$chat_id"][$from_id]);
unset($rdod[$token][$chat_id]["v"]);
file_put_contents("hmo/data/bot/rdod.json",json_encode($rdod));
}
elseif($message->voice and $rdod[$token]["$chat_id"][$from_id] == "yes1"){
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>"• تم حفظ الرد لكلمة ( فويز ) .",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$rdod[$token][$chat_id]["voice"][$rdod[$token][$chat_id]["v"]] = $message->voice->file_id;
$rdod[$token][$chat_id]["voice"]["الوصف"][$rdod[$token][$chat_id]["v"]] = $message->caption;
unset($rdod[$token]["$chat_id"][$from_id]);
unset($rdod[$token][$chat_id]["v"]);
file_put_contents("hmo/data/bot/rdod.json",json_encode($rdod));
}
elseif($message->audio and $rdod[$token]["$chat_id"][$from_id] == "yes1"){
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>"• تم حفظ الرد لكلمة ( mp3 ) .",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$rdod[$token][$chat_id]["audio"][$rdod[$token][$chat_id]["v"]] = $message->audio->file_id;
$rdod[$token][$chat_id]["audio"]["الوصف"][$rdod[$token][$chat_id]["v"]] = $message->caption;
unset($rdod[$token]["$chat_id"][$from_id]);
unset($rdod[$token][$chat_id]["v"]);
file_put_contents("hmo/data/bot/rdod.json",json_encode($rdod));
}
elseif($message->video and $rdod[$token]["$chat_id"][$from_id] == "yes1"){
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>"• تم حفظ الرد لكلمة ( فيديو ) .",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$rdod[$token][$chat_id]["video"][$rdod[$token][$chat_id]["v"]] = $message->video->file_id;
$rdod[$token][$chat_id]["video"]["الوصف"][$rdod[$token][$chat_id]["v"]] = $message->caption;
unset($rdod[$token]["$chat_id"][$from_id]);
unset($rdod[$token][$chat_id]["v"]);
file_put_contents("hmo/data/bot/rdod.json",json_encode($rdod));
}
elseif($message->video_note and $rdod[$token]["$chat_id"][$from_id] == "yes1"){
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>"• تم حفظ الرد لكلمة ( فيديو نون ).",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$rdod[$token][$chat_id]["video_note"][$rdod[$token][$chat_id]["v"]] = $message->video_note->file_id;
$rdod[$token][$chat_id]["video_note"]["الوصف"][$rdod[$token][$chat_id]["v"]] = $message->caption;
unset($rdod[$token]["$chat_id"][$from_id]);
unset($rdod[$token][$chat_id]["v"]);
file_put_contents("hmo/data/bot/rdod.json",json_encode($rdod));
}
elseif($message->document and $rdod[$token]["$chat_id"][$from_id] == "yes1"){
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>"• تم حفظ الرد لكلمة ( ملف ) .",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$rdod[$token][$chat_id]["document"][$rdod[$token][$chat_id]["v"]] = $message->document->file_id;
$rdod[$token][$chat_id]["document"]["الوصف"][$rdod[$token][$chat_id]["v"]] = $message->caption;
unset($rdod[$token]["$chat_id"][$from_id]);
unset($rdod[$token][$chat_id]["v"]);
file_put_contents("hmo/data/bot/rdod.json",json_encode($rdod));
}
elseif($message->animation and $rdod[$token]["$chat_id"][$from_id] == "yes1"){
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>"• تم حفظ الرد لكلمة ( متحرك ) .",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$rdod[$token][$chat_id]["animation"][$rdod[$token][$chat_id]["v"]] = $message->animation->file_id;
$rdod[$token][$chat_id]["animation"]["الوصف"][$rdod[$token][$chat_id]["v"]] = $message->caption;
unset($rdod[$token]["$chat_id"][$from_id]);
unset($rdod[$token][$chat_id]["v"]);
file_put_contents("hmo/data/bot/rdod.json",json_encode($rdod));
}}
foreach($rdod[$token][$chat_id] as $rdod2 => $rdod3){
if($text == $rdod2){
 bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>$rdod[$token][$chat_id][$rdod2],
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
 ]);
 }
}
foreach($rdod[$token][$chat_id]["s"] as $rdod2 => $rdod3){
if($text == $rdod2){
 bot('Sendsticker',[
'chat_id'=>$chat_id,
'sticker'=>$rdod[$token][$chat_id]["s"][$rdod2],
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
 ]);
 }
}
foreach($rdod[$token][$chat_id]["p"] as $rdod2 => $rdod3){
if($text == $rdod2){
 bot('Sendphoto',[
'chat_id'=>$chat_id,
'photo'=>$rdod[$token][$chat_id]["p"][$rdod2],
'caption'=>$rdod[$token][$chat_id]["p"]["الوصف"][$rdod2],
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
 ]);
 }
}
foreach($rdod[$token][$chat_id]["animation"] as $rdod2 => $rdod3){
if($text == $rdod2){
 bot('sendanimation',[
'chat_id'=>$chat_id,
'animation'=>$rdod[$token][$chat_id]["animation"][$rdod2],
'caption'=>$rdod[$token][$chat_id]["animation"]["الوصف"][$rdod2],
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
 ]);
 }
}
foreach($rdod[$token][$chat_id]["voice"] as $rdod2 => $rdod3){
if($text == $rdod2){
 bot('sendvoice',[
'chat_id'=>$chat_id,
'voice'=>$rdod[$token][$chat_id]["voice"][$rdod2],
'caption'=>$rdod[$token][$chat_id]["voice"]["الوصف"][$rdod2],
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
 ]);
 }
}
foreach($rdod[$token][$chat_id]["document"] as $rdod2 => $rdod3){
if($text == $rdod2){
 bot('senddocument',[
'chat_id'=>$chat_id,
'document'=>$rdod[$token][$chat_id]["document"][$rdod2],
'caption'=>$rdod[$token][$chat_id]["document"]["الوصف"][$rdod2],
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
 ]);
 }
}
foreach($rdod[$token][$chat_id]["video_note"] as $rdod2 => $rdod3){
if($text == $rdod2){
 bot('sendvideo_note',[
'chat_id'=>$chat_id,
'video_note'=>$rdod[$token][$chat_id]["video_note"][$rdod2],
'caption'=>$rdod[$token][$chat_id]["video_note"]["الوصف"][$rdod2],
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
 ]);
 }
}
foreach($rdod[$token][$chat_id]["audio"] as $rdod2 => $rdod3){
if($text == $rdod2){
 bot('sendaudio',[
'chat_id'=>$chat_id,
'audio'=>$rdod[$token][$chat_id]["audio"][$rdod2],
'caption'=>$rdod[$token][$chat_id]["audio"]["الوصف"][$rdod2],
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
 ]);
 }
}
foreach($rdod[$token][$chat_id]["video"] as $rdod2 => $rdod3){
if($text == $rdod2){
 bot('sendvideo',[
'chat_id'=>$chat_id,
'video'=>$rdod[$token][$chat_id]["video"][$rdod2],
'caption'=>$rdod[$token][$chat_id]["video"]["الوصف"][$rdod2],
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
 ]);
 }
}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($text == "حذف رد"){
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>"• حسنا عزيزي ارسل كلمه ليتم حذفها .",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$rdod[$token]["$chat_id"][$from_id] = "del";
file_put_contents("hmo/data/bot/rdod.json",json_encode($rdod));
}
elseif($text and $rdod[$token]["$chat_id"][$from_id] == "del"){
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>"تم حذف الكلمه",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
$rdod[$token][$chat_id][$text] = null;
$rdod[$token][$chat_id]["s"][$text] = null;
$rdod[$token][$chat_id]["p"][$text] = null;
$rdod[$token][$chat_id]["voice"][$text] = null;
$rdod[$token][$chat_id]["animation"][$text] = null;
$rdod[$token][$chat_id]["video_note"][$text] = null;
$rdod[$token][$chat_id]["audio"][$text] = null;
$rdod[$token][$chat_id]["document"][$text] = null;
$rdod[$token][$chat_id]["video"][$text] = null;
unset($rdod[$token][$chat_id][$text]);
unset($rdod[$token][$chat_id]["s"][$text]);
unset($rdod[$token][$chat_id]["p"][$text]);
unset($rdod[$token][$chat_id]["voice"][$text]);
unset($rdod[$token][$chat_id]["animation"][$text]);
unset($rdod[$token][$chat_id]["video_note"][$text]);
unset($rdod[$token][$chat_id]["audio"][$text]);
unset($rdod[$token][$chat_id]["document"][$text]);
unset($rdod[$token][$chat_id]["video"][$text]);
unset($rdod[$token]["$chat_id"][$from_id]);
file_put_contents("hmo/data/bot/rdod.json",json_encode($rdod));
}
if($text == "مسح الردود"){
if($rdod[$token][$chat_id] != null){
bot("sendmessage",[
"chat_id"=>$chat_id,
"text"=>"• تمام يروحي تم حذف الردود .",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
unset($rdod[$token]["$chat_id"]);
file_put_contents("hmo/data/bot/rdod.json",json_encode($rdod));
}else{
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
لايوجد ردود
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);}
}
if($text == "الردود" or $text == "ردود"){
if($rdod[$token][$chat_id] != null){
$a = $rdod[$token][$chat_id];
foreach($a as $rdod2 => $rdod3){
$radod = $radod."$rdod2 => $rdod3 "."\n";
}
foreach($rdod[$token][$chat_id]["s"] as $rdod2 => $rdod3){
$ts = $ts."$rdod2 => ملصق "."\n";
}
foreach($rdod[$token][$chat_id]["p"] as $rdod2 => $rdod3){
$po = $po."$rdod2 => صورة "."\n";
}
foreach($rdod[$token][$chat_id]["voice"] as $rdod2 => $rdod3){
$vo = $vo."$rdod2 => فويز "."\n";
}
foreach($rdod[$token][$chat_id]["animation"] as $rdod2 => $rdod3){
$ani = $ani."$rdod2 => متحركه "."\n";
}
foreach($rdod[$token][$chat_id]["video_note"] as $rdod2 => $rdod3){
$vno = $vno."$rdod2 => فيديو نون "."\n";
}
foreach($rdod[$token][$chat_id]["audio"] as $rdod2 => $rdod3){
$m3p = $m3p."$rdod2 => mp3 "."\n";
}
foreach($rdod[$token][$chat_id]["document"] as $rdod2 => $rdod3){
$do = $do."$rdod2 => ملف "."\n";
}
foreach($rdod[$token][$chat_id]["video"] as $rdod2 => $rdod3){
$vid = $vid."$rdod2 => فيديو "."\n";
}
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
⌁︙هذا القائمة الردود :-
$radod $ts $po $vo $ani $vno $m3p $do $vid
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}else{
bot('sendmessage',[
'chat_id'=>$chat_id, 
'text'=>"
لايوجد ردود
",
'parse_mode'=>"MarkDown",
'reply_to_message_id'=>$message->message_id,
]);}
}
}
if($lmrhmo[$token]["التعديل"][$chat_id] != null){
$medmsg = "مفتوحه";
}elseif($lmrhmo[$token]["التعديل"][$chat_id] == null){
$medmsg = "مقفوله";
}
if($botthm[$token]["botthm"] != null){
$note2g = "⌁︙اوامر تنزيل وبحث .
⌁︙تفعيل التنزيل فيديوات .
⌁︙بحث + النص .
⌁︙تنزيل + رابط تيك فيس يوت لخ .
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
";
}elseif($botthm[$token]["botthm"] == null){
$note2g = "";
}

$m1 = "
⌁︙المطور @d666d6 .
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
⌁︙اوامر فتح والقفل .
⌁︙التعديل .
⌁︙الصور .
⌁︙الفيديو .
⌁︙البصمات .
⌁︙الملصقات .
⌁︙الروابط .
⌁︙معرفات .
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
⌁︙اوامر المسح .
⌁︙مسح المميزين .
⌁︙مسح الادمينة .
⌁︙مسح المدراء .
⌁︙مسح المنشنين .
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
⌁︙اوامر تفعيل والتعطيل .
⌁︙الترحيب .
⌁︙الالعاب .
⌁︙الايدي .
⌁︙الايدي بالصور .
⌁︙غنيلي .
⌁︙الميديا .
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
⌁︙اوامر طرد وكتم وحظر .
⌁︙كتم (رد،ايدي) .
⌁︙طرد (رد،ايدي) .
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
ch : @SourcePatar
";
$m2 = "
⌁︙المطور @d666d6 .
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
⌁︙اوامر الوضع .
⌁︙وضع الترحيب .
⌁︙وضع قوانين .
⌁︙اضف امر .
⌁︙تعيين الايدي  .
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
⌁︙اومر رفع وتنزيل .
⌁︙رفع تنزيل مميز .
⌁︙رفع تنزيل ادمن .
⌁︙رفع تنزيل مدير .
⌁︙رفع تنزيل منشئ .
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
⌁︙اوامر رؤية الاعدادات .
⌁︙المالك .
⌁︙المميزين .
⌁︙الادمينة .
⌁︙المدراء .
⌁︙المنشنين .
⌁︙المطور .
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
$note2g
ch : @SourcePatar
";
$gemm1 = "
⌁︙المطور @d666d6 .
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
⌁︙ تفعيل الالعاب .
⌁︙ تعطيل الالعاب .
⌁︙ الترند الالعاب .
⌁︙ نقاطي لظهار عدد نقاطك .
⌁︙ نقاط (رد ع شخص لظهار نقاطه) .
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
⌁︙ ايموجي .
⌁︙ تخمين .
⌁︙ محيبس .
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
ch : @SourcePatar
";
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if($text == "الاوامر"){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"*
⌁︙هلا حمبي اليك قائمه الاوامر .

⌁︙@SourcePatar*
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'inline_keyboard'=>[
[['text'=>"م1","callback_data"=>"m1"],['text'=>"م2","callback_data"=>"m2"]],
]])
]);
exit();
}
}
}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($data == "m1"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('EditMessageText',[
'chat_id'=>$chat_id,
'message_id'=>$message_id,
'text'=>"*$m1*",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'inline_keyboard'=>[
[['text'=>"-> م1","callback_data"=>"m1"],['text'=>"م2","callback_data"=>"m2"]],
[['text'=>"الالعاب","callback_data"=>"ge"]]
]])
]);
}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if($data == "m2"){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
bot('EditMessageText',[
'chat_id'=>$chat_id,
'message_id'=>$message_id,
'text'=>"*$m2*",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'inline_keyboard'=>[
[['text'=>"م1","callback_data"=>"m1"],['text'=>"-> م2","callback_data"=>"m2"]],
[['text'=>"الالعاب","callback_data"=>"ge"]]
]])
]);
}
}
}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if($text == "م1"){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"*$m1*",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}
if($status == "creator" or in_array($from_id,$admin) or in_array($from_id,$adminn[$token]["ادمنية"][$chat_id]) or in_array($from_id,$adminn[$token]["المدراء"][$chat_id]) or in_array($from_id,$adminn[$token]["المنشنين"][$chat_id])){
if(in_array($chat_id,$chat[$token]["الكروبات"])){
if($text == "م2"){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"*$m2*",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}}}
if($text == "الالعاب"){
if(in_array($chat_id,$lmrhmo[$token]["الالعاب"])){
bot('sendMessage', [
'chat_id' =>$chat_id,'parse_mode' =>"markdown", 
'text' =>"*
• معلومات الالعاب :
$gemm1
*",'reply_to_message_id'=>$message->message_id, 
]);
}else{
bot("sendmessage",[
'chat_id'=>$chat_id,
'text'=>"عذرا الالعاب معطله .",
'reply_to_message_id'=>$message->message_id,
]);
}
}
if($text == "السورس" or $text == "سورس"){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
𝚆𝙴𝙻𝙲𝙾𝙼𝙴 𝚃𝙾 𝚂𝙾𝚄𝚁𝙲𝙴 𝙿𝙰𝚃𝙰𝚁
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'inline_keyboard'=>[
[['text'=>"ًٍَُِّHًٍَُِّAًٍَُِّMًٍَُِّAًٍَُِّD ًٍَُِّDًٍَُِّEًٍَُِّVًٍَُِّEًٍَُِّLًٍَُِّOًٍَُِّPًٍَُِّEًٍَُِّR","url"=>"t.me/d666d6"],['text'=>"ًٍَُِّBًٍَُِّOًٍَُِّT ًٍَُِّHًٍَُِّAًٍَُِّMًٍَُِّAًٍَُِّD","url"=>"t.me/uu6bot"]],
[['text'=>"ًًٍٍََُُِِّّSًٍَُِّOًٍَُِّUًٍَُِّRًٍَُِّCًٍَُِّE ًٍَُِّPًٍَُِّAًٍَُِّTًٍَُِّAًٍَُِّR ًٍَُِّCًٍَُِّHًٍَُِّAًٍَُِّNًٍَُِّNًٍَُِّEًٍَُِّL","url"=>"t.me/SourcePatar"]],
[['text'=>"ًٍَُِّBًٍَُِّOًٍَُِّTًٍَُِّS ًٍَُِّPًٍَُِّAًٍَُِّTًٍَُِّAًٍَُِّR","url"=>"t.me/infopatar"]],
]])
]);
}
if($text == "⌁︙تحديث ." or $text == "تحديث"){
if(in_array($from_id,$admin)){
$boooot = file_get_contents("https://api.telegram.org/bot$token/setwebhook?url=ttpower.tk/bots/hmle/file.php?token=$token");

#file_get_contents("https://ttpower.tk/bots/hmle/file.php?token=$token");
#file_put_contents("file.php",$boooot); 
 bot('sendMessage',[
 'chat_id'=>$chat_id,
 'text'=>'- حسنا مطوري انتضر قليل من وقت .',
'reply_to_message_id'=>$message->message_id, 
 ]);
 sleep(10);
 bot('editMessageText',[
 'chat_id'=>$chat_id,
 'message_id'=>$message_id + 1,
 'text'=>"*- اهلا عزيزي تم تحديث بوتك واصلاح مشاكل *",
  'parse_mode'=>"MARKDOWN",
  'reply_to_message_id'=>$message->message_id, 
 ]);}
 }

