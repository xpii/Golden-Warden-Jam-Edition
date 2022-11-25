/// @description

x = room_width / 2;
y = room_height / 2;

fullScreen = false;

level = 0;

// パーク保管庫
perks = ds_list_create();

for(var _i=1; _i<8; _i++) {
	ds_list_add(perks, _i);
}