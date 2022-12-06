/// @description タイトルに戻る

// 出現中のヒント等を削除
if(instance_exists(oHint)) {
	with(oHint) if(enable) instance_destroy();
}
if(instance_exists(oMessage)) {
	with(oMessage) if(enable) instance_destroy();
}

// リストの初期化
ds_list_clear(perks);
ds_list_clear(weapons);

for(var _i=1; _i<10; _i++) {
	ds_list_add(perks, _i);
}
ds_list_delete(perks, ds_list_find_index(perks, PERK_BOMB_ADD));

// 初期武器リスト
ds_list_add(weapons, WEP_SWORD);
ds_list_add(weapons, WEP_BOW);
ds_list_add(weapons, WEP_SHIELD);


level = 0;
room_goto(rTitle);

