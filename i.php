<?php
$admin = "7934749229";
$admin2 = "7934749229";
$Dev = array("7934749229","7934749229");
$token = "7910609107:AAFFRdj5TS0Xm75iXjZtrQ1UXNID7LQFDrQ";
  function bot($method,$datas=[]){
    $abuehab = http_build_query($datas);
        $url = "https://api.telegram.org/bot".$GLOBALS['token']."/".$method."?$abuehab";
        $abuehab_ah = file_get_contents($url);
        return json_decode($abuehab_ah);
}
function delTree($dir) {
   $files = array_diff(scandir($dir), array('.','..'));
    foreach ($files as $file) {
      (is_dir("$dir/$file")) ? delTree("$dir/$file") : unlink("$dir/$file");
    }
    return rmdir($dir);
  }
#-----------(carlos)-----------#
mkdir("bots");
mkdir("data");
$title = $message->chat->title;
$admin = json_decode(file_get_contents("data/admin.json"),1);
$carlos = json_decode(file_get_contents("data/carlos.json"),1);
$name_tag = "[$name](tg://user?id=$from_id)";
$members = explode("\n",file_get_contents("data/members.txt"));
$m = count($members) -1;
#-----------(carlos)-----------#
$update = json_decode(file_get_contents('php://input'));
if($update->message){
	$message = $update->message;
$message_id = $update->message->message_id;
$username = $message->from->username;
$chat_id = $message->chat->id;
$title = $message->chat->title;
$text = $message->text;
$user = $message->from->username;
$name = $message->from->first_name;
$from_id = $message->from->id;
}
if($update->callback_query){
$data = $update->callback_query->data;
$chat_id = $update->callback_query->message->chat->id;
$title = $update->callback_query->message->chat->title;
$message_id = $update->callback_query->message->message_id;
$name = $update->callback_query->message->chat->first_name;
$user = $update->callback_query->message->chat->username;
$from_id = $update->callback_query->from->id;
}
if($update->edited_message){
	$message = $update->edited_message;
	$message_id = $message->message_id;
$username = $message->from->username;
$chat_id = $message->chat->id;
$chat_id = $message->chat->id;
$text = $message->text;
$user = $message->from->username;
$name = $message->from->first_name;
$from_id = $message->from->id;
	}
	if($update->channel_post){
	$message = $update->channel_post;
	$message_id = $message->message_id;
$chat_id = $message->chat->id;
$text = $message->text;
$user = $message->chat->username;
$title = $message->chat->title;
$name = $message->author_signature;
$from_id = $message->chat->id;
	}
	if($update->edited_channel_post){
	$message = $update->edited_channel_post;
	$message_id = $message->message_id;
$chat_id = $message->chat->id;
$text = $message->text;
$user = $message->chat->username;
$name = $message->author_signature;
$from_id = $message->chat->id;
	}
	if($update->inline_query){
		$inline = $update->inline_query;
		$message = $inline;
		$user = $message->from->username;
$name = $message->from->first_name;
$from_id = $message->from->id;
$query = $message->query;
$text = $query;
		}
	if($update->chosen_inline_result){
		$message = $update->chosen_inline_result;
		$user = $message->from->username;
$name = $message->from->first_name;
$from_id = $message->from->id;
$inline_message_id = $message->inline_message_id;
$message_id = $inline_message_id;
$text = $message->query;
$query = $text;
		}
		$tc = $update->message->chat->type;
		$re = $update->message->reply_to_message;
		$re_id = $update->message->reply_to_message->from->id;
