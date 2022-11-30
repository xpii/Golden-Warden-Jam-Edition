/// @description タイトルに戻る

if(instance_exists(oHint)) {
	with(oHint) if(enable) instance_destroy();
}
if(instance_exists(oMessage)) {
	with(oMessage) if(enable) instance_destroy();
}

level = 0;
room_goto(rTitle);

