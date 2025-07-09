<?php // @Ri_php & @Ri_php
ob_start();
$API_KEY = "توكن";// توكن بوتك العزيز
$buy = "@";//  يوزرك تليكرام .
$sudo = "";// خلي ايديك هنا .
$admin = "$sudo";
$idBot = "";// ايدي بوتك خلي بشكل صحيح .
$admmm = $sudo;
$Dev = array("$sudo", "" );
$userrr = ""; # خلي معرف بوتك بدون نيم ( @ )
date_default_timezone_set('Asia/Damascus');
$get_toke = file_get_contents('info.php');
$get_token = explode("\n", $get_toke);
$json_info = json_decode($url_info);
$userr = $json_info->result->username;
$bot_id = $json_info->result->id;
$url_info = file_get_contents("https://api.telegram.org/bot$get_token[0]/getMe");
define('API_KEY',$API_KEY);
function bot($method,$TH3SS=[]){
$TH3SS = http_build_query($TH3SS);
$url = "https://api.telegram.org/bot".API_KEY."/".$method."?$TH3SS";
$TH3SS = file_get_contents($url);
return json_decode($TH3SS);}

$json_info = json_decode($url_info,true);
$usernamebot = $json_info['result']['username'];
$bot_id = $json_info['result']['id'];
$admmm = "$sudo";
$bgh = file_get_contents("$re_id.txt");
$Dev = array("$admmm",""); # حط ايدي المطور ثاني المساعد او بكيفك خلي ايديك .
$channel = "sjadiraqi";
$token = API_KEY;

$update = json_decode(file_get_contents('php://input'));
@$message = $update->message;
@$from_id = $message->from->id;
@$chat_id = $message->chat->id;
@$message_id = $message->message_id;
@$first_name = $message->from->first_name;
@$last_name = $message->from->last_name;
@$username = $message->from->username;
@$text  = $message->text;
@$firstname = $update->callback_query->from->first_name;
@$usernames = $update->callback_query->from->username;
@$chatid = $update->callback_query->message->chat->id;
@$fromid = $update->callback_query->from->id;
@$membercall = $update->callback_query->id;
@$reply = $update->message->reply_to_message->forward_from->id;
#@sjadiraqi
@$data = $update->callback_query->data;
@$messageid = $update->callback_query->message->message_id;
@$tc = $update->message->chat->type;
@$gpname = $update->callback_query->message->chat->title;
@$namegroup = $update->message->chat->title;
#@sjadiraqi
@$newchatmemberid = $update->message->new_chat_member->id;
@$newchatmemberu = $update->message->new_chat_member->username;
@$rt = $update->message->reply_to_message;
@$replyid = $update->message->reply_to_message->message_id;
@$tedadmsg = $update->message->message_id;
@$edit = $update->edited_message->text;
@$re_id = $update->message->reply_to_message->from->id;
@$re_user = $update->message->reply_to_message->from->username;
@$re_name = $update->message->reply_to_message->from->first_name;
@$re_msgid = $update->message->reply_to_message->message_id;
@$re_chatid = $update->message->reply_to_message->chat->id;
@$message_edit_id = $update->edited_message->message_id;
@$chat_edit_id = $update->edited_message->chat->id;
@$edit_for_id = $update->edited_message->from->id;
@$edit_chatid = $update->callback_query->edited_message->chat->id;
@$caption = $update->message->caption;
#@sjadiraqi
@$statjson = json_decode(file_get_contents("https://api.telegram.org/bot$token/getChatMember?chat_id=$chat_id&user_id=".$from_id),true);
@$status = $statjson['result']['status'];
@$statjsonrt = json_decode(file_get_contents("https://api.telegram.org/bot$token/getChatMember?chat_id=$chat_id&user_id=".$re_id),true);
@$statusrt = $statjsonrt['result']['status'];
@$statjsonq = json_decode(file_get_contents("https://api.telegram.org/bot$token/getChatMember?chat_id=$chatid&user_id=".$fromid),true);
@$statusq = $statjsonq['result']['status'];
@$info = json_decode(file_get_contents("https://api.telegram.org/bot$token/getChatMember?chat_id=$chat_edit_id&user_id=".$edit_for_id),true);
@$you = $info['result']['status'];
@$forchannel = json_decode(file_get_contents("https://api.telegram.org/bot".$token."/getChatMember?chat_id=@".$channel."&user_id=".$from_id));
@$tch = $forchannel->result->status;
#@sjadiraqi
@$settings = json_decode(file_get_contents("data/$chat_id.json"),true);
@$settings2 = json_decode(file_get_contents("data/$chatid.json"),true);
@$editgetsettings = json_decode(file_get_contents("data/$chat_edit_id.json"),true);
@$user = json_decode(file_get_contents("data/user.json"),true);

$channel = "sjadiraqi";
$token = API_KEY;
$update = json_decode(file_get_contents('php://input'));
$message = $update->message;
$from_id = $message->from->id;
$chat_id = $message->chat->id;
$message_id = $message->message_id;
$first_name = $message->from->first_name;
$last_name = $message->from->last_name;
$username = $message->from->username;
$text = $message->text;
$chatid = $update->callback_query->message->chat->id;
$fromid = $update->callback_query->from->id;
$reply = $update->message->reply_to_message->forward_from->id;
$data = $update->callback_query->data;
$tc = $update->message->chat->type;
$namegroup = $update->message->chat->title;
$newchatmemberid = $update->message->new_chat_member->id;
$edit = $update->edited_message->text;
$re_id = $update->message->reply_to_message->from->id;
$re = $update->message->reply_to_message;
$re_user = $update->message->reply_to_message->from->username;
$re_name = $update->message->reply_to_message->from->first_name;
$re_msgid = $update->message->reply_to_message->message_id;
$message_edit_id = $update->edited_message->message_id;
$chat_edit_id = $update->edited_message->chat->id;
$edit_for_id = $update->edited_message->from->id;
$caption = $update->message->caption;
$name = $update->message->from->first_name;
$name20 = substr($name,0,20)."";
$user = $update->message->from->username;
$mid = $message->message_id;

$statjson = json_decode(file_get_contents("https://api.telegram.org/bot$token/getChatMember?chat_id=$chat_id&user_id=".$from_id),true);
$status = $statjson['result']['status'];
$statjsonrt = json_decode(file_get_contents("https://api.telegram.org/bot$token/getChatMember?chat_id=$chat_id&user_id=".$re_id),true);
$statusrt = $statjsonrt['result']['status'];
$info = json_decode(file_get_contents("https://api.telegram.org/bot$token/getChatMember?chat_id=$chat_edit_id&user_id=".$edit_for_id),true);
$you = $info['result']['status'];
$forchannel = json_decode(file_get_contents("https://api.telegram.org/bot".$token."/getChatMember?chat_id=".$channel."&user_id=".$from_id));
$tch = $forchannel->result->status;
$settings = json_decode(file_get_contents("data/$chat_id/$chat_id.json"),true);
$settings2 = json_decode(file_get_contents("data/$chatid.json"),true);
$editgetsettings = json_decode(file_get_contents("data/$chat_edit_id.json"),true);
$user = json_decode(file_get_contents("data/user.json"),true);
$infos = json_decode(file_get_contents("https://api.telegram.org/bot".API_KEY."/getChatMember?chat_id=$chat_id&user_id=$idBot"), true);
$bot = $infos['result']['status'];
$can_bot_chang_info = $infos['result']['can_change_info'];
$can_bot_delete =  $infos['result']['can_delete_messages'];
$can_bot_restrict = $infos['result']['can_restrict_members'];
$can_bot_invite = $infos['result']['can_invite_users'];
$can_bot_pin = $infos['result']['can_pin_messages'];
$can_bot_promote = $infos['result']['can_promote_members'];
$filterget = $settings["filterlist"];
$allmsgpv = file_get_contents("data/allmsgpv.txt");

function objectToArrays($object){ if(!is_object($object) && !is_array($object)) { return $object;} if(is_object($object)) { $object = get_object_vars($object);} return array_map("objectToArrays", $object); }

if ($tc == 'private'){
$user = json_decode(file_get_contents("data/user.json"),true);
if(!in_array($from_id, $user["userlist"])) {
$user["userlist"][]="$from_id";
$user = json_encode($user,true);
file_put_contents("data/user.json",$user);}
}
elseif ($tc == 'group' | $tc == 'supergroup'){
$user = json_decode(file_get_contents("data/user.json"),true);
if(!in_array($chat_id, $user["grouplist"])) {
$user["grouplist"][]="$chat_id";
$user = json_encode($user,true);
file_put_contents("data/user.json",$user);}
}

#  ~~~~ تطوير NaDaR ~~~~
$developers_info = file_get_contents("data/developers/developer.txt");
$developer = explode ("\n",$developers_info);
$developers_infos = file_get_contents("data/developers/developers.txt");
$developers = explode("\n",$developers_infos);
$list_developers ="";
$list_developers = $list_developers."⌯ ".$developers_infos."\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n⌔︙الايديات » ⤈ \n" ."⌯ `".$developers_info . "`";

# ~~~~ تطوير NaDaR ~~~~
$mangers_info = file_get_contents("data/manger/$chat_id.txt");
$manger  = explode("\n",$mangers_info);
$mangers_infos = file_get_contents("data/manger/$chat_id/mange.txt");
$mangers = explode ("\n",$mangers_infos);

# --      info admins       --
$admin_users_info = file_get_contents("data/admin_user/$chat_id.txt");
$admin_user  = explode("\n",$admin_users_info);
$admin_users_infos = file_get_contents("data/admin_user/$chat_id/mange.txt");
$admin_users = explode ("\n",$admin_users_infos);

# ~~~~ تطوير NaDaR ~~~~
$vipmems_info = file_get_contents("data/vipmem/$chat_id.txt");
$vipmem  = explode("\n",$vipmems_info);
$vipmems_infos = file_get_contents("data/vipmem/$chat_id/mange.txt");
$vipmems = explode ("\n",$vipmems_infos);

# --      auto folders      --
mkdir("data");
mkdir("data/developers");
mkdir("data/manger");
mkdir("data/manger/$chat_id");
mkdir("data/admin_user");
mkdir("data/admin_user/$chat_id");
mkdir("data/vipmem");
mkdir("data/vipmem/$chat_id");
mkdir("statistics");
mkdir("SudoOrders");

$setch = file_get_contents("SudoOrders/setch.txt");
$setchannel = file_get_contents("SudoOrders/setchannel.txt");
if($text == "تفعيل" or $text == "ايديي" or $text == "ايدي" or $text == "صلاحيتي" or $text == "فحص البوت" or $text == "الاوامر" or $text == "الاعدادات" or $text == "رتبتي" or $text == "كشف" or $text == "الرتبه" or $text == "رتبته" or $text == "اضف رد" or $text == "حذف رد" or $text == "فحص" or $text == "الالعاب" or $text == "وضع قناة" or $text == "تفعيل اشتراك المجموعه" or $text == "تعطيل اشتراك المجموعه" or $text == "زخرفه" or $text == "بحث"){
if($setchannel == "الاشتراك الاجباري مفعل"){
$join = file_get_contents("https://api.telegram.org/bot".API_KEY."/getChatMember?chat_id=$setch&user_id=".$from_id);
if($message && (strpos($join,'"status":"left"') or strpos($join,'"Bad Request: USER_ID_INVALID"') or strpos($join,'"status":"kicked"'))!== false){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"⌔︙عذرا لايمكنك استخدام البوت \n⌔︙رجائا اشترك في قناة البوت \n⌔︙لتتمكن من استخدامه \n⌔︙القناة » { [$setch] } \n ",
'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'inline_keyboard'=>[
[['text'=>"⌔ ︙ القناة ︙ ⌔",'url'=>"t.me/$setch"]],]])]); return false;}
bot('sendMessage',['chat_id'=>$chat_id, 'text'=>" ",'reply_to_message_id'=>$message->message_id,]);}}

if(in_array($re,$Dev)){
$info = "المطور";
}elseif($statusrt == "creator"){
$info = "المنشئ الاساسي";
}elseif($statusrt == "administrator"){
$info = "المشرف";
}elseif(in_array($re_id,$admin_user) ){
$info = "الادمن";
}elseif(in_array($re_id,$manger) ){
$info = "المدير";
}elseif(in_array($re_id,$vipmem) ){
$info = "عضو مميز";
}elseif(in_array($re_id,$developer) ){
$info = "المطور";
}elseif($statusrt== "member" ){
$info = "فقط عضو";
}
if(!$re_user){
$usew = "$first_name";
}elseif($re_user){
$usew = "@$re_user";
}

mkdir("data/$chat_id/absset");
$set = file_get_contents("data/$chat_id/absset/set.txt");
$abssetids = file_get_contents("data/$chat_id/absset/abssetid.txt");
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){ if($text == "اضف امر ايدي"){ file_put_contents("data/$chat_id/absset/set.txt","abssetid"); bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙ارسل امر الايدي الجديد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]); }}
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){
if($text && $set == "abssetid" and $text != "/start"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙تم حُفِظ الامر بنجاح",'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); file_put_contents("data/$chat_id/absset/abssetid.txt","$text"); }
elseif($text == "حذف امر ايدي" or $text == "مسح امر ايدي"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حذف امر الايدي بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); unlink("data/$chat_id/absset/abssetid.txt");}
}
if(!$abssetids){ $abssetid = "NULL"; }elseif($abssetids){ $abssetid = $abssetids; }

$set = file_get_contents("data/$chat_id/absset/set.txt");
$abssetrds = file_get_contents("data/$chat_id/absset/abssetrd.txt");
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){if($text == "اضف امر طرد"){ file_put_contents("data/$chat_id/absset/set.txt","abssetrd"); bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙ارسل امر الطرد الجديد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]); }}
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){
if($text && $set == "abssetrd" and $text != "/start"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙تم حُفِظ الامر بنجاح",'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); file_put_contents("data/$chat_id/absset/abssetrd.txt","$text");}
elseif($text == "حذف امر طرد" or $text == "مسح امر طرد"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حذف امر الطرد بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); unlink("data/$chat_id/absset/abssetrd.txt");}
}
if(!$abssetrds){ $abssetrd = "NULL"; }elseif($abssetrds){ $abssetrd = $abssetrds; }

$set = file_get_contents("data/$chat_id/absset/set.txt");
$abssethdrs = file_get_contents("data/$chat_id/absset/abssethdr.txt");
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){ if($text == "اضف امر حظر"){ file_put_contents("data/$chat_id/absset/set.txt","abssethdr"); bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙ارسل امر الحظر الجديد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]); }}
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){
if($text && $set == "abssethdr" and $text != "/start"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙تم حُفِظ الامر بنجاح",'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); file_put_contents("data/$chat_id/absset/abssethdr.txt","$text");}
elseif($text == "حذف امر حظر" or $text == "مسح امر حظر"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حذف امر الحظر بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); unlink("data/$chat_id/absset/abssethdr.txt");}
}
if(!$abssethdrs){ $abssethdr = "NULL"; }elseif($abssethdrs){ $abssethdr = $abssethdrs; }

$set = file_get_contents("data/$chat_id/absset/set.txt");
$abssetvips = file_get_contents("data/$chat_id/absset/abssetvip.txt");
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){ if($text == "اضف امر رفع مميز"){ file_put_contents("data/$chat_id/absset/set.txt","abssetvip"); bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙ارسل امر رفع مميز الجديد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]); }}
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){
if($text && $set == "abssetvip" and $text != "/start"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙تم حُفِظ الامر بنجاح",'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); file_put_contents("data/$chat_id/absset/abssetvip.txt","$text");}
elseif($text == "حذف امر رفع مميز" or $text == "مسح امر رفع مميز"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حذف امر رفع مميز بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); unlink("data/$chat_id/absset/abssetvip.txt");}
}
if(!$abssetvips){ $abssetvip = "NULL"; }elseif($abssetvips){ $abssetvip = $abssetvips; }

$set = file_get_contents("data/$chat_id/absset/set.txt");
$abssetfids = file_get_contents("data/$chat_id/absset/abssetfid.txt");
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){ if($text == "اضف امر تفعيل الايدي بالصوره"){ file_put_contents("data/$chat_id/absset/set.txt","abssetfid"); bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙ارسل امر  تفعيل الايدي بالصوره الجديد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]); }}
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){
if($text && $set == "abssetfid" and $text != "/start"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙تم حُفِظ الامر بنجاح",'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); file_put_contents("data/$chat_id/absset/abssetfid.txt","$text");}
elseif($text == "حذف امر تفعيل الايدي بالصوره" or $text == "مسح امر  تفعيل الايدي بالصوره"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حذف امر  تفعيل الايدي بالصوره بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); unlink("data/$chat_id/absset/abssetfid.txt");}
}
if(!$abssetfids){ $abssetfid = "NULL"; }elseif($abssetfids){ $abssetfid = $abssetfids; }

$set = file_get_contents("data/$chat_id/absset/set.txt");
$abssetaids = file_get_contents("data/$chat_id/absset/abssetaid.txt");
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){ if($text == "اضف امر تعطيل الايدي بالصوره"){ file_put_contents("data/$chat_id/absset/set.txt","abssetaid"); bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙ارسل امر تعطيل الايدي بالصوره الجديد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]); }}
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){
if($text && $set == "abssetaid" and $text != "/start"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙تم حُفِظ الامر بنجاح",'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); file_put_contents("data/$chat_id/absset/abssetaid.txt","$text");}
elseif($text == "حذف امر تعطيل الايدي بالصوره" or $text == "مسح امر تعطيل الايدي بالصوره"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حذف امر تعطيل الايدي بالصوره بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); unlink("data/$chat_id/absset/abssetaid.txt");}
}
if(!$abssetaids){ $abssetaid = "NULL"; }elseif($abssetaids){ $abssetaid = $abssetaids; }

$set = file_get_contents("data/$chat_id/absset/set.txt");
$abssetktms = file_get_contents("data/$chat_id/absset/abssetktm.txt");
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){ if($text == "اضف امر كتم" or $text == "اضف امر تقييد" or $text == "اضف امر تقيد"){ file_put_contents("data/$chat_id/absset/set.txt","abssetktm"); bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙ارسل امر التقييد الجديد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]); }}
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){
if($text && $set == "abssetktm" and $text != "/start"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙تم حُفِظ الامر بنجاح",'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); file_put_contents("data/$chat_id/absset/abssetktm.txt","$text");}
elseif($text == "حذف امر كتم" or $text == "مسح امر كتم" or $text == "حذف امر تقييد" or $text == "مسح امر تقييد" or $text == "حذف امر تقيد" or $text == "مسح امر تقيد"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حذف امر التقييد بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); unlink("data/$chat_id/absset/abssetktm.txt");}
}
if(!$abssetktms){ $abssetktm = "NULL"; }elseif($abssetktms){ $abssetktm = $abssetktms; }

$set = file_get_contents("data/$chat_id/absset/set.txt");
$abssetadmins = file_get_contents("data/$chat_id/absset/abssetadmin.txt");
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){ if($text == "اضف امر رفع ادمن"){ file_put_contents("data/$chat_id/absset/set.txt","abssetadmin"); bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙ارسل امر رفع ادمن الجديد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]); }}
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){
if($text && $set == "abssetadmin" and $text != "/start"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙تم حُفِظ الامر بنجاح",'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); file_put_contents("data/$chat_id/absset/abssetadmin.txt","$text"); }
elseif($text == "حذف امر رفع ادمن" or $text == "مسح امر رفع ادمن"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حذف امر رفع ادمن بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); unlink("data/$chat_id/absset/abssetadmin.txt");}
}
if(!$abssetadmins){ $abssetadmin = "NULL"; }elseif($abssetadmins){ $abssetadmin = $abssetadmins; }

$set = file_get_contents("data/$chat_id/absset/set.txt");
$abssetmangers = file_get_contents("data/$chat_id/absset/abssetmanger.txt");
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){ if($text == "اضف امر رفع مدير"){ file_put_contents("data/$chat_id/absset/set.txt","abssetmanger"); bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙ارسل امر رفع مدير الجديد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]); }}
if($status == "creator" or $status == "administrator" or in_array($from_id,$Dev) or in_array($from_id,$developer) or in_array($from_id,$manger)){
if($text && $set == "abssetmanger" and $text != "/start"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙تم حُفِظ الامر بنجاح",'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); file_put_contents("data/$chat_id/absset/abssetmanger.txt","$text"); }
elseif($text == "حذف امر رفع مدير" or $text == "مسح امر رفع مدير"){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حذف امر رفع مدير بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]);
unlink("data/$chat_id/absset/set.txt"); unlink("data/$chat_id/absset/abssetmanger.txt");}
}
if(!$abssetmangers){ $abssetmanger = "NULL"; }elseif($abssetmangers){ $abssetmanger = $abssetmangers; }