$re_user = $update->message->reply_to_message->from->username;
$re_name = $update->message->reply_to_message->from->first_name;
$re_messagid = $update->message->reply_to_message->message_id;
$re_chatid = $update->message->reply_to_message->chat->id;
$photo = $message->photo;
$video = $message->video;
$sticker = $message->sticker;
$file = $message->document;
$audio = $message->audio;
$voice = $message->voice;
$caption = $message->caption;
$photo_id = $message->photo[back]->file_id;
$video_id= $message->video->file_id;
$sticker_id = $message->sticker->file_id;
$file_id = $message->document->file_id;
$music_id = $message->audio->file_id;
$forward = $message->forward_from_chat;
$forward_id = $message->forward_from_chat->id;
$title = $message->chat->title;
if($re){
	$forward_type = $re->forward_from->type;
$forward_name = $re->forward_from->first_name;
$forward_user = $re->forward_from->username;
	}else{
$forward_type = $message->forward_from->type;
$forward_name = $message->forward_from->first_name;
$forward_user = $message->forward_from->username;
$forward_id = $message->forward_from->id;
if($forward_name == null){
	$forward = $message->forward_from_chat;
$forward_id = $message->forward_from_chat->id;
$forward_title = $message->forward_from_chat->title;
	}
}
$title = $message->chat->title;
#-----------(carlos)-----------#
$members = $carlos["mmbars"];
if($tc == 'private' and !in_array($from_id,$members)){
$carlos['mmbars'][] = $from_id;
file_put_contents("data/carlos.json",json_encode($carlos));
}
$md3 = count($carlos['mmbars']);
#-----------(carlos)-----------#
$carlos = json_decode(file_get_contents("data/carlos.json"),1);
$botadd = count($carlos['carlos']);
$web = "مسارك دونhttps";
#-----------(carlos)-----------#
if ($message && in_array($from_id,$carlos['ban'])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"⋄︙عزيزي - [$name](tg://user?id=$from_id)
⋄︙تم انت محظور من قبل المطور",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
}
#-----------(carlos)-----------#
$d9 = $carlos['joen'];
$d11 = $carlos['ch'];
$d10 = $d11;
$join = file_get_contents("https://api.telegram.org/bot$token/getChatMember?chat_id=$d10&user_id=".$from_id);
if($d11 != null){
if($d9 == "✅"){
$d12 = str_replace("@","",$d10);
if($message && (strpos($join,'"status":"left"') or strpos($join,'"Bad Request: USER_ID_INVALID"') or strpos($join,'"status":"kicked"'))!== false){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"
*☆︙عذرأ عزيزي عليك الاشتراك 
☆︙في قناة البوت* - $d10
",
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([ 
'inline_keyboard'=>[
[['text'=>'اضغط هنا ✅' ,'callback_data'=>"t.me/$d12"]],
]])
]);return false;
}
}
}
#-----------(carlos)-----------#
$d8 = $carlos['bots'];
if($message and $d8 == "❎" and $from_id != $admin2){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙اهلا بك عزيزي العضو
☆︙عذرا البوت متوقف لغرض الصيانة
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}
#-----------(carlos)-----------#
if( $text =="/start" or $text =="رجوع ↪️"){
if(in_array($from_id,$Dev)){
	$d6 = $carlos['sarat'];
	$d7 = $carlos['tojahh'];
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙*اهلأ عزيزي* - [$name](tg://user?id=$from_id)
☆︙*اليك قائمة المطور الخاصه في بوتك*
☆︙*الاشتراك*  ← '.$d9.'
☆︙*البوت*  ← '.$d8.'
☆︙*التوجيه*  ← '.$d7.'
☆︙*الاشعارات*  ← '.$d6.'",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"تفعيل البوت"],['text'=>"تعطيل البوت"]],
[['text'=>"تحديث السورس"]],
[['text'=>"تفعيل التنبية"],['text'=>"تعطيل التنبية"]],
[['text'=>"حذف مصنوع"]],
[['text'=>"تفعيل التوجيه"],['text'=>"تعطيل التوجيه"]],
[['text'=>"اذاعة"]],
[['text'=>"تعين الاشتراك"],['text'=>"حذف الاشتراك"]],
[['text'=>"الاحصائيات"]],
[['text'=>"تفعيل الاشتراك"],['text'=>"تعطيل الاشتراك"]],
[['text'=>"المحظورين"],['text'=>"مسح المحظورين"]],
],
'resize_keyboard'=>true
])
]);
$carlos['delbots'] = "off";
$carlos['ok'] = "off";
$carlos['okall'] = "no";
$carlos['okk'] = "no";
file_put_contents("data/carlos.json",json_encode($carlos));
}}
#-----------(carlos)-----------#
if($text =="/start" and !in_array($from_id,$carlos['ban'])){
if(!in_array($from_id,$Dev)){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙اعزائي المستخدمين بوتات كارلوس  ...

☆︙تستطيع اشتراك وتفعيل بوتك ع سيرفراتنا
☆︙مجانآ و مدى الحياه استمتع مع كارلوس
☆︙امكانية تفعيل بوت حمايه واحد فقط 

☆︙للاستفسار راسلنا  
☆︙الحساب  : @IISIlSII
☆︙التواصل : [@C_MIII]
🛒",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"ايقاف بوت 📛"],['text'=>"أنشاء بوت حماية 🤖"]],
[['text'=>"الغاء الامر ✖️"],['text'=>"شرح انشاء توكن 📋"]],
],
'resize_keyboard'=>true
])
]);
}}
#-----------(carlos)-----------#
if($text =="الغاء الامر ✖️" and !in_array($from_id,$carlos['ban'])){
if(!in_array($from_id,$Dev)){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙تم آلغآء آلآمـر بنجآح 
🌿",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"ايقاف بوت 📛"],['text'=>"أنشاء بوت حماية 🤖"]],
[['text'=>"الغاء الامر ✖️"],['text'=>"شرح انشاء توكن 📋"]],
],
'resize_keyboard'=>true
])
]);
$carlos[$from_id]['token'] = "nobot";
file_put_contents("data/carlos.json",json_encode($carlos));
}}
#-----------(carlos)-----------#
if($text == "شرح انشاء توكن 📋" and !in_array($from_id,$carlos['ban'])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"كيف يمكنني الحصول على التوكن - TOKEN ؟ 🤔

سنقوم بالدخول الى الـ BotFather وهو عبارة عن بوت الإنشاء التابع لتيلجرام لإنشاء بوت تيليجرام وذلك عن طريق المعرف الأتي : 
@BotFather

بعد الدخول الى البوت كالأتي :

☆︙نضغط على /start لبدء انشاء البوت ، ثم ستظهر لنا واجهة البوت نقوم بالضغط على  ( /new bot  ) كما في الصورة اعلاه .

☆︙بعد اختيار  ( /new bot  )  والتي تقوم بدورها بالبدء بإنشاء البوت ستظهر لنا 

☆︙هنا يخبرنا ان نقوم بإدخال اسم البوت قم بإختيار اسم للبوت الذي تريده مثال انا سأقوم بإختيار اسم سورس كارلوس كالصورة اعلاه انظر معي :

☆︙ارسل اليوزر ( معرف ) بدون @ وفي نهايه المعرف كلمه ( bot ) 

☆︙يرسلك رساله مثل الصوره في الاعلى هذا هو التوكن يبدا من الرقم 
التوكن موضح 

❗️[لمشاهده كيف يتم استخراج التوكن اضغط هنا](https://telegra.ph/%D8%B4%D8%B1%D8%AD-%D8%A7%D9%86%D8%B4%D8%A7%D8%A1-%D8%AA%D9%88%D9%83%D9%86-09-26)
اتمنى ان يكون الشرح مفهوم

تابع جديدنا  - [@C_MIII]
للاستفسار - @IISIlSII
ֆ • • • • • • • • • • • • • ֆ", 
'parse_mode'=>"Markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
]);
}
#-----------(carlos)-----------#
$abuehab = $carlos['carlos'];
if($text == "أنشاء بوت حماية 🤖" and in_array($from_id,$abuehab) and !in_array($from_id,$carlos['ban'])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙لديك بوت مصنوع من هذا النوع بالفعل", 
'parse_mode'=>"Markdown",
]);
exit();
}
if($text == "أنشاء بوت حماية 🤖" and !in_array($from_id,$carlos['ban'])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙*الان قم بارسال توكنك الخاص*",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"الغاء الامر ✖️"]],
],
'resize_keyboard'=>true
])
]);
$carlos[$from_id]['token'] = "bot";
file_put_contents("data/carlos.json",json_encode($carlos));
}
$url_info = file_get_contents("https://api.telegram.org/bot$text/getMe");
$json_info = json_decode($url_info);
$userbot = $json_info->result->username;
$idbot =  $json_info->result->id;
$namebot =  $json_info->result->first_name;
if($user != null){
$userdev = "@$user";
}elseif($user == null){
$userdev = "لا يملك معرف";
}
$get_carlos = file_get_contents("carlos.php");
$info_b = json_decode(file_get_contents("bots/$from_id/carlos/admin.json"),1);
if($text and $carlos[$from_id]['token'] == "bot" and !in_array($from_id,$carlos['ban'])){
if($idbot != null){
$carlos['carlos'][] = $from_id;
$carlos[$from_id]['token'] = "nobot";
file_put_contents("data/carlos.json",json_encode($carlos));
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*☆︙تم صنع بوت الزخرفة الخاص بك
☆︙معرف بوتك : @$userbot
☆︙ايدي بوتك : $idbot*
",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"الغاء الامر ✖️"]],
],
'resize_keyboard'=>true
])
]);
bot('sendmessage',[
'chat_id'=>$admin2,
'text'=>"☆︙اهلا عزيزي المطور
☆︙هنالك شخص صنع بوت جديد
---
☆︙معلومات المطور
---
☆︙اسمة : $name
☆︙ايدية : $from_id
☆︙معرفة : $userdev
---
☆︙معلومات البوت
---
☆︙اسمة : $namebot
☆︙ايدية : $idbot
☆︙معرفة : @$userbot
---
☆︙نوع المصنوع : سورس كارلوس
",
]);
mkdir("bots/$from_id");
mkdir("bots/$from_id/carlos");
file_put_contents("bots/$from_id/carlos/bot.php",$get_carlos);
file_get_contents("https://api.telegram.org/bot$text/setwebhook?url=https://$web/bots/$from_id/carlos/bot.php");
$info_b['token'] = $text;
$info_b['id'] = $from_id;
file_put_contents("bots/$from_id/carlos/admin.json",json_encode($info_b));
}
}
if($text == "ايقاف بوت 📛" and !in_array($from_id,$carlos['carlos']) and !in_array($from_id,$carlos['ban'])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙*يجب عليك ان تقوم بتنصيب بوت اولا* ‼", 
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}
if($text == "ايقاف بوت 📛" and in_array($from_id,$abuehab) and !in_array($from_id,$carlos['ban'])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙*تم ايقاف وحذف البوت بنجاح*",
'parse_mode'=>"Markdown",
]);
bot('sendmessage',[
'chat_id'=>$admin2,
'text'=>"☆︙اهلا عزيزي المطور
☆︙هنالك شخص صنع بوت جديد
---
☆︙معلومات المطور
---
☆︙اسمة : $name
☆︙ايدية : $from_id
☆︙معرفة : $userdev
---
☆︙نوع البوت محذوف : سورس كارلوس
",
]);
delTree("bots/$from_id/carlos");
$key = array_search($from_id,$carlos["carlos"]);
unset($carlos["carlos"][$key]);
$carlos["carlos"] = array_values($carlos["carlos"]); 
file_put_contents("data/carlos.json",json_encode($carlos));
}
#-----------(carlos)-----------#
if($text == "تحديث السورس" and in_array($from_id,$Dev)){
foreach(scandir('bots/') as $f2){
if($f2 != '.' and $f2 != '..'){
unlink("bots/$f2/carloss/bot.php");
$upsor = file_get_contents('carlos.php');
file_put_contents("bots/$f2/carloss/bot.php", $upsor); 
}
}
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>'*☆︙تم تحديث جميع المصنوعات
☆︙عدد المصنوعات ← $botadd
*',
'parse_mode'=>"Markdown",
]);
}
#-----------(carlos)-----------#
if($text == "حذف مصنوع" and in_array($from_id,$Dev)){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙*ارسل الايدي لشخص المراد*",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"رجوع ↪️"]],
],
'resize_keyboard'=>true
])
]);
$carlos['delbots'] = "on";
file_put_contents("data/carlos.json",json_encode($carlos));
}
$delbas = $carlos['delbots'];
if($text and preg_match('/([0-9])/i',$text) and $delbas == "on" and !in_array($text,$carlos['carlos'])){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙*ليس لدية اي بوت* ‼", 
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
exit();
}
if($text and preg_match('/([0-9])/i',$text) and $delbas == "on" and $from_id == $admin2 and in_array($text,$carlos['carlos'])){
$delnamee = json_decode(file_get_contents("http://api.telegram.org/bot$gtkt/getChat?chat_id=$text"))->result->first_name;
$deluserr = json_decode(file_get_contents("http://api.telegram.org/bot$gtkt/getChat?chat_id=$text"))->result->username;
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"
☆︙*تم حذف البوت بنجاح*
☆︙ايديةة ← $text
☆︙اضغط ← [مطور لبوت](tg://user?id=$text)
",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"رجوع ↪️"]],
],
'resize_keyboard'=>true
])
]);
bot('sendmessage',[
'chat_id'=>$text,
'text'=>"☆︙اهلا عزيزي 
☆︙تم حذف بوتك
☆︙من قبل المطور
---
",
]);
delTree("bots/$text/carlos");
$key = array_search($text,$carlos["carlos"]);
unset($carlos["carlos"][$key]);
$carlos["carlos"] = array_values($carlos["carlos"]); 
file_put_contents("data/carlos",json_encode($carlos));
$carlos['delbots'] = "off";
file_put_contents("data/carlos.json",json_encode($carlos));
}
#-----------(carlos)-----------#
if($text == "الاحصائيات" and in_array($from_id,$Dev)){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙*الاحصائيات الخاصه ب بوتك*
*☆︙عدد المصنوعات ← $botadd*
*☆︙عدد المشتركين ← $md3*",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"رجوع ↪️"]],
],
'resize_keyboard'=>true
])
]);
}
#-----------(carlos)-----------#
$d6 = $carlos['sarat'];
if($text == "تفعيل التنبية" and in_array($from_id,$Dev)){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙*تم تفعيل التنبية بنجاح*",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"تعطيل التنبية"]],
[['text'=>"رجوع ↪️"]],
],
'resize_keyboard'=>true
])
]);
$carlos['sarat'] = "✅";
file_put_contents("data/carlos.json",json_encode($carlos));
}
if($text == "تعطيل التنبية" and in_array($from_id,$Dev)){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙*تم تعطيل التنبية بنجاح*",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"تفعيل التنبية"]],
[['text'=>"رجوع ↪️"]],
],
'resize_keyboard'=>true
])
]);
$carlos['sarat'] = "❎";
file_put_contents("data/carlos.json",json_encode($carlos));
}
#-----------(carlos)-----------#
$d7 = $carlos['tojahh'];
if($text == "تفعيل التوجيه" and in_array($from_id,$Dev)){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙*تم تفعيل التوجيه بنجاح*",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"تعطيل التوجيه"]],
[['text'=>"رجوع ↪️"]],
],
'resize_keyboard'=>true
])
]);
$carlos['tojahh'] = "✅";
file_put_contents("data/carlos.json",json_encode($carlos));
}
if($text == "تعطيل التوجيه" and in_array($from_id,$Dev)){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙*تم تعطيل التوجيه بنجاح*",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"تفعيل التوجيه"]],
[['text'=>"رجوع ↪️"]],
],
'resize_keyboard'=>true
])
]);
$carlos['tojahh'] = "❎";
file_put_contents("data/carlos.json",json_encode($carlos));
}
#-----------(carlos)-----------#
if($message and $text != "/start" and $from_id != $admin2 and $d7 == "✅" and !$data){
bot('forwardMessage',[
'chat_id'=>$admin2,
'from_chat_id'=>$chat_id,
 'message_id'=>$update->message->message_id,
'text'=>$text,
]);
}
#-----------(carlos)-----------#
if($user == null){
$user = "None";
}elseif($user != null){
$user = $user;
}
if($text =='/start' and $from_id !=$admin2 and $d6 =="✅"){ 
bot('sendmessage',[ 
'chat_id'=>$admin2,  
'text'=>"تم دخول عضو جديد الى البوت ℹ️ :
الاسم : [$name]
المعرف : [@$user]
الايدي : [$from_id](tg://user?id=$from_id)
⎯ ⎯ ⎯ ⎯
",  
'parse_mode'=>"MarkDown", 
'disable_web_page_preview'=>true, 
]);  
}
#-----------(carlos)-----------#
if($text == "تفعيل البوت" and in_array($from_id,$Dev)){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙*تم تفعيل البوت بنجاح*",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"تعطيل البوت"]],
[['text'=>"رجوع ↪️"]],
],
'resize_keyboard'=>true
])
]);
$carlos['bots'] = "✅";
file_put_contents("data/carlos.json",json_encode($carlos));
}
if($text == "تعطيل البوت" and in_array($from_id,$Dev)){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙*تم تعطيل البوت بنجاح*",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"تفعيل البوت"]],
[['text'=>"رجوع ↪️"]],
],
'resize_keyboard'=>true
])
]);
$carlos['bots'] = "❎";
file_put_contents("data/carlos.json",json_encode($carlos));
}
#-----------(carlos)-----------#
if($text == "اذاعة" and $from_id == $admin2){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"
ارسل الرساله التي تريد اذاعتها يمكن ان تكون (نص، صوره ، فديو، الخ) ⏳
",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"رجوع ↪️"]],
],
'resize_keyboard'=>true
])
]);
$carlos['ok'] = "send";
file_put_contents("data/carlos.json",json_encode($carlos));
}
if($text != "اذاعة" and $text != "رجوع ↪️" and $carlos['ok'] == 'send' and $from_id == $admin2){
				foreach($members as $ASEEL){
					if($text)
bot('sendMessage', [
'chat_id'=>$ASEEL,
'text'=>"$text",
'parse_mode'=>"MARKDOWN",
'parse_mode'=>"HTML",
'disable_web_page_preview'=>true,
]);
if($photo)
bot('sendphoto', [
'chat_id'=>$ASEEL,
'photo'=>$photo_id,
'caption'=>$caption,
'parse_mode'=>"MARKDOWN",
'parse_mode'=>"HTML",
'disable_web_page_preview'=>true,
]);
if($video)
bot('Sendvideo',[
'chat_id'=>$ASEEL,
'video'=>$video_id,
'caption'=>$caption,
'parse_mode'=>"MARKDOWN",
'parse_mode'=>"HTML",
'disable_web_page_preview'=>true,
]);
if($video_note)
bot('Sendvideonote',[
'chat_id'=>$ASEEL,
'video_note'=>$video_note_id,
]);
if($sticker)
bot('Sendsticker',[
'chat_id'=>$ASEEL,
'sticker'=>$sticker_id,
'parse_mode'=>"MARKDOWN",
'parse_mode'=>"HTML",
'disable_web_page_preview'=>true,
]);
if($file)
bot('SendDocument',[
'chat_id'=>$ASEEL,
'document'=>$file_id,
'caption'=>$caption,
'parse_mode'=>"MARKDOWN",
'parse_mode'=>"HTML",
'disable_web_page_preview'=>true,
]);
if($music)
bot('Sendaudio',[
'chat_id'=>$ASEEL,
'audio'=>$music_id,
'caption'=>$caption,
'parse_mode'=>"MARKDOWN",
'parse_mode'=>"HTML",
'disable_web_page_preview'=>true,
]);
if($voice)
bot('Sendvoice',[
'chat_id'=>$ASEEL,
'voice'=>$voice_id,
'caption'=>$caption,
'parse_mode'=>"MARKDOWN",
'parse_mode'=>"HTML",
'disable_web_page_preview'=>true,
]);
					}
	             for($i=0;$i<count($members); $i++){
$ok = bot('sendChatAction' , ['chat_id' =>$members[$i],
'action' => 'typing' ,])->ok;
if($members[$i] != "" and $ok != 1){
file_put_contents("data/A5.json","$members[$i]
",FILE_APPEND);
}}
$ooo = explode("\n",file_get_contents("data/A5.json"));
$iii = count($ooo) - 1;
$mmm = $count - $iii;
					bot('sendmessage',[
	'chat_id'=>$chat_id, 
'text'=>"
تم الانتهاء من الاذاعة ✅
⎯ ⎯ ⎯ ⎯
تم ارسالها الى $mmm
لم ترسل الى $iii
⎯ ⎯ ⎯ ⎯
",
'parse_mode'=>"Markdown",
	'reply_to_meesage_id'=>$message_id,
]);
					$carlos['ok'] = "no";
					unlink("data/A5.json");
	file_put_contents("data/carlos.json",json_encode($carlos));
				}
#-----------(carlos)-----------#
if($carlos['ch'] == null){
$ch = "لا توجد قناة حاليا";
}elseif($carlos['ch'] != null){
$ch = $carlos['ch'];
}
if($text == "تعين الاشتراك" and in_array($from_id,$Dev)){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*
☆︙عزيزي - المطور
☆︙ارفعني مشرف بقناتك 
☆︙وقم ب ارسال معرف قناتك معه @
*",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"رجوع ↪️"]],
],
'resize_keyboard'=>true
])
]);
$carlos['okk'] = "ok_ch";
file_put_contents("data/carlos.json",json_encode($carlos));
exit();
}
if(preg_match("/@/",$text) and $carlos['okk'] == "ok_ch" and $from_id == $admin2){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*☆︙تم اضافة قناة الاشتراك 
☆︙قم ب ارسال تفعيل الاشتراك*",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"تفعيل الاشتراك"],['text'=>"تعطيل الاشتراك"]],
[['text'=>"رجوع ↪️"]],
],
'resize_keyboard'=>true
])
]);
$carlos['okk'] = "no";
$carlos['ch'] = $text;
file_put_contents("data/carlos.json",json_encode($carlos));
}
if(!preg_match("/@/",$text) and $carlos['okk'] == "ok_ch" and $from_id == $admin2){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*☆︙حدث خطاء قم بتأكد من المعرف* ⚠️",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"رجوع ↪️"]],
],
'resize_keyboard'=>true
])
]);
}
if($text == "حذف الاشتراك" and $ch != "لا توجد قناة حاليا"){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"
*☆︙تم حذف قناة الاشتراك بنجاح*
",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"رجوع ↪️"]],
],
'resize_keyboard'=>true
])
]);
$carlos['ch'] = null;
file_put_contents("data/carlos.json",json_encode($carlos));
}
if($text == "حذف الاشتراك" and $ch == "لا توجد قناة حاليا"){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"
*☆︙لايوجد قناة ليتم حذفها*
",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"رجوع ↪️"]],
],
'resize_keyboard'=>true
])
]);
}
#-----------(carlos)-----------#
if($text == "تفعيل الاشتراك" and in_array($from_id,$Dev)){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙*تم تفعيل الاشتراك بنجاح*",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"تعطيل الاشتراك"]],
[['text'=>"رجوع ↪️"]],
],
'resize_keyboard'=>true
])
]);
$carlos['joen'] = "✅";
file_put_contents("data/carlos.json",json_encode($carlos));
}
if($text == "تعطيل الاشتراك" and in_array($from_id,$Dev)){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"☆︙*تم تعطيل الاشتراك بنجاح*",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[['text'=>"تفعيل الاشتراك"]],
[['text'=>"رجوع ↪️"]],
],
'resize_keyboard'=>true
])
]);
$carlos['joen'] = "❎";
file_put_contents("data/carlos.json",json_encode($carlos));
}
#-----------(carlos)-----------#
if($text=="المحظورين" and $carlos['ban'] != null){
$banlast = $carlos['ban'];
for($z = 0;$z <= count($banlast)-1;$z++){
$apiban = json_decode(file_get_contents("http://api.telegram.org/bot$token/getChat?chat_id=$banlast[$z]"));
$banuser =$apiban->result->username;
$banname =$apiban->result->first_name;
$banid =$apiban->result->id;
$result = $result."⋄︙ $z ← [$banname](https://t.me/$banuser) - $banid"."\n";
}
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"⋄︙اليك قائمة المحظورين : 
ꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ
$result",
'parse_mode'=>"markdown",
'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message->message_id,
 ]);
