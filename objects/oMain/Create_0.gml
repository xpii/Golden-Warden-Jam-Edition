/// @description

x = room_width / 2;
y = room_height / 2;

fullScreen = false;

level = 0;

// パーク保管庫
perks = ds_list_create();
// 武器種保管庫
weapons = ds_list_create();

for(var _i=1; _i<8; _i++) {
	ds_list_add(perks, _i);
}

// 初期武器リスト
ds_list_add(weapons, WEP_SWORD);
ds_list_add(weapons, WEP_BOW);
ds_list_add(weapons, WEP_SHIELD);