if($re and $text == "رفع مطور" and $re_id !=$id_Bot and  in_array($from_id,$Dev) and !in_array($re_id,$developer)){
file_put_contents("data/developers/developer.txt",$re_id ."\n " , FILE_APPEND);
file_put_contents("data/developers/developers.txt",'[@'.$re_user ."]". "\n " , FILE_APPEND);
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙العضو » [$usew]\n⌔︙تم رفعه في قائمة المطورين", 'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }

elseif($re and $text == "رفع مطور"  and $re_id !=$id_Bot and in_array($from_id,$Dev)  and in_array($re_id,$developer)){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙العضو » [$usew]\n⌔︙هوَ بالفعل مطور في البوت", 'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }

if($text == "حذف المطورين" || $text == "مسح المطورين" and in_array($from_id,$Dev)){
file_put_contents("data/developers/developer.txt"," ");
file_put_contents("data/developers/developers.txt"," ");
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$re_id) \n⌔︙تم حذف مطورين البوت \n ✓", 'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }

if(in_array($from_id,$Dev)){
if($re and $text == "تنزيل مطور" and in_array($re_id,$developer)){
$re_id_info = file_get_contents("data/developers/$chat_id.txt");
$devr = file_get_contents("data/developers/$chat_id/developer.txt");
$devr1 = explode("             \n",$devr);
$str = str_replace($re_id,"",$re_id_info);
$str2 = str_replace("⌯[" . "@". $re_user ."] " . "•" . "`". $re_id ."` ","",$devr1);
file_put_contents("data/developers/developer.txt",$str);
file_put_contents("data/developers/developers.txt",$str);
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙العضو » [$usew]\n⌔︙تم تنزيله من قائمة المطورين", 'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }}

if(in_array($from_id,$Dev)){
if($re and $text == "تنزيل مطور" and !in_array($re_id,$developer)){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙العضو » [$usew]\n⌔︙هوَ ليس مطور ليتم تنزيله", 'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); } }

if($text == "المطورين" and in_array($from_id,$Dev) and $developers_info != NULL or $text == "» المطورين ⌔" and in_array($from_id,$Dev) and $developers_info != NULL){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙مطورين البوت » ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n$list_developers\n",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }
if($text == "المطورين" and in_array($from_id,$Dev) and $developers_info == NULL or $text == "» المطورين ⌔" and in_array($from_id,$Dev) and $developers_info == NULL){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙*عذرا لم يتم رفع اي مطورين*",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }

if($status == "creator" ||  $status == "administrator" ||  in_array($from_id,$Dev) || in_array($from_id,$developer)) {
if($re and $text == "رفع منشئ" and !in_array($re_id,$manger)){
file_put_contents("data/manger/$chat_id.txt",$re_id . "\n" , FILE_APPEND);
file_put_contents("data/manger/$chat_id/mange.txt" , "⌯[" . "@". $re_user ."] " . "•" . "`". $re_id ."` ". "\n" , FILE_APPEND);
bot('SendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙العضو » [$usew]\n⌔︙تم رفعه في قائمة المنشئ الاساسيين",'parse_mode'=>'markdown', 'reply_to_message_id'=>$message->message_id, 'disable_web_page_preview'=>true, ]); }

elseif($re and in_array($text,$textmanger) and in_array($re_id,$manger)){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙العضو » [$usew]\n⌔︙هوَ بالفعل منشئ في المجموعة",'parse_mode'=>'markdown','parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }

if($re and $text == "تنزيل منشئ" and in_array($re_id,$manger)){
$re_id_info = file_get_contents("data/manger/$chat_id.txt");
$mdrs = file_get_contents("data/manger/$chat_id/mange.txt");
$mdrs1 = explode(" \n",$mdrs);
$str = str_replace($re_id,"",$re_id_info);
$str2 = str_replace("⌯[" . "@". $re_user ."] " . "•" . "`". $re_id ."` ","",$mdrs1);
file_put_contents("data/manger/$chat_id.txt",$str);
file_put_contents("data/manger/$chat_id/mange.txt",$str2);
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙المنشئ » [$usew]\n⌔︙تم تنزيله من قائمة المنشئ الاساسيين",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }

if($re and $text == "تنزيل منشئ" and !in_array($re_id,$manger)){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙العضو » [$usew]\n⌔︙هوَ ليس منشئ ليتم تنزيله",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }
}

$textmanger = array("رفع مدير","رفع المدير","$abssetmanger");
if($status == "creator" ||  $status == "administrator" ||  in_array($from_id,$Dev) || in_array($from_id,$developer)) {
if($re and in_array($text,$textmanger) and !in_array($re_id,$manger)){
file_put_contents("data/manger/$chat_id.txt",$re_id . "\n" , FILE_APPEND);
file_put_contents("data/manger/$chat_id/mange.txt" , "⌯[" . "@". $re_user ."] " . "•" . "`". $re_id ."` ". "\n" , FILE_APPEND);
bot('SendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙العضو » [$usew]\n⌔︙تم رفعه في قائمة المدراء",'parse_mode'=>'markdown', 'reply_to_message_id'=>$message->message_id, 'disable_web_page_preview'=>true, ]); }

elseif($re and in_array($text,$textmanger) and in_array($re_id,$manger)){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙العضو » [$usew]\n⌔︙هوَ بالفعل مدير في المجموعة",'parse_mode'=>'markdown','parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }

if($text == "حذف المدراء" || $text == "مسح المدراء" ){
file_put_contents("data/manger/$chat_id.txt","");
file_put_contents("data/manger/$chat_id.txt","");
file_put_contents("data/manger/$chat_id/mange.txt" ,"");
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$re_id) \n⌔︙تم حذف المدراء \n ✓",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true,  ]); }

if($re and $text == "تنزيل مدير" || $text == "تنزيل المدير"  and in_array($re_id,$manger)){
$re_id_info = file_get_contents("data/manger/$chat_id.txt");
$mdrs = file_get_contents("data/manger/$chat_id/mange.txt");
$mdrs1 = explode(" \n",$mdrs);
$str = str_replace($re_id,"",$re_id_info);
$str2 = str_replace("⌯[" . "@". $re_user ."] " . "•" . "`". $re_id ."` ","",$mdrs1);
file_put_contents("data/manger/$chat_id.txt",$str);
file_put_contents("data/manger/$chat_id/mange.txt",$str2);
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙المدير » [$usew]\n⌔︙تم تنزيله من قائمة المدراء",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }

if($re and $text == "تنزيل المدير" || $text == "تنزيل مدير" and !in_array($re_id,$manger)){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙العضو » [$usew]\n⌔︙هوَ ليس مدير ليتم تنزيله",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }

if($text == "المدراء" || $text == "قائمه المدراء" and $mangers_info != NULL and $mangers_info != " "){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙قائمة المدراء » ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n$mangers_infos\n",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }
if($text == "المدراء" ||  $text == "قائمه المدراء" and $mangers_info == NULL || $mangers_info == " " || $mangers_info == ""){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙*لا يوجد مدراء*",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }
}

$textadmin = array("رفع ادمن","$abssetadmin");
if($status == "creator" ||  $status == "administrator" ||  in_array($from_id,$Dev) || in_array($from_id,$developer) || in_array($from_id,$manger)) {
if($re and in_array($text,$textadmin) and !in_array($re_id,$admin_user)){
file_put_contents("data/admin_user/$chat_id.txt",$re_id . "\n" , FILE_APPEND);
file_put_contents("data/admin_user/$chat_id/mange.txt" , "⌯[" . "@". $re_user ."] " . "•" . "`". $re_id ."` ". "\n" , FILE_APPEND);
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙العضو » [$usew]\n⌔︙تم رفعه في قائمة الادمنية",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }

elseif($re and in_array($text,$textadmin) and in_array($re_id,$admin_user)){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙الادمن » [$usew]\n⌔︙هوَ بالفعل ادمن في المجموعة",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }

if($text == "حذف الادمنيه" || $text == "مسح الادمنيه" ){
file_put_contents("data/admin_user/$chat_id.txt","");
file_put_contents("data/admin_user/$chat_id.txt","");
file_put_contents("data/admin_user/$chat_id/mange.txt" ,"");
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$re_id) \n⌔︙تم حذف الادمنية \n ✓",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true,  ]); }

if($re and $text == "تنزيل ادمن" and in_array($re_id,$admin_user)){
$re_id_info = file_get_contents("data/admin_user/$chat_id.txt");
$admn = file_get_contents("data/admin_user/$chat_id/mange.txt");
$admn1 = explode(" \n",$admn);
$str = str_replace($re_id,"",$re_id_info);
$str2 = str_replace("⌯[" . "@". $re_user ."] " . "•" . "`". $re_id ."` ","",$admn1);
file_put_contents("data/admin_user/$chat_id.txt",$str);
file_put_contents("data/admin_user/$chat_id/mange.txt",$str2);
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙الادمن » [$usew]\n⌔︙تم تنزيله من قائمة الادمنية",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }

if($re and $text == "تنزيل ادمن"  and !in_array($re_id,$admin_user)){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙العضو » [$usew]\n⌔︙هوَ ليس ادمن ليتم تنزيله",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }

if($text == "الادمنيه" || $text == "الادمنية" and $admin_users_info != NULL and $admin_users_info != " "){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙قائمة الادمنية » ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n$admin_users_infos\n",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }
if($text == "الادمنيه" || $text == "الادمنية" and $admin_users_info == NULL || $admin_users_info == " " || $admin_users_info == ""){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙*لا يوجد ادمنية*",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }
}

$textvip = array("رفع مميز","$abssetvip");
if($status == "creator" ||  $status == "administrator" ||  in_array($from_id,$Dev) || in_array($from_id,$developer) || in_array($from_id,$admin_user) || in_array($from_id,$manger)) {
if($re and in_array($text,$textvip) and !in_array($re_id,$vipmem)){
file_put_contents("data/vipmem/$chat_id.txt",$re_id . "\n" , FILE_APPEND);
file_put_contents("data/vipmem/$chat_id/mange.txt" , "⌯[" . "@". $re_user ."] " . "•" . "`". $re_id ."` ". "\n" , FILE_APPEND);
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙العضو » [$usew]\n⌔︙تم رفعه في قائمة المميزين",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }

elseif($re and in_array($text,$textvip) and in_array($re_id,$vipmem)){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙المميز » [$usew]\n⌔︙هوَ بالفعل مميز في المجموعة",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }

if($text == "حذف المميزين" ){
file_put_contents("data/vipmem/$chat_id.txt","");
file_put_contents("data/vipmem/$chat_id.txt","");
file_put_contents("data/vipmem/$chat_id/mange.txt" ,"");
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$re_id) \n⌔︙تم حذف الاعضاء المميزين \n ✓",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true,  ]); }

if($re and $text == "تنزيل مميز" and in_array($re_id,$vipmem)){
$re_id_info = file_get_contents("data/vipmem/$chat_id.txt");
$mdrs = file_get_contents("data/vipmem/$chat_id/mange.txt");
$mdrs1 = explode(" \n",$mdrs);
$str = str_replace($re_id,"",$re_id_info);
$str2 = str_replace("⌯[" . "@". $re_user ."] " . "•" . "`". $re_id ."` ","",$mdrs1);
file_put_contents("data/vipmem/$chat_id.txt",$str);
file_put_contents("data/vipmem/$chat_id/mange.txt",$str2);
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙المميز » [$usew]\n⌔︙تم تنزيله من قائمة المميزين",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }

if($re and $text == "تنزيل مميز" and !in_array($re_id,$vipmem)){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙العضو » [$usew]\n⌔︙هوَ ليس مميز ليتم تنزيله",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }

if($text == "المميزين" || $text == "قائمه المميزين" and $vipmems_info != NULL and $vipmems_info != " "){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙قائمة المميزين » ⤈ \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n$vipmems_infos\n",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }
if($text == "المميزين" ||  $text == "قائمه المميزين" and $vipmems_info == NULL || $vipmems_info == " " || $vipmems_info == ""){
bot('SendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙*لا يوجد مميزين*",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true, ]); }
}

if($status != "creator" and $status != "administrator" and !in_array($from_id,$Dev) and !in_array($from_id,$developer)){ if($text == "رفع مدير" || $text == "رفع منشئ" or $text == "رفع الادمنيه" or $text == "رفع المشرفين" or $text == "تفعيل"){ bot('SendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙*عذرا هذا الامر ليس لك*",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true,]);}}

if(!in_array($from_id,$Dev)){ if($text == "رفع مطور" || $text == "تنزيل مطور" or $text == "الاحصائيات" or $text == "المطورين" or $text == "مسح المطورين" or $text == "المشتركين" or $text == "حذف المطورين" or $text == "م8" or $text == "الكروبات" or $text == "تفعيل الاشتراك الاجباري" or $text == "تعطيل الاشتراك الاجباري"){ bot('SendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙*عذرا هذا الامر ليس لك*",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true,]);}}

if($status != "creator" and $status != "administrator" and !in_array($from_id,$Dev) and !in_array($from_id,$developer) and !in_array($from_id,$manger) and !in_array($from_id,$admin_user)){ if($text == "رفع ادمن" || $text == "رفع مميز" or $text == "تنزيل مميز" or $text == "تنزيل ادمن" or $text == "قفل الفيديو" or $text == "فتح الفيديو" or $text == "تفعيل الايدي" or $text == "تعطيل الايدي"  or $text == "تفعيل اشتراك المجموعه"){ bot('SendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙*عذرا هذا الامر ليس لك*",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true,]);}}

if($status != "creator" and $status != "administrator" and !in_array($from_id,$Dev) and !in_array($from_id,$developer) and !in_array($from_id,$manger) and !in_array($from_id,$admin_user)){ if($text == "فتح الروابط"  || $text == "الادمنيه" || $text == "المميزين" || $text == "قفل الروابط" or $text == "قفل التوجيه" or $text == "فتح التوجيه" or $text == "تفعيل الالعاب" or $text == "تعطيل الالعاب" or $text == "تفعيل الرابط" or $text == "تعطيل الرابط"){ bot('SendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙*عذرا هذا الامر ليس لك*",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true,]);}}

if($status != "creator" and $status != "administrator" and !in_array($from_id,$Dev) and !in_array($from_id,$developer) and !in_array($from_id,$manger) and !in_array($from_id,$admin_user)){ if($text == "قفل المعرف" or $text == "فتح المعرف" or $text == "قفل البوتات" or $text == "فتح البوتات" or $text == "قفل المتحركه" or $text == "قفل الاشعارات" or $text == "قفل البوتات بالطرد" or $text == "قفل الكل" or $text == "فتح الكل" or $text == "قفل الصور" or $text == "فتح الصور" or $text == "قفل الكفر" or $text == "فتح الكفر" or $text == "قفل الفشار" or $text == "فتح الفشار" or $text == "قفل الطائفيه" or $text == "فتح الطائفيه" or $text == "قفل الفارسيه" or $text == "فتح الفارسيه"){ bot('SendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙*عذرا هذا الامر ليس لك*",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true,]);}}

if($status != "creator" and $status != "administrator" and !in_array($from_id,$Dev) and !in_array($from_id,$developer) and !in_array($from_id,$manger) and !in_array($from_id,$admin_user)){ if($text == "وضع رابط"  || $text == "حذف الرابط" || $text == "صنع رابط" || $text == "انشاء رابط" || $text == "تفعيل الرابط" or $text == "تعطيل الرابط" or $text == "قفل الدردشة" or $text == "فتح الدردشة" or $text == "قفل الدردشه" or $text == "فتح الدردشه" or $text == "كتم" or $text == "حظر" or $text == "طرد" or $text == "تقييد" or $text == "الغاء حظر" or $text == "الغاء كتم" or $text == "الغاء تقييد" or $text == "وضع ترحيب" or $text == "حذف الترحيب"){ bot('SendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙*عذرا هذا الامر ليس لك*",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true,]);}}

if($status == "creator" ||  in_array($from_id,$Dev) || in_array($from_id,$developer) || in_array($from_id,$admin_user) || in_array($from_id,$manger)) {
if($text =="رفع الادمنيه" or $text == "رفع المشرفين"){
$abscount1 = file_get_contents("data/count/$chat_id.txt");
$abscount2  = explode("\n",$abscount1);
$abscount = count($abscount2);
if($status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev)){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙تم رفع ( $abscount ) ادمنية هنا
⌔︙تم رفع منشئ المجموعة
 ✓",'reply_to_message_id'=>$message_id,]);}}}
 
if($text == "صيح الادمنيه" or $text == "تاك للادمنيه"){
$up = json_decode(file_get_contents("https://api.telegram.org/bot".API_KEY."/getChatAdministrators?chat_id=".$chat_id),true);
$result = $up['result'];
foreach($result as $key=>$value){
$found = $result[$key]['status'];
if($found == "creator"){
$owner = $result[$key]['user']['id'];
$owner2 = $result[$key]['user']['username'];
}
if($found == "administrator"){
if($result[$key]['user']['first_name'] == true){
$in_names = str_replace(['[',']'],'',$result[$key]['user']['username']);
$msg = $msg."⌯".""."@[$in_names]"."\n";
}
}
}
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"⌔︙وينكم يالربع
⌯@[".$result[$key]['user']['username']."]
$msg",'reply_to_message_id'=>$message_id,'parse_mode'=>"MarkDown",]);}

$set = file_get_contents("SudoOrders/set.txt");
$setch = file_get_contents("SudoOrders/setch.txt");
if(in_array($from_id,$Dev)){
if ($text == "تغيير الاشتراك الاجباري" or $text == "تعيين الاشتراك الاجباري" or $text == "تغيير قناة الاشتراك" or $text == "تعيين قناة الاشتراك"){
file_put_contents("SudoOrders/set.txt","setch");
bot("sendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙*ارسل لي معرف قناة الاشتراك الان*\n",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}
if($text && $set =="setch" and in_array($from_id,$Dev)){
file_put_contents("SudoOrders/setch.txt",$text);
file_put_contents("SudoOrders/set.txt","");
bot("sendmessage",["chat_id"=>$chat_id,"text"=>"⌔︙تم حفظ قناة الاشتراك \n⌔︙الان قم برفع البوت ادمن في القناة \n⌔︙بعدها قم بتفعيل الاشتراك الاجباري ",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}}

if(in_array($from_id,$Dev)){
if($text == "مسح قناة الاشتراك" or $text == "حذف قناة الاشتراك"){
file_put_contents("SudoOrders/setch.txt","");
bot("sendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙تم حذف قناة الاشتراك الاجباري",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}

if($text == "جلب قناة الاشتراك" or $text == "قناة الاشتراك" or $text == "الاشتراك الاجباري" or $text == "قناة الاشتراك الاجباري"){
bot("sendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙*قناة الاشتراك* » [$setch]",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}
}

$setlink = file_get_contents("data/$chat_id/set.txt");
$linktxt = file_get_contents("data/$chat_id/link.txt");
if ($text == "وضع رابط" or $text == "ضع رابط" or $text == "وضع الرابط" or $text == "ضع الرابط"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
if ($tc == 'group' | $tc == 'supergroup'){
file_put_contents("data/$chat_id/set.txt","setlink");
bot("sendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙ارسل رآبط المجمۄعة ليتم حفظة",'parse_mode'=>'markdown','reply_to_message_id'=>$message_id,]);}}}

if($text && $setlink =="setlink"){
if($status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
if ($tc == 'group' | $tc == 'supergroup'){
file_put_contents("data/$chat_id/link.txt",$text);
file_put_contents("data/$chat_id/set.txt","");
bot("sendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙تم صنع الرآبط الجديد\n⌔︙ارسل (الرابط) لعړض الرآبط",'parse_mode'=>'markdown','reply_to_message_id'=>$message_id,]);}}}

if ($text == "حذف الرابط" or $text == "مسح الرابط"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
if ($tc == 'group' | $tc == 'supergroup'){
file_put_contents("data/$chat_id/link.txt","");
bot("sendMessage",["chat_id"=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حذف رابط المجموعة \n ✓",'parse_mode'=>'markdown','reply_to_message_id'=>$message_id,]);}}}

if($status == "creator" ||  $status == "administrator" or in_array($from_id,$Dev) || in_array($from_id,$developer) || in_array($from_id,$admin_user) || in_array($from_id,$manger)) {
if($text == "معلومات المجموعه" || $text == "معلومات المجموعة"){
$MEMH = bot('getchatmemberscount',['chat_id'=>$chat_id])->result;
$cmg = file_get_contents("data/count/$chat_id.txt");
$cmssg  = explode("\n",$cmg);
$cmsg = count($cmssg);
$getlink = file_get_contents("https://api.telegram.org/bot$token/exportChatInviteLink?chat_id=$chat_id");
$jsonlink = json_decode($getlink, true);
$getlinkde = $jsonlink['result'];
$cmmyz = count($vipmems)-1;
$cmanger = count($mangers)-1;
$cadmin = count($admin_users)-1;
bot('SendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙المجموعة»$namegroup
⌔︙الايدي »$chat_id
⌔︙عدد الاعضاء »$MEMH
⌔︙عدد الادمنية »$cadmin
⌔︙عدد المدراء »$cmanger
⌔︙عدد المنشئ الاساسيين »$cmsg
⌔︙عدد المميزين »$cmmyz
⌔︙عدد الرسائل »$message->message_id",'reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true,]);}}

if($text == "ايدي المجموعه" or $text == "ايدي المجموعة"){bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙ايدي المجموعة » " . $chat_id,'reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true,]);}
if($text == "اسم المجموعه" or $text == "اسم المجموعة"){bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙اسم المجموعة » ❨" . $namegroup . "❩",'reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true,]);}

if($status == "creator" ||  $status == "administrator" or in_array($from_id,$Dev) || in_array($from_id,$developer) || in_array($from_id,$admin_user) || in_array($from_id,$manger)) {
if($text == "اضف امر" or $text == "حذف امر" or $text == "مسح امر"){ bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙* اضف امر • حذف امر + الامر » ⤈*\n*⌯ ايدي • طرد • حظر • كتم • تقييد • رفع مميز • رفع مدير • رفع ادمن • تفعيل الايدي بالصوره • تعطيل الايدي بالصوره ⌯*\n⌔︙*مثال اوضح » ⤈*\n*ارسل » ( اضف امر ايدي )*\n*بعدها قم بارسال الامر الجديد*\n*ارسل » ( حذف امر ايدي ) لحذفه*\n",'parse_mode'=>'markdown','reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true,]);}}

# link
if($settings["lock"]["link"] == "مقفول"){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
if (strstr($text,"t.me") == true or strstr($text,"telegram.me") == true or strstr($text,"https://") == true or strstr($text,"://") == true or strstr($text,"wWw.") == true or strstr($text,"WwW.") == true or strstr($text,"T.me/") == true or strstr($text,"WWW.") == true or strstr($caption,"t.me") == true or strstr($caption,"telegram.me")) {
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id,]);}}}
# photo
if($settings["lock"]["photo"] == "مقفول"){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
if ($update->message->photo){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}
# inline
$inline = json_decode(file_get_contents('php://input'),true);
if($settings["lock"]["inline"] == "مقفول"){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
if(isset($inline['message']['reply_markup']['inline_keyboard'][0][0]['text'])){
bot('deleteMessage',['chat_id'=>$message->chat->id,'message_id'=>$message->message_id]);}}}
# gif
if($settings["lock"]["gif"] == "مقفول"){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
if ($update->message->document){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}
# document
if($settings["lock"]["document"] == "مقفول"){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
if ($update->message->document){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}
# video
if($settings["lock"]["video"] == "مقفول"){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
if ($update->message->video){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}
# ar
if ($settings["lock"]["ar"] == "مقفول️"){
if (strstr($text,"ض") == true  or strstr($text,"ص") == true or strstr($text,"ق") == true  or  strstr($text,"ف") == true   or strstr($text,"غ") == true or  strstr($text,"ع") == true  or strstr($text,"ه") == true or strstr($text,"خ") == true  or  strstr($text,"ح") == true   or strstr($text,"ج") == true or strstr($text,"ش") == true  or strstr($text,"س") == true or strstr($text,"ي") == true  or  strstr($text,"ب") == true   or strstr($text,"ل") == true or  strstr($text,"ا") == true  or strstr($text,"ت") == true or strstr($text,"ن") == true  or  strstr($text,"م") == true   or strstr($text,"ك") == true or strstr($text,"ظ") == true or strstr($text,"ط") == true  or  strstr($text,"ذ") == true   or strstr($text,"د") == true or  strstr($text,"ز") == true  or strstr($text,"ر") == true or strstr($text,"و") == true  or  strstr($text,"ة") == true   or strstr($text,"ث") == true or strstr($text,"ؤ") == true  or strstr($text,"ء") == true or strstr($text,"ى") == true  or  strstr($text,"ئ") == true   or strstr($text,"آ") == true or  strstr($text,"إ") == true  or strstr($text,"أ") == true ) {
if ($tc == 'group' | $tc == 'supergroup'){
if( $status != 'creator' && $status != 'administrator' && !in_array($from_id,$Dev) && !in_array($from_id,$admin_user) && !in_array($from_id,$manger)  && !in_array($from_id,$vipmem) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}}
# en
if ($settings["lock"]["en"] == "مقفول️"){
if (strstr($text,"q") == true  or strstr($text,"w") == true or strstr($text,"e") == true  or  strstr($text,"r") == true   or strstr($text,"t") == true or  strstr($text,"y") == true  or strstr($text,"u") == true or strstr($text,"i") == true  or  strstr($text,"o") == true   or strstr($text,"p") == true or strstr($text,"a") == true  or strstr($text,"s") == true or strstr($text,"d") == true  or  strstr($text,"f") == true   or strstr($text,"g") == true or  strstr($text,"h") == true  or strstr($text,"j") == true or strstr($text,"k") == true  or  strstr($text,"l") == true   or strstr($text,"z") == true or strstr($text,"x") == true or strstr($text,"c") == true  or  strstr($text,"v") == true   or strstr($text,"b") == true or  strstr($text,"n") == true  or strstr($text,"m") == true or strstr($text,"Q") == true  or  strstr($text,"X") == true   or strstr($text,"C") == true or strstr($text,"F") == true  or strstr($text,"G") == true or strstr($text,"H") == true  or  strstr($text,"A") == true   or strstr($text,"L") == true or  strstr($text,"O") == true  or strstr($text,"P") == true ) {
if ($tc == 'group' | $tc == 'supergroup'){
if( $status != 'creator' && $status != 'administrator' && !in_array($from_id,$Dev) && !in_array($from_id,$admin_user) && !in_array($from_id,$manger)  && !in_array($from_id,$vipmem) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}}
# edit
if($editgetsettings["lock"]["edit"] == "مقفول"){
if ( $you != 'creator' && $you != 'administrator' && $edit_for_id != $Dev && $edit_for_id != $manger && $edit_for_id != $admin_user && $edit_for_id != $vipmem && $edit_for_id != $developer){
if ($update->edited_message->text){
bot('deletemessage',['chat_id'=>$chat_edit_id,'message_id'=>$message_edit_id]);}}}
# contact
if ($settings["lock"]["contact"] == "مقفول"){
if($update->message->contact){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}}
# edit media
$edit_media  = $update->edited_message->message_id;
$edit_chat_id_media = $update->edited_message->chat->id;
$edit_medias  = $update->edited_message->text;
$video_media = $update->edited_message->video;
$voice_media = $update->edited_message->voice;
$photo_media = $update->edited_message->photo;
$document_media = $update->edited_message->document;
$audio_media = $update->edited_message->audio;
$location_media = $update->edited_message->location;
if ($editgetsettings["lock"]["editmd"] == "مقفول"){
if ( $you != 'creator' && $you != 'administrator' && $edit_for_id != $Dev && $edit_for_id != $manger && $edit_for_id != $admin_user && $edit_for_id != $vipmem && $edit_for_id != $developer){
if(edit_medias || $photo_media || $document_media || $video_media || $voice_media || $audio_media || $location_media || preg_match('/^(.*)([Hh]ttp|[Hh]ttps|t.me)(.*)|([Hh]ttp|[Hh]ttps|t.me)(.*)|(.*)([Hh]ttp|[Hh]ttps|t.me)|(.*)[Tt]elegram.me(.*)|[Tt]elegram.me(.*)|(.*)[Tt]elegram.me|(.*)[Tt].me(.*)|[Tt].me(.*)|(.*)[Tt].me/',$edit_medias) ){
bot('deleteMessage',[ 'chat_id'=>$edit_chat_id_media, 'message_id'=>$edit_media, ]); } }}
# tag
if ($settings["lock"]["tag"] == "مقفول"){
if (strstr($text ,"#") == true or strstr($caption,"#") == true) {
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}}
// username
if ($settings["lock"]["username"] == "مقفول"){
if (strstr($text ,"@") == true or strstr($caption,"@") == true) {
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}}
# audio
if ($settings["lock"]["audio"] == "مقفول"){
if($update->message->audio){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}}
# voice
if ($settings["lock"]["voice"] == "مقفول"){
if($update->message->voice){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}}
# markdown
if ($settings["lock"]["markdown"] == "مقفول"){
if($update->message->entities){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}}
# bot
if($settings["lock"]["bot"] == "مقفول"){
if ($message->new_chat_member->is_bot) {
$hardmodebot = $settings["information"]["hardmodebot"];
if($hardmodebot == "مفتوح"){
bot('kickChatMember',['chat_id'=>$chat_id,'user_id'=>$update->message->new_chat_member->id]);}
else{
bot('kickChatMember',['chat_id'=>$chat_id,'user_id'=>$update->message->new_chat_member->id]);
bot('kickChatMember',['chat_id'=>$chat_id,'user_id'=>$from_id]);}}}
# sticker
if ($settings["lock"]["sticker"] == "مقفول"){
if($update->message->sticker){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}}
# is_sticker
if ($settings["lock"]["is_sticker"] == "مقفول"){
if($update->message->sticker->is_sticker){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}}
# forward
if ($settings["lock"]["forward"] == "مقفول"){
if($update->message->forward_from | $update->message->forward_from_chat){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message->message_id]);}}}}
# fshar
if ($settings["lock"]["fshar"] == "مقفول"){
if (strstr($text ,"كس") == true or strstr($text ,"ديس") == true or strstr($text ,"انيجمك") == true  or  strstr($text ,"انيج") == true or strstr($text ,"نيج") == true or strstr($text ,"عير") == true or strstr($text ,"كسختك") == true or strstr($text ,"كسمك") == true or strstr($text ,"كسربك") == true or strstr($text ,"ابو العيوره") == true or strstr($text ,"منيوج") == true or strstr($text ,"كحبه") == true or strstr($text ,"كحاب") == true or strstr($text ,"الكحبه") == true or strstr($text ,"عير بطيزك") == true or strstr($text ,"كس امك") == true or strstr($text ,"امك الكحبه") == true or strstr($text ,"عيرك") == true or strstr($text ,"عير بيك") == true or strstr($text ,"نتنايج") == true) {
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('SendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرأ عزيزي » [$name20](tg://user?id=$from_id) \n⌔︙ممنوع الفشار في المجمۄعة",'parse_mode'=>"markdown",'disable_web_page_preview'=>true]);
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}}
# kaf
if ($settings["lock"]["kaf"] == "مقفول"){
if (strstr($text ,"خره بالله") == true or strstr($text ,"خبربك") == true or strstr($text ,"كسدينربك") == true  or  strstr($text ,"خرب بالله") == true or strstr($text ,"خرب الله") == true or strstr($text ,"خره بربك") == true or strstr($text ,"الله الكواد") == true or strstr($text ,"خره بمحمد") == true or strstr($text ,"كسم الله") == true or strstr($text ,"كسم ربك") == true or strstr($text ,"كسربك") == true or strstr($text ,"كسختالله") == true or strstr($text ,"كسخت الله") == true or strstr($text ,"خره بدينك") == true or strstr($text ,"خرهبدينك") == true or strstr($text ,"كسالله") == true or strstr($text ,"خربالله") == true) {
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('SendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرأ عزيزي » [$name20](tg://user?id=$from_id) \n⌔︙ممنوع الكفر في المجمۄعة",'parse_mode'=>"markdown",'disable_web_page_preview'=>true]);
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}}
# taf
if ($settings["lock"]["taf"] == "مقفول"){
if (strstr($text ,"شيعي نكس") == true or strstr($text ,"سني نكس") == true or strstr($text ,"شيعه") == true  or  strstr($text ,"الشيعه") == true or strstr($text ,"السنه") == true or strstr($text ,"طائفتكم") == true or strstr($text ,"شيعي") == true or strstr($text ,"طائفيه") == true or strstr($text ,"انا سني") == true or strstr($text ,"انا شيعي") == true or strstr($text ,"مسيحي") == true or strstr($text ,"يهودي") == true or strstr($text ,"صابئي") == true or strstr($text ,"ملحد") == true or strstr($text ,"بالسنه") == true or strstr($text ,"بالشيعه") == true or strstr($text ,"شيعة") == true) {
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('SendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرأ عزيزي » [$name20](tg://user?id=$from_id) \n⌔︙ممنوع التكلم بالطائفية هنا",'parse_mode'=>"markdown",'disable_web_page_preview'=>true]);
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}}
# farsi
if ($settings["lock"]["farsi"] == "مقفول"){
if (strstr($text ,"ڬ") == true or strstr($text ,"ٺ") == true or strstr($text ,"چ") == true  or  strstr($text ,"ڇ") == true or strstr($text ,"ڿ") == true or strstr($text ,"ڀ") == true or strstr($text ,"ڎ") == true or strstr($text ,"ݫ") == true or strstr($text ,"ژ") == true or strstr($text ,"ڟ") == true or strstr($text ,"ݜ") == true or strstr($text ,"ڸ") == true or strstr($text ,"پ") == true or strstr($text ,"۴") == true or strstr($text ,"مك") == true or strstr($text ,"زدن") == true or strstr($text ,"سكس") == true or strstr($text ,"سكسی") == true or strstr($text ,"كسی") == true or strstr($text ,"دخترا") == true or strstr($text ,"دیوث") == true or strstr($text ,"كلیپشن") == true or strstr($text ,"خوششون") == true or strstr($text ,"میدا") == true or strstr($text ,"كه") == true or strstr($text ,"بدانیم") == true or strstr($text ,"باید") == true or strstr($text ,"زناشویی") == true or strstr($text ,"آموزش") == true) {
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('SendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرأ عزيزي » [$name20](tg://user?id=$from_id) \n⌔︙ممنوع التكلم بالغة الفارسية هنا",'parse_mode'=>"markdown",'disable_web_page_preview'=>true]);
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}}
# getlink
if ($settings["lock"]["getlink"] == "مقفول"){
$getlinkk = $update->message->text;
if($getlinkk == "الرابط"){
if ($tc == 'group' | $tc == 'supergroup'){
bot('SendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙*جلب رابط المجمۄعة معطل*",'parse_mode'=>"markdown",'reply_to_message_id'=>$message_id,]);}}}
# muteall
if ($settings["lock"]["mute_all"] == "مقفول"){
if($update->message){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message->message_id]);}}}
# replay
if ($settings["lock"]["reply"] == "مقفول"){
if($update->message->reply_to_message){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message->message_id]);}}}}
# tgservic
if ($settings["lock"]["tgservic"] == "مقفول"){
if($update->message->new_chat_member | $update->message->new_chat_photo | $update->message->new_chat_title | $update->message->left_chat_member | $update->message->pinned_message){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message->message_id]);}}}}
# text
if ($settings["lock"]["text"] == "مقفول"){
if($update->message->text){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message->message_id]);}}}}
# video note
if ($settings["lock"]["video_msg"] == "مقفول"){
if($update->message->video_note){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message->message_id]);}}}}

if($settings["lock"]["linkk"] == "مقفول"){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
if (strstr($text,"t.me") == true or strstr($text,"telegram.me") == true or strstr($text,"https://") == true or strstr($text,"://") == true or strstr($text,"wWw.") == true or strstr($text,"WwW.") == true or strstr($text,"T.me/") == true or strstr($text,"WWW.") == true or strstr($caption,"t.me") == true or strstr($caption,"telegram.me")) {
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id,]);
bot('kickChatMember',['user_id'=>$from_id,'chat_id'=>$chat_id,]);
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرأ عزيزي » [$first_name](tg://user?id=$from_id) \n⌔︙ممنوع نشر الروابط هنا تم طردك",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,]);}}}

if($settings["lock"]["linkw"] == "مقفول"){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
if (strstr($text,"t.me") == true or strstr($text,"telegram.me") == true or strstr($text,"https://") == true or strstr($text,"://") == true or strstr($text,"wWw.") == true or strstr($text,"WwW.") == true or strstr($text,"T.me/") == true or strstr($text,"WWW.") == true or strstr($text,"https://") == true or strstr($caption,"t.me") == true or strstr($caption,"telegram.me")) {
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id,]);
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرأ عزيزي » [$name20](tg://user?id=$from_id) \n⌔︙ممنوع نشر الروابط هنا",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,]);}}}

if ($settings["lock"]["forwardr"] == "مقفول"){
if($update->message->forward_from || $update->message->forward_from_chat || $update->message->forward_from_chat->is_bot){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message->message_id,]);
bot('restrictChatMember',['user_id'=>$from_id,   'chat_id'=>$chat_id,'can_post_messages'=>false,]);}}}}

if ($settings["lock"]["forwardw"] == "مقفول"){
if($update->message->forward_from || $update->message->forward_from_chat || $update->message->forward_from_chat->is_bot){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message->message_id,]);
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرأ عزيزي » [$name20](tg://user?id=$from_id) \n⌔︙ممنوع اعادة التوجيه هنا",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,]);}}}}

if ($settings["lock"]["userr"] == "مقفول"){
if (strstr($text,"@") == true or strstr($caption,"@") == true) {
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);bot('restrictChatMember',['user_id'=>$from_id,   'chat_id'=>$chat_id,'can_post_messages'=>false,]);}}}

if ($settings["lock"]["userw"] == "مقفول"){
if (strstr($text,"@") == true or strstr($caption,"@") == true) {
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرأ عزيزي » [$name20](tg://user?id=$from_id) \n⌔︙ممنوع نشر المعرفات @ هنا",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,]);}}}}

if($text== "قفل التوجيه بالتقييد" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)){
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل التوجيه بالتقييد \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["forwardr"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings); } } }

if($text== "قفل التوجيه بالتقييد" ){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙*للمشرفين فقط* ",'parse_mode'=>"markdown",'reply_to_message_id'=>$message_id, ]); } } } }

if($text== "فتح التوجيه بالتقييد" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح التوجيه بالتقييد \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["forwardr"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings); } } }

if($text== "فتح التوجيه بالتقييد" ){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙*للمشرفين فقط* ",'parse_mode'=>"markdown",'reply_to_message_id'=>$message_id, ]); } } } }

if($text== "قفل الروابط بالتقييد" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الرۄابط بالتقييد \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["linkr"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings); } } }

if($text== "قفل الروابط بالتقييد" ){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙*للمشرفين فقط* ",'parse_mode'=>"markdown",'reply_to_message_id'=>$message_id, ]); } } } }

if($text== "فتح الروابط بالتقييد" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الرۄابط بالتقييد \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["linkr"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings); } } }

if($text== "فتح الروابط بالتقييد" ){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙*للمشرفين فقط* ",'parse_mode'=>"markdown",'reply_to_message_id'=>$message_id, ]); } } } }

$set = file_get_contents("SudoOrders/set.txt");
$idtext = file_get_contents("sethelp/idtext.txt");
if(in_array($from_id,$Dev)){
if ($text == "تعيين كليشة الايدي" or $text == "تعيين الايدي"){
file_put_contents("SudoOrders/set.txt","setidtext");
bot("sendMessage",[
"chat_id"=>$chat_id,
"text"=>"
💢┇اهلا بك عزيزي [$name](tg://user?id=$from_id)
🗣┇ارسل الكليشه كما في الشكل 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
📋┇الاسم -> #name
📋┇الايدي-> #id
📋┇المعرف-> #username
📋┇الرتبه-> #stast
〽️┇نقاط الالعاب-> #game 
〽️┇الرسائل-> #msgs 
〽️┇الصور-> #photo
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id ,]);}
if($text && $set =="setidtext"){
file_put_contents("sethelp/idtext.txt",$text);
file_put_contents("SudoOrders/set.txt","");
bot("sendmessage",[ "chat_id"=>$chat_id, "text" => "⌔︙تم حفۨظ الكليشة الجديدة", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id ,]);} }

if(in_array($from_id,$Dev)){
if($text == "حذف كليشة الايدي" or $text == "حذف الايدي"){
file_put_contents("sethelp/idtext.txt","");
bot("sendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حذف كليشة الايدي \n ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}}

if ($settings["lock"]["iduser"] == "معطل"){
$iduserr = $update->message->text;
if($iduserr == "ايدي"){
if ($tc == 'group' | $tc == 'supergroup'){
bot('SendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا الايدي مۘعطل", 'reply_to_message_id'=>$message_id, ]);} } }

if($settings["information"]["add"] == "مقفول") {
if($newchatmemberid == true){
$add = $settings["addlist"]["$from_id"]["add"];
$addplus = $add +1;
$settings["addlist"]["{$from_id}"]["add"]="$addplus";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
}
if($settings["information"]["add"] == "مقفول"){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
if ($tc == 'group' | $tc == 'supergroup'){
$youadding = $settings["addlist"]["$from_id"]["add"];
$setadd = $settings["information"]["setadd"];
$addtext = $settings["addlist"]["$from_id"]["addtext"];
$msg = $settings["information"]["lastmsgadd"];
if($youadding < $setadd){
if($addtext == false){
bot('SendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙العضو » [$name](tg://user?id=$from_id)
⌔︙عذرا لاتستطيع التحدث هنا
⌔︙قم باضافة »$setadd عضو للتكلم", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true ]);
bot('deletemessage',[ 'chat_id'=>$chat_id, 'message_id'=>$message_id ]);
bot('deletemessage',[ 'chat_id'=>$chat_id, 'message_id'=>$msg ]);
$msgplus = $message_id + 1;
$settings["information"]["lastmsgadd"]="$msgplus";
$settings["addlist"]["$from_id"]["addtext"]="true";
$settings["addlist"]["$from_id"]["add"]=0;
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('deletemessage',[ 'chat_id'=>$chat_id, 'message_id'=>$message_id ]); } } } } }

$reply = $update->message->reply_to_message;
$asa = json_decode(file_get_contents('added.json'),true);
$get_myid = file_get_contents("data/ids/idset.txt");
$_get_ = file_get_contents("data/ids/id.txt");
$get_ALONE = file_get_contents("data/ids/id_.txt");
$GETGG1ZZ = file_get_contents("data/ids/abs.txt");
$_GG1ZZ_ = explode("\n",$GETGG1ZZ);
$newiddd = $update->message->new_chat_member->id;
if($update->message->new_chat_member and $from_id != $newiddd){
$asa['sss'][$chat_id][$from_id] = ($asa['sss'][$chat_id][$from_id]+1);
file_put_contents('added.json', json_encode($asa));}
if($text == "جهاتيي" or $text == "جهاتي" or $text == "اضافاتي" and $asa['sss'][$chat_id][$from_id] == 0){bot('sendmessage',['chat_id'=>$chat_id,'text'=>"
⌔︙عدد جهاتك المضافة »*".$asa[ sss ][$chat_id][$from_id]."*",
'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id,]);}

if($message and $tc == "supergroup"){
$msgs = json_decode(file_get_contents('msgs.json'),true);
$update = json_decode(file_get_contents('php://input'));
$msgs['msgs'][$chat_id][$from_id] = ($msgs['msgs'][$chat_id][$from_id]+1);
file_put_contents('msgs.json', json_encode($msgs));}

$result = json_decode(file_get_contents("https://api.telegram.org/bot".API_KEY."/getUserProfilePhotos?user_id=$from_id"),true);
$file_id = $result["result"]["photos"][0][0]["file_id"];
$count = $result["result"]["total_count"];
$game = json_decode(file_get_contents('game.json'),true);

$edit = json_decode(file_get_contents('edit.json'),true);
$editMessage = $update->edited_message;
if($editMessage){
$edit['edit'][$chat_edit_id][$edit_for_id] = ($edit['edit'][$chat_edit_id][$edit_for_id]+1);
file_put_contents('edit.json', json_encode($edit));
}
if($edit['edit'][$chat_id][$from_id] == null){
$editt = 0;
}else{
$editt = $edit['edit'][$chat_id][$from_id];
}
if($game['game'][$chat_id][$from_id] == null){
$games = 0;
}else{
$games = $game['game'][$chat_id][$from_id];
}
if($msgs['msgs'][$chat_id][$from_id] == null){
$msgss = 0;
}else{
$msgss = $msgs['msgs'][$chat_id][$from_id];
}
if($asa['sss'][$chat_id][$from_id] == null){
$cont = 0;
}else{
$cont = $asa['sss'][$chat_id][$from_id];
}
if($text == 'تعديلاتي'){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>'⌔︙عدد تعديلاتك »'.$editt.'', ]); }

if(in_array($from_id,$Dev)){
$info = "المطور الاساسي";
}if($status == "creator"){
$info = "المنشئ الاساسي";
}if($status == "administrator"){
$info = "المشرف";
}if(in_array($from_id,$admin_user) ){
$info = "الادمن";
}if(in_array($from_id,$manger) ){
$info = "المدير";
}if(in_array($from_id,$vipmem) ){
$info = "عضو مميز";
}if(in_array($from_id,$developer) ){
$info = "المطور";
}if($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
$info = "فقط عضو";
}
if(in_array($from_id,$Dev)){
$rtbte = "المطور الاساسي";
}if(in_array($from_id,$admin_user) ){
$rtbte = "الادمن";
}if(in_array($from_id,$manger) ){
$rtbte = "المدير";
}if(in_array($from_id,$vipmem) ){
$rtbte = "عضو مميز";
}if(in_array($from_id,$developer) ){
$rtbte = "المطور";
}if(!in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
$rtbte = "فقط عضو";
}
if($status == "creator"){
$mokae = "المنشئ الاساسي";
}if($status == "administrator"){
$mokae = "الادمن";
}if($status !=  creator  && $status !=  administrator){
$mokae = "فقط عضو";
}
if($text=="رتبتي" ){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙رتبتك » $rtbte", 'parse_mode'=>"MARKDOWN", 'reply_to_message_id'=>$message->message_id, ]); }
if($text=="موقعي" ){ bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙موقعك » $mokae", 'parse_mode'=>"MARKDOWN", 'reply_to_message_id'=>$message->message_id, ]); }

if($msgs['msgs'][$chat_id][$from_id] > 8000){
$rate = array("100%",);
$rate1 = array_rand($rate,1);
}elseif($msgs['msgs'][$chat_id][$from_id] > 7000){
$rate = array("97%","90%","99%",);
$rate1 = array_rand($rate,1);
}elseif($msgs['msgs'][$chat_id][$from_id] > 6000){
$rate = array("83%","80%","87%",);
$rate1 = array_rand($rate,1);
}elseif($msgs['msgs'][$chat_id][$from_id] > 3000){
$rate = array("77%","70%",);
$rate1 = array_rand($rate,1);
}elseif($msgs['msgs'][$chat_id][$from_id] > 500){
$rate = array('69%','56%',);
$rate1 = array_rand($rate,1);
}elseif($msgs['msgs'][$chat_id][$from_id] > 200){
$rate = array("40%","43%","39%",);
$rate1 = array_rand($rate,1);
}elseif($msgs['msgs'][$chat_id][$from_id] > 100){
$rate = array("36%","29%",);
$rate1 = array_rand($rate,1);
}elseif($msgs['msgs'][$chat_id][$from_id] > 0){
$rate = array('18%','20%','6%',);
$rate1 = array_rand($rate,1);
}
if(!$username){ $usr = "لايوجد"; }elseif($username){ $usr = "@$username"; }
if($file_id == NULL){
$photo = "⌔︙لا استطيع عرض صورتك لانك قمت بحظر البوت او انك لاتمتلك صوره في بروفايلك";
}
if($msgs['msgs'][$chat_id][$from_id] > 8000){
$active = array("حارك الكروب ",);
$abstfal = array_rand($active,1);
}elseif($msgs['msgs'][$chat_id][$from_id] > 7000){
$active = array("معلك لربك ",);
$abstfal = array_rand($active,1);
}elseif($msgs['msgs'][$chat_id][$from_id] > 6000){
$active = array("جهنم حبي ","نار وشرار ",);
$abstfal = array_rand($active,1);
}elseif($msgs['msgs'][$chat_id][$from_id] > 3000){
$active = array("خوش متفاعل ","اسطورة التفاعل ","الله مال تفاعل ","نايس التفاعل ","قمه التفاعل ",);
$abstfal = array_rand($active,1);
}elseif($msgs['msgs'][$chat_id][$from_id] > 500){
$active = array('متوسط ','متفاعل ',);
$abstfal = array_rand($active,1);
}elseif($msgs['msgs'][$chat_id][$from_id] > 0){
$active = array('ضعيف ',);
$abstfal = array_rand($active,1);
}

$textid = array("id","Id","ايدي","$abssetid");
$idtext = file_get_contents("sethelp/idtext.txt");
if(!$re && in_array($text,$textid) and $idtext == NULL){
$iduser = $settings["lock"]["iduser"];
if ($iduser == "مفعل") {
$idu = file_get_contents("data/$chat_id/idpic.txt");
if($idu == "مفعل"){
$result=json_decode(file_get_contents("https://api.telegram.org/bot".API_KEY."/getUserProfilePhotos?user_id=$from_id"),true);
$file_id=$result["result"]["photos"][0][0]["file_id"];
$count=$result["result"]["total_count"];
var_dump(
bot("sendphoto",[ "chat_id"=>$chat_id, "caption"=>
"
⌔︙ايديك »`$from_id` 
⌔︙معرفك » [$usr] 
⌔︙رتبتك » $info 
⌔︙صورك » $count 
⌔︙رسائلك » $msgss 
⌔︙تفاعلك » $active[$abstfal] $rate[$rate1] 
⌔︙نقاطك » $games
", "photo"=>"$file_id", 'parse_mode'=>'MarkDown','disable_web_page_preview'=>true, 'reply_to_message_id'=>$message->message_id, ])); } }}

$idtext = file_get_contents("sethelp/idtext.txt");
if(!$re && in_array($text,$textid) and $file_id == NULL and $idtext == NULL){
$iduser = $settings["lock"]["iduser"];
if ($iduser == "مفعل"){
$idu = file_get_contents("data/$chat_id/idpic.txt");
if($idu == "مفعل"){
bot("sendmessage",[ "chat_id"=>$chat_id, "text"=>"$photo
⌔︙ايديك »`$from_id`
⌔︙معرفك » [$usr]
⌔︙رتبتك » $info
⌔︙تفاعلك » $active[$abstfal] $rate[$rate1]
⌔︙تعديلاتك » $editt
⌔︙رسائلك » $msgss
⌔︙جهاتك » $cont
⌔︙نقاطك » $games ", 'parse_mode'=>'MarkDown','disable_web_page_preview'=>true, 'reply_to_message_id'=>$message->message_id, ]); }}}

$idtext = file_get_contents("sethelp/idtext.txt");
if(!$re && in_array($text,$textid) and $idtext != NULL){
$iduser = $settings["lock"]["iduser"];
if ($iduser == "مفعل") {
$idu = file_get_contents("data/$chat_id/idpic.txt");
if($idu == "مفعل"){
$result=json_decode(file_get_contents("https://api.telegram.org/bot".API_KEY."/getUserProfilePhotos?user_id=$from_id"),true);
$file_id=$result["result"]["photos"][0][0]["file_id"];
$count=$result["result"]["total_count"];
$idtext = file_get_contents("sethelp/idtext.txt");
$texting = str_replace(["#idgp","#username","#name","#id","#formsg","#game","#photos","#msgs","#rate","#stast","#edit","#cont"],["$chat_id","[$usr]","$first_name","$from_id","$active[$abstfal]","$games","$count","$msgss","$rate[$rate1]","$info","$editt","".$asa[ sss ][$chat_id][$from_id].""],"$idtext");
var_dump(
bot("sendphoto",[ "chat_id"=>$chat_id, "caption"=>"$texting", "photo"=>"$file_id", 'parse_mode'=>'MarkDown','disable_web_page_preview'=>true, 'reply_to_message_id'=>$message->message_id, ])); } }}
$idtext = file_get_contents("sethelp/idtext.txt");
if(!$re && in_array($text,$textid) and $file_id == NULL and $idtext != NULL){
$iduser = $settings["lock"]["iduser"];
if ($iduser == "مفعل"){
$idu = file_get_contents("data/$chat_id/idpic.txt");
if($idu == "مفعل"){
$idtext = file_get_contents("sethelp/idtext.txt");
$texting = str_replace(["#idgp","#username","#name","#id","#formsg","#game","#photos","#msgs","#rate","#stast","#edit","#cont"],["$chat_id","[$usr]","$first_name","$from_id","$active[$abstfal]","$games","$count","$msgss","$rate[$rate1]","$info","$editt","".$asa[ sss ][$chat_id][$from_id].""],"$idtext");
bot("sendmessage",[ "chat_id"=>$chat_id, "text"=>"$texting", 'parse_mode'=>'MarkDown','disable_web_page_preview'=>true, 'reply_to_message_id'=>$message->message_id, ]); }}}

$idtext = file_get_contents("sethelp/idtext.txt");
if(!$re && in_array($text,$textid) and $file_id != NULL and $idtext == NULL){
$iduser = $settings["lock"]["iduser"];
if ($iduser == "مفعل") {
$idu = file_get_contents("data/$chat_id/idpic.txt");
if($idu == "معطل"){
bot("sendmessage",[ "chat_id"=>$chat_id, "text"=>"
⌔︙ايديك »`$from_id` 
⌔︙معرفك » [$usr] 
⌔︙رتبتك » $info 
⌔︙تفاعلك » $active[$abstfal] $rate[$rate1] 
⌔︙صورك » $count 
⌔︙تعديلاتك » $editt 
⌔︙رسائلك » $msgss 
⌔︙جهاتك » ".$asa[ sss ][$chat_id][$from_id]." 
⌔︙نقاطك » $games 
", 'parse_mode'=>'MarkDown','disable_web_page_preview'=>true, 'reply_to_message_id'=>$message->message_id, ]); } }}

$idtext = file_get_contents("sethelp/idtext.txt");
if(!$re && in_array($text,$textid) and $file_id == NULL and $idtext == NULL){
$iduser = $settings["lock"]["iduser"];
if ($iduser == "مفعل"){
$idu = file_get_contents("data/$chat_id/idpic.txt");
if($idu == "معطل"){
bot("sendmessage",[ "chat_id"=>$chat_id, "text"=>"⌔︙معرفك »[$usr]
⌔︙ايديك » `$from_id`
⌔︙رتبتك » $info
⌔︙تفاعلك » $active[$abstfal] $rate[$rate1] 
⌔︙تعديلاتك » $editt 
⌔︙رسائلك » $msgss 
⌔︙جهاتك » ".$asa[ sss ][$chat_id][$from_id]." 
⌔︙نقاطك » $games 
", 'parse_mode'=>'MarkDown','disable_web_page_preview'=>true, 'reply_to_message_id'=>$message->message_id, ]); }}}

$idtext = file_get_contents("sethelp/idtext.txt");
if(!$re && in_array($text,$textid) and $file_id != NULL and $idtext != NULL){
$iduser = $settings["lock"]["iduser"];
if ($iduser == "مفعل") {
$idu = file_get_contents("data/$chat_id/idpic.txt");
if($idu == "معطل"){
$idtext = file_get_contents("sethelp/idtext.txt");
$texting = str_replace(["#idgp","#username","#name","#id","#formsg","#game","#photos","#msgs","#rate","#stast","#edit","#cont"],["$chat_id","[$usr]","$first_name","$from_id","$active[$abstfal]","$games","$count","$msgss","$rate[$rate1]","$info","$editt","".$asa[ sss ][$chat_id][$from_id].""],"$idtext");
bot("sendmessage",[ "chat_id"=>$chat_id, "text"=>"$texting", 'parse_mode'=>'MarkDown','disable_web_page_preview'=>true, 'reply_to_message_id'=>$message->message_id, ]); } }}
$idtext = file_get_contents("sethelp/idtext.txt");
if(!$re && in_array($text,$textid) and $file_id == NULL and $idtext != NULL){
$iduser = $settings["lock"]["iduser"];
if ($iduser == "مفعل"){
$idu = file_get_contents("data/$chat_id/idpic.txt");
if($idu == "معطل"){
$idtext = file_get_contents("sethelp/idtext.txt");
$texting = str_replace(["#idgp","#username","#name","#id","#formsg","#game","#photos","#msgs","#rate","#stast","#edit","#cont"],["$chat_id","[$usr]","$first_name","$from_id","$active[$abstfal]","$games","$count","$msgss","$rate[$rate1]","$info","$editt","".$asa[ sss ][$chat_id][$from_id].""],"$idtext");
bot("sendmessage",[ "chat_id"=>$chat_id, "text"=>"$texting", 'parse_mode'=>'MarkDown','disable_web_page_preview'=>true, 'reply_to_message_id'=>$message->message_id, ]); }}}

if($text=="صورتي"){
$a = json_decode(file_get_contents("https://api.telegram.org/bot".API_KEY."/getuserprofilephotos?user_id=".$from_id));
$b = objectToArrays($a);
$c = $b["ok"];
$d = $b["result"];
$e = $d["total_count"];
$f = $d["photos"][0][0]["file_id"];
if($e == 0){
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙انت لا تمتلك صورة شخصية",'reply_to_message_id'=>$message->message_id, ]); }
else{
if($e != 0){
bot("sendphoto",[ "chat_id"=>$chat_id, "caption"=>"⌔︙في حسابك ( $e ) من الصور‌‏", "photo"=>"$file_id", 'reply_to_message_id'=>$message->message_id, ]); } } }

if(strpos($text, "صورتي") !== false){
$n = str_replace("صورتي ", "", $text);
$a = json_decode(file_get_contents("https://api.telegram.org/bot".API_KEY."/getuserprofilephotos?user_id=".$from_id));
$b = objectToArrays($a);
$c = $b["ok"];
$d = $b["result"];
$e = $d["total_count"];
$f = $d["photos"][$n-1][0]["file_id"];
if($e == 0){
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙انت لا تمتلك صورة شخصية",'reply_to_message_id'=>$message->message_id, ]); }
else{
if($n <= $e){
bot('sendphoto',[ 'chat_id'=>$chat_id, 'photo'=>$f, 'caption'=>"⌔︙صورتك رقم ( $n )",'reply_to_message_id'=>$message->message_id, ]); }
else{ bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙انت لا تمتلك اكثر من ( $n ) صور",'reply_to_message_id'=>$message->message_id, ]); } } }

$repic = json_decode(file_get_contents("https://api.telegram.org/bot$API_KEY/getUserProfilePhotos?user_id=".$re_id),true);
$file_id = $repic["result"]["photos"][0][0]["file_id"];
$count = $repic["result"]["total_count"];
if(in_array($re_id,$Dev)){
$kshfre = "المطور الاساسي";
}elseif(in_array($re_id,$admin_user) ){
$kshfre = "الادمن";
}elseif(in_array($re_id,$manger) ){
$kshfre = "المدير";
}elseif(in_array($re_id,$vipmem) ){
$kshfre = "عضو مميز";
}elseif(in_array($re_id,$developer) ){
$kshfre = "المطور";
}elseif($statusrt == "creator"){
$kshfre = "المنشئ الاساسي";
}elseif($statusrt == "administrator"){
$kshfre = "الادمن";
}elseif($statusrt != creator && $statusrt != administrator && !in_array($re_id,$Dev) && !in_array($re_id,$manger) && !in_array($re_id,$admin_user) && !in_array($re_id,$vipmem) && !in_array($re_id,$developer) ){
$kshfre = "فقط عضو";
}
$textkshf = array("id","Id","ايدي","كشف","$abssetid");
if($reply and in_array($text,$textkshf)){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اسمه »$re_name
⌔︙معرفه »[@$re_user]
⌔︙ايديه »$re_id
⌔︙صوره »$count
⌔︙رتبته »$kshfre
⌔︙نوع الكشف »بالرد", 'parse_mode'=>'MarkDown','disable_web_page_preview'=>true,'reply_to_message_id'=>$message->message_id, ]); }

if( $text == "تفاعلي" || $text == "نسبه تفاعلي" or $text == "نسبة تفاعلي"){
bot("SendMessage",[ 'chat_id'=>$chat_id, 'text'=>"⌔︙تفاعلك »$active[$abstfal]
⌔︙النسبه »$rate[$rate1]", 'reply_to_message_id'=>$message->message_id, ]); }

if($text == "اسمي" || $text == "اسميي"){ bot("SendMessage",[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اسمك »$first_name", 'reply_to_message_id'=>$message->message_id, ]); }
if($text == "معرفي" || $text == "يوزري"){ bot("SendMessage",[ 'chat_id'=>$chat_id, 'text'=>"⌔︙مۘعرفك »$usr", 'reply_to_message_id'=>$message->message_id, ]); }

if(in_array($re,$Dev)){
$infobot = "المطور الاساسي";
}elseif(in_array($re_id,$admin_user) ){
$infobot = "الادمن";
}elseif(in_array($re_id,$manger) ){
$infobot = "المدير";
}elseif(in_array($re_id,$vipmem) ){
$infobot = "عضو مميز";
}elseif(in_array($re_id,$developer) ){
$infobot = "المطور";
}elseif(!in_array($re_id,$Dev) && !in_array($re_id,$manger) && !in_array($re_id,$admin_user) && !in_array($re_id,$vipmem) && !in_array($re_id,$developer) ){
$infobot = "فقط عضو";
}
if($statusrt == "creator"){
$infogp = "المنشئ الاساسي";
}elseif($statusrt == "administrator"){
$infogp = "الادمن";
}elseif($statusrt != creator && $statusrt != administrator){
$infogp = "فقط عضو";
}
if($rt and $text == "الرتبه" || $text == "رتبته" or $text == "الرتبة" or $text == "رتبتة"){
bot("SendMessage",[ 'chat_id'=>$chat_id, 'text'=>"⌔︙رتبته بالبوت »$infobot
⌔︙رتبته بالكروب »$infogp ", 'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id, ]); }

$kshf_by_id = str_replace("كشف ","$kshf_by_id",$text);
if($text == "كشف $kshf_by_id"){
$dets = json_decode(file_get_contents("http://api.telegram.org/bot".API_KEY."/getChat?chat_id=$kshf_by_id"));
$absname =$dets->result->first_name;
$absid =$dets->result->id;
$absuser =$dets->result->username;
$get = file_get_contents("https://api.telegram.org/bot$API_KEY/getChatMember?chat_id=$chat_id&user_id=".$kshf_by_id);
$kshfid = json_decode($get, true);
$re_ru = $kshfid['result']['status'];
$result = json_decode(file_get_contents("https://api.telegram.org/bot$API_KEY/getUserProfilePhotos?user_id=$kshf_by_id"),true);
$file_id = $result["result"]["photos"][0][0]["file_id"];
$count = $result["result"]["total_count"];
if(in_array($re_ru,$Dev)){
$kshfid = "المطور الاساسي";
}elseif(in_array($re_ru,$admin_user) ){
$kshfid = "الادمن";
}elseif(in_array($re_ru,$manger) ){
$kshfid = "المدير";
}elseif(in_array($re_ru,$vipmem) ){
$kshfid = "عضو مميز";
}elseif(in_array($re_ru,$developer) ){
$kshfid = "المطور";
}elseif($re_ru == "creator"){
$kshfid = "المنشئ الاساسي";
}elseif($re_ru == "administrator"){
$kshfid = "الادمن";
}elseif($re_ru != creator && $re_ru != administrator && !in_array($re_ru,$Dev) && !in_array($re_ru,$manger) && !in_array($re_ru,$admin_user) && !in_array($re_ru,$vipmem) && !in_array($re_ru,$developer)){
$kshfid = "فقط عضو";
}
bot('sendMessage', [ 'chat_id'=>$chat_id, 'text'=>"⌔︙اسمه »$absname
⌔︙معرفه »@$absuser
⌔︙ايديه »$absid
⌔︙صوره »$count
⌔︙رتبته »$kshfid
⌔︙نوع الكشف »بالايدي", 'reply_to_message_id'=>$message->message_id, ]); }
# kickme
if ($settings["lock"]["kickme"] == "مقفول"){
$KickmeText = $update->message->text;
if($KickmeText == "اطردني"){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('SendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا هذه الخاصية معطلة ", 'reply_to_message_id'=>$message_id, ]); } } } }
# game
if($settings["lock"]["game"] == "مقفول"){
if($update->message->game){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',[ 'chat_id'=>$chat_id, 'message_id'=>$message_id ]); } } } }

$henare = array("لكك جرجف احترم اسيادكك لا اكتلكك وازربب على كبركك،💩🖐🏿","هشش فاشل لتضل تمسلت لا اخربط تضاريس وجهك جنه ابط عبده، 😖👌🏿","دمشي لك ينبوع الفشل مو زين ملفيك ونحجي وياك هي منبوذ 😏🖕🏿","ها الغليض التفس ابو راس المربع متعلملك جم حجايه وجاي تطكطكهن علينه دبطل😒🔪","حبيبي راح احاول احترمكك هالمره بلكي تبطل حيونه، 🤔🔪");
$rehena = array_rand($henare, 1);
if($reply and !in_array($re_id,$Dev)){
if($text == "هينه" or $text == "بعد هينه" or $text == "هينه بعد" or $text == "هينها" or $text == "هينهه" or $text == "رزله" or $text == "رزلها" or $text == "رزلهه"){
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"صارر ستاذيي 🏃🏻‍♂️♥️", 'reply_to_message_id'=>$message->message_id, ]);
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"$henare[$rehena]",'parse_mode'=>"MARKDOWN", 'reply_to_message_id'=>$message->reply_to_message->message_id ]); } }

if($reply and in_array($re_id,$Dev)){
if($text == "هينه" or $text == "بعد هينه" or $text == "هينه بعد" or $text == "هينها" or $text == "هينهه" or $text == "رزله" or $text == "رزلها" or $text == "رزلهه"){
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"دي لكك تريد اهينن تاج راسكك؟😏🖕🏿",'parse_mode'=>"MARKDOWN", 'reply_to_message_id'=>$message->reply_to_message->message_id ]); } }

$boshre = array("مواححح افيش عافيههه😍🔥💗","امممووااهحح شهلعسل🥺🍯💘","مواححح،ءوفف اذوب🤤💗");
$rebosh = array_rand($boshre, 1);
if($reply and !in_array($re_id,$Dev)){
if($text == "بوسه" or $text == "بعد بوسه" or $text == "بوسه بعد" or $text == "بوسها" or $text == "بوسهه" or $text == "ضل بوس" or $text == "بعد بوسها" or $text == "بوسها بعد"){
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"صارر ستاذيي 🏃🏻‍♂️♥️", 'reply_to_message_id'=>$message->message_id, ]);
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"$boshre[$rebosh]",'parse_mode'=>"MARKDOWN", 'reply_to_message_id'=>$message->reply_to_message->message_id ]); } }

if($reply and in_array($re_id,$Dev)){
if($text == "بوسه" or $text == "بعد بوسه" or $text == "بوسه بعد" or $text == "بوسها" or $text == "بوسهه" or $text == "ضل بوس" or $text == "بعد بوسها" or $text == "بوسها بعد"){
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"مواححح احلاا بوسةة المطوريي😻🔥💗",'parse_mode'=>"MARKDOWN", 'reply_to_message_id'=>$message->reply_to_message->message_id ]); } }

$sehare = array("تتعال ححب محتاجيك🙂🍭","تعال يولل استاذكك ايريدككك😒🔪","يمعوود تعاال يريدوكك🤕♥️","تعال لكك ديصيحوك😐🖤");
$reseha = array_rand($sehare, 1);
if($reply and !in_array($re_id,$Dev)){
if($text == "صيحه" or $text == "صحيها" or $text == "صيحهه" or $text == "صيحو"){
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"صارر ستاذيي 🏃🏻‍♂️♥️", 'reply_to_message_id'=>$message->message_id, ]);
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"$sehare[$reseha]",'parse_mode'=>"MARKDOWN", 'reply_to_message_id'=>$message->reply_to_message->message_id ]); } }

if($reply and in_array($re_id,$Dev)){
if($text == "صيحه" or $text == "صحيها" or $text == "صيحهه" or $text == "صيحو"){
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"تعال مطوريي محتاجيكك🏃🏻‍♂️♥️",'parse_mode'=>"MARKDOWN", 'reply_to_message_id'=>$message->reply_to_message->message_id ]); } }

mkdir("data/kickme");
$absmessage = $message->message_id;
$Kickmetxt = file_get_contents("data/$chat_id/kickme.txt");
$iku = file_get_contents("data/$chat_id/iku.txt");
if ($text =="اطردني" or $text == "ادفرني" and $from_id != $DevId){
if ($settings["lock"]["kickme"] == "مفتوح"){
file_put_contents("data/$chat_id/kickme.txt","yes");
file_put_contents("data/$chat_id/iku.txt",$from_id);
bot("sendMessage",[ "chat_id"=>$chat_id, "text"=>"⌔︙هل انت متأكد من المغادرة
⌔︙ارسل { نعم } ليتم الامر
⌔︙ارسل { لا } لالغاء الامر ", 'parse_mode'=>"HTML", 'reply_to_message_id'=>$absmessage, ]); } }
if($text == "نعم" && $Kickmetxt =="yes" and $from_id == $iku){ file_put_contents("kickme.txt","");
$getlink = file_get_contents("https://api.telegram.org/bot$token/exportChatInviteLink?chat_id=$chat_id");
$jsonlink = json_decode($getlink, true);
$getlinkde = $jsonlink['result'];
bot('KickChatMember',[ 'chat_id'=>$chat_id, 'user_id'=>$from_id, ]);
bot('sendmessage',[ 'chat_id'=>$from_id, 'text'=>"⌔︙رابط المجموعه التي تم طردك منها \n$getlinkde", ]);
bot("sendmessage",[ "chat_id"=>$chat_id, "text"=>"⌔︙تم طردك من المجمۄعة", 'parse_mode'=>"HTML", "reply_to_message_id"=>$absmessage, ]);
file_put_contents("data/kickme/$chat_id.txt",$from_id . "\n" , FILE_APPEND);
}
if($text == "لا" && $Kickmetxt =="yes" and $from_id == $iku){
file_put_contents("kickme.txt","");
bot("sendmessage",[ "chat_id"=>$chat_id, "text"=>"⌔︙تم الغاء الامر لن اطردك ", 'parse_mode'=>"HTML", "reply_to_message_id"=>$absmessage, ]); }

if ($text =="اطردني" and $from_id == $DevId){
bot("sendMessage",[ "chat_id"=>$chat_id, "text"=>"⌔︙لا استطيع طرد المطورين", 'parse_mode'=>"HTML", 'reply_to_message_id'=>$absmessage, ]); }

if ($text =="اطردني" and $status == 'administrator'){
bot("sendMessage",[ "chat_id"=>$chat_id, "text"=>"⌔︙لا استطيع طرد المشرفين ", 'parse_mode'=>"HTML", 'reply_to_message_id'=>$absmessage, ]); }

if($from_id != $DevId){
if ($text =="اطردني" and $status == 'craetor'){
bot("sendMessage",[ "chat_id"=>$chat_id, "text"=>"⌔︙لا استطيع طرد المنشئ الاساسيين", 'parse_mode'=>"HTML", 'reply_to_message_id'=>$absmessage, ]); } }

if($status == "member"){
if ($text =="اطردني" and in_array($from_id,$vipmem)){
bot("sendMessage",[ "chat_id"=>$chat_id, "text"=>"⌔︙لا استطيع طرد المميزين", 'parse_mode'=>"HTML", 'reply_to_message_id'=>$absmessage, ]); } }

if ($text =="اطردني" and in_array($from_id,$admin_user)){
bot("sendMessage",[ "chat_id"=>$chat_id, "text"=>"⌔︙لا استطيع طرد الادمنيه", 'parse_mode'=>"HTML", 'reply_to_message_id'=>$absmessage, ]); }

if ($text =="اطردني" and in_array($from_id,$manger)){
bot("sendMessage",[ "chat_id"=>$chat_id, "text"=>"⌔︙لا استطيع طرد المشرفين ", 'parse_mode'=>"HTML", 'reply_to_message_id'=>$absmessage, ]); }

date_default_timezone_set('Asia/Baghdad');
$as = date('i')+30; # وقت تقييد التكرار
mkdir("data/$chat_id");
mkdir("data/$chat_id/spam");
if($status == "creator" || $status == "administrator" || in_array($from_id,$Dev) || in_array($from_id,$manger) || in_array($from_id,$developer) ) {
if(strpos($text,"ضع تكرار") !== false or strpos($text,"وضع تكرار") !== false){
$spamx = str_replace(["ضع تكرار ","وضع تكرار "],"",$text);
if(is_numeric($spamx)){
if($spamx > 0){
file_put_contents("data/$chat_id/spam/spamxe.txt",$spamx);
file_put_contents("data/$chat_id/spam/tim.txt",$as);
var_dump(bot('sendMessage',[
'chat_id' => $chat_id,
'text' =>"⌔︙تم وضع التكرار
⌔︙للعدد ( $spamx ) في المجموعة",
'parse_mode'=>"markdown",'disable_web_page_preview'=>true,
'reply_to_message_id' => $message->message_id,
]));
}}}}
$weplus = 1;
$timex = date("Y-m-d-h-i-A");
$timex = str_replace("am", "", $timex);
$NBots = file_get_contents("data/$chat_id/spam/$from_id/$timex.txt");
$timex_spam = $NBots + 1;
mkdir("data/$chat_id/spam/$from_id");
file_put_contents("data/$chat_id/spam/$from_id/$timex.txt",$timex_spam);
$tkrar = file_get_contents("data/$chat_id/spam/$from_id/$timex.txt");
$nomtkrar = file_get_contents("data/$chat_id/spam/spamxe.txt");
if($settings["lock"]["spam"] == "مقفول️"){
if($tkrar >=$nomtkrar) {
var_dump(bot('restrictChatMember',[
'user_id'=>$from_id,
'chat_id'=>$chat_id,
'can_post_messages'=>false,
'until_date'=>time()+$weplus*1600,
]));
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙العضو »[$name20](tg://user?id=$from_id) \n⌔︙قام بالتكرار المحدد تم تقييده \n ✓",'parse_mode'=>"markdown",
]);}}
# location
if ($settings["lock"]["location"] == "مقفول"){
if($update->message->location){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
bot('deletemessage',[ 'chat_id'=>$chat_id, 'message_id'=>$message_id ]); } } } }

function check_filter($str){
global $filterget;
foreach($filterget as $d){
if (mb_strpos($str, $d) !== false) {
return true;
}
}
}

if($settings["filterlist"] != false){
if ($status != 'creator' && $status != 'administrator' ) {
$check = check_filter("$text");
if ($check == true) {
bot('deletemessage',[ 'chat_id'=>$chat_id, 'message_id'=>$message_id, ]); } } }

if(in_array($from_id,$Dev)){
$info = "المطور";
}if($status == "creator"){
$info = "المنشئ الاساسي";
}if($status == "administrator"){
$info = "المشرف";
}if(in_array($from_id,$admin_user) ){
$info = "الادمن";
}if(in_array($from_id,$manger) ){
$info = "المدير";
}if(in_array($from_id,$vipmem) ){
$info = "عضو مميز";
}if(in_array($from_id,$developer) ){
$info = "المطور";
}if($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
$info = "فقط عضو";
}
if(!$username){
$usr = "لايوجد";
}elseif($username){
$usr = "@$username";
}

if($text =="قائمة المنع" or $text =="قائمه المنع"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$filter = $settings["filterlist"];
for($z = 0;$z <= count($filter)-1;$z++){
$result = $result.$filter[$z]."\n";
}
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙قائمة الكلمات الممنوعة » ⤈
$result", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]);}}

elseif (strpos($text , "فلتر") !== false or strpos($text , "امنع") !== false) {
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
$text1 = str_replace(['امنع','فلتر'],'',$text);
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙الكلمة ( *$text1* ) تم منعها
⌔︙في المجموعة ",'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]);
$settings = json_decode(file_get_contents("data/$chat_id/$chat_id.json"),true);
$settings["filterlist"][]="$text1";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif (strpos($text  , "الغاء منع") !== false) {
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)){
$textalmna = str_replace(['الغاء منع'],'',$text);
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙الكلمة ( *$textalmna* ) تم الغاء منعها
⌔︙في المجموعة ",'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]);
$settings = json_decode(file_get_contents("data/$chat_id/$chat_id.json"),true);
$key = array_search($textalmna,$settings["filterlist"]);
unset($settings["filterlist"][$key]);
$settings["filterlist"] = array_values($settings["filterlist"]);
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
}

elseif($text =="حذف قائمه المنع" or $text =="حذف قائمة المنع" or $text =="مسح قائمه المنع" or $text =="مسح قائمة المنع"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حذف قائمة المنع \n ✓", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]);
$settings = json_decode(file_get_contents("data/$chat_id/$chat_id.json"),true);
unset($settings["filterlist"]);
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

if($settings["information"]["step"] == "setrules"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {if ($tc == 'group' | $tc == 'supergroup'){
$plus = mb_strlen("$text ");
if($plus < 600) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم وضع قوانين المجموعة \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["information"]["rules"]="$text";
$settings["information"]["step"]="none";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙لا يمكنك وضع اكثر من ( 600 ) حرف", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } } }

if($settings["information"]["lockchannel"] == "مقفول"){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
if ($tc == 'group' | $tc == 'supergroup'){
$usernamechannel = $settings["information"]["setchannel"];
$forchannel = json_decode(file_get_contents("https://api.telegram.org/bot".$token."/getChatMember?chat_id=".$usernamechannel."&user_id=".$from_id));
$tch = $forchannel->result->status;
if($tch != 'member' && $tch != 'creator' && $tch != 'administrator'){
$msg = $settings["information"]["lastmsglockchannel"];
$channeltext = $settings["channellist"]["$from_id"]["channeltext"];
if($channeltext == false){
bot('SendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙العضو » [$name](tg://user?id=$from_id)
⌔︙عذرا لاتستطيع التحدث هنا
⌔︙قم بالاشتراك قي قناة المجمۄعة لتتمكن من التحدث في هذه المجموعه
⌔︙القناة » { [$usernamechannel] }", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true,
'reply_markup'=>json_encode([
'inline_keyboard'=>[
[['text'=>"⌔︙ أّلَقِنااة ︙⌔",'url'=>"t.me/$usernamechannel"]],]])]);
bot('deletemessage',[ 'chat_id'=>$chat_id, 'message_id'=>$message_id ]);
bot('deletemessage',[ 'chat_id'=>$chat_id, 'message_id'=>$msg ]);
$msgplus = $message_id + 1;
$settings["information"]["lastmsglockchannel"]="$msgplus";
$settings["channellist"]["$from_id"]["channeltext"]="true";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('deletemessage',[ 'chat_id'=>$chat_id, 'message_id'=>$message_id ]); } } } } }

if($settings["information"]["step"] == "setchannel"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {if ($tc == 'group' | $tc == 'supergroup'){
if(strpos($text  , '@') !== false) {
$plus = mb_strlen("$text ");
if($plus < 25) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم وضع » @$text \n⌔︙ارسل ( تفعيل اشتراك المجموعه ) وتاكد من رفع البوت ادمن في القناة\n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["information"]["setchannel"]="$text ";
$settings["information"]["step"]="none";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙المعرف غير صحيح", 'reply_to_message_id'=>$message_id,   ]); } }
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙خطأ يجب ان تضع @ للمعرف  ", 'reply_to_message_id'=>$message_id, ]); } } } }

if($settings["information"]["step"] == "setwelcome"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {if ($tc == 'group' | $tc == 'supergroup'){
$plus = mb_strlen("$text ");
if($plus < 200) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙تم تعيين الترحيب الجديد
⌔︙الترحيب الجديد هو :
$text ",'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["information"]["textwelcome"]="$text ";
$settings["information"]["step"]="none";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>" ⌔︙لا يمكنك وضع اكثر من ( 200 ) حرف ",'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]); } } } }

elseif ($tc == 'private'){
if(in_array($from_id, $user["banlist"])) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"لقد تم حظرك من البوت", 'reply_markup'=>json_encode(['KeyboardRemove'=>[ ],'remove_keyboard'=>true ]) ]); } }

elseif ($tc == 'group' | $tc == 'supergroup'){
if(in_array($from_id, $user["banlist"])) {
bot('KickChatMember',[ 'chat_id'=>$chat_id, 'user_id'=>$from_id ]); } }

if($text  == "تفعيل الاعضاء" or $text  == "تفعيل اضافه الاعضاء" or $text  == "تفعيل اضافة الاعضاء"){
if ($tc == 'group' | $tc == 'supergroup'){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
$setadd = $settings["information"]["setadd"];
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تفعيل اضافة الاعضاء", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["information"]["add"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); }   }}}

elseif($text  == "تعطيل الاعضاء" or $text  == "تعطيل اضافه الاعضاء" or $text  == "تعطيل اضافة الاعضاء"){
if ($tc == 'group' | $tc == 'supergroup'){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
$setadd = $settings["information"]["setadd"];
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تعطيل اضافة الاعضاء \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["information"]["add"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]);   }       }}}

elseif (strpos($text  , 'وضع عدد الاضافه') !== false or strpos($text  , 'وضع الاعضاء') !== false ) {
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
$code = str_replace(['وضع عدد الاضافه ','وضع الاعضاء '],'',$text );
if($code <= 20 && $code >= 1){
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم وضع عدد الاضافه » *$code* \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]);
$settings["information"]["setadd"]="$code";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙لا يمكنك وضع اكثر من ( 20 ) عضو", 'reply_to_message_id'=>$message_id, 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, ]);  }}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]);   }       }}

if($text =="قفل الروابط" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الرۄابط بنجاح \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["link"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="فتح الروابط" or $text =="فتح روابط"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الرۄابط بنجاح \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["link"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

if($text =="قفل الاونلاين" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الاۄنلاين بنجاح \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["inline"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="فتح الاونلاين" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الاۄنلاين بنجاح \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["inline"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

if($text =="تعطيل اطردني" or $text =="تعطيل ادفرني"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تعطيل امر اطردني \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["kickme"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="تفعيل اطردني" or $text =="تفعيل ادفرني"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تفعيل امر اطردني", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["kickme"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

if($text =="تعطيل الرابط" or $text =="تعطيل جلب الرابط"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تعطيل رابط المجمۄعة \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["getlink"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="تفعيل الرابط" or $text =="تفعيل جلب الرابط"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تفعيل رابط المجمۄعة", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["getlink"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

if($text =="قفل الانكليزيه" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الانكليزيه بنجاح \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["en"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="فتح الانكليزيه" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الانكليزيه بنجاح \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["en"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="قفل الصور" or $text =="قفل صور"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الصۄر بنجاح \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["photo"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="فتح الصور" or $text =="فتح صور"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الصۄر بنجاح \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]);
$settings["lock"]["photo"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="قفل الملصقات المتحركة" or $text =="قفل الملصقات المتحركه"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الملصقات المتحركة \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["is_sticker"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="فتح الملصقات المتحركة" or $text =="فتح الملصقات المتحركه"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الملصقات المتحركة \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]);
$settings["lock"]["is_sticker"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="تفعيل الردود" or $text =="تفعيل ردود البوت" or $text =="تفعيل ردود المطور"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تفعيل ردود المطور", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["rdodsg"]="مفعله";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="تعطيل الردود" or $text =="تعطيل ردود البوت" or $text =="تفعيل ردود المطور"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تعطيل ردود المطور", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]);
$settings["lock"]["rdodsg"]="معطله";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="قفل المتحركة" or $text =="قفل المتحركه"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل المتحركة بنجاح \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]);
$settings["lock"]["gif"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>" ⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل ", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="فتح المتحركة" or $text =="فتح المتحركه"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح المتحركة بنجاح \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["gif"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="قفل الماركداون" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الماركداون بنجاح \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]);
$settings["lock"]["markdown"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>" ⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل ", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="فتح الماركداون" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الماركداون بنجاح \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["markdown"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="قفل العربيه" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل العربية بنجاح \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]);
$settings["lock"]["ar"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>" ⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل ", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="فتح العربيه" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح العربية بنجاح \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, ]);
$settings["lock"]["ar"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="قفل الملفات" or $text =="قفل ملفات"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الملفآټ بنجاح \n ✓", 'parse_mode'=>"markdown",'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]);
$settings["lock"]["document"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else { bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]); } } }

elseif($text =="فتح الملفات" or $text =="فتح ملفات"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الملفآټ بنجاح \n ✓", 'reply_to_message_id'=>$message_id, 'reply_markup'=>$inlinebutton, ]);
$settings["lock"]["document"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,
'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل الفيديو" or $text =="قفل فيديو"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الفيديۄ بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["video"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح الفيديو" or $text =="فتح فيديو"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الفيديۄ بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["video"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل التعديل" or $text =="قفل تعديل"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل التعديل بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["edit"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح التعديل" or $text =="فتح تعديل"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح التعديل بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["edit"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل الالعاب" or $text =="قفل العاب"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الالعاب بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["game"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح الالعاب" or $text =="فتح العاب"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الالعاب بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["game"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل المواقع" or $text =="قفل الموقع"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل المۄاقع بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["location"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل ",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح المواقع" or $text =="فتح الموقع"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح المۄاقع بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["location"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل الجهات" or $text =="قفل جهات"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الجهات بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["contact"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح الجهات" or $text =="فتح جهات"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الجهات بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["contact"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل تعديل الميديا" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل تعديل الميديا \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["editmd"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح تعديل الميديا" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح تعديل الميديا \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["editmd"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل التاك" or $text =="قفل الهاشتاك"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الهاشتاك بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["tag"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح التاك" or $text =="فتح الهاشتاك"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الهاشتاك بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["tag"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل المعرفات" or $text =="قفل المعرف"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل المعرف بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["username"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح المعرفات" or $text =="فتح المعرف"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح المعرف بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["username"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل الصوت" or $text =="قفل الموسيقى"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الصۄت بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["audio"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح الصوت" or $text =="فتح صوت"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الصۄت بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["audio"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل الرد" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الرد بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["reply"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح الرد" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الرد بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["reply"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل الاشعارات" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الاشعارات بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["tgservic"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح الاشعارات" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الاشعارات بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["tgservic"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل بصمة الفيديو" or $text =="قفل بصمه الفيديو"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل بصمات الفيديو \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["video_msg"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح بصمة الفيديو" or $text =="فتح بصمه الفيديو"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح بصمات الفيديو \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["video_msg"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif ($text  == "قفل البوتات" or $text  == "قفل بوتات" or $text  == "قفل البوت") {
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل البوتات بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["bot"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif ($text  == "فتح البوتات" or $text  == "فتح بوتات"  or $text  == "فتح البوت") {
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح البوتات بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["bot"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

if($text =="تعطيل الاشتراك الاجباري"){
if (in_array($from_id,$Dev)){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تعطيل الاشتراك الاجباري",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
file_put_contents("SudoOrders/setchannel.txt","الاشتراك الاجباري معطل");}}

if($text =="تفعيل الاشتراك الاجباري"){
if (in_array($from_id,$Dev)){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تفعيل الاشتراك الاجباري",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
file_put_contents("SudoOrders/setchannel.txt","الاشتراك الاجباري مفعل");}}

if($text == "تفعيل اشتراك المجموعه"){
if ($tc == 'group' | $tc == 'supergroup'){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تفعيل الاشتراك الاجباري \n⌔︙للمجموعة » $namegroup \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["information"]["lockchannel"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}}

elseif($text == "تعطيل اشتراك المجموعه"){
if ($tc == 'group' | $tc == 'supergroup'){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تعطيل الاشتراك الاجباري \n⌔︙للمجموعة » $namegroup \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["information"]["lockchannel"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}}

elseif(strpos($text  , 'وضع قناة') !== false or strpos($text  , 'اضف قناة') !== false or strpos($text  , 'ضع قناة') !== false) {
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
$code = $num = str_replace(['وضع قناة ','اضف قناة','ضع قناة'],'',$text );
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم وضع » *$code* \n⌔︙المطور ︙ ⌔ارسل ( تفعيل اشتراك المجموعه ) وتاكد من رفع البوت ادمن في القناة\n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["information"]["setchannel"]="$code";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif( $text =="قفل الايدي" or $text == "تعطيل الايدي"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تعطيل الايدي بنجاح",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["iduser"]="معطل";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح الايدي" or $text == "تفعيل الايدي"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تفعيل الايدي بنجاح",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["iduser"]="مفعل";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

$textaid = array("تعطيل الايدي بالصوره","$abssetaid","تعطيل ايدي بالصوره");
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
if(in_array($text,$textaid)){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تعطيل الايدي بالصوره",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
file_put_contents("data/$chat_id/idpic.txt","معطل");
}}
$textfid = array("تفعيل الايدي بالصوره","$abssetfid","تفعيل ايدي بالصوره");
if(in_array($text,$textfid)){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تفعيل الايدي بالصوره",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
file_put_contents("data/$chat_id/idpic.txt","مفعل");
}}

if(in_array($from_id,$Dev) or in_array($from_id,$developer)) {
if($text == "تعطيل البوت الخدمي"){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [المطور](tg://user?id=$from_id) \n⌔︙تم تعطيل البوت الخدمي",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
}}

if($text == "تفعيل البوت الخدمي"){
if(in_array($from_id,$Dev) or in_array($from_id,$developer)) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [المطور](tg://user?id=$from_id) \n⌔︙تم تفعيل البوت الخدمي",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
}}

if($text =="قفل البصمات" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل البصمات بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["voice"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح البصمات" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح البصمات بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["voice"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل الملصقات" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الملصقات بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["sticker"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح الملصقات" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الملصقات بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["sticker"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل التوجيه" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل التوجيه بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["forward"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}
elseif($text =="فتح التوجيه" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح التوجيه بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["forward"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل الفشار"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الفشار بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["fshar"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح الفشار"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الفشار بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["fshar"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل الكفر"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الكفر بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["kaf"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح الكفر"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الكفر بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["kaf"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل الطائفيه"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الطائفيه بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["taf"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح الطائفيه"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الطائفيه بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["taf"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="قفل الفارسيه"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الفارسية بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["farsi"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="فتح الفارسيه"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الفارسية بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["farsi"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif( $text =="قفل الكلايش"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
$pluscharacter = $settings["information"]["pluscharacter"];
$downcharacter = $settings["information"]["downcharacter"];
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الكلايش بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["lockcharacter"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif( $text =="فتح الكلايش"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الكلايش بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["lockcharacter"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل ",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif(strpos($text  , "ضع عدد الاحرف") !== false or strpos($text  , "وضع كلايش") !== false) {
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {    $num = str_replace(['وضع كلايش ','ضع عدد الاحرف '],'',$text );
$add = $settings["information"]["added"];
if ($add == true) {
$te = explode(" ",$num);
$startlock = $te[0];
$endlock = $te[1];
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم وضع » *$startlock* \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["information"]["downcharacter"]="$startlock";
$settings["information"]["pluscharacter"]="$endlock";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

if( $text =="قفل الدردشه"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الدردشة بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["text"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif( $text =="فتح الدردشه"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الدردشة بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["text"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

if($text== "قفل الروابط بالتحذير" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الروابط بالتحذير \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["linkw"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

if($text== "فتح الروابط بالتحذير" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الروابط بالتحذير \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["linkw"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

if($text== "قفل التوجيه بالتحذير" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل التوجيه بالتحذير \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["forwardw"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

if($text== "فتح التوجيه بالتحذير" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح التوجيه بالتحذير \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["forwardw"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

if($text== "قفل المعرفات بالتحذير" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل المعرفات بالتحذير \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["userw"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

if($text== "فتح المعرفات بالتحذير" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح المعرفات بالتحذير \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["userw"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

if($text== "قفل المعرفات بالتقييد" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل المعرفات بالتقييد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["userr"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

if($text== "قفل المعرفات بالتقييد" ){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙*للمشرفين فقط* ",'parse_mode'=>"markdown",'reply_to_message_id'=>$message_id,]);}}}}

if($text== "فتح المعرفات بالتقييد" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح المعرفات بالتقييد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["userr"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

if($text== "فتح المعرفات بالتقييد" ){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙*للمشرفين فقط* ",'parse_mode'=>"markdown",'reply_to_message_id'=>$message_id,]);}}}}

if($text== "قفل البوتات بالطرد" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل البوتات بالطرد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["botk"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

if($text== "قفل البوتات بالطرد" ){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙*للمشرفين فقط* ",'parse_mode'=>"markdown",'reply_to_message_id'=>$message_id,]);}}}}

if($text== "فتح البوتات بالطرد" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح البوتات بالطرد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["botk"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

if($text== "فتح البوتات بالطرد" ){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙*للمشرفين فقط* ",'parse_mode'=>"markdown",'reply_to_message_id'=>$message_id,]);}}}}

if($text== "قفل الروابط بالطرد" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل الروابط بالطرد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["linkk"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

if($text== "قفل الروابط بالطرد" ){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙*للمشرفين فقط* ",'parse_mode'=>"markdown",'reply_to_message_id'=>$message_id,]);}}}}

if($text== "فتح الروابط بالطرد" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح الروابط بالطرد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["linkk"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

if($text== "فتح الروابط بالطرد" ){
if ($tc == 'group' | $tc == 'supergroup'){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙*للمشرفين فقط* ",'parse_mode'=>"markdown",'reply_to_message_id'=>$message_id,]);}}}}

if($text== "قفل التوجيه بالطرد" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل التوجيه بالطرد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["forwardk"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

if($text== "فتح التوجيه بالطرد" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح التوجيه بالطرد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["forwardk"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

if($text== "قفل المعرفات بالطرد" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل المعرفات بالطرد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["userk"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

if($text== "فتح المعرفات بالطرد" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح المعرفات بالطرد \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["userk"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

elseif(strpos($text  , "حظر عام") !== false) {
if (in_array($from_id,$Dev)) {
$text = str_replace(['حظر عام '],'',$text );
$stat = file_get_contents("https://api.telegram.org/bot$token/getChatMember?chat_id=$text&user_id=".$text);
$statjson = json_decode($stat, true);
$name = $statjson['result']['user']['first_name'];
$username = $statjson['result']['user']['username'];
$id = $statjson['result']['user']['id'];
bot('KickChatMember',['chat_id'=>$chat_id,'user_id'=>$id]);
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙العضو » $text\n⌔︙تم حظره من كل الكروبات",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$user["banlist"][]="$text";
$user = json_encode($user,true);
file_put_contents("data/user.json",$user);}}

elseif (strpos($text  , "الغاء العام") !== false or strpos($text  , "الغاء الحظر العام") !== false) {
if (in_array($from_id,$Dev)) {
$text = str_replace(['الغاء العام ','الغاء الحظر العام '],'',$text );
$stat = file_get_contents("https://api.telegram.org/bot$token/getChatMember?chat_id=$text&user_id=".$text);
$statjson = json_decode($stat, true);
$name = $statjson['result']['user']['first_name'];
$username = $statjson['result']['user']['username'];
$id = $statjson['result']['user']['id'];
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙العضو » $text\n⌔︙تم الغاء حظره من كل الكروبات",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$key = array_search($text,$user["banlist"]);
unset($user["banlist"][$key]);
$user["banlist"] = array_values($user["banlist"]);
$user = json_encode($user,true);
file_put_contents("data/user.json",$user);
}
}

elseif($text == "المحظورين عام" or $text == "قائمه العام") {
if ( in_array($from_id,$Dev)) {
$silent = $user["banlist"];
for($z = 0;$z <= count($silent)-1;$z++){
$result = $result.$silent[$z]."\n";
}
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙قائمة الحظر العام » ⤈
$result",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}

$textktm = array("تقييد","كتم","تقيد","$abssetktm");
if($re and in_array($text,$textktm)){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
if ( $statusrt != 'creator' && $statusrt != 'administrator' && !in_array($re_id,$Dev) && !in_array($re_id,$manger) && !in_array($re_id,$admin_user) && !in_array($re_id,$vipmem) && !in_array($re_id,$developer)) {
$add = $settings["information"]["added"];
if ($add == true){
bot('restrictChatMember',['user_id'=>$re_id,'chat_id'=>$chat_id,'can_post_messages'=>false,]);
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙العضو » [$usew]\n⌔︙تم تقييده من المجموعة",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$re_msgid,]);
$settings["silentlist"][]="$re_id";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙لا تستطيع تقييد » $kshfre",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif (strpos($text  , "تقييد لمدة ") !== false && $re or strpos($text  , "كتم لمدة") !== false && $re) {
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
if ( $statusrt != 'creator' && $statusrt != 'administrator' && !in_array($re_id,$Dev) && !in_array($re_id,$manger) && !in_array($re_id,$admin_user) && !in_array($re_id,$vipmem) && !in_array($re_id,$developer)) {
$add = $settings["information"]["added"];
$we = str_replace(['تقييد لمدة ','كتم لمدة'],'',$text );
if ($we <= 1000 && $we >= 1){
if ($add == true) {
$weplus = $we + 0;
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙العضو » [$usew]\n⌔︙تم تقييده لمدة $we د",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
bot('restrictChatMember',['user_id'=>$re_id,'chat_id'=>$chat_id,'can_post_messages'=>false,'until_date'=>time()+$weplus*60,]);
$settings["silentlist"][]="$re_id";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙يجب اختيار عدد بين 1 الى 1000",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}
else{bot('sendmessage',['chat_id' => $chat_id,'text'=>"⌔︙لا تستطيع تقييد » $usew",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text  == "الغاء تقييد" && $re or $text  == "الغاء التقييد" && $re or $text  == "الغاء كتم" && $re or $text  == "الغاء الكتم" && $re){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('restrictChatMember',[
'user_id'=>$re_id,
'chat_id'=>$chat_id,
'can_post_messages'=>true,
'can_add_web_page_previews'=>false,
'can_send_other_messages'=>true,
'can_send_media_messages'=>true,]);
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙العضو » [$usew]\n⌔︙تم الغاء تقييده من المجموعة",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$re_msgid,]);
$key = array_search($re_id,$settings["silentlist"]);
unset($settings["silentlist"][$key]);
$settings["silentlist"] = array_values($settings["silentlist"]);
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text  == "المقيدين" or $text  == "المكتومين") {
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$silent = $settings["silentlist"];
for($z = 0;$z <= count($silent)-1;$z++){
$result = $result."[$silent[$z]](tg://user?id=$silent[$z])"."\n";
}
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙قائمة المقيدين » ⤈
$result",'parse_mode'=>"MarkDown",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}

elseif($text  == "حذف المقيدين" or $text  == "حذف المكتومين" or $text  == "مسح المقيدين" or $text  == "مسح المكتومين") {
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
$silent = $settings["silentlist"];
for($z = 0;$z <= count($silent)-1;$z++){
bot('restrictChatMember',[
'user_id'=>$silent[$z],
'chat_id'=>$chat_id,
'can_post_messages'=>true,
'can_add_web_page_previews'=>false,
'can_send_other_messages'=>true,
'can_send_media_messages'=>true,]);}
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حذف المقيدين \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
unset($settings["silentlist"]);
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

if($can_bot_chang_info == 1){
$canchangeinfo = "✅";
}else{
$canchangeinfo = "❌";
}
if($can_bot_delete == 1){
$candeletemessages = "✅";
}else{
$candeletemessages = "❌";
}
if($can_bot_restrict == 1){
$canrestrictmembers = "✅";
}else{
$canrestrictmembers = "❌";
}
if($can_bot_invite == 1){
$caninviteusers = "✅";
}else{
$caninviteusers = "❌";
}
if($can_bot_pin == 1){
$canpinmessages = "✅";
}else{
$canpinmessages = "❌";
}
if($can_bot_promote == 1){
$canpromotemembers = "✅";
}else{
$canpromotemembers = "❌";
}

if($rt && $text =="رفع ادمن بالكروب" or $re && $text =="رفع ادمن الكروب" and $canpromotemembers == "✅"){
if ( $status == 'creator' or in_array($from_id,$Dev)) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙*العضو* »[$usew]\n⌔︙*تم رفعه ادمن في الكروب* \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
bot('promoteChatMember',[
'chat_id'=>$chat_id,
'user_id'=>$re_id,
'can_change_info'=>True,
'can_delete_messages'=>True,
'can_invite_users'=>True,
'can_restrict_members'=>True,
'can_pin_messages'=>True,
'can_promote_members'=>false]);}}

if($rt && $text =="رفع ادمن بالكروب" or $re && $text =="رفع ادمن الكروب" and $canpromotemembers == "❌"){
if ( $status == 'creator' or in_array($from_id,$Dev)) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙ليس لدي صلاحية رفع مشرفين
⌔︙قم باعطائي صلاحية رفع المشرفين",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}

elseif($rt && $text =="تنزيل ادمن بالكروب" or $re && $text =="تنزيل ادمن الكروب" and $canpromotemembers == "✅"){
if ( $status == 'creator' or in_array($from_id,$Dev)) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙*العضو* »[$usew]\n⌔︙*تم تنزيله ادمن من الكروب* \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
bot('restrictChatMember',[
'user_id'=>$re_id,
'chat_id'=>$chat_id,
'can_post_messages'=>true,
'can_add_web_page_previews'=>false,
'can_send_other_messages'=>true,
'can_send_media_messages'=>true,]);}}

if($rt && $text =="تنزيل ادمن بالكروب" or $text =="تنزيل ادمن الكروب" and $canpromotemembers == "❌"){
if ( $status == 'creator' or in_array($from_id,$Dev)) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙ليس لدي صلاحية رفع مشرفين
⌔︙قم باعطائي صلاحية رفع المشرفين",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}

$linktxt = file_get_contents("data/$chat_id/link.txt");
if($status == "creator" ||  $status == "administrator" or in_array($from_id,$Dev) || in_array($from_id,$developer) || in_array($from_id,$admin_user) || in_array($from_id,$manger)) {
if($text == "صنع رابط وهمي" || $text == "صنع رابط" || $text == "انشاء رابط" and $caninviteusers == "✅"){
$getlink = file_get_contents("https://api.telegram.org/bot$token/exportChatInviteLink?chat_id=$chat_id");
$jsonlink = json_decode($getlink, true);
$getlinkde = $jsonlink['result'];
bot('SendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙تم صنع الرآبط الجديد\n⌔︙ارسل (الرابط) لعړض الرآبط",'parse_mode'=>'markdown','reply_to_message_id'=>$message_id,'disable_web_page_preview'=>true,]);
file_put_contents("data/$chat_id/link.txt","$getlinkde");}}

if($status == "creator" ||  $status == "administrator" or in_array($from_id,$Dev) || in_array($from_id,$developer) || in_array($from_id,$admin_user) || in_array($from_id,$manger)) {
if($text == "صنع رابط وهمي" || $text == "صنع رابط" || $text == "انشاء رابط"  and $caninviteusers == "❌"){
$getlink = file_get_contents("https://api.telegram.org/bot$token/exportChatInviteLink?chat_id=$chat_id");
$jsonlink = json_decode($getlink, true);
$getlinkde = $jsonlink['result'];
bot('SendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙ليس لدي صلاحية دعوة المستخدمين
⌔︙قم باعطائي صلاحية دعوة المستخدمين",'parse_mode'=>'markdown','reply_to_message_id'=>$message_id,'disable_web_page_preview'=>true,]);}}

if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
if($text == "فحص البوت" or $text == "كشف البوت" or $text == "فحص" or $text == "صلاحيه البوت" or $text == "صلاحية البوت"){
bot('SendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙صلاحية البوت في المجموعه
علامة ❪  ✅ ❫ تعني يمتلك صلاحية
علامة ❪ ❌ ❫ تعني لايمتلك صلاحية
⌔︙حذف الرسائل » ❪ $candeletemessages ❫
⌔︙دعوة مستخدمين » ❪ $caninviteusers ❫
⌔︙حظر مستخدمين » ❪ $canrestrictmembers ❫
⌔︙تثبيت الرسائل » ❪ $candeletemessages ❫
⌔︙تغيير المعلومات » ❪ $canchangeinfo ❫
⌔︙رفع وتنزيل مشرفين » ❪ $canpromotemembers ❫",'reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true,]);}}

if ($text && $tc == "supergroup" ){
$newmessg = $allmsg + 1;
file_put_contents("data/allmsg.txt","$newmessg");
}
if ($text && $tc == "private" ){
$newmessg = $allmsgpv + 1;
file_put_contents("data/allmsgpv.txt","$newmessg");
}
if(in_array($from_id,$Dev)){
if($text == "الرسائل" or $text == "مجموع الرسائل" or $text == "رسائل الكل" or $text == "عدد الرسائل"){
bot('sendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙عدد رسائل الخاص » ⤈ \n⌯$allmsgpv\n⌔︙عدد رسائل المجموعات » ⤈ \n⌯$allmsg\n ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}}

if($can_change_info == 1){
$canchangeinfo1 = "✓";
}else{
$canchangeinfo1 = "✗";
}
if($can_delete_messages == 1){
$candeletemessages1 = "✓";
}else{
$candeletemessages1 = "✗";
}
if($can_restrict_members == 1){
$canrestrictmembers1 = "✓";
}else{
$canrestrictmembers1 = "✗";
}
if($can_invite_users == 1){
$caninviteusers1 = "✓";
}else{
$caninviteusers1 = "✗";
}
if($can_pin_messages == 1){
$canpinmessages1 = "✓";
}else{
$canpinmessages1 = "✗";
}
if($can_promote_members == 1){
$canpromotemembers1 = "✓";
}else{
$canpromotemembers1 = "✗";
}
if(in_array($from_id,$Dev)){
$slahee = "⌔︙انت مطور البوت";
}elseif($status == "creator"){
$slahee = "⌔︙انت منشئ المجمۄعة";
}elseif($status == "administrator"){
$slahee = "⌔︙صلاحياتك عزيزي الادمن
علامة ❪  ✅ ❫ تعني يمتلك صلاحية
علامة ❪ ❌ ❫ تعني لايمتلك صلاحية
⌔︙حذف الرسائل » ❪ $candeletemessages1 ❫
⌔︙دعوة مستخدمين » ❪ $caninviteusers1 ❫
⌔︙حظر مستخدمين » ❪ $canrestrictmembers1 ❫
⌔︙تثبيت الرسائل » ❪ $candeletemessages1 ❫
⌔︙تغيير المعلومات » ❪ $canchangeinfo1 ❫
⌔︙رفع وتنزيل مشرفين » ❪ $canpromotemembers1 ❫";
}elseif(in_array($from_id,$admin_user) ){
$slahee = "⌔︙انت ادمن في البوت";
}elseif(in_array($from_id,$manger) ){
$slahee = "⌔︙انت مدير في البوت
";
}elseif(in_array($from_id,$vipmem) ){
$slahee = "⌔︙انت عضو مميز في البوت";
}elseif(in_array($from_id,$developer) ){
$slahee = "⌔︙انت مطور في البوت";
}elseif($status == "member" ){
$slahee = "⌔︙انت مجرد عضو فقط";
}
if($text == "صلاحياتي" or $text == "صلاحيتي"){
bot('SendMessage',['chat_id'=>$chat_id,'text'=>"$slahee",'reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true,]);}

if ($settings["information"]["welcome"] == "مقفول"){
if($update->message->new_chat_member){
if ($tc == "group" | $tc == "supergroup"){
$text1 = $settings["information"]["textwelcome"];
$newmemberuser = $update->message->new_chat_member->username;
$name = $update->message->new_chat_member->first_name;
date_default_timezone_set('Asia/Baghdad');
$date = date('Y-m-d');
$date2 = date("H:i");
$text = str_replace(["gpname","username","time"],["$namegroup","@$newmemberuser","$date | $date2"],"$text1");
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"$text",'reply_to_message_id'=>$message_id,]);}}}
# lock character
if($settings["lock"]["lockcharacter"] == "مقفول"){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
$plus = mb_strlen("$text ");
$pluscharacter = $settings["information"]["pluscharacter"];
$downcharacter = $settings["information"]["downcharacter"];
if ($pluscharacter < $plus or $plus < $downcharacter) {
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);}}}

$setnamebot = file_get_contents("SudoOrders/set.txt");
$namebot = file_get_contents("SudoOrders/namebot.txt");
if(in_array($from_id,$Dev)){
if ($text == "تعيين اسم البوت" or $text == "وضع اسم البوت" or $text == "تغيير اسم البوت" and $namebot == null){
file_put_contents("SudoOrders/set.txt","setnamebot");
bot("sendMessage",["chat_id"=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حذف اسم البۄت \n ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}}

if(in_array($from_id,$Dev)){
if ($text == "حذف اسم البوت" or $text == "مسح اسم البوت"){
file_put_contents("SudoOrders/namebot.txt","نضر");
bot("sendMessage",["chat_id"=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙ارسل اسم البۄت الان \n ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}}

if($text && $setnamebot =="setnamebot" and in_array($from_id,$Dev)){
file_put_contents("SudoOrders/namebot.txt",$text);
file_put_contents("SudoOrders/set.txt","");
bot("sendmessage",["chat_id"=>$chat_id,"text" => "⌔︙تم حفظ الاسم بنجاح
⌔︙اسمي الان »$text",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}

$botproxre = array("صيحولي نضر كافي بوت 😒🔪","لتكول بوت اسمي نضر 😒🔪","عندي اسم تره 😒💔","انت البوت لك 😒💔");
$reproxbot = array_rand($botproxre, 1);
if($text == "بوت" || $text == "البوت شنو اسمه" || $text == "شسمه البوت" || $text == "البوت شسمه" || $text == "اسم البوت" and $namebot == NULL){
if ($tc == 'group' | $tc == 'supergroup'){
bot('sendMessage',['chat_id'=>$chat_id, 'text'=>"$botproxre[$reproxbot]",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}}

$botre = array("صيحولي $namebot كافي بوت 😒🔪","لتكول بوت اسمي $namebot 😒🔪","عندي اسم تره 😒💔","انت البوت لك 😒💔");
$rebot = array_rand($botre, 1);
if($text == "بوت" || $text == "البوت شنو اسمه" || $text == "شسمه البوت" || $text == "البوت شسمه" || $text == "اسم البوت" and $namebot != NULL){
if ($tc == 'group' | $tc == 'supergroup'){
bot('sendMessage',['chat_id'=>$chat_id, 'text'=>"$botre[$rebot]",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}}

$namere = array("😸♥️ هلا كلبي وياك $namebot تفضل","ترةه مصختهاا احجيي شرايد 😕😒💔","اطلقق واحدد يصيح $namebot 😻♥️","خبصتت امنةة شتريدد عااد 🤧😒💔");
$rename = array_rand($namere, 1);
if($text == "$namebot" and $namebot != NULL){
if ($tc == 'group' | $tc == 'supergroup'){
bot('sendMessage',['chat_id'=>$chat_id, 'text'=>$namere[$rename],'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}}

$proxre = array("😸♥️ هلا كلبي وياك نضر تفضل","ترةه مصختهاا احجيي شرايد 😕😒💔","اطلقق واحدد يصيح نضر 😻♥️","خبصتت امنةة شتريدد عااد 🤧😒💔");
$reprox = array_rand($proxre, 1);
if($text == "نضر" and $namebot == NULL){
if ($tc == 'group' | $tc == 'supergroup'){
bot('sendMessage',['chat_id'=>$chat_id, 'text'=>$proxre[$reprox],'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}}

$startt = file_get_contents("SudoOrders/set.txt");
$starttext = file_get_contents("SudoOrders/start.txt");
if(in_array($from_id,$Dev)){
if ($text == "تعيين رد الخاص" or $text == "تعيين الستارت" or $text == "» تعيين رد الخاص ⌔"){
file_put_contents("SudoOrders/set.txt","setstart");
bot("sendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙حسنا ارسل كليشة الستارت الان ",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}}

if($text && $startt =="setstart" and in_array($from_id,$Dev)){
file_put_contents("SudoOrders/start.txt",$text);
file_put_contents("SudoOrders/set.txt","");
bot("sendmessage",["chat_id"=>$chat_id,"text" => "⌔︙تم حفظ كليشة الستارت
⌔︙اصبحت الان »$text",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}
if(in_array($from_id,$Dev)){
if ($text == "حذف رد الخاص" or $text == "حذف الستارت" or $text == "» حذف رد الخاص ⌔"){
file_put_contents("SudoOrders/start.txt","");
bot("sendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙تم حذف كليشة الستارت بنجاح",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}}

$user = $update->message->from->username;
$times = date('h:i:s');
$pirvate = explode("\n",file_get_contents("statistics/pirvate.txt"));
$statspv = count($pirvate)-1;
$startt = file_get_contents("SudoOrders/set.txt");
$starttext = file_get_contents("SudoOrders/start.txt");
if($text=="/start" and $starttext == null){
$st1 = file_get_contents("SudoOrders/startlock.txt");
if($st1 == "رد الخاص مفعل"){
if($tc == "private"){
if( !in_array($from_id,$Dev) && !in_array($from_id,$developer)){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙مرحبا انا بوت اسمي نضر
⌔︙[اضغط هنا الصنع بوت مجاني حمايه](t.me/sjadiraqi)
⌔︙اختصاصي حماية المجموعات
⌔︙من التفليش والسبام والخخ .. . ،
⌔︙تفعيلي سهل ومجانا فقط قم برفعي ادمن في مجموعتك وارسل امر » تفعيل
⌔︙سيتم رفع الادمنيه والمنشئ الاساسي تلقائيا",
'parse_mode'=>'MarkDown', 'disable_web_page_preview'=>true,'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'inline_keyboard'=>[
[['text'=>"⌔ ︙ المطور ︙ ⌔",'url'=>"t.me/$vhhhhh"]],]])]);
bot('sendmessage',['chat_id'=>$Dev[0],'text'=>"⌔︙هناك مشترك جديد في البوت » ⤈
⌔︙اسمه » $name
⌔︙معرفه »@$user
⌔︙ايديه »$from_id
⌔︙عدد مشتركين البوت »$statspv
⌔︙الوقت » $times
⌔︙التاريخ » ".date("Y")."/".date("n")."/".date("d")."",]);}}}}

$starttext = file_get_contents("SudoOrders/start.txt");
if($text=="/start" and $starttext != null){
if($tc == "private"){
$st1 = file_get_contents("SudoOrders/startlock.txt");
if($st1 == "رد الخاص مفعل"){
if( !in_array($from_id,$Dev) && !in_array($from_id,$developer)){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"$starttext",'parse_mode'=>'MarkDown', 'disable_web_page_preview'=>true,'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'inline_keyboard'=>[
[['text'=>"⌔ ︙ المطور ︙ ⌔",'url'=>"t.me/$vhhhhh"]],]])]);
bot('sendmessage',['chat_id'=>$Dev[0],'text'=>"⌔︙هناك مشترك جديد في البوت » ⤈
⌔︙اسمه » $name
⌔︙معرفه »@$user
⌔︙ايديه »$from_id
⌔︙عدد مشتركين البوت »$statspv
⌔︙الوقت » $times
⌔︙التاريخ » ".date("Y")."/".date("n")."/".date("d")."",]);}}}}

$startt = file_get_contents("SudoOrders/set.txt");
$starttext = file_get_contents("SudoOrders/start.txt");
if($text=="جلب الستارت" or $text=="جلب رد الخاص" or $text=="» جلب رد الخاص ⌔" and $starttext == null){
if($tc == "private"){
if( in_array($from_id,$Dev) or in_array($from_id,$developer)){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙مرحبا انا بوت اسمي نضر
⌔︙اختصاصي حماية المجموعات
⌔︙من التفليش والسبام والخخ .. . ،
⌔︙تفعيلي سهل ومجانا فقط قم برفعي ادمن في مجموعتك وارسل امر » تفعيل
⌔︙سيتم رفع الادمنيه والمنشئ الاساسي تلقائيا",
'parse_mode'=>'MarkDown', 'disable_web_page_preview'=>true,'reply_to_message_id'=>$message->message_id,]);}}}

$starttext = file_get_contents("SudoOrders/start.txt");
if($text=="جلب الستارت" or $text=="جلب رد الخاص" or $text=="» جلب رد الخاص ⌔" and $starttext != null){
if($tc == "private"){
if(in_array($from_id,$Dev) or in_array($from_id,$developer)){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"$starttext",'parse_mode'=>'MarkDown', 'disable_web_page_preview'=>true,'reply_to_message_id'=>$message->message_id,]);}}}

if($text =="تعطيل رد الخاص" or $text =="» تعطيل رد الخاص ⌔"){
if (in_array($from_id,$Dev)){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تعطيل رد الخاص",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
file_put_contents("SudoOrders/startlock.txt","رد الخاص معطل");}}

if($text =="تفعيل رد الخاص" or $text =="» تفعيل رد الخاص ⌔"){
if (in_array($from_id,$Dev)){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تفعيل رد الخاص",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
file_put_contents("SudoOrders/startlock.txt","رد الخاص مفعل");}}

if( $text=="/start" &&  $tc == "private" or $text=="رجوع ،🔙‘" &&  $tc == "private" ){
if(in_array($from_id,$Dev) or in_array($from_id,$developer)){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"*⌔ ︙ مرحبا عزيزي المطور* \n*⌔ ︙ انت المطور الاساسي هنا* \n*⌔ ︙ اليك ازرار سورس نضر* \n*⌔ ︙ تستطيع التحكم بكل الاوامر فقط اضغط على الامر الذي تريد تنفيذه*",
'parse_mode'=>'MarkDown',
'reply_to_message_id'=>$message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[ ['text'=>"تعيين اسم البوت"],['text'=>"» تحديث ⌔"],['text'=>"ضع كليشه المطور"] ],
[['text'=>"» المشتركين ⌔"],['text'=>"» المطورين ⌔"],['text'=>"» الاحصائيات ⌔"]],
[['text'=>"» اذاعه عام ⌔"],['text'=>"» اذاعه خاص ⌔"]],
[['text'=>"» اذاعه عام بالتوجيه ⌔"],['text'=>"» اذاعه خاص بالتوجيه ⌔"]],
[['text'=>"⌯تعيين كلايش الاوامر ⌯"]],
[['text'=>"» المجموعات ⌔"],['text'=>"تحديث السورس"],['text'=>"ِ» حظر مجموعة ⌔"]],
[['text'=>"تعطيل البوت الخدمي"],['text'=>"تفعيل البوت الخدمي"]],
[['text'=>"حذف قناة الاشتراك"],['text'=>"قناة الاشتراك"],['text'=>"تعيين قناة الاشتراك"]],
[['text'=>"تعطيل الاشتراك الاجباري"],['text'=>"تفعيل الاشتراك الاجباري"]],
[['text'=>"» حذف رد التواصل ⌔"],['text'=>"» تعيين رد التواصل ⌔"]],
[['text'=>"» جلب رد التواصل ⌔"]],
[['text'=>"» تعطيل التواصل ⌔"],['text'=>"» تفعيل التواصل ⌔"]],
[['text'=>"» حذف رد عام ⌔"],['text'=>"» الردود العام ⌔"],['text'=>"» اضف رد عام ⌔"]],
[['text'=>"» حذف رد الخاص ⌔"],['text'=>"» تعيين رد الخاص ⌔"]],
[['text'=>"» جلب رد الخاص ⌔"]],
[ ['text'=>"» تعطيل رد الخاص ⌔"],['text'=>"» تفعيل رد الخاص ⌔"] ],
],
'resize_keyboard'=>true
])
]);
}
}
if($text=="⌯تعيين كلايش الاوامر ⌯" &&  $tc == "private"){
if(in_array($from_id,$Dev) or in_array($from_id,$developer)){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"⌔︙*اهلا بك مجددا عزيزي المطور *\n⌔︙*اليك الازرار الخاصه بتعديل وتغيير كلايش سورس نضر فقط اضغط على الامر الذي تريد تنفيذه*",
'parse_mode'=>'MarkDown',
'reply_to_message_id'=>$message_id,
'reply_markup'=>json_encode([
'keyboard'=>[
[ ['text'=>"حذف كليشة الايدي"],['text'=>"تعيين كليشة الايدي"] ],
[['text'=>"تعيين امر الاوامر"]],
[['text'=>"تعيين امر م3"],['text'=>"تعيين امر م2"],['text'=>"تعيين امر م1"]],
[['text'=>"تعيين امر م5"],['text'=>"تعيين امر م4"]],
[['text'=>"تعيين امر م8"],['text'=>"تعيين امر م7"],['text'=>"تعيين امر م6"]],
[['text'=>"استعادة كلايش الاوامر"]],
[ ['text'=>"رجوع ،🔙‘"] ],
],
'resize_keyboard'=>true
])
]);
}
}

elseif($text =="ِ» حظر مجموعة ⌔" ){
if ($tc == "private") {
if (in_array($from_id,$Dev) or in_array($from_id,$developer)) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » المطور \n⌔︙ارسل (غادر + ايدي المجموعه) \n ✓",'reply_to_message_id'=>$message_id,]);}}}

elseif(strpos($text  , "مغادره") !== false or strpos($text  , "غادر") !== false) {
$text = str_replace(['غادر ','مغادره '],'',$text );
if(in_array($from_id,$Dev) or in_array($from_id,$developer)) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙تم مغادرة المجموعة \n⌔︙تم حذف جميع بياناتها ",'reply_to_message_id'=>$message_id,]);
bot('sendmessage',['chat_id'=>$text,'text'=>"⌔︙بامر من المطور تم مغادرة هذه المجموعة ",]);
bot('LeaveChat',['chat_id'=>$text,]);
unlink("data/$text.json");
unlink("data/$text/$text.json");
unlink("data/$text/tagall/$chtag.txt");
unlink("data/$text/tagall/$text"."a".".txt");
rmdir("data/$text");}}

if(strpos($text,"كللهم") !== false){
$abs = str_replace(['كللهم','-','1','2','3','4','5','6','7','8','9','0'],'',$text );
$abs1 = str_replace(['كللهم '],'',$text );
if(in_array($from_id,$Dev) or in_array($from_id,$developer)){
bot('sendMessage',['chat_id'=>$abs1,'text'=>"$abs",'parse_mode'=>'MarkDown',]);
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم ارسال الرساله بنجاح \n ✓",'parse_mode'=>'MarkDown','reply_to_message_id'=>$message_id,]);}}

mkdir("data/addrd");
$opption = file_get_contents("data/addrd/$chat_id/opption.txt");
$get_from_id = file_get_contents("data/addrd/$chat_id/from_id.txt");
$get_rd = file_get_contents("data/addrd/$chat_id/getrd.txt");
$opption_ = file_get_contents("data/addrd/opption.txt");
$get_from_id1_ = file_get_contents("data/addrd/from_id.txt");
$absRDall = file_get_contents("data/addrd/getrd.txt");
$get_from_id_1 = explode("\n",$get_from_id1_);
$get_from_id_ = explode("\n",$get_from_id);

if($status == "creator" || $status == "administrator" || in_array($from_id,$Dev) || in_array($from_id,$admin_user) || in_array($from_id,$manger) ) {
if($text == "اضف رد"){
mkdir("data/addrd/$chat_id");
mkdir("data/addrd/$chat_id/media");
mkdir("data/addrd/$chat_id/media/sticker");
mkdir("data/addrd/$chat_id/media/video");
mkdir("data/addrd/$chat_id/media/videonote");
mkdir("data/addrd/$chat_id/media/document");
mkdir("data/addrd/$chat_id/media/photo");
mkdir("data/addrd/$chat_id/media/audio");
mkdir("data/addrd/$chat_id/media/contact");
file_put_contents("data/addrd/$chat_id/from_id.txt",$from_id);
file_put_contents("data/addrd/$chat_id/opption.txt","IQABS");
bot("SendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙حسنا ارسل الكلمة الان ",'reply_to_message_id'=>$message->message_id, ]);}

if($text and in_array($from_id,$get_from_id_) and $opption == "IQABS"){
file_put_contents("data/addrd/$chat_id/opption.txt","abs");
file_put_contents("data/addrd/$chat_id/mod.txt",$text);
file_put_contents("data/addrd/$chat_id/media/media.txt",$text);
file_put_contents("data/addrd/$chat_id/getrd.txt", "- ". $text . "\n" , FILE_APPEND);
bot("SendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙ارسل لي الرد سواء كان » ⤈\n❨ ملصق • متحركه • صوره • فيديو\n • بصمه • صوت • رساله\n ✓",'reply_to_message_id'=>$message->message_id, ]);}

if($message and in_array($from_id,$get_from_id_) and $opption == "abs"){
file_put_contents("data/addrd/$chat_id/opption.txt","");
$IQABS3 = file_get_contents("data/addrd/$chat_id/mod.txt");
$IQABS4 = file_get_contents("data/addrd/$chat_id/media/media.txt");

$IQABS2 = fopen("data/addrd/$chat_id/mod.txt", "a") or die("Unable to open file!");
fwrite($IQABS2, "$IQABS3\n");
fclose($IQABS2);

$IQABS5 = fopen("data/addrd/$chat_id/media/media.txt", "a") or die("Unable to open file!");
fwrite($IQABS5, "$IQABS4\n");
fclose($IQABS5);

file_put_contents("data/addrd/$chat_id/$IQABS3.txt",$text);
file_put_contents("data/addrd/$chat_id/mod.txt","");
file_put_contents("data/addrd/$chat_id/media/media.txt","");
file_put_contents("data/addrd/$chat_id/media/$IQABS4.txt",$message->voice->file_id);
file_put_contents("data/addrd/$chat_id/media/sticker/$IQABS4.txt",$message->sticker->file_id );
file_put_contents("data/addrd/$chat_id/media/document/$IQABS4.txt",$message->document->file_id);
file_put_contents("data/addrd/$chat_id/media/videonote/$IQABS4.txt",$message->video_note->file_id);
file_put_contents("data/addrd/$chat_id/media/contact/$IQABS4.txt",$message->contact->phone_number);
file_put_contents("data/addrd/$chat_id/media/video/$IQABS4.txt",$message->video->file_id);
file_put_contents("data/addrd/$chat_id/media/photo/$IQABS4.txt",$message->photo[0]->file_id);
file_put_contents("data/addrd/$chat_id/media/audio/$IQABS4.txt",$message->audio->file_id );
bot("SendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙تم حفۨظ الرد الجديد",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id, ]);}

if($text == "حذف رد" or $text == "مسح رد"){
file_put_contents("data/addrd/$chat_id/from_id.txt",$from_id);
file_put_contents("data/addrd/$chat_id/opption.txt","delete");
bot("SendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙حسنا ارسل الكلمة لحذفها ",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id, ]);}

if(file_exists("data/addrd/$chat_id/$text.txt") and in_array($from_id,$get_from_id_) and $opption == "delete"){
$str = str_replace("- $text","",$get_rd);
file_put_contents("data/addrd/$chat_id/getrd.txt",$str);
file_put_contents("data/addrd/$chat_id/from_id.txt","");
file_put_contents("data/addrd/$chat_id/opption.txt","");
unlink("data/addrd/$chat_id/$text.txt");
unlink("data/addrd/$chat_id/media/$text.txt");
unlink("data/addrd/$chat_id/media/sticker/$text.txt");
unlink("data/addrd/$chat_id/media/video/$text.txt");
unlink("data/addrd/$chat_id/media/videonote/$text.txt");
unlink("data/addrd/$chat_id/media/document/$text.txt");
unlink("data/addrd/$chat_id/media/photo/$text.txt");
unlink("data/addrd/$chat_id/media/audio/$text.txt");
unlink("data/addrd/$chat_id/media/contact/$text.txt");
bot("SendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙الكلمة *($text)* تم حذفها",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id, ]);}

elseif(!file_exists("data/addrd/$chat_id/$text.txt") and in_array($from_id,$get_from_id_) and $opption == "delete"){
file_put_contents("data/addrd/$chat_id/from_id.txt","");
file_put_contents("data/addrd/$chat_id/opption.txt","");
bot("SendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙هذا الرد غير موجود",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id, ]);}

if($text == "حذف الردود" or $text == "مسح الردود" or $text == "حذف ردود المدير" or $text == "مسح ردود المدير"){
$links = __DIR__ . "/data/addrd/$chat_id";
$media = __DIR__ . "/data/addrd/$chat_id/media";
$media_contact = __DIR__ . "/data/addrd/$chat_id/media/contact";
$media_document = __DIR__ . "/data/addrd/$chat_id/media/document";
$media_video = __DIR__ . "/data/addrd/$chat_id/media/video";
$media_videonote = __DIR__ . "/data/addrd/$chat_id/media/videonote";
$media_photo = __DIR__ . "/data/addrd/$chat_id/media/photo";
$media_sticker = __DIR__ . "/data/addrd/$chat_id/media/sticker";
$media_audio = __DIR__ . "/data/addrd/$chat_id/media/audio";

$files = scandir($links);
$files_media = scandir($media);
$files_media_contact = scandir($media_contact);
$files_media_document = scandir($media_document);
$files_media_video = scandir($media_video);
$files_media_videonote = scandir($media_videonote);
$files_media_photo = scandir($media_photo);
$files_media_sticker = scandir($media_sticker);
$files_media_audio = scandir($media_audio);

foreach ($files as $file) {
if(is_file($links . "/" . $file)){
unlink ($links . "/" .$file);
}
}
foreach ($files_media as $filemedia) {
if(is_file($media . "/" . $filemedia)){
unlink ($media . "/" .$filemedia);
}
}
foreach ($files_media_contact as $file_media_contact) {
if(is_file($media_contact . "/" . $file_media_contact)){
unlink ($media_contact . "/" .$file_media_contact);
}
}
foreach ($files_media_document as $file_media_document) {
if(is_file($media_document . "/" . $file_media_document)){
unlink ($media_document . "/" .$file_media_document);
}
}
foreach ($files_media_video as $file_media_video) {
if(is_file($media_video . "/" . $file_media_video)){
unlink ($media_video . "/" .$file_media_video);
}
}
foreach ($files_media_videonote as $file_media_videonote) {
if(is_file($media_videonote . "/" . $file_media_videonote)){
unlink ($media_videonote . "/" .$file_media_videonote);
}
}
foreach ($files_media_photo as $file_media_photo) {
if(is_file($media_photo . "/" . $file_media_photo)){
unlink ($media_photo . "/" .$file_media_photo);
}
}
foreach ($files_media_sticker as $file_media_sticker) {
if(is_file($media_sticker . "/" . $file_media_sticker)){
unlink ($media_sticker . "/" . $file_media_sticker);
}
}
foreach ($files_media_audio as $file_media_audio) {
if(is_file($media_audio . "/" . $file_media_audio)){
unlink ($media_audio . "/" . $file_media_audio);
}
}
bot("SendMessage",['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حذف الردود \n ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id,]);
file_put_contents("data/addrd/$chat_id/getrd.txt", "");
}

$textrde = array("الردود","ردود المدير");
if(in_array($text,$textrde) and $get_rd != NULL and $get_rd != "" and $get_rd != " " and $get_rd != "\n\n" and $get_rd != "\n" and $get_rd != "\n\n\n" and $get_rd != "\n\n\n\n" and $get_rd != "\n\n\n\n\n" and $get_rd != "\n\n\n\n\n\n"){
bot("SendMessage",['chat_id'=>$chat_id,'text'=>"⌔︙ردود المجموعة » ⤈
$get_rd",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id,]);}

if(in_array($text,$textrde) and $get_rd == NULL || $get_rd == "" || $get_rd == " " || $get_rd == "\n\n" || $get_rd == "\n" || $get_rd == "\n\n\n" || $get_rd == "\n\n\n\n" || $get_rd == "\n\n\n\n\n" || $get_rd == "\n\n\n\n\n\n"){
bot("SendMessage",['chat_id'=>$chat_id,'text'=>"⌔︙لا توجد ردود مضافة",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id,]);}}

if(in_array($from_id,$Dev)){
if($text == "اضف رد عام" || $text == "» اضف رد عام ⌔"){
mkdir("data/addrd/media");
mkdir("data/addrd/$chat_id/media");
mkdir("data/addrd/media/sticker");
mkdir("data/addrd/media/video");
mkdir("data/addrd/media/videonote");
mkdir("data/addrd/media/document");
mkdir("data/addrd/media/photo");
mkdir("data/addrd/media/audio");
mkdir("data/addrd/media/contact");

file_put_contents("data/addrd/from_id.txt",$from_id);
file_put_contents("data/addrd/opption.txt","I_GG1ZZ");
bot("SendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙حسنا ارسل الكلمة الان ",'reply_to_message_id'=>$message->message_id, ]);}
if($text and in_array($from_id,$get_from_id_1) and $opption_ == "I_GG1ZZ"){
file_put_contents("data/addrd/opption.txt","SaveIngRD");
file_put_contents("data/addrd/mod.txt",$text);
file_put_contents("data/addrd/media/media.txt",$text);
file_put_contents("data/addrd/getrd.txt", "- ". $text . "\n" , FILE_APPEND);
bot("SendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙ارسل لي الرد سواء كان » ⤈\n❨ ملصق • متحركه • صوره • فيديو\n • بصمه • صوت • رساله\n ✓",'reply_to_message_id'=>$message->message_id, ]);}

if($message and in_array($from_id,$get_from_id_1) and $opption_ == "SaveIngRD"){
file_put_contents("data/addrd/opption.txt","");
$IQABS3 = file_get_contents("data/addrd/mod.txt");
$IQABS4 = file_get_contents("data/addrd/media/media.txt");

$IQABS2 = fopen("data/addrd/mod.txt", "a") or die("Unable to open file!");
fwrite($IQABS2, "$IQABS3\n");
fclose($IQABS2);

$IQABS5 = fopen("data/addrd/media/media.txt", "a") or die("Unable to open file!");
fwrite($IQABS5, "$IQABS4\n");
fclose($IQABS5);

file_put_contents("data/addrd/$IQABS3.txt",$text);
file_put_contents("data/addrd/mod.txt","");
file_put_contents("data/addrd/media/media.txt","");
file_put_contents("data/addrd/media/$IQABS4.txt",$message->voice->file_id);
file_put_contents("data/addrd/media/sticker/$IQABS4.txt",$message->sticker->file_id );
file_put_contents("data/addrd/media/document/$IQABS4.txt",$message->document->file_id);
file_put_contents("data/addrd/media/videonote/$IQABS4.txt",$message->video_note->file_id);
file_put_contents("data/addrd/media/contact/$IQABS4.txt",$message->contact->phone_number);
file_put_contents("data/addrd/media/video/$IQABS4.txt",$message->video->file_id);
file_put_contents("data/addrd/media/photo/$IQABS4.txt",$message->photo[0]->file_id);
file_put_contents("data/addrd/media/audio/$IQABS4.txt",$message->audio->file_id );
bot("SendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙تم حفۨظ الرد الجديد",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id, ]);}

if($text == "حذف رد عام" || $text == "» حذف رد عام ⌔" ){
file_put_contents("data/addrd/from_id.txt",$from_id);
file_put_contents("data/addrd/opption.txt","I_delete");
bot("SendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙حسنا ارسل الكلمة لحذفها ",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id, ]);}

if(file_exists("data/addrd/$text.txt") and in_array($from_id,$get_from_id_1) and $opption_ == "I_delete"){
$str = str_replace("- $text","",$absRDall);
file_put_contents("data/addrd/getrd.txt",$str);
file_put_contents("data/addrd/from_id.txt","");
file_put_contents("data/addrd/opption.txt","");
unlink("data/addrd/$text.txt");
unlink("data/addrd/media/$text.txt");
unlink("data/addrd/media/sticker/$text.txt");
unlink("data/addrd/media/video/$text.txt");
unlink("data/addrd/media/videonote/$text.txt");
unlink("data/addrd/media/document/$text.txt");
unlink("data/addrd/media/photo/$text.txt");
unlink("data/addrd/media/audio/$text.txt");
unlink("data/addrd/media/contact/$text.txt");
bot("SendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙الكلمة *($text)* تم حذفها",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id, ]);}

elseif(!file_exists("data/addrd/$text.txt") and in_array($from_id,$get_from_id_1) and $opption_ == "I_delete"){
file_put_contents("data/addrd/from_id.txt","");
file_put_contents("data/addrd/opption.txt","");
bot("SendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙لا توجد ردود مضافة",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id, ]);}

if($text == "حذف ردود العام" || $text == "حذف ردود المطور"){
$links = __DIR__ . "/data/addrd";
$media = __DIR__ . "/data/addrd/media";
$media_contact = __DIR__ . "/data/addrd/media/contact";
$media_document = __DIR__ . "/data/addrd/media/document";
$media_video = __DIR__ . "/data/addrd/media/video";
$media_videonote = __DIR__ . "/data/addrd/media/videonote";
$media_photo = __DIR__ . "/data/addrd/media/photo";
$media_sticker = __DIR__ . "/data/addrd/media/sticker";
$media_audio = __DIR__ . "/data/addrd/media/audio";

$files = scandir($links);
$files_media = scandir($media);
$files_media_contact = scandir($media_contact);
$files_media_document = scandir($media_document);
$files_media_video = scandir($media_video);
$files_media_videonote = scandir($media_videonote);
$files_media_photo = scandir($media_photo);
$files_media_sticker = scandir($media_sticker);
$files_media_audio = scandir($media_audio);

foreach ($files as $file) {
if(is_file($links . "/" . $file)){
unlink ($links . "/" .$file);
}
}
foreach ($files_media as $filemedia) {
if(is_file($media . "/" . $filemedia)){
unlink ($media . "/" .$filemedia);
}
}
foreach ($files_media_contact as $file_media_contact) {
if(is_file($media_contact . "/" . $file_media_contact)){
unlink ($media_contact . "/" .$file_media_contact);
}
}
foreach ($files_media_document as $file_media_document) {
if(is_file($media_document . "/" . $file_media_document)){
unlink ($media_document . "/" .$file_media_document);
}
}
foreach ($files_media_video as $file_media_video) {
if(is_file($media_video . "/" . $file_media_video)){
unlink ($media_video . "/" .$file_media_video);
}
}
foreach ($files_media_videonote as $file_media_videonote) {
if(is_file($media_videonote . "/" . $file_media_videonote)){
unlink ($media_videonote . "/" .$file_media_videonote);
}
}
foreach ($files_media_photo as $file_media_photo) {
if(is_file($media_photo . "/" . $file_media_photo)){
unlink ($media_photo . "/" .$file_media_photo);
}
}
foreach ($files_media_sticker as $file_media_sticker) {
if(is_file($media_sticker . "/" . $file_media_sticker)){
unlink ($media_sticker . "/" . $file_media_sticker);
}
}
foreach ($files_media_audio as $file_media_audio) {
if(is_file($media_audio . "/" . $file_media_audio)){
unlink ($media_audio . "/" . $file_media_audio);
}
}
bot("SendMessage",['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حذف ردود المطور \n ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id,]);
file_put_contents("data/addrd/getrd.txt", "");
}

if($text == "الردود العامه" || $text == "» الردود العام ⌔" || $text == "ردود المطور" and $absRDall != NULL and $absRDall != "" and $absRDall != " " and $absRDall != "\n\n" and $absRDall != "\n" and $absRDall != "\n\n\n" and $absRDall != "\n\n\n\n" and $absRDall != "\n\n\n\n\n" and $absRDall != "\n\n\n\n\n\n"){
bot("SendMessage",['chat_id'=>$chat_id,'text'=>"⌔︙ردود المطور » ⤈
$absRDall",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id,]);}

if($text == "الردود العامه" || $text == "» الردود العام ⌔"and $absRDall == NULL || $absRDall == "" || $absRDall == " " || $absRDall == "\n\n" || $absRDall == "\n" || $absRDall == "\n\n\n" || $absRDall == "\n\n\n\n" || $absRDall == "\n\n\n\n\n" || $absRDall == "\n\n\n\n\n\n"){
bot("SendMessage",['chat_id'=>$chat_id,'text'=>"⌔︙لا توجد ردود مضافة",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id,]);}}

if($message->text and file_exists("data/addrd/$text.txt")) {
$Aabs = file_get_contents("data/addrd/$text.txt");
bot('SendMessage',['chat_id'=>$chat_id,'text'=>$Aabs,'parse_mode'=>"MARKDOWN",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message->message_id,]);}
if($message->text and file_exists("data/addrd/media/$text.txt")) {
$Aabs = file_get_contents("data/addrd/media/$text.txt");
bot('Sendvoice',['chat_id'=>$chat_id,'voice'=>$Aabs,'reply_to_message_id'=>$message->message_id,]);}
if($message->text and file_exists("data/addrd/media/audio/$text.txt")) {
$Aabs = file_get_contents("data/addrd/media/audio/$text.txt");
bot('SendAudio',['chat_id'=>$chat_id,'audio'=>$Aabs,'reply_to_message_id'=>$message->message_id,]);}
if($message->text and file_exists("data/addrd/media/sticker/$text.txt")) {
$Aabs = file_get_contents("data/addrd/media/sticker/$text.txt");bot('sendsticker',['chat_id'=>$chat_id,'sticker'=>$Aabs,'reply_to_message_id'=>$message->message_id,]);}
if($message->text and file_exists("data/addrd/media/video/$text.txt")) {
$Aabs = file_get_contents("data/addrd/media/video/$text.txt");
bot('Sendvideo',['chat_id'=>$chat_id,'video'=>$Aabs,'caption'=>$message->caption,'reply_to_message_id'=>$message->message_id,]);}
if($message->text and file_exists("data/addrd/media/photo/$text.txt")) {
$Aabs = file_get_contents("data/addrd/media/photo/$text.txt");
bot('Sendphoto',['chat_id'=>$chat_id,'photo'=>$Aabs,'caption'=>$message->caption,'reply_to_message_id'=>$message->message_id,]);}
if($message->text and file_exists("data/addrd/media/videonote/$text.txt")) {
$Aabs = file_get_contents("data/addrd/media/videonote/$text.txt");
bot('Sendvideonote',['chat_id'=>$chat_id,'video_note'=>$Aabs,'reply_to_message_id'=>$message->message_id,]);}
if($message->text and file_exists("data/addrd/media/document/$text.txt")) {
$Aabs = file_get_contents("data/addrd/media/document/$text.txt");
bot('SendDocument',['chat_id'=>$chat_id,'document'=>$Aabs,'reply_to_message_id'=>$message->message_id,]);}
if($message->text and file_exists("data/addrd/media/contact/$text.txt")) {
$Aabs = file_get_contents("data/addrd/media/contact/$text.txt");
bot('SendContact',['chat_id'=>$chat_id,'phone_number'=>$Aabs,'first_name'=>$message->from->first_name,'last_name'=>$message->from->last_name,'reply_to_message_id'=>$message->message_id,]);}

if($settings["lock"]["rdodsg"] == "مفعله"){
if($message->text and file_exists("data/addrd/$chat_id/$text.txt")) {
$Aabs = file_get_contents("data/addrd/$chat_id/$text.txt");
bot('SendMessage',['chat_id'=>$chat_id,'text'=>$Aabs,'parse_mode'=>"MARKDOWN",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message->message_id,]);}}
if($settings["lock"]["rdodsg"] == "مفعله"){
if($message->text and file_exists("data/addrd/$chat_id/media/$text.txt")) {
$Aabs = file_get_contents("data/addrd/$chat_id/media/$text.txt");
bot('Sendvoice',['chat_id'=>$chat_id,'voice'=>$Aabs,'reply_to_message_id'=>$message->message_id,]);}}
if($settings["lock"]["rdodsg"] == "مفعله"){
if($message->text and file_exists("data/addrd/$chat_id/media/audio/$text.txt")) {
$Aabs = file_get_contents("data/addrd/$chat_id/media/audio/$text.txt");
bot('SendAudio',['chat_id'=>$chat_id,'audio'=>$Aabs,'reply_to_message_id'=>$message->message_id,]);}}
if($settings["lock"]["rdodsg"] == "مفعله"){
if($message->text and file_exists("data/addrd/$chat_id/media/sticker/$text.txt")) {
$Aabs = file_get_contents("data/addrd/$chat_id/media/sticker/$text.txt");
bot('sendsticker',['chat_id'=>$chat_id,'sticker'=>$Aabs,'reply_to_message_id'=>$message->message_id,]);}}
if($settings["lock"]["rdodsg"] == "مفعله"){
if($message->text and file_exists("data/addrd/$chat_id/media/video/$text.txt")) {
$Aabs = file_get_contents("data/addrd/$chat_id/media/video/$text.txt");
bot('Sendvideo',['chat_id'=>$chat_id,'video'=>$Aabs,'caption'=>$message->caption,'reply_to_message_id'=>$message->message_id,]);}}
if($settings["lock"]["rdodsg"] == "مفعله"){
if($message->text and file_exists("data/addrd/$chat_id/media/photo/$text.txt")) {
$Aabs = file_get_contents("data/addrd/$chat_id/media/photo/$text.txt");
bot('Sendphoto',['chat_id'=>$chat_id,'photo'=>$Aabs,'caption'=>$message->caption,'reply_to_message_id'=>$message->message_id,]);}}
if($settings["lock"]["rdodsg"] == "مفعله"){
if($message->text and file_exists("data/addrd/$chat_id/media/videonote/$text.txt")) {
$Aabs = file_get_contents("data/addrd/$chat_id/media/videonote/$text.txt");
bot('Sendvideonote',['chat_id'=>$chat_id,'video_note'=>$Aabs,'reply_to_message_id'=>$message->message_id,]);}}
if($settings["lock"]["rdodsg"] == "مفعله"){
if($message->text and file_exists("data/addrd/$chat_id/media/document/$text.txt")) {
$Aabs = file_get_contents("data/addrd/$chat_id/media/document/$text.txt");
bot('SendDocument',['chat_id'=>$chat_id,'document'=>$Aabs,'reply_to_message_id'=>$message->message_id,]);}}
if($settings["lock"]["rdodsg"] == "مفعله"){
if($message->text and file_exists("data/addrd/$chat_id/media/contact/$text.txt")) {
$Aabs = file_get_contents("data/addrd/$chat_id/media/contact/$text.txt");
bot('SendContact',['chat_id'=>$chat_id,'phone_number'=>$Aabs,'first_name'=>$message->from->first_name,'last_name'=>$message->from->last_name,'reply_to_message_id'=>$message->message_id,]);}}

if( $text =="الاعدادات" or $text =="اعدادات"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
$locklink = $settings["lock"]["link"];
$markdown = $settings["lock"]["markdown"];
$editmd = $settings["lock"]["editmd"];
$lockusername = $settings["lock"]["username"];
$locktag = $settings["lock"]["tag"];
$rdodsg = $settings["lock"]["rdodsg"];
$ar = $settings["lock"]["ar"];
$inline = $settings["lock"]["inline"];
$en = $settings["lock"]["en"];
$spam = $settings["lock"]["spam"];
$is_sticker = $settings["lock"]["is_sticker"];
$lockedit = $settings["lock"]["edit"];
$lockfshar = $settings["lock"]["fshar"];
$lockkaf = $settings["lock"]["kaf"];
$locktaf = $settings["lock"]["taf"];
$lockfarsi = $settings["lock"]["farsi"];
$lockbots = $settings["lock"]["bot"];
$lockforward = $settings["lock"]["forward"];
$locktg = $settings["lock"]["tgservic"];
$lockreply = $settings["lock"]["reply"];
$lockdocument = $settings["lock"]["document"];
$lockgif = $settings["lock"]["gif"];
$iduser = $settings["lock"]["iduser"];
$lockvideo_note = $settings["lock"]["video_msg"];
$locklocation = $settings["lock"]["location"];
$lockphoto = $settings["lock"]["photo"];
$lockcontact = $settings["lock"]["contact"];
$lockaudio = $settings["lock"]["audio"];
$lockvoice = $settings["lock"]["voice"];
$locksticker = $settings["lock"]["sticker"];
$lockgame = $settings["lock"]["game"];
$lockvideo = $settings["lock"]["video"];
$locktext = $settings["lock"]["text"];
$mute_all = $settings["lock"]["mute_all"];
$welcome = $settings["information"]["welcome"];
$add = $settings["information"]["add"];
$setwarn = $settings["information"]["setwarn"];
$charge = $settings["information"]["charge"];
$lockauto = $settings["lock"]["lockauto"];
$lockcharacter = $settings["lock"]["lockcharacter"];
$startlock = $settings["information"]["timelock"];
$endlock = $settings["information"]["timeunlock"];
$startlockcharacter = $settings["information"]["pluscharacter"];
$endlockcharacter = $settings["information"]["downcharacter"];
$linkr = $settings["lock"]["linkr"];
$linkkick = $settings["lock"]["linkk"];
$botk = $settings["lock"]["botk"];
$userres = $settings["lock"]["userr"];
$forwardr = $settings["lock"]["forwardr"];
$forwardk = $settings["lock"]["forwardk"];
$forwardw = $settings["lock"]["forwardw"];
$linkw = $settings["lock"]["linkw"];
$userw = $settings["lock"]["userw"];
$userkick = $settings["lock"]["userk"];
$byee = $settings["information"]["bye"];
$lockgamess = $settings["lock"]["gamess"];
$getlinks = $settings["lock"]["getlink"];
$text = str_replace("| فعال |","","⌔︙اعدادات المجموعة » ⤈
⌔︙الرد » $lockreply
⌔︙الروابط » $locklink
⌔︙المعرف » $lockusername
⌔︙الماركداون » $markdown
⌔︙التوجيه » $lockforward
⌔︙البوتات » $lockbots
⌔︙الاشعارات » $locktg
⌔︙الاونلاين » $inline
⌔︙الفيديو » $lockvideo
⌔︙الهاشتاك » $locktag
⌔︙التكرار » $spam
⌔︙الملصقات » $locksticker
⌔︙التعديل » $lockedit
⌔︙الصوت » $lockaudio
⌔︙البصمات » $lockvoice
⌔︙الكلايش » $lockcharacter
⌔︙المتحركه » $lockgif
⌔︙العربيه » $ar
⌔︙الانكليزيه » $en
⌔︙الفارسية » $lockfarsi
⌔︙الصور » $lockphoto
⌔︙الايدي » $iduser
⌔︙الفشار » $lockfshar
⌔︙الكفر » $lockkaf
⌔︙الطائفيه » $locktaf
⌔︙المواقع » $locklocation
⌔︙الملفات » $lockdocument
⌔︙الجهات » $lockcontact
⌔︙الالعاب » $lockgame
⌔︙الردود » $rdodsg
⌔︙الدردشه » $locktext
⌔︙تعديل الميديا » $editmd
⌔︙بصمة الفيديو » $lockvideo_note
⌔︙الملصقات المتحركه » $is_sticker
⌔︙اعدادات اخرى للمجموعه » ⤈
⌔︙الروابط بالتقييد » $linkr
⌔︙المعرف بالتقييد » $userres
⌔︙التوجيه بالتقييد » $forwardr
⌔︙الروابط بالطرد » $linkkick
⌔︙المعرف بالطرد » $userkick
⌔︙البوتات بالطرد » $botk
⌔︙التوجيه بالطرد » $forwardk
⌔︙الروابط بالتحذير » $linkw
⌔︙المعرف بالتحذير » $userw
⌔︙التوجيه بالتحذير » $forwardw
");
$text2 = str_replace("| غير مفعل |","","$text");
bot('sendmessage',[ 'chat_id'=>$chat_id,'text'=>"$text2",'parse_mode'=>"markdown",'reply_to_message_id'=>$message_id,'disable_web_page_preview'=>true,]);}}

if($text == "غادر" or $text == "$namebot غادر"){
if(in_array($from_id,$Dev) or in_array($from_id,$developer)){
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙تم مغادرة المجموعة \n⌔︙تم حذف جميع بياناتها ",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
bot('LeaveChat',['chat_id'=>$chat_id,]);
unlink("data/$chat_id.json");
unlink("data/$chat_id/$chat_id.json");
unlink("data/$chat_id/tagall/$chtag.txt");
unlink("data/$chat_id/tagall/$chat_id.txt");
rmdir("data/$chat_id");}}

elseif($text  == 'تعطيل' ){
if (in_array($from_id,$Dev) or in_array($from_id,$developer)){
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$name20](tg://user?id=$from_id)\nلقد تم تعطيل المجمۄعة بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
unlink("data/$chat_id/$chat_id.json");}}
  
if($text =="ضع قوانين" or $text =="وضع قوانين" or $text =="اضف قوانين"){
if($status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙ضع قوانين + الكليشة
⌔︙استخدم الدوال الاتية للطبع
time ⇝ لطبع الوقت
username ⇝ لطبع المعرف
gpname ⇝ لطبع اسم المجمۄعة",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}

elseif( $text =="القوانين"){
if ($status !=  creator  && $status !=  administrator  && !in_array($from_id,$Dev) && !in_array($from_id,$manger) && !in_array($from_id,$admin_user) && !in_array($from_id,$vipmem) && !in_array($from_id,$developer) ){
if ($tc == 'group' | $tc == 'supergroup'){
$date = date('Y-m-d');
$date2 = date("H:i");
$text1 = $settings["information"]["rules"];
$text = str_replace(["gpname","username","time"],["$namegroup","[@$username]","$date | $date2"],"$text1");
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"$text",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}
else
{
date_default_timezone_set('Asia/Baghdad');
$date = date('Y-m-d');
$date2 = date("H:i");
$text1 = $settings["information"]["rules"];
$text = str_replace(["gpname","username","time"],["$namegroup","[@$username]","$date | $date2"],"$text1");
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"$text",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}

elseif (strpos($text  , 'ضع قوانين ') !== false or strpos($text  , 'وضع قوانين ') !== false or strpos($text  , 'اضف قوانين ') !== false) {
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
$code = str_replace(['ضع قوانين  ','وضع قوانين  ','اضف قوانين  '],'',$text );
$plus = mb_strlen("$code");
if($plus < 600) {
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي »[$info](tg://user?id=$from_id) \n⌔︙تم وضع قوانين المجموعة \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["information"]["rules"]="$code";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙لا يمكنك وضع اكثر من ( 600 ) حرف",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif( $re && $text =="تثبيت"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
bot('pinChatMessage',['chat_id'=>$chat_id,'message_id'=>$re_msgid]);
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي »[$info](tg://user?id=$from_id) \n⌔︙تم تثبيت الرسالة بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}

elseif($text =="الغاء التثبيت" or $text =="الغاء تثبيت"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
bot('unpinChatMessage',['chat_id'=>$chat_id,'message_id'=>$re_msgid]);
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي »[$info](tg://user?id=$from_id) \n⌔︙تم الغاء تثبيت الرسالة \n ✓",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}

elseif( $re && $text == "حذف" or $text == "مسح"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$re_msgid]);
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$message_id]);
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙تم حذف الرسالة مع رسالة الامر "]);}}

elseif (strpos($text  , 'تنظيف ') !== false){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$num = str_replace(['تنظيف'],'',$text );
if ($num <= 300 && $num >= 1){
$add = $settings["information"]["added"];
if ($add == true) {
for($i=$message_id; $i>=$message_id-$num; $i--){
bot('deletemessage',['chat_id'=>$chat_id,'message_id'=>$i,]);}
bot('sendmessage',['chat_id' => $chat_id,'text' =>"⌔︙تم حذف ( $num ) من الرسائل",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_markup'=>$inlinebutton,]);}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}
else{bot('sendmessage',['chat_id' => $chat_id,'text'=>"⌔︙اختر رقم اكثر من 1 واقل من 300",'reply_markup'=>$inlinebutton,]);}}}

elseif (  strpos($text  , 'ضع اسم') !== false  ) {
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$newname= str_replace(['ضع اسم'],'',$text );
bot('setChatTitle',['chat_id'=>$chat_id,'title'=>$newname]);
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي »[$info](tg://user?id=$from_id) \n⌔︙تم تغيير اسم المجموعة \n⌔︙الاسم الجديد » $newname\n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}

$linktxt = file_get_contents("data/$chat_id/link.txt");
if( $text =="الرابط" and $caninviteusers == "❌" and $linktxt == null){
if ($tc == 'group' | $tc == 'supergroup'){
$getlinkk = $settings["lock"]["getlink"];
if ($getlinkk == "مفتوح") {
$getlink = file_get_contents("https://api.telegram.org/bot$token/exportChatInviteLink?chat_id=$chat_id");
$jsonlink = json_decode($getlink, true);
$getlinkde = $jsonlink['result'];
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙ليس لدي صلاحية دعوة المستخدمين
⌔︙ارسل لي  ( ضع رابط ) ليتم حفظه
 ✓",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

$linktxt = file_get_contents("data/$chat_id/link.txt");
if( $text =="الرابط" and $linktxt != null){
if ($tc == 'group' | $tc == 'supergroup'){
$getlinkk = $settings["lock"]["getlink"];
if ($getlinkk == "مفتوح") {
$getlink = file_get_contents("https://api.telegram.org/bot$token/exportChatInviteLink?chat_id=$chat_id");
$jsonlink = json_decode($getlink, true);
$getlinkde = $jsonlink['result'];
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙𝒈𝒓𝒐𝒖𝒑 𝒏𝒂𝒎𝒆 » ⤈
❨ $namegroup
⌔︙𝒈𝒓𝒐𝒖𝒑 𝒍𝒊𝒏𝒌 » ⤈
❨ $linktxt",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

if($text== "قفل التكرار" ){
if($status == "creator" || $status == "administrator" || in_array($from_id,$Dev) || in_array($from_id,$manger) || in_array($from_id,$developer) ) {
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل التكرار بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["spam"]="مقفول️";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

if($text== "فتح التكرار" ){
if($status == "creator" || $status == "administrator" || in_array($from_id,$Dev) || in_array($from_id,$manger) || in_array($from_id,$developer) ) {
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح التكرار بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["spam"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

$date = date('h:i:s'); $d = date('A');
$aa =preg_replace('/AM/', 'ص', $d);$aa =preg_replace('/PM/', 'م', $d);
date_default_timezone_set('Asia/Baghdad');
$times = date('h:i:s');
$year = date('Y');
$month = date('n');
$day = date('j');
$time = time() + (979 * 11 + 1 + 30);
$abes1 = "http://api.telegram.org/bot".API_KEY."/getChatMembersCount?chat_id=$chat_id";
$abes2 = file_get_contents($abes1);
$abes3 = json_decode($abes2);
$abes4 = $abes3->result;
$title = $message->chat->title;

if($text == "الساعة" or $text == "الزمن" or $text == "الساعه" or $text == "الوقت"){
bot ('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙الوقت » $times
⌔︙التاريخ » ".date("Y")."/".date("n")."/".date("d")."",'parse_mode'=>'MarkDown', 'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message->message_id,]);}

$set = file_get_contents("SudoOrders/set.txt");
$kdevelopers = file_get_contents("SudoOrders/devtext.txt");
if(in_array($from_id,$Dev)){
if($text == "ضع كليشه المطور" or $text == "وضع كليشه المطور" or $text == "تغيير كليشه المطور"){
file_put_contents("SudoOrders/set.txt","setdevtext");
bot("sendMessage",["chat_id"=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙ارسل كليشة المطور الان \n ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}}
if($text && $set =="setdevtext" and in_array($from_id,$Dev)){
file_put_contents("SudoOrders/devtext.txt",$text);
file_put_contents("SudoOrders/set.txt","");
bot("sendmessage",["chat_id"=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حفظ كليشة المطۄر \n ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}

if($text == "المطور" ){
if($tc == 'group' | $tc == 'supergroup'){
$export = json_decode(file_get_contents("https://api.telegram.org/bot$API_KEY/exportChatInviteLink?chat_id=$chat_id"));
$l = $export->result;
bot('sendMessage',['chat_id'=>$chat_id, 'text'=>"$kdevelopers",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
bot('sendmessage',['chat_id'=>$Dev[0],'text'=>"⌔︙هناك من بحاجه الى مساعده » ⤈
⌔︙اسم الشخص » $name
⌔︙معرف الشخص »@$user
⌔︙ايدي الشخص »$from_id
⌔︙معلومات المجموعه » ⤈
⌔︙اسم المجموعه »$title
⌔︙عدد الاعضاء »$abes4
⌔︙ايدي المجموعه » ⤈
❨ $chat_id
⌔︙رابط المجموعه » ⤈
❨ $l
⌔︙الوقت » $times
⌔︙التاريخ » ".date("Y")."/".date("n")."/".date("d")."",]);}}

if($text  == "تفعيل" ) {
if ( $status == 'creator' or $status == 'administrator'){
$url = file_get_contents("https://api.telegram.org/bot$token/getChatMembersCount?chat_id=$chat_id");
$getchat = json_decode($url, true);
$howmember = $getchat["result"];
$add = $settings["information"]["added"];
$dataadd = $settings["information"]["dataadded"];
if ($add == true) {
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"⌔︙المجمۄعة ،بالتاكيد ،مفعلة",
'reply_to_message_id'=>$message_id,
]);
}
else
{
if($howmember >= 1){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"⌔︙اهلا عزيزي » [$name20](tg://user?id=$from_id)\nلقد تم تفعيل المجمۄعة بنجاح \nتم رفع الادمنيه والمنشئ الاساسي \n ✓",
'parse_mode'=>"markdown",'disable_web_page_preview'=>true,
'reply_to_message_id'=>$message_id,
]);
bot('sendmessage',[
'chat_id'=>$Dev[0],
'text'=>"⌔︙تم تفعيل مجموعه جديده » ⤈
⌔︙اسم الضافني » $name
⌔︙معرف الضافني »@$user
⌔︙ايدي الضافني »$from_id
⌔︙معلومات المجموعه » ⤈
⌔︙اسم المجموعه »$title
⌔︙عدد الاعضاء »$abes4
⌔︙ايدي المجموعه » ⤈
❨ $chat_id
⌔︙رابط المجموعه » ⤈
❨ $l
⌔︙الوقت » $times
⌔︙التاريخ » ".date("Y")."/".date("n")."/".date("d")."
",
]);
file_put_contents("data/$chat_id/idpic.txt","مفعل");
file_put_contents("data/$chat_id/spam/spamxe.txt","5");
$dateadd = date('Y-m-d', time());
$dateadd2 = isset($_GET['date']) ? $_GET['date'] : date('Y-m-d');
$next_date = date('Y-m-d', strtotime($dateadd2 ." +999 day"));
$settings = '{"lock": {
"text": "مفتوح",
"photo": "مفتوح",
"link": "مفتوح",
"tag": "مفتوح",
"username": "مفتوح",
"sticker": "مفتوح",
"video": "مفتوح",
"voice": "مفتوح",
"getlink": "مفتوح",
"audio": "مفتوح",
"iduser": "مفعل",
"gif": "مفتوح",
"inline": "مفتوح",
"is_sticker": "مفتوح",
"linkr": "مفتوح",
"forwardw": "مفتوح",
"userw": "مفتوح",
"linkw": "مفتوح",
"forwardk": "مفتوح",
"botk": "مفتوح",
"userk": "مفتوح",
"linkk": "مفتوح",
"forwardr": "مفتوح",
"userr": "مفتوح",
"bot": "مفتوح",
"forward": "مفتوح",
"spam": "مفتوح",
"document": "مفتوح",
"tgservic": "مفتوح",
"edit": "مفتوح",
"reply": "مفتوح",
"contact": "مفتوح",
"location": "مفتوح",
"game": "مفتوح",
"editmd": "مفتوح",
"mute_all": "مفتوح",
"mute_all_time": "مفتوح",
"fshar": "مفتوح",
"kaf": "مفتوح",
"taf": "مفتوح",
"farsi": "مفتوح",
"lockauto": "مفتوح",
"lockcharacter": "مفتوح",
"video_msg": "مفتوح"
},
"information": {
"added": "true",
"welcome": "مفتوح",
"add": "مفتوح",
"rdodsg": "مفعله",
"markdown": "مفتوح",
"lockchannel": "مفتوح",
"hardmodebot": "مفتوح",
"charge": "999 يوم",
"setadd": "3",
"dataadded": "",
"en": "مفتوح",
"kickme": "مفتوح",
"ar": "مفتوح",
"expire": "",
"textwelcome": "⌔︙أهلا بِك عزيزي",
"rules": "لاتوجد قوانين",
"msg": "",
"timelock": "00:00",
"timeunlock": "00:00",
"pluscharacter": "300",
"downcharacter": "0",
"setwarn": "3"
}
}';
$settings = json_decode($settings,true);
$settings["information"]["expire"]="$next_date";
$settings["information"]["dataadded"]="$dateadd";
$settings["information"]["msg_id"]="$message_id";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
$gpadd = fopen("data/group.txt",'a') or die("Unable to open file!");
fwrite($gpadd, "اسم المجموعة : [$namegroup] \nايدي المجموعة : [$chat_id]\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n");
fclose($gpadd);
}
else
{
if ($add != true) {
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"⌔︙عذرا عدد الاعضاء قليل جدا
⌔︙ليس لديك على الاقل عضو واحد
",
'reply_to_message_id'=>$message_id,
'reply_markup'=>json_encode([
'inline_keyboard'=>[
[
['text'=>"$dataadd",'url'=>"https://t.me/sjadiraqi"]
],
]
])
]);
}
}
}
}
}
elseif ( $text  == "تفعيل") {
if ($status == 'creator' or $status == 'administrator'){
if ($tc == 'group' | $tc == 'supergroup'){
$getlink = file_get_contents("https://api.telegram.org/bot$token/exportChatInviteLink?chat_id=$chat_id");
$howmember = $getchat["result"];
$jsonlink = json_decode($getlink, true);
$getlinkde = $jsonlink['result'];
file_put_contents("groupslink.txt","➺ " . $namegroup . " » " . $getlinkde . "«" . "\n" , FILE_APPEND);
$add = $settings["information"]["added"];
if ($add != true) {
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$name20](tg://user?id=$from_id)\nلقد تم تفعيل المجمۄعة بنجاح \nتم رفع الادمنيه والمنشئ الاساسي \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
bot('sendmessage',['chat_id'=>$Dev[0],'text'=>"⌔︙تم تفعيل مجموعه جديده » ⤈
⌔︙اسم الضافني » $name
⌔︙معرف الضافني »@$user
⌔︙ايدي الضافني »$from_id
⌔︙معلومات المجموعه » ⤈
⌔︙اسم المجموعه »$title
⌔︙عدد الاعضاء »$abes4
⌔︙ايدي المجموعه » ⤈
❨ $chat_id
⌔︙رابط المجموعه » ⤈
❨ $l
⌔︙الوقت » $times
⌔︙التاريخ » ".date("Y")."/".date("n")."/".date("d")."",
]);
file_put_contents("data/$chat_id/idpic.txt","مفعل");
$dateadd = date('Y-m-d', time());
$dateadd2 = isset($_GET['date']) ? $_GET['date'] : date('Y-m-d');
$next_date = date('Y-m-d', strtotime($dateadd2 ." +999 day"));
$settings = '{"lock": {
"text": "مفتوح",
"photo": "مفتوح",
"link": "مفتوح",
"tag": "مفتوح",
"username": "مفتوح",
"sticker": "مفتوح",
"video": "مفتوح",
"voice": "مفتوح",
"editmd": "مفتوح",
"getlink": "مفتوح",
"audio": "مفتوح",
"iduser": "مفعل",
"gif": "مفتوح",
"is_sticker": "مفتوح",
"linkr": "مفتوح",
"forwardw": "مفتوح",
"userw": "مفتوح",
"linkw": "مفتوح",
"forwardk": "مفتوح",
"botk": "مفتوح",
"userk": "مفتوح",
"linkk": "مفتوح",
"forwardr": "مفتوح",
"userr": "مفتوح",
"markdown": "مفتوح",
"bot": "مفتوح",
"inline": "مفتوح",
"forward": "مفتوح",
"document": "مفتوح",
"tgservic": "مفتوح",
"edit": "مفتوح",
"reply": "مفتوح",
"en": "مفتوح",
"kickme": "مفتوح",
"ar": "مفتوح",
"contact": "مفتوح",
"rdodsg": "مفعله",
"location": "مفتوح",
"game": "مفتوح",
"mute_all": "مفتوح",
"mute_all_time": "مفتوح",
"fshar": "مفتوح",
"kaf": "مفتوح",
"taf": "مفتوح",
"farsi": "مفتوح",
"lockauto": "مفتوح",
"lockcharacter": "مفتوح",
"video_msg": "مفتوح"
},
"information": {
"added": "true",
"welcome": "مفتوح",
"add": "مفتوح",
"spamx": "5",
"lockchannel": "مفتوح",
"hardmodebot": "مفتوح",
"charge": "999 يوم",
"setadd": "3",
"dataadded": "",
"expire": "",
"msg": "",
"timelock": "00:00",
"timeunlock": "00:00",
"pluscharacter": "300",
"downcharacter": "0",
"textwelcome": "⌔︙أهلا بِك عزيزي",
"rules": "لاتوجد قوانين",
"setwarn": "3"
}
}';
$settings = json_decode($settings,true);
$settings["information"]["expire"]="$next_date";
$settings["information"]["dataadded"]="$dateadd";
$settings["information"]["msg_id"]="$message_id";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
$gpadd = fopen("data/group.txt",'a') or die("Unable to open file!");
fwrite($gpadd, "اسم المجموعة : ( $namegroup ) \nايدي المجموعة : ( $chat_id )\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n");
fclose($gpadd);
}
else{
$dataadd = $settings["information"]["dataadded"];
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي »[$name20](tg://user?id=$from_id)\nلقد تم تفعيل المجمۄعة بنجاح \nتم رفع الادمنيه والمنشئ الاساسي \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);}}}}

elseif($text == "قفل الكل") {
if($status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {if ($tc == 'group' | $tc == 'supergroup'){
$add = $settings["information"]["added"];
if($add == true) {
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل جميع الوسآئط \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["link"]="مقفول";
$settings["lock"]["inline"]="مقفول";
$settings["lock"]["en"]="مقفول";
$settings["lock"]["ar"]="مقفول";
$settings["lock"]["photo"]="مقفول";
$settings["lock"]["is_sticker"]="مقفول";
$settings["lock"]["gif"]="مقفول";
$settings["lock"]["markdown"]="مقفول";
$settings["lock"]["document"]="مقفول";
$settings["lock"]["video"]="مقفول";
$settings["lock"]["edit"]="مقفول";
$settings["lock"]["game"]="مقفول";
$settings["lock"]["location"]="مقفول";
$settings["lock"]["contact"]="مقفول";
$settings["lock"]["editmd"]="مقفول";
$settings["lock"]["tag"]="مقفول";
$settings["lock"]["username"]="مقفول";
$settings["lock"]["audio"]="مقفول";
$settings["lock"]["reply"]="مقفول";
$settings["lock"]["tgservic"]="مقفول";
$settings["lock"]["bot"]="مقفول";
$settings["lock"]["voice"]="مقفول";
$settings["lock"]["sticker"]="مقفول";
$settings["lock"]["forward"]="مقفول";
$settings["lock"]["fshar"]="مقفول";
$settings["lock"]["kaf"]="مقفول";
$settings["lock"]["taf"]="مقفول";
$settings["lock"]["farsi"]="مقفول";
$settings["lock"]["lockcharacter"]="مقفول";
$settings["lock"]["text"]="مقفول";
$settings["lock"]["spam"]="مقفول️";
$settings["lock"]["mute_all"]="مقفول";
$settings["lock"]["mute_all_time"]="مقفول️";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}}

elseif($text =="فتح الكل"){
if($status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح جميع الوسآئط \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["link"]="مفتوح";
$settings["lock"]["inline"]="مفتوح";
$settings["lock"]["en"]="مفتوح";
$settings["lock"]["ar"]="مفتوح";
$settings["lock"]["photo"]="مفتوح";
$settings["lock"]["is_sticker"]="مفتوح";
$settings["lock"]["gif"]="مفتوح";
$settings["lock"]["markdown"]="مفتوح";
$settings["lock"]["document"]="مفتوح";
$settings["lock"]["video"]="مفتوح";
$settings["lock"]["edit"]="مفتوح";
$settings["lock"]["game"]="مفتوح";
$settings["lock"]["location"]="مفتوح";
$settings["lock"]["contact"]="مفتوح";
$settings["lock"]["editmd"]="مفتوح";
$settings["lock"]["tag"]="مفتوح";
$settings["lock"]["username"]="مفتوح";
$settings["lock"]["audio"]="مفتوح";
$settings["lock"]["reply"]="مفتوح";
$settings["lock"]["tgservic"]="مفتوح";
$settings["lock"]["bot"]="مفتوح";
$settings["lock"]["voice"]="مفتوح";
$settings["lock"]["sticker"]="مفتوح";
$settings["lock"]["forward"]="مفتوح";
$settings["lock"]["fshar"]="مفتوح";
$settings["lock"]["kaf"]="مفتوح";
$settings["lock"]["taf"]="مفتوح";
$settings["lock"]["farsi"]="مفتوح";
$settings["lock"]["lockcharacter"]="مفتوح";
$settings["lock"]["text"]="مفتوح";
$settings["lock"]["spam"]="مفتوح";
$settings["lock"]["mute_all"]="مفتوح";
$settings["lock"]["mute_all_time"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text == "قفل التفليش") {
if($status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {if ($tc == 'group' | $tc == 'supergroup'){
$add = $settings["information"]["added"];
if($add == true) {
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم قفل التفليش بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["linkw"]="مقفول";
$settings["lock"]["forwardw"]="مقفول";
$settings["lock"]["userw"]="مفتوح";
$settings["lock"]["photo"]="مقفول";
$settings["lock"]["bot"]="مقفول";
$settings["lock"]["video"]="مقفول";
$settings["lock"]["gif"]="مقفول";
$settings["lock"]["sticker"]="مقفول";
$settings["lock"]["lockcharacter"]="مقفول";
$settings["lock"]["fshar"]="مقفول";
$settings["lock"]["kaf"]="مقفول";
$settings["lock"]["taf"]="مقفول";
$settings["lock"]["farsi"]="مقفول";
$settings["lock"]["spam"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}}

elseif($text == "فتح التفليش"){
if($status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم فتح التفليش بنجاح \n ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["lock"]["link"]="مفتوح";
$settings["lock"]["forward"]="مفتوح";
$settings["lock"]["photo"]="مفتوح";
$settings["lock"]["bot"]="مفتوح";
$settings["lock"]["video"]="مفتوح";
$settings["lock"]["gif"]="مفتوح";
$settings["lock"]["sticker"]="مفتوح";
$settings["lock"]["lockcharacter"]="مفتوح";
$settings["lock"]["fshar"]="مفتوح";
$settings["lock"]["kaf"]="مفتوح";
$settings["lock"]["taf"]="مفتوح";
$settings["lock"]["farsi"]="مفتوح";
$settings["lock"]["spam"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

$user = $update->message->from->username;
$message_id = $message->message_id;
$gp_get = file_get_contents("statistics/groups.txt");
$groups = explode("\n",$gp_get);
$IQABS = file_get_contents("statistics/abs.txt");
$pirvate = explode("\n",file_get_contents("statistics/pirvate.txt"));
$forward = $update->message->forward_from;
$statspv = count($pirvate)-1;
$statsgp = count($groups)-1;

if($text == "المجموعات" or $text == "» المجموعات ⌔"){bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙مجموعات البوت » ⤈ \n " . $gp_get,'reply_to_message_id'=>$message->message_id,'disable_web_page_preview'=>true,]);}

if(in_array($from_id, $Dev)){
if($text == "اذاعه بالتوجيه" || $text == "اذاعه عام بالتوجيه" || $text == "اذاعه للكل بالتوجيه" || $text =="» اذاعه عام بالتوجيه ⌔"){
file_put_contents("statistics/abs.txt","abs");
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙ارسل الرساله الان لتوجيها \n ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);}}
if($message and $IQABS == "abs" and in_array($from_id, $Dev)){
for($i=0;$i<count($groups);$i++){
bot('ForwardMessage',['chat_id'=>$groups[$i],'from_chat_id'=>$chat_id,'message_id'=>$message_id,]);}
for($i=0;$i<count($pirvate);$i++){
bot('forwardMessage',['chat_id'=>$pirvate[$i],'from_chat_id'=>$chat_id,'message_id'=>$message->message_id,
]);
unlink("statistics/abs.txt");
}
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙تم اذاعة رسالتك بالتوجية \n⌔︙في »$statsgp مجموعة \n⌔︙‏والى »$statspv مشترك
 ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);}

if($text and $tc == "private" and !in_array($from_id, $pirvate)){
file_put_contents("statistics/pirvate.txt", "$from_id\n",FILE_APPEND);}
if($text and $tc == "supergroup" and !in_array($chat_id, $groups)){
file_put_contents("statistics/groups.txt", "$chat_id\n",FILE_APPEND);}

if(in_array($from_id, $Dev)){
if($text == "اذاعه خاص" || $text =="» اذاعه خاص ⌔"){
file_put_contents("statistics/abs.txt","pvsd");
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙ارسل الرساله الان لاذاعتها \n ✓",'parse_mode'=>"MarkDown",'reply_to_message_id'=>$message->message_id]);}}
if($message and $IQABS == "pvsd" and in_array($from_id, $Dev)){
for ($i=0; $i<count($pirvate); $i++) {
bot('sendMessage',['chat_id'=>$pirvate[$i],'text'=>"$text",'parse_mode'=>"MarkDown",'disable_web_page_preview'=>true,
]);
file_put_contents("statistics/abs.txt","DevProx");
}
$statspv = count($pirvate)-1;
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙تم اذاعة رسالتك بنجاح\n⌔︙الى »$statspv مشترك
 ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);}

if(in_array($from_id, $Dev)){
if ($text == "اذاعه للكل" || $text == "اذاعه عام" || $text == "اذاعه"  ||$text == "» اذاعه عام ⌔"){
file_put_contents("statistics/abs.txt","absd");
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙ارسل الرساله الان لاذاعتها \n ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);}}
if($message and $IQABS == "absd" and in_array($from_id, $Dev)){
for ($i=0; $i<count($groups); $i++) {
bot('sendMessage',['chat_id'=>$groups[$i],'text'=>"$text",'parse_mode'=>"MarkDown",'disable_web_page_preview'=>true,]);}
for ($i=0; $i<count($pirvate); $i++) {
bot('sendMessage',['chat_id'=>$pirvate[$i],'text'=>"$text",'parse_mode'=>"MarkDown",'disable_web_page_preview'=>true,
]);
unlink("statistics/abs.txt");
}
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙تم اذاعة رسالتك بنجاح \n⌔︙في »$statsgp مجموعة \n⌔︙‏والى »$statspv مشترك
 ✓",'parse_mode'=>"MarkDown",'reply_to_message_id'=>$message->message_id]);}

if(in_array($from_id, $Dev)){
if($text == "اذاعه خاص بالتوجيه" || $text == "» اذاعه خاص بالتوجيه ⌔"){
file_put_contents("statistics/abs.txt","pvfwd");
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙ارسل الرساله الان لتوجيها \n ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);}}
if($message and $IQABS == "pvfwd" and in_array($from_id, $Dev)){
for($i=0;$i<count($pirvate);$i++){
bot('forwardMessage',['chat_id'=>$pirvate[$i],'from_chat_id'=>$chat_id,'message_id'=>$message->message_id,
]);
unlink("statistics/abs.txt");
}
$statspv = count($pirvate)-1;
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙تم اذاعة رسالتك بالتوجية \n⌔︙الى »$statspv مشترك
 ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);}

if(in_array($from_id, $Dev)){ if($text == "الاحصائيات" || $text == "» الاحصائيات ⌔"){ bot("SendMessage",[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عدد المشتركين »$statspv
⌔︙عدد المجموعات »$statsgp
 ✓", 'parse_mode'=>"MARKDOWN", 'reply_to_message_id'=>$message->message_id ]);} }
if(in_array($from_id, $Dev)){ if($text == "عدد المشتركين" || $text == "المشتركين" || $text == "» المشتركين ⌔"){ bot("SendMessage",[ 'chat_id'=>$chat_id, 'text'=>"⌔︙عدد المشتركين »$statspv", 'parse_mode'=>"MARKDOWN", 'reply_to_message_id'=>$message->message_id ]);} }

if (strpos($text  , "ضع ترحيب") !== false or strpos($text  , "وضع ترحيب") !== false or strpos($text  , "اضف ترحيب") !== false) {
if ($status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev)) {
$add = $settings["information"]["added"];
if ($add == true) {
$we = str_replace(['ضع ترحيب ','اضف ترحيب ','وضع ترحيب'],'',$text);
$plus = mb_strlen("$we");
if($plus < 600) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙تم تعيين الترحيب الجديد
⌔︙الترحيب الجديد هو :
$we",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["information"]["textwelcome"]="$we";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙لا يمكنك وضع اكثر من ( 600 ) حرف",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل ",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif ($text == "الترحيب" or $text == "جلب الترحيب") {
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
$text = $settings["information"]["textwelcome"];
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"$text",'reply_to_message_id'=>$message_id,'parse_mode'=>"markdown",'disable_web_page_preview'=>true,]);
$settings["information"]["welcome"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}}}

elseif ($text  == "تفعيل الترحيب" or $text  == "تفعيل ترحيب") {
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
$text = $settings["information"]["textwelcome"];
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تفعيل الترحيب بنجاح",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["information"]["welcome"]="مقفول";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif ($text  == "تعطيل الترحيب" or $text  == "تعطيل ترحيب") {
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تعطيل الترحيب بنجاح",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);
$settings["information"]["welcome"]="مفتوح";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);
}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

$texttrd = array("طرد","$abssetrd");
if($rt && in_array($text,$texttrd)){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
if ( $statusrt != 'creator' && $statusrt != 'administrator' && !in_array($re_id,$Dev) && !in_array($re_id,$manger) && !in_array($re_id,$admin_user) && !in_array($re_id,$vipmem) && !in_array($re_id,$developer)) {
bot('KickChatMember',['chat_id'=>$chat_id,'user_id'=>$re_id]);
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙العضو » [$usew]\n⌔︙تم طردة من المجموعة",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙لا تستطيع طرد » $kshfre",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

$texthdr = array("حظر","$abssethdr","حضر");
if($re && in_array($text,$texthdr)){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
if ( $statusrt != 'creator' && $statusrt != 'administrator' && !in_array($re_id,$Dev) && !in_array($re_id,$manger) && !in_array($re_id,$admin_user) && !in_array($re_id,$vipmem) && !in_array($re_id,$developer)) {
bot('KickChatMember',['chat_id'=>$chat_id,'user_id'=>$re_id]);
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙العضو » [$usew]\n⌔︙تم حظرة من المجموعة",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙لا تستطيع حظر » $kshfre",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($rt && $text == "الغاء حظر" or $re && $text == "الغاء الحظر"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
if ( $statusrt != 'creator' && $statusrt != 'administrator' && !in_array($re_id,$Dev)) {
bot('unbanChatMember',['chat_id'=>$chat_id,'user_id'=>$re_id]);
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙العضو » [$usew]\n⌔︙تم الغاء حظرة من المجموعة",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙لا تستطيع حظر » $kshfre",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

$user = $update->message->from->username;

mkdir("data/banduser");
$get_Busers = file_get_contents("data/banduser/$chat_id.txt");
$get_Buser = explode("\n",$get_Busers);
$kick = explode(" " ,$text);
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
if($kick[0] == "طرد" || $kick[0] == "حظر" and isset($kick[1])){
$text = str_replace(['حظر ','طرد '],'',$text);
$stat = file_get_contents("https://api.telegram.org/bot$token/getChatMember?chat_id=$text&user_id=".$text);
$statjson = json_decode($stat, true);
$name = $statjson['result']['user']['first_name'];
$username = $statjson['result']['user']['username'];
$id = $statjson['result']['user']['id'];
if($text != $DevId && !in_array($text,$Dev) and !in_array($text,$manger) and !in_array($text,$developer) and !in_array($text,$vipmem) and !in_array($text,$admin_user) and !in_array($text,$Dev)){
if(strpos($text ,"@") !== false and !in_array($text,$get_Buser)){
file_put_contents("data/banduser/$chat_id.txt","\n" . $text ."\n" , FILE_APPEND);}
if($stat !== false and !in_array("@$username",$get_Buser)){
file_put_contents("data/banduser/$chat_id.txt","\n" . "@$username" ."\n" , FILE_APPEND);}
bot('KickChatMember',['chat_id'=>$chat_id,'user_id'=>$id]);
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙العضو » $text\n⌔︙تم حظرة من المجموعة",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙لا تستطيع حظر » $text",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {
if($kick[0] == "الغاء" and $kick[1] == "حظر" and isset($kick[2])){
$text = str_replace('الغاء حظر ','',$text);
$stat = file_get_contents("https://api.telegram.org/bot$API_KEY/getChatMember?chat_id=$text&user_id=".$text);
$statjson = json_decode($stat, true);
$name = $statjson['result']['user']['first_name'];
$username = $statjson['result']['user']['username'];
$id = $statjson['result']['user']['id'];
if($stat != false and in_array("@$username",$get_Buser)){
$str2 = str_replace("@$username",'',$get_Busers);
$ex2 = explode("\n",$str2);
file_put_contents("data/banduser/$chat_id.txt",$ex2);}
if(strpos($text ,"@") !== false and in_array($text,$get_Buser)){
$str = str_replace("$text",'',$get_Busers);
$ex = explode("\n",$str);
file_put_contents("data/banduser/$chat_id.txt",$ex);}
bot('promoteChatMember',[
'chat_id'=>$chat_id,
'user_id'=>$id,
'can_send_messages'=>true,
]);
bot('sendmessage',['chat_id' => $chat_id,'text'=>"⌔︙العضو »$text\n⌔︙تم الغاء حظرة من المجموعة",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,'disable_web_page_preview'=>true,]);}

if($text == "حذف المحظورين" or $text == "مسح المحظورين"){
file_put_contents("data/banduser/$chat_id.txt","");
bot("SendMessage",['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم حذف المحظورين \n ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,'disable_web_page_preview'=>true,]);}}

if($text == "المحضورين" or $text == "المحظورين" and $get_Busers != NULL || $get_Busers != ""){
bot("SendMessage",['chat_id'=>$chat_id,'text'=>"⌔︙قائمة المحظورين » ⤈
[$get_Busers]",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,'disable_web_page_preview'=>true,]);}

if($text == "المحظورين" and $get_Busers == NULL || $get_Busers == ""){
bot("SendMessage",['chat_id'=>$chat_id,'text'=>"⌔︙*لا يوجد محظورين* ",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,'disable_web_page_preview'=>true,]);}

if($text == "رابط حذف" or $text == "رابط الحذف" or $text == "اريد رابط الحذف" or $text == "اريد رابط حذف" or $text == "شمرلي رابط الحذف"){
bot('sendMessage',['chat_id'=>$chat_id, 'text'=>"⌔︙[ اضغط هنا لحذف الحساب ](https://telegram.org/deactivate)
⌔︙[ اضغط هنا لديك مفاجئه ](https://t.me/sjadiraqi)",'parse_mode'=>"MARKDOWN",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message->message_id, ]);}

if($text == "ايديي" or $text == "أيديي"){bot('SendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙ايديك »$from_id",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id,]);}

$idleft = $update->message->left_chat_member->id;
if($update->message->left_chat_member and $idleft==$idBot){
bot('sendMessage',['chat_id'=>$Dev[0],'text'=>"⌔︙قام شخص بطرد البوت » ⤈
⌔︙اسم الطردني » $name
⌔︙معرف الطردني »@$user
⌔︙ايدي الطردني »$from_id
⌔︙معلومات المجموعه » ⤈
⌔︙اسم المجموعه »$title
⌔︙ايدي المجموعه » ⤈
❨ $chat_id
⌔︙تم حذف جميع بياناتها
⌔︙الوقت » $times
⌔︙التاريخ » ".date("Y")."/".date("n")."/".date("d")."",]);
unlink("data/$chat_id.json");
unlink("data/$chat_id/$chat_id.json");
unlink("data/$chat_id/tagall/$chtag.txt");
unlink("data/$chat_id/tagall/$chat_id.txt");
rmdir("data/$chat_id");}

if($text == "السورس" or $text == "سورس" or $text == "يا سورس"){
bot("sendmessage",[
'chat_id'=>$chat_id,
'text'=>"► : هلان بك في سورس نضر المجاني
",
'parse_mode'=>'markdown',
'disable_web_page_preview'=>true,
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[['text'=>'‹ اضغط هنا لشراء بوت حماية .','url'=>"t.me/sjadiraqi"]],
[['text'=>'‹ تابع قناة تحديثات السورس .','url'=>"t.me/sjadiraqi"]],
[['text'=>'‹ تابع تيم السورس وكل تحديث .','url'=>"t.me/sjadiraqi"]],
[['text'=>'‹ مبرمج السورس ›','url'=>"t.me/nnnnnnnnnr"]],
]
])
]); 
} 

if($text == "تحديث" and in_array($from_id,$Dev) or $text == "» تحديث ⌔" and in_array($from_id,$Dev)){
bot ('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙تم تحديث البۄت",'parse_mode'=>'MarkDown', 'disable_web_page_preview'=>true, 'reply_to_message_id'=>$message->message_id,]);}

if($text =="تعطيل التواصل" or $text =="» تعطيل التواصل ⌔"){
if (in_array($from_id,$Dev)){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تعطيل التواصل بنجاح",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
file_put_contents("SudoOrders/twasllock.txt","النواصل معطل");}}

if($text =="تفعيل التواصل" or $text =="» تفعيل التواصل ⌔"){
if (in_array($from_id,$Dev)){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تفعيل التواصل بنجاح",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
file_put_contents("SudoOrders/twasllock.txt","التواصل مفعل");}}

$Twassl = file_get_contents("SudoOrders/set.txt");
$Twasl = file_get_contents("SudoOrders/twasl.txt");
$locktwas = file_get_contents("SudoOrders/twasllock.txt");
if($text != "/start" and $Twasl == null and !in_array($from_id,$Dev)){
if($locktwas == "التواصل مفعل"){
if($tc == 'private'){
bot('forwardMessage',['chat_id'=>$Dev[0],'from_chat_id'=>$chat_id,'message_id'=>$update->message->message_id,'text'=>$text,]);
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙تم ارسال رسالتك الى المطور
⌔︙معرف المطور » [@$vhhhhh]
 ✓",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message->message_id,]);}}}

$Twassl = file_get_contents("SudoOrders/set.txt");
$Twasl = file_get_contents("SudoOrders/twasl.txt");
$locktwas = file_get_contents("SudoOrders/twasllock.txt");
if($text != "/start" and $Twasl != null and !in_array($from_id,$Dev)){
if($locktwas == "التواصل مفعل"){
if($tc == 'private'){
bot('forwardMessage',['chat_id'=>$Dev[0],'from_chat_id'=>$chat_id,'message_id'=>$update->message->message_id,'text'=>$text,]);
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"$Twasl",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message->message_id,
'reply_markup'=>json_encode([
'inline_keyboard'=>[
[['text'=>'⌔︙تابع قناة السورس','url'=>'https://t.me/sjadiraqi']],]])]);}}}

if($message->reply_to_message->forward_from->id and in_array($from_id,$Dev)){
bot('sendMessage',[
'chat_id'=>$message->reply_to_message->forward_from->id,
'text'=>$text,]);
bot('sendmessage',['chat_id'=>$Dev[0],'text'=>"⌔︙تم ارسال رسالتك بنجاح
 ✓",]);}

$twasl = file_get_contents("SudoOrders/twasl.txt");
if($text=="» جلب رد التواصل ⌔" or $text=="جلب رد التواصل" and $twasl == null){
if($tc == "private"){
if( in_array($from_id,$Dev) or in_array($from_id,$developer)){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙تم ارسال رسالتك الى المطور
⌔︙معرف المطور » [@$vhhhhh]
 ✓",'parse_mode'=>'MarkDown', 'disable_web_page_preview'=>true,'reply_to_message_id'=>$message->message_id,]);}}}

$twasl = file_get_contents("SudoOrders/twasl.txt");
if($text=="» جلب رد التواصل ⌔" or $text=="جلب رد التواصل" and $twasl != null){
if($tc == "private"){
if( in_array($from_id,$Dev) or in_array($from_id,$developer)){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"$twasl",'parse_mode'=>'MarkDown', 'disable_web_page_preview'=>true,'reply_to_message_id'=>$message->message_id,]);}}}

$Twassl = file_get_contents("SudoOrders/set.txt");
$Twasl = file_get_contents("SudoOrders/twasl.txt");
if ($text == "» تعيين رد التواصل ⌔" and in_array($from_id,$Dev) or $text == "تعيين رد التواصل" and in_array($from_id,$Dev)){
file_put_contents("SudoOrders/set.txt","settwasl");
bot("sendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙حسنا ارسل كليشة التواصل الان ",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}

if ($text == "» حذف رد التواصل ⌔" and in_array($from_id,$Dev) or $text == "حذف رد التواصل" and in_array($from_id,$Dev)){
file_put_contents("SudoOrders/twasl.txt","");
bot("sendMessage",["chat_id"=>$chat_id,"text"=>"⌔︙تم حذف كليشة التواصل بنجاح",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}

if($text && $Twassl =="settwasl" and in_array($from_id,$Dev)){
file_put_contents("SudoOrders/twasl.txt",$text);
file_put_contents("SudoOrders/set.txt","");
bot("sendmessage",["chat_id"=>$chat_id,"text"=>"⌔︙تم حفظ كليشة التواصل
⌔︙اصبحت الان »$text",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message_id,]);}

$absrd = array('هلو' => 'اࠗط็لق֯ق֯ هٞللاࠗ୨و 𖠙 🤤♥️','هلاو' => 'اࠗط็لق֯ق֯ هٞللاࠗ୨و 𖠙 🤤♥️','هلااو' => 'اࠗط็لق֯ق֯ هٞللاࠗ୨و 𖠙 🤤♥️','هلوو' => 'اࠗط็لق֯ق֯ هٞللاࠗ୨و 𖠙 🤤♥️','هيلاو' => 'اࠗط็لق֯ق֯ هٞللاࠗ୨و 𖠙 🤤♥️','هيلاوو' => 'اࠗط็لق֯ق֯ هٞللاࠗ୨و 𖠙 🤤♥️','دي' => 'آخلُِآقڪڪ لُِڪڪ 𖠙 😒🔪','ديي' => 'آخلُِآقڪڪ لُِڪڪ 𖠙 😒🔪','دي بابه' => 'آخلُِآقڪڪ لُِڪڪ 𖠙 😒🔪','شخباركم' => 'ماﺷ͠ يةھَہّ يﻋ̝̚مريي ۅاﻧﺗ̲ت 𖠙 🤤♥️',
'السلام عليكم' => 'ياھَہّلاا ۅﻋ̝̚ليڪم الﺳ̭͠ لام 𖠙 🤤♥️','سلام عليكم' => 'ياھَہّلاا ۅﻋ̝̚ليڪم الﺳ̭͠ لام 𖠙 🤤♥️',
'بوت عواي' => 'اطردكك تجرب ؟ ، 😕🔪','بوت زربه' => 'اطردكك تجرب ؟ ، 😕🔪','البوت عاوي' => 'اطردكك تجرب ؟ ، 😕🔪','البوت زربه' => 'اطردكك تجرب ؟ ، 😕🔪',
'السورس عاوي' => 'لُِآ سوورس خآلُِتڪ دِي لُِڪ 𖠙 😒🔪','سورس عاوي' => 'لُِآ سوورس خآلُِتڪ دِي لُِڪ 𖠙 😒🔪','السورس زربه' => 'لُِآ سوورس خآلُِتڪ دِي لُِڪ 𖠙 😒🔪','سورس نضر' => 'لُِآ سوورس خآلُِتڪ دِي لُِڪ 𖠙 😒🔪','سورس نضر' => 'لُِآ سوورس خآلُِتڪ دِي لُِڪ 𖠙 😒🔪','سورس عبس' => 'لُِآ سوورس خآلُِتڪ دِي لُِڪ 𖠙 😒🔪',
'اكلك' => 'ڪوولُِ مآڪوولُِ لُِآحدِ 𖠙 😉♥️','اكلج' => 'ڪوولُِ مآڪوولُِ لُِآحدِ 𖠙 😉♥️','اكلكم' => 'ڪوولُِ مآڪوولُِ لُِآحدِ 𖠙 😉♥️',
'نايمين' => 'طُآمسين ووعيوونڪ 𖠙 😪🖤ۦ','ميتين' => 'طُآمسين ووعيوونڪ 𖠙 😪🖤ۦ','باي' => 'أُرجُعُ عيدِهآآ موو تنِسةه 𖠙 🤤♥️',
'بااي' => 'أُرجُعُ عيدِهآآ موو تنِسةه 𖠙 🤤♥️','اولي احسن' => 'أُرجُعُ عيدِهآآ موو تنِسةه 𖠙 🤤♥️','باي انام' => 'أُرجُعُ عيدِهآآ موو تنِسةه 𖠙 🤤♥️',
'شونك' => 'ماﺷ͠ يةھَہّ يﻋ̝̚مريي ۅاﻧﺗ̲ت 𖠙 🤤♥️','شونج' => 'ماﺷ͠ يةھَہّ يﻋ̝̚مريي ۅاﻧﺗ̲ت 𖠙 🤤♥️','شلونك' => 'ماﺷ͠ يةھَہّ يﻋ̝̚مريي ۅاﻧﺗ̲ت 𖠙 🤤♥️','شلونج' => 'ماﺷ͠ يةھَہّ يﻋ̝̚مريي ۅاﻧﺗ̲ت 𖠙 🤤♥️','شونكم' => 'ماﺷ͠ يةھَہّ يﻋ̝̚مريي ۅاﻧﺗ̲ت 𖠙 🤤♥️','شلونكم' => 'ماﺷ͠ يةھَہّ يﻋ̝̚مريي ۅاﻧﺗ̲ت 𖠙 🤤♥️','شخبارك' => 'ماﺷ͠ يةھَہّ يﻋ̝̚مريي ۅاﻧﺗ̲ت 𖠙 🤤♥️',
);
foreach ( $absrd as $absrd1 => $absrd2 ) {
if($settings["lock"]["rdodsg"] == "مفعله") {
if($text == $absrd1){
bot('sendMessage',['chat_id'=>$chat_id,'text'=>$absrd2,'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message->message_id]);}}}

$game = json_decode(file_get_contents('game.json'),true);
$get_game = file_get_contents("game.txt");
$game1 = explode("\n",$get_game);
$iqabs = array('⌔︙اول واحد يرتبها { ل ، س ، ا ، ق ، ت ، ب ،ا } يربح','⌔︙اول واحد يرتبها { ه ، ا ، ع ، ر ، ا } يربح','⌔︙اول واحد يرتبها { ر ، و ، ح ، س } يربح','⌔︙اول واحد يرتبها { ن ، ف ، ه ، ق } يربح','⌔︙اول واحد يرتبها { و ، ن ، ي ، ا ، ف } يربح','⌔︙اول واحد يرتبها { ن ، و ، ه ، ب ، ز } يربح','⌔︙اول واحد يرتبها { ر ، ك ، و ، س ، ت ، ن ، ا ، ي } يربح','⌔︙اول واحد يرتبها { ا ، ن ، م ، ل ، ي } يربح','⌔︙اول واحد يرتبها { و ، ه ، ق ، ه } يربح','⌔︙اول واحد يرتبها { ف ، ي ، س ، ه ، ن } يربح','⌔︙اول واحد يرتبها { ج ، ا ، د ، ج ، ه } يربح','⌔︙اول واحد يرتبها { س ، م ، ر ، د ، ه } يربح','⌔︙اول واحد يرتبها { ا ، ن ، ا ، و ، ل } يربح','⌔︙اول واحد يرتبها { ه ، غ ، ف ، ر ، } يربح','⌔︙اول واحد يرتبها { ج ، ه ، ث ، ل ، ا } يربح','⌔︙اول واحد يرتبها { خ ، م ، ب ، ط } يربح');
$get_iqabs = array_rand($iqabs, 1);
$fast = array('⌔︙اسرع واحد يرسل { عباس } يربح','⌔︙اسرع واحد يرسل { بغداد } يربح','⌔︙اسرع واحد يرسل { قناة } يربح','⌔︙اسرع واحد يرسل { نضر } يربح','⌔︙اسرع واحد يرسل { رمضان } يربح','⌔︙اسرع واحد يرسل { لابتوب } يربح','⌔︙اسرع واحد يرسل { كمبيوتر } يربح','⌔︙اسرع واحد يرسل { تلفون } يربح','⌔︙اسرع واحد يرسل { مطبخ } يربح','⌔︙اسرع واحد يرسل { اليمن } يربح','⌔︙اسرع واحد يرسل { سوريا } يربح','⌔︙اسرع واحد يرسل { العراق } يربح','⌔︙اسرع واحد يرسل { السعوديه } يربح','⌔︙اسرع واحد يرسل { مصر } يربح','⌔︙اسرع واحد يرسل { السودان } يربح');
$faster = array_rand($fast, 1);
$mthal = array('⌔︙اكمل المثال التالي
{ لكل حالة مقاله ولكل .... برع } ','⌔︙اكمل المثال التالي
{ عادت .... الى عادتها القديمه } ','⌔︙اكمل المثال التالي
{ من .... العلى سهر الليالي } ','⌔︙اكمل المثال التالي
{ مخرب .... الف عمار } ','⌔︙اكمل المثال التالي
{ من .... لقي } ','⌔︙اكمل المثال التالي
{ ادخلها من ..... واخرجها من الثانيه } ','⌔︙اكمل المثال التالي
{ ادق من خيط .... } ','⌔︙اكمل المثال التالي
{ اذا التقت .... هانت الحقوق } ','⌔︙اكمل المثال التالي
{ كل .... فيه خير } ','⌔︙اكمل المثال التالي
{ كما تدين .... } ','⌔︙اكمل المثال التالي
{ الصميل خرج من .... } ',' ⌔︙اكمل المثال التالي
{ اللي مايعرف .... يشويه } ',' ⌔︙اكمل المثال التالي
{ الهربات كثير و ..... وحده } ',' ⌔︙اكمل المثال التالي
{ القبيلي .... نفسه } '
);
$qui1 = array('⌔︙سؤال » ماهو اسرع المخلوقات البحريه على الاطلاق؟!','⌔︙سؤال » ماهي اقوى انواع الحجارة؟!','⌔︙سؤال » ماهي السورة التي ذكر فيها بالعوض؟!','⌔︙سؤال » ماهي اول عمله اسلاميه؟!','⌔︙سؤال » ماهو الحيوان الذي اذا قطعت احدى اذرعته نمت مره اخرى؟!','⌔︙سؤال » ماهو اسرع الحيوان الذي يصاب بالحصبه كالانسان؟!','⌔︙سؤال » ماهو العنصر الذي اذا وجد في الحليب اصبح الحليب غذاء كامل؟!','⌔︙سؤال » من هو مؤسس علم الجبر؟!','⌔︙سؤال » من هو اقوى الحيوانات ذاكرة؟!');
$qui2 = array_rand($qui1,1);
$ope1 = array('
⌔︙ما هو عكس كلمة  { جاوع }','⌔︙ما هو عكس كلمة  { فارغ }','⌔︙ما هو عكس كلمة  { سمين }','⌔︙ما هو عكس كلمة  { بخيل }','
⌔︙ما هو عكس كلمة  { شجاع }','
⌔︙ما هو عكس كلمة  { الخوف }','
⌔︙ما هو عكس كلمة  { عاقل }','
⌔︙ما هو عكس كلمة  { كن }','
⌔︙ما هو عكس كلمة  { الذهاب }','
⌔︙ما هو عكس كلمة  { العودة }','
⌔︙ما هو عكس كلمة  { مطفئه }','
⌔︙ما هو عكس كلمة  { الليل }','
⌔︙ما هو عكس كلمة  { مضلم }','
⌔︙ما هو عكس كلمة  { حالي }'
);
$ope2 = array_rand($ope1 ,1);
$mog1 = array('
⌔︙اول واحد يطلع المختلف يربح
{ 😫😫😫😫😩😫😫😫 }','
⌔︙اول واحد يطلع المختلف يربح
{ ✌️✌️🤘✌️✌️✌️✌️✌️ }','
⌔︙اول واحد يطلع المختلف يربح
{ 🧝‍♂🧝‍♂🧝‍♂🧝‍♂🧝‍♀🧝‍♂🧝‍♂🧝‍♂ }','
⌔︙اول واحد يطلع المختلف يربح
{ 😰😰😰😰😥😰😰😰 }','
⌔︙اول واحد يطلع المختلف يربح
{ 💏💏💏👩‍❤️‍💋‍👩💏💏💏💏 }','
⌔︙اول واحد يطلع المختلف يربح
{ 👨‍👦👨‍👧👨‍👦👨‍??👨‍👦👨‍👦👨‍??👨‍👦 }','
⌔︙اول واحد يطلع المختلف يربح
{ ❤️❤️❤️❤️🧡❤️❤️❤️️ }','
⌔︙اول واحد يطلع المختلف يربح
{ 💗💗💗💗💗💗💓💗 }');
$mog2 = array_rand($mog1, 1);
$meen1 = array('
⌔︙ما معنى هذه الكلمه :؟ { فحط }',' ⌔︙ما معنى هذه الكلمه :؟ { ذهب }',' ⌔︙ما معنى هذه الكلمه :؟ { عاد }','
⌔︙ما معنى هذه الكلمه :؟ { يلفظ }','
⌔︙ما معنى هذه الكلمه :؟ { خروج }','
⌔︙ما معنى هذه الكلمه :؟ { يراعي }','
⌔︙ما معنى هذه الكلمه :؟ { ينتظر }','
⌔︙ما معنى هذه الكلمه :؟ { مؤمن }','
⌔︙ما معنى هذه الكلمه :؟ { مسلم }','
⌔︙ما معنى هذه الكلمه :؟ { بيت }','
⌔︙ما معنى هذه الكلمه :؟ { محافظة }','
⌔︙ما معنى هذه الكلمه :؟ { دولة }');
$ras = array('113+133-2=??','876+11-9=??','197×2-190=??','44-15+15=??','13+12-13-1+4=??','900000+2-900000=??','5322+1-1=??','21+25-13=??','909+75-5=??','44-1+11=??','532+256=??','6321+4667-10000=??');
$rass = array_rand($ras, 1);
$meen2 = array_rand($meen1, 1);
mkdir("data/$chat_id/game");
$level = file_get_contents("data/$chat_id/game.txt");
$mthals = array_rand($mthal, 1);
if(in_array($chat_id,$game1) and $text == '244' or $text == '878'  or $text == '204'  or $text == '44'  or $text == '15'  or $text == '2' or  $text == '5322' or $text == '33' or $text == '979' or $text == '34' or $text == '788' or $text == '988'){
if($level == "gamere"){
$game['game'][$chat_id][$from_id] = ($game['game'][$chat_id][$from_id]+1);
file_put_contents('game.json', json_encode($game));
file_put_contents("data/$chat_id/game.txt","");
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"⌔︙لقد ربحت وحصلت على نقطة
⌔︙اصبح لديك »".$game['game'][$chat_id][$from_id]." نقطه",
'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);
file_put_contents("game.txt","DevProx");
}}
if($text =="امثله" or $text =="امثلة"){
file_put_contents("data/$chat_id/game.txt","gamem");
$lockgamess = $settings["lock"]["gamess"];
if ($lockgamess == "مفعله") {
file_put_contents("game.txt",$chat_id);
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>$mthal[$mthals],
'reply_to_message_id'=>$message->message_id]);
}}
if($text =="رياضيات" or $text =="الرياضيات"){
file_put_contents("data/$chat_id/game.txt","gamere");
$lockgamess = $settings["lock"]["gamess"];
if ($lockgamess == "مفعله") {
file_put_contents("game.txt",$chat_id);
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>$ras[$rass],
'reply_to_message_id'=>$message->message_id]);
}}
if($text =="كلمات" or $text =="الاسرع"){
file_put_contents("data/$chat_id/game.txt","gamew");
$lockgamess = $settings["lock"]["gamess"];
if ($lockgamess == "مفعله") {
file_put_contents("game.txt",$chat_id);
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>$fast[$faster],
'reply_to_message_id'=>$message->message_id]);
}}
if($text =="معاني" or $text =="المعاني"){
file_put_contents("data/$chat_id/game.txt","gamees");
$lockgamess = $settings["lock"]["gamess"];
if ($lockgamess == "مفعله") {
file_put_contents("game.txt",$chat_id);
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>$meen1[$meen2],
'reply_to_message_id'=>$message->message_id]);
}}
if($text =="اسئله" or $text =="الاسئله" or $text == "الاسئلة"){
file_put_contents("data/$chat_id/game.txt","gameq");
$lockgamess = $settings["lock"]["gamess"];
if ($lockgamess == "مفعله") {
file_put_contents("game.txt",$chat_id);
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>$qui1[$qui2],
'reply_to_message_id'=>$message->message_id]);
}}
if($text =="المختلف" or $text =="مختلف"){
file_put_contents("data/$chat_id/game.txt","gamed");
$lockgamess = $settings["lock"]["gamess"];
if ($lockgamess == "مفعله") {
file_put_contents("game.txt",$chat_id);
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>$mog1[$mog2],
'reply_to_message_id'=>$message->message_id]);
}}
if($text =="العكس" or $text =="عكس"){
file_put_contents("data/$chat_id/game.txt","gameo");
$lockgamess = $settings["lock"]["gamess"];
if ($lockgamess == "مفعله") {
file_put_contents("game.txt",$chat_id);
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>$ope1[$ope2],
'reply_to_message_id'=>$message->message_id]);
}}
if($text =="الترتيب" or $text =="ترتيب"){
file_put_contents("data/$chat_id/game.txt","gamet");
$lockgamess = $settings["lock"]["gamess"];
if ($lockgamess == "مفعله") {
file_put_contents("game.txt",$chat_id);
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>$iqabs[$get_iqabs],
'reply_to_message_id'=>$message->message_id]);
}}
if(in_array($chat_id,$game1) and $text == 'سحور' or $text == 'سياره'  or $text == 'استقبال'  or $text == 'قنفه'  or $text == 'ايفون'  or $text == 'بزونه' or  $text == 'مطبخ' or $text == 'كرستيانو' or $text == 'دجاجه' or $text == 'مدرسه' or $text == 'الوان' or $text == 'غرفه' or $text == 'ثلاجه' or $text == 'قهوه' or $text == 'سفينه' or $text == 'اليمن'){
if($level == "gamet"){
$game['game'][$chat_id][$from_id] = ($game['game'][$chat_id][$from_id]+1);
file_put_contents('game.json', json_encode($game));
file_put_contents("data/$chat_id/game.txt","");
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"⌔︙لقد ربحت وحصلت على نقطة
⌔︙اصبح لديك »".$game['game'][$chat_id][$from_id]." نقطه",
'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);
file_put_contents("game.txt","DevProx");
}}
if(in_array($chat_id,$game1) and $text == '🧝‍♀' or $text == '👩‍❤️‍💋‍👩'  or $text == '😩'  or $text == "🧡" or $text == " ‍‍‍👨‍👦" or $text == '💓'  or $text == '🤘'  or $text == '👨' or  $text == '😥'){
if($level == "gamed"){
$game['game'][$chat_id][$from_id] = ($game['game'][$chat_id][$from_id]+1);
file_put_contents('game.json', json_encode($game));
file_put_contents("gamess.txt","");
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"⌔︙لقد ربحت وحصلت على نقطة
⌔︙اصبح لديك »".$game['game'][$chat_id][$from_id]." نقطه",
'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);
file_put_contents("game.txt","DevProx");
}}
if(in_array($chat_id,$game1) and $text == 'ينطق' or $text == 'مغادره'  or $text == 'منزل'  or $text == 'ينتظر'  or $text == 'يراعي'  or $text == 'مؤمن' or  $text == 'مسلم' or $text == 'دولة' or $text == 'دوله' or $text == 'مدينه' or $text == 'مدينة' or $text == "هرب" or $text == "رجع" or $text == "راح"){
if($level == "gamees"){
$game['game'][$chat_id][$from_id] = ($game['game'][$chat_id][$from_id]+1);
file_put_contents('game.json', json_encode($game));
file_put_contents("gamess.txt","");
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"⌔︙لقد ربحت وحصلت على نقطة
⌔︙اصبح لديك »".$game['game'][$chat_id][$from_id]." نقطه",
'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);
file_put_contents("game.txt","DevProx");
}}
if(in_array($chat_id,$game1) and $text == 'شابع' or $text == 'ممتلئ'  or $text == 'مليان'  or $text == 'نحيف'  or $text == 'سخي'  or $text == 'خائف' or  $text == 'الشجاعه' or $text == 'مجنون' or $text == 'لاتكن' or $text == 'الاياب' or $text == 'الإياب' or $text == 'الرجوع' or $text == 'منيره' or $text == 'النهار' or $text == 'منير' or $text == 'مضيئ' or $text == "مالح" or $text == "حامض"){
if($level == "gameo"){
$game['game'][$chat_id][$from_id] = ($game['game'][$chat_id][$from_id]+1);
file_put_contents('game.json', json_encode($game));
file_put_contents("gamess.txt","");
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"⌔︙لقد ربحت وحصلت على نقطة
⌔︙اصبح لديك »".$game['game'][$chat_id][$from_id]." نقطه",
'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);
file_put_contents("game.txt","DevProx");
}}
if(in_array($chat_id,$game1) and $text == 'شقي' or $text == 'دقه'  or $text == 'دقة'  or $text == 'حليمه'  or $text == 'حليمة'  or $text == 'طلب' or  $text == 'غلب' or $text == 'الوجوه' or $text == 'الوجوة' or $text == 'الاوجه' or $text == 'الاوجة' or $text == 'اذن' or $text == 'أذن' or $text == 'الابره' or $text == 'الابرة' or $text == "تاخير" or $text == "تدان" or $text == "الجنه" or $text == "الجنة" or $text == "الصقر" or $text == "الودافه" or $text == "قاتل"){
if($level == "gamem"){
$game['game'][$chat_id][$from_id] = ($game['game'][$chat_id][$from_id]+1);
file_put_contents('game.json', json_encode($game));
file_put_contents("data/$chat_id/game.txt","");
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"⌔︙لقد ربحت وحصلت على نقطة
⌔︙اصبح لديك »".$game['game'][$chat_id][$from_id]." نقطه",
'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);
file_put_contents("game.txt","DevProx");
}}
if(in_array($chat_id,$game1) and $text == 'نجم البحر' or $text == 'الخوارزمي'  or $text == 'سمك التونه'  or $text == 'سمك التونة'  or $text == 'الالماس'  or $text == 'البقره' or  $text == 'البقرة' or $text == 'الدينار الذهبي' or $text == 'القرد' or $text == 'الحديد' or $text == 'الجمل' or $text == 'الدينار'){
if($level == "gameq"){
$game['game'][$chat_id][$from_id] = ($game['game'][$chat_id][$from_id]+1);
file_put_contents('game.json', json_encode($game));
file_put_contents("data/$chat_id/game.txt","");
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"⌔︙لقد ربحت وحصلت على نقطة
⌔︙اصبح لديك »".$game['game'][$chat_id][$from_id]." نقطه",
'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);
file_put_contents("game.txt","DevProx");
}}
if(in_array($chat_id,$game1) and $text == 'كمبيوتر' or $text == 'عباس'  or $text == 'اليمن'  or $text == 'مصر'  or $text == 'السودان'  or $text == 'سوريا' or  $text == 'العراق' or $text == 'رمضان' or $text == 'لابتوب' or $text == 'تلفون' or $text == 'نضر' or $text == 'قناة' or $text == 'بغداد' or $text == 'مطبخ'){
if($level == "gamew"){
$game['game'][$chat_id][$from_id] = ($game['game'][$chat_id][$from_id]+1);
file_put_contents('game.json', json_encode($game));
file_put_contents("data/$chat_id/game.txt","");
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"⌔︙لقد ربحت وحصلت على نقطة
⌔︙اصبح لديك »".$game['game'][$chat_id][$from_id]." نقطه",
'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);
file_put_contents("game.txt","DevProx");
}}
$abssmile = array('🍏','🍎','🍐','🍊','🍋','🍌','🍉','🍇','🍓','🍈','🍒','🍑','🍍','🥥','🥝','🍅','🍆','🥑','🥦','🌶','🌽','🥕','🥔','🍠','🥐','🍞','🥖','🥨','🧀','🥚','🍳','🥞','🥓','🥩','🍗','🍖','🌭','🍔','🍟','🍕','🥪','🥙','🍼','☕️','🍵','🥤','🍶','🍺','🍻','🏀','⚽️','🏈','⚾️','🎾','🏐','🏉','🎱','🏓','🏸','🥅','🎰','🎮','🎳','🎯','🎲','🎻','🎸','🎺','🥁','🎹','🎼','🎧','🎤','🎬','🎨','🎭','🎪','🎟','🎫','🎗','🏵','🎖','🏆','🥌','🛷','🚕','🚗','🚙','🚌','🚎','🏎','🚓','🚑','🚚','🚛','🚜','🇮🇶','⚔','🛡','🔮','🌡','💣','📌','📍','📓','📗','📂','📅','📪','📫','📬','📭','⏰','📺','🎚','☎️','📡');$AbbS = array_rand($abssmile,1);
if($text =="سمايلات" || $text =="سمايل"){
file_put_contents("data/$chat_id/game.txt","games");
$lockgamess = $settings["lock"]["gamess"];
if ($lockgamess == "مفعله") {
file_put_contents("game.txt",$chat_id);bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙اول واحد يدز هذا السمايل { `$abssmile[$AbbS]` } يربح",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);}}
if(in_array($text,$abssmile) and in_array($chat_id,$game1) and $level == "games"){file_put_contents("gamess.txt","");$game['game'][$chat_id][$from_id] = ($game['game'][$chat_id][$from_id]+1);file_put_contents('game.json', json_encode($game));bot('sendMessage',['chat_id'=>$chat_id,
'text'=>"⌔︙لقد ربحت وحصلت على نقطة
⌔︙اصبح لديك »".$game['game'][$chat_id][$from_id]." نقطه",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);file_put_contents("game.txt","DevProx");}
if($text == "نقودي" || $text == "عدد نقودي" || $text == "نقاطي" || $text == "عدد نقاطي" and $game['game'][$chat_id][$from_id]  > 0){bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙لديك { ".$game['game'][$chat_id][$from_id]." } من نقاط العب ",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);}
if($text == "نقودي" || $text == "عدد نقودي" || $text == "نقاطي" || $text == "عدد نقاطي" and $game['game'][$chat_id][$from_id]  == NULL || $game['game'][$chat_id][$from_id]  == 0){bot('sendMessage',['chat_id'=>$chat_id,
'text'=>"⌔︙ليس لديك نقاط العب اولا \n⌔︙ارسل ( الالعاب ) للعب",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id]);}
if($text == "بيع نقودي" || $text == "بيع نقاطي" || $text == "بيع النقود" || $text =="بيع النقاط" and $game['game'][$chat_id][$from_id]  >= 19 and $game['game'][$chat_id][$from_id]  != null){
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙تم خصم20 من نقاطك
⌔︙تم اضافة200 رساله لك
 ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id, ]);
$msgs = json_decode(file_get_contents('msgs.json'),true);
$update = json_decode(file_get_contents('php://input'));
$msgs['msgs'][$chat_id][$from_id] = ($msgs['msgs'][$chat_id][$from_id]+200);
file_put_contents('msgs.json', json_encode($msgs));
$game['game'][$chat_id][$from_id] = ($game['game'][$chat_id][$from_id]-20);file_put_contents('game.json', json_encode($game));
}
if($text == "بيع نقودي" || $text == "بيع نقاطي" || $text == "بيع النقود" || $text =="بيع النقاط" and $game['game'][$chat_id][$from_id]  > 49 and $game['game'][$chat_id][$from_id]  != null){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"⌔︙تم خصم50 من نقاطك
⌔︙تم اضافة600 رساله لك
 ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id, ]);
$msgs = json_decode(file_get_contents('msgs.json'),true);
$update = json_decode(file_get_contents('php://input'));
$msgs['msgs'][$chat_id][$from_id] = ($msgs['msgs'][$chat_id][$from_id]+600);
file_put_contents('msgs.json', json_encode($msgs));
$game['game'][$chat_id][$from_id] = ($game['game'][$chat_id][$from_id]-50);file_put_contents('game.json', json_encode($game));
}
if($text == "بيع نقودي" || $text == "بيع نقاطي" || $text == "بيع النقود" || $text =="بيع النقاط" and $game['game'][$chat_id][$from_id]  > 99 and $game['game'][$chat_id][$from_id]  != null){
bot('sendMessage',[ 'chat_id'=>$chat_id, 'text'=>"⌔︙تم خصم100 من نقاطك
⌔︙تم اضافة1000 رساله لك
 ✓",
'parse_mode'=>"MARKDOWN",
'reply_to_message_id'=>$message->message_id, ]);
$msgs = json_decode(file_get_contents('msgs.json'),true);
$update = json_decode(file_get_contents('php://input'));
$msgs['msgs'][$chat_id][$from_id] = ($msgs['msgs'][$chat_id][$from_id]+1000);
file_put_contents('msgs.json', json_encode($msgs));
$game['game'][$chat_id][$from_id] = ($game['game'][$chat_id][$from_id]-100);file_put_contents('game.json', json_encode($game));
}
if($text == "رسائلي"){bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙رسائلك » *❨ ".$msgs['msgs'][$chat_id][$from_id]."*",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id,]);}
elseif($text == "بيع نقودي" || $text == "بيع نقاطي" || $text == "بيع النقود" || $text =="بيع النقاط" and $game['game'][$chat_id][$from_id]  == NULL || $game['game'][$chat_id][$from_id]  < 19){bot('sendMessage',['chat_id'=>$chat_id,
'text'=>"⌔︙عذرا لا يمكنك بيع النقاط
⌔︙يجب ان تكون نقاطك اكثر من 20
 ✓",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id, ]);}

if($text == "الالعاب" || $text == "اللعبه"){
$lockgamess = $settings["lock"]["gamess"];
if ($lockgamess == "مفعله"){
bot("SendMessage",['chat_id'=>$chat_id,'text'=>"⌔︙قائمة العاب المجموعة » ⤈
⌔︙ارسل » ( حزوره ) للعب
⌔︙ارسل » ( امثله ) للعب
⌔︙ارسل » ( ترتيب ) للعب
⌔︙ارسل » ( العكس ) للعب
⌔︙ارسل » ( المعاني ) للعب
⌔︙ارسل » ( المختلف ) للعب
⌔︙ارسل » ( سمايلات ) للعب
⌔︙ارسل » ( المحيبس ) للعب
⌔︙ارسل » ( رياضيات ) للعب
⌔︙ارسل » ( انكليزيه ) للعب
",'reply_to_message_id'=>$message->message_id,'parse_mode'=>"MARKDOWN",'disable_web_page_preview'=>true,]);}
else{bot("SendMessage",['chat_id'=>$chat_id,'text'=>"⌔︙*عذرا الالعاب معطلة* ",'reply_to_message_id'=>$message->message_id,'parse_mode'=>"MARKDOWN",]);}}

if($text =="تعطيل الالعاب" ){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تعطيل الالعاب بنجاح",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["gamess"]="مقفله";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

elseif($text =="تفعيل الالعاب" or $text =="تفعيل اللعبه"){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙اهلا عزيزي » [$info](tg://user?id=$from_id) \n⌔︙تم تفعيل الالعاب بنجاح",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);
$settings["lock"]["gamess"]="مفعله";
$settings = json_encode($settings,true);
file_put_contents("data/$chat_id/$chat_id.json",$settings);}
else{bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙عذرا لم يتم تفعيل المجموعه
⌔︙ارسل ( تفعيل ) للتفعيل",'reply_to_message_id'=>$message_id,'reply_markup'=>$inlinebutton,]);}}}

if($text == "حذف رسايلي" or $text == "حذف رسائلي" or $text == "مسح رسايلي" or $text == "مسح رسائلي"){
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙تم حذف { ".$msgs['msgs'][$chat_id][$from_id]." } من رسائلك المضافة",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id, ]);
$msgs = json_decode(file_get_contents('msgs.json'),true);
$update = json_decode(file_get_contents('php://input'));
$msgs['msgs'][$chat_id][$from_id] = ($msgs['msgs'][$chat_id][$from_id]=0);
file_put_contents('msgs.json', json_encode($msgs));}

if ($settings["lock"]["gamess"] == "مقفله"){
$gamesText = $update->message->text;
if($gamesText == "الالعاب"){
if ($tc == 'group' | $tc == 'supergroup'){
bot('SendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙*عذرا الالعاب معطلة* ",'reply_to_message_id'=>$message_id,'parse_mode'=>"MARKDOWN",]);}}}

if($text =="جوائز النقاط" or $text =="جوائز الالعاب"){
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"⌔︙جوائز الالعاب » ⤈
كل 20 نقطه = 200 رساله
كل 50 نقطه = 600 رساله
كل 100 نقطه = 1000 رساله",'parse_mode'=>"markdown",'disable_web_page_preview'=>true,'reply_to_message_id'=>$message_id,]);}
mkdir("data/$chat_id/tagall");
$user = $message->from->username;
$atag = file_get_contents("data/$chat_id/tagall/$chat_id.txt");
$tags = explode("\n",$atag);
$chtag = $chat_id."a";
if($text  and !in_array($from_id,$tags)){
file_put_contents("data/$chat_id/tagall/$chat_id.txt","$from_id\n",FILE_APPEND);
file_put_contents("data/$chat_id/tagall/$chtag.txt","⌯[@$user]\n",FILE_APPEND);
}
$tagss = file_get_contents("data/$chat_id/tagall/$chtag.txt");
if($text == "تاك للكل" or $text == "تاك الكل" or $text == "صيحهم"){
bot('sendmessage',[
'chat_id'=>$chat_id,
'text'=>"⌔︙وينكم يالربع \n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n$tagss",'parse_mode'=>'MarkDown','reply_to_message_id'=>$message->message_id,
]);
}

$help = file_get_contents("sethelp/help.txt");
if($text =="الاوامر"){
if($help == null){
if( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)){
if($tc == 'group' | $tc == 'supergroup'){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id
,'text'=>"⌔︙اهلا بك في قائمة الاوامر » ⤈
  — — — — — — — — —ء
►︙م1 ← اوامر حماية المجموعة
►︙م2 ← اوامر المشرفين
►︙م3 ← اوامر الخدمة
►︙م4 ← اوامر الوضع والتعيين
►︙م5 ← اوامر الرفع والتنزيل
►︙م6 ←اوامر التفعيل والتعطيل
►︙م7 ← اوامر حذف القوائم
►︙م8 ← اوامر المطورين
  — — — — — — — — —ء
",
'parse_mode'=>"html",'disable_web_page_preview'=>true,
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[['text'=>'‹ اضغط هنا لشراء بوت حماية .','url'=>"t.me/م1"]],
]
])
]); 
}}}}}

$help1 = file_get_contents("sethelp/help1.txt");
if($text =="م1"){
if($help == null){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {    if ($tc == 'group' | $tc == 'supergroup'){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"
⌔︙اوامر حمايه المجموعه
 — — — — — — — — —ء 
⌔︙قفل/فتح + الاوامر الادناه 
 — — — — — — — — —ء 
►︙ قفل ← فتح ← الرد
►︙ قفل ← فتح ← الروابط
►︙ قفل ← فتح ← المعرف
►︙ قفل ← فتح ← البوتات
►︙ قفل ← فتح ← المتحركه
►︙ قفل ← فتح ← الملصقات
►︙ قفل ← فتح ← الملفات
►︙ قفل ← فتح ← الصور
►︙ قفل ← فتح ← الفيديو
  — — — — — — — — —ء
►︙ قفل ← فتح ← الاونلاين
►︙ قفل ← فتح ← الدردشه
►︙ قفل ← فتح ← التوجيه
►︙ قفل ← فتح ← البصمات
►︙ قفل ← فتح ← الصوت
►︙ قفل ← فتح ← الجهات
  — — — — — — — — —ء
►︙ قفل ← فتح ← الماركداون
►︙ قفل ← فتح ← التكرار
►︙ قفل ← فتح ← الهاشتاك
►︙ قفل ← فتح ← التعديل
►︙ قفل ← فتح ← الاشعارات
►︙ قفل ← فتح ← الكلايش
►︙ قفل ← فتح ← المواقع
►︙ قفل ← فتح ← الفشار
►︙ قفل ← فتح ← الكفر
   — — — — — — — — —ء
 ►︙ قفل ← فتح ←الطائفيه
►︙ قفل ← فتح ← الكل
►︙ قفل ← فتح ← العربيه
►︙ قفل ← فتح ←الانكليزيه
►︙ قفل ← فتح ← الفارسيه
►︙ قفل ← فتح ← التفليش
►︙ قفل ← فتح ← تعديل الميديا
►︙ قفل ← فتح ← بصمة الفيديو
►︙ قفل ← فتح ← الملصقات المتحركه
 — — — — — — — — —ء 
 ⌔︙قفل/فتح + الاوامر الادناه بالتقيد • بالطرد • بالكتم
 — — — — — — — — — ء
►︙التوجيه
►︙الروابط
►︙المعرفات
►︙البوتات
  — — — — — — — — —ء
",
'parse_mode'=>"html",'disable_web_page_preview'=>true,
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[['text'=>'‹ اضغط هنا لشراء بوت حماية .','url'=>"t.me/sjadiraqi"]],
]
])
]); 
}}}}}

$help2 = file_get_contents("sethelp/help2.txt");
if($text =="م2"){
if($help == null){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {    if ($tc == 'group' | $tc == 'supergroup'){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"
►︙اوامر مشرفين المجموعه
 — — — — — — — — — ء
 ►︙كتم ~ طرد ~ حظر ~ تقييد
 ►︙الغاء ااكتم ~ الغاء الحظر ~ الغاء التقييد
 ►︙بالرد على العضو لتفيذ الامر
 — — — — — — — — — ء
►︙ كتم ~ تقييد لمدة + عدد الدقائق  
►︙ امنع ~ الغاء المنع  بالرد 
— — — — — — — — — ء
►︙المميزين
►︙قائمه المنع
►︙المنشئين
►︙المحظورين
►︙المدراء
►︙الاعدادات
►︙الادمنيه
►︙المكتومين
►︙المقيدين
►︙الردود
 — — — — — — — — —ء
►︙ لاضافه الاوامر
►︙اضف ~ حذف امر + الامر  
►︙ايدي - طرد - حظر - كتم - تقييد
►︙رفع مميز - رفع مدير - رفع ادمن
►︙تفعيل الايدي بالصوره - تعطيل الايدي بالصوره
 — — — — — — — — —ء
►︙تثبيت • الغاء التثبيت
►︙تنظيف + العدد
►︙اضف - حذف رد
►︙جلب • حذف  الترحيب
►︙اضف ترحيب + الكليشه
►︙فحص البوت
►︙صلاحيتي
 — — — — — — — — —ء
",
'parse_mode'=>"html",'disable_web_page_preview'=>true,
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[['text'=>'‹ اضغط هنا لشراء بوت حماية .','url'=>"t.me/sjadiraqi"]],
]
])
]); 
}}}}}

$help3 = file_get_contents("sethelp/help3.txt");
if($text =="م3"){
if($help == null){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {    if ($tc == 'group' | $tc == 'supergroup'){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"
►︙اوامر العضو  والادمن .
 — — — — — — — — —ء
►︙معلوماتي
►︙الوقت
►︙التاريخ
►︙الرابط
►︙موقعي
►︙رتبتي
►︙جهاتي
►︙صورتي
►︙رسائلي
►︙اسمي
►︙معرفي
►︙ايدي
►︙ايديي
►︙نقاطي
►︙بيع نقاطي
►︙الالعاب
►︙القوانين
►︙السورس
►︙المطور
►︙تاك للكل
►︙جوائز الالعاب
►︙رابط الحذف
►︙صورتي + الرقم
►︙ايدي المجموعه
►︙اسم المجموعه
►︙معلومات المجموعه
►︙رتبته » بالرد
►︙كشف » بالرد  • بالايدي
►︙بوسه • بوسها » بالرد
►︙هينه • هينها » بالرد
►︙صيحه • صيحها » بالرد
 — — — — — — — — —ء
",
'parse_mode'=>"html",'disable_web_page_preview'=>true,
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[['text'=>'‹ اضغط هنا لشراء بوت حماية .','url'=>"t.me/sjadiraqi"]],
]
])
]); 
}}}}}

$help4 = file_get_contents("sethelp/help4.txt");
if($text =="م4"){
if($help == null){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {    if ($tc == 'group' | $tc == 'supergroup'){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"
⌔︙اوامر الوضع .
 — — — — — — — — —
⌔︙اوامر وضع عدد اضافة الاعضاء
⌔︙تفعيل • تعطيل » اضافة الاعضاء
⌔︙وضع » عدد الاضافه + العدد
 — — — — — — — — —
⌔︙اوامر الاشتراك الاجباري للمجموعه
⌔︙تفعيل • تعطيل » اشتراك المجموعه
⌔︙وضع قناة + قناة اشتراك اجباري
 — — — — — — — — —
⌔︙اوامر وضع التكرار 
⌔︙قفل • فتح » التكرار
⌔︙ضع » تكرار + العدد
⌔︙اوامر وضع الرابط » ⤈
⌔︙تفعيل • تعطيل » الرابط
⌔︙ضع » رابط
⌔︙صنع رابط وهمي
 — — — — — — — — —
⌔︙ضع + الامر .
⌔︙ضع » اسم + الاسم
⌔︙ضع » ترحيب + الكليشه
⌔︙ضع » قوانين + الكليشة
⌔︙ضع » عدد الاحرف + العدد
 — — — — — — — — —ء
 ",
'parse_mode'=>"html",'disable_web_page_preview'=>true,
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[['text'=>'‹ اضغط هنا لشراء بوت حماية .','url'=>"t.me/sjadiraqi"]],
]
])
]); 
}}}}}

$help5 = file_get_contents("sethelp/help5.txt");
if($text =="م5"){
if($help == null){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {    if ($tc == 'group' | $tc == 'supergroup'){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"
⌔︙اوامر الرفع والتنزيل .
 — — — — — — — — —
⌔︙الاوامر الخاصه بالمشرفين
⌔︙رفع المشرفين
⌔︙رفع • تنزيل » منشئ
⌔︙رفع • تنزيل » مدير
⌔︙رفع • تنزيل » ادمن
⌔︙رفع • تنزيل » مميز
 — — — — — — — — —
⌔︙رفع • تنزيل » ادمن بالكروب
 — — — — — — — — —
⌔︙الاوامر الخاصه بالمطورين 
⌔︙رفع • تنزيل » مطور
⌔︙رفع • تنزيل » منشئ
 — — — — — — — — —ء
 ",
'parse_mode'=>"html",'disable_web_page_preview'=>true,
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[['text'=>'‹ اضغط هنا لشراء بوت حماية .','url'=>"t.me/sjadiraqi"]],
]
])
]); 
}}}}}

$help6 = file_get_contents("sethelp/help6.txt");
if($text =="م6"){
if($help == null){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {	if ($tc == 'group' | $tc == 'supergroup'){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"
⌔︙اوامر التفعيل والتعطيل
 — — — — — — — — —
⌔︙اوامر التفعيل للمشرفين 
⌔︙تفعيل • تعطيل » الالعاب
⌔︙تفعيل • تعطيل » الرابط
⌔︙تفعيل • تعطيل » الايدي
⌔︙تفعيل • تعطيل » اطردني
⌔︙تفعيل • تعطيل » الترحيب
⌔︙تفعيل • تعطيل » ردود البوت
⌔︙تفعيل • تعطيل » اضافة الاعضاء
⌔︙تفعيل • تعطيل » الايدي بالصوره
⌔︙تفعيل • تعطيل » اشتراك المجموعه
 — — — — — — — — —
⌔︙اوامر التفعيل للمطورين
⌔︙تفعيل ⌯ تعطيل /.
⌔︙تفعيل • تعطيل » التواصل
⌔︙تفعيل • تعطيل » رد الخاص
⌔︙تفعيل • تعطيل » الاشتراك الاجباري
 — — — — — — — — —ء
 ",
'parse_mode'=>"html",'disable_web_page_preview'=>true,
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[['text'=>'‹ اضغط هنا لشراء بوت حماية .','url'=>"t.me/sjadiraqi"]],
]
])
]); 
}}}}}

$help7 = file_get_contents("sethelp/help7.txt");
if($text =="م7"){
if($help == null){
if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {	if ($tc == 'group' | $tc == 'supergroup'){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"
⌔︙اوامر حذف القوائم 
 — — — — — — — — —
⌔︙اوامر الحذف للمشرفين
⌔︙حذف المدراء
⌔︙حذف الادمنيه
⌔︙حذف المميزين
⌔︙حذف المقيدين
⌔︙حذف المكتومين
⌔︙حذف قائمه المنع
⌔︙حذف المحضورين
 — — — — — — — — —
⌔︙اوامر الحذف للمطورين 
⌔︙حذف المطورين
⌔︙حذف ردود المطور
 — — — — — — — — —ء
 ",
'parse_mode'=>"html",'disable_web_page_preview'=>true,
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[['text'=>'‹ اضغط هنا لشراء بوت حماية .','url'=>"t.me/sjadiraqi"]],
]
])
]); 
}}}}}

$help8 = file_get_contents("sethelp/help8.txt");
if($text =="م8"){
if($help == null){
if (in_array($from_id,$Dev) or in_array($from_id,$developer)) {	if ($tc == 'group' | $tc == 'supergroup'){
$add = $settings["information"]["added"];
if ($add == true) {
bot('sendmessage',['chat_id'=>$chat_id,'text'=>"
⌔︙اوامر المطورين 
 — — — — — — — — —
⌔︙تحديث
⌔︙المطورين
⌔︙الاحصائيات
⌔︙المشتركين
⌔︙مجموع الرسائل
⌔︙تحديث السورس
⌔︙اسم البوت + غادر
⌔︙ضع كليشه المطور
⌔︙غادر + -ايدي المجموعه
⌔︙تعيين • تغيير » اسم البوت
⌔︙كللهم + -ايدي المجموعه + الكلام
⌔︙الاوامر العامه للمطورين » ⤈
⌔︙اضف رد عام
⌔︙حذف رد عام
⌔︙ردود المطور • ردود العام


⌔︙حظر عام
⌔︙الغاء العام
⌔︙قائمه العام

⌔︙تفعيل • تعطيل » رد الخاص
⌔︙تعيين رد الخاص
⌔︙جلب رد الخاص
⌔︙حذف رد الخاص

⌔︙تفعيل • تعطيل » التواصل
⌔︙تعيين رد التواصل
⌔︙جلب رد التواصل
⌔︙حذف رد التواصل

⌔︙الاشتراك الاجباري
⌔︙تعيين الاشتراك الاجباري
⌔︙قناة الاشتراك
⌔︙تغيير قناة الاشتراك
⌔︙حذف قناة الاشتراك

⌔︙اذاعه
⌔︙اذاعه بالتوجيه
⌔︙اذاعه خاص
⌔︙اذاعه خاص بالتوجيه
 — — — — — — — — —ء
",
'parse_mode'=>"html",'disable_web_page_preview'=>true,
"reply_markup"=>json_encode([
"inline_keyboard"=>[
[['text'=>'‹ اضغط هنا لشراء بوت حماية .','url'=>"t.me/sjadiraqi"]],
]
])
]); 
}}}}}

if($text == "تحديث السورس" and in_array($from_id,$Dev) or $text == "تحديث سورس" and in_array($from_id,$Dev)){
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"جاري تحديث سورس نضر ►︙",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id,]);
sleep(1);
bot('sendMessage',['chat_id'=>$chat_id,'text'=>"⌔︙تم التحديث الى الاصدار الجديد",'parse_mode'=>"MARKDOWN",'reply_to_message_id'=>$message->message_id, ]);}
echo "Errors No found";