exit();
}
if($text=="المحظورين" and $carlos['ban'] == null){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"
☆︙عزيزي ← [$name](tg://user?id=$from_id)
☆︙لايوجد محظور حاليأ
",
'reply_to_message_id'=>$message->message_id,
'parse_mode'=>"MarkDown",
]);
}
if($text == "مسح المحظورين" and $from_id == $admin2){
bot("SendMessage",[
'chat_id'=>$chat_id,
'text'=>"⋄︙بواسطة ⋙ [$name](tg://user?id=$from_id)
⋄︙ تم مسح قائمة المحظورين
",'parse_mode'=>"MARKDOWN",
'reply_to_message_id'=>$message_id,
'disable_web_page_preview'=>true,
]);
$carlos['ban'] = null;
file_put_contents("data/carlos.json",json_encode($carlos));
}
#-----------(carlos)-----------#
$ban_id = $message->reply_to_message->forward_from->id;
if($ban_id && $text == "حظر"){
$apiban = json_decode(file_get_contents("http://api.telegram.org/bot$token/getChat?chat_id=$ban_id"));
$banuser =$apiban->result->username;
$banname =$apiban->result->first_name;
$banid =$apiban->result->id;
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"⋄︙العضو - [$banname](tg://user?id=$banid)
⋄︙تم حـظـرهه بـنـجاح",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$carlos['ban'][] = "$ban_id";
file_put_contents("data/carlos.json",json_encode($carlos));
}
if ($ban_id && $text == "الغاء حظر"){
$apiban = json_decode(file_get_contents("http://api.telegram.org/bot$token/getChat?chat_id=$ban_id"));
$banuser =$apiban->result->username;
$banname =$apiban->result->first_name;
$banid =$apiban->result->id;
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"
⋄︙العضو - [$banname](tg://user?id=$banid)
⋄︙تم الـغـاء حـظـرهه بـنـجاح
",
'parse_mode'=>"Markdown",
'reply_to_message_id'=>$message->message_id,
]);
$key = array_search($ban_id,$carlos["ban"]);
unset($carlos["ban"][$key]);
$carlos["ban"] = array_values($carlos["ban"]); 
$carlos = json_encode($carlos,true);
file_put_contents("data/carlos.json",$carlos);

}
