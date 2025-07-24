<?php
/*
كتابتي من صفر @d666d6
انشر وي مصدري فديتك ورده
مصدر @d666d6
مشكول الذمه الي ينشر بدون حقوقي .
*/
ob_start();
$token = "520"; // توكن
$admin = "00"; #ايدي
$link = "iiraq.tk/bots/ca"; #مسار مصنعك بدون https
define("API_KEY",$token);
echo file_get_contents("https://api.telegram.org/bot" . API_KEY . "/setwebhook?url=" . $_SERVER['SERVER_NAME'] . "" . $_SERVER['SCRIPT_NAME']);

function bot($method,$datas=[]){
$url = "https://api.telegram.org/bot".API_KEY."/".$method;
$ch = curl_init();
curl_setopt($ch,CURLOPT_URL,$url);
curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
curl_setopt($ch,CURLOPT_POSTFIELDS,$datas);
$res = curl_exec($ch);
if(curl_error($ch)){
var_dump(curl_error($ch,32|128|265));
}else{
return json_decode($res);
}
}
function Message($chat_id,$text,$parse_mode="MARKDOWN",$disable_web_page_preview=true,$reply_to_message_id=null,$reply_markup=null){
    return bot('sendMessage',[
	'chat_id'=>$chat_id,
	'text'=>$text,
	'parse_mode'=>$parse_mode,
	'disable_web_page_preview'=>$disable_web_page_preview,
	'disable_notification'=>false,
	'reply_to_message_id'=>$reply_to_message_id,
	'reply_markup'=>$reply_markup
	]);
}
function EditMessage($chat_id,$message_id,$text,$parse_mode="MARKDOWN",$disable_web_page_preview=true,$reply_markup=null){
	return bot('editMessageText',[
    'chat_id'=>$chat_id,
	'message_id'=>$message_id,
    'text'=>$text,
    'parse_mode'=>$parse_mode,
	'disable_web_page_preview'=>$disable_web_page_preview,
    'reply_markup'=>$reply_markup
	]);
}
$update = json_decode(file_get_contents('php://input'));
$message = $update->message;
$chat_id = $message->chat->id ?? $update->callback_query->message->chat->id;
$from_id = $message->from->id ?? $update->callback_query->from->id;
$text = $message->text;
$message_id = $message->message_id ?? $update->callback_query->message->message_id;
$name = $message->from->first_name ?? $update->callback_query->from->first_name;
$username = $message->from->username ?? $update->callback_query->from->username;
$data = $update->callback_query->data;
$url_info = file_get_contents("https://api.telegram.org/bot$text/getMe");
$json_info = json_decode($url_info);
$userr = $json_info->result->username;
$idbot =  $json_info->result->id;
$namebot =  $json_info->result->first_name;
$hmode = json_decode(file_get_contents("hmo.json"),1);
$botss = json_decode(file_get_contents("bots.json"),1);
if($text == "/start"){
$hmode[$from_id]['bot'] = "no";
file_put_contents("hmo.json",json_encode($hmode));
Message($chat_id,"•اهلا بك عزيزي في مصنع بوتات حمايه كروبات\n• يمكنك صنع بوت واحد ع سورس باتار بسرعه خياليه ." ,"Markdown",true,$message_id,json_encode(['inline_keyboard'=>[
[[text=>"صنع بوت" ,callback_data=>"صنع"],[text=>"حذف بوت" ,callback_data=>"حذف"]],
]]));
}
if($data == "back"){
$hmode[$from_id]['bot'] = "no";
file_put_contents("hmo.json",json_encode($hmode));
EditMessage($chat_id,$message_id,"•اهلا بك عزيزي في مصنع بوتات حمايه كروبات\n• يمكنك صنع بوت واحد ع سورس باتار بسرعه خياليه ." ,"Markdown",true,json_encode(['inline_keyboard'=>[
[[text=>"صنع بوت" ,callback_data=>"صنع"],[text=>"حذف بوت" ,callback_data=>"حذف"]],
]]));}
if($data == "صنع" and $botss[$from_id] != "bot"){
$hmode[$from_id]['bot'] = "yes";
file_put_contents("hmo.json",json_encode($hmode));
EditMessage($chat_id,$message_id,"• ارسل التوكن خاص بك !","Markdown",true,json_encode(['inline_keyboard'=>[
[[text=>"- رجوع .",callback_data=>"back"]],
]]));
}
elseif($data == "صنع" and $botss[$from_id] == "bot"){
$hmode[$from_id]['bot'] = "no";
file_put_contents("hmo.json",json_encode($hmode));
EditMessage($chat_id,$message_id,"• تم صنع بوت من قبل !","Markdown",true,json_encode(['inline_keyboard'=>[
[[text=>"- رجوع .",callback_data=>"back"]],
]]));
}
if($data == "حذف" and $botss[$from_id] == "bot"){
$hmode[$from_id]['bot'] = "no";
file_put_contents("hmo.json",json_encode($hmode));
EditMessage($chat_id,$message_id,"• تم حذف البوت !","Markdown",true,json_encode(['inline_keyboard'=>[
[[text=>"- رجوع .",callback_data=>"back"]],
]]));
unlink("bots/$from_id");
unset($botss[$from_id]);
file_put_contents("bots.json",json_encode($botss));
}
elseif($data == "حذف" and $botss[$from_id] != "bot"){
$hmode[$from_id]['bot'] = "no";
file_put_contents("hmo.json",json_encode($hmode));
EditMessage($chat_id,$message_id,"• لا يوجد بوت مصنوع !","Markdown",true,json_encode(['inline_keyboard'=>[
[[text=>"- رجوع .",callback_data=>"back"]],
]]));
}
$flie  = file_get_contents("flie.php");
if($text and $hmode[$from_id]['bot'] == "yes"){
if($idbot != null){
Message($chat_id,"
• تم انشاء بوتحمايه الخاص بك
• معرف البوت : @$userr
" ,"Markdown",true,$message_id);
Message($admin,"
• تم انشاء بوت حمايه الخاص بك
---------
الاسم : $name ,
الايدي : $from_id ,
يوزر : $username
---------
• معرف البوت : @$userr
" ,"Markdown",true,$message_id);
mkdir("bots/$from_id");
mkdir("bots/$from_id/flie");
file_put_contents("bots/$from_id/flie/hmo.php",$flie);
file_get_contents("https://api.telegram.org/bot$text/setwebhook?url=https://$link/bots/$from_id/flie/hmo.php");
$info_b['token'] = $text;
$info_b['id'] = $from_id;
$info_b['uesr'] = $username;
file_put_contents("bots/$from_id/flie/info.json",json_encode($info_b));
$hmode[$from_id]['bot'] = "no";
file_put_contents("hmo.json",json_encode($hmode));
$botss[$from_id]= "bot";
file_put_contents("bots.json",json_encode($botss));
}}
