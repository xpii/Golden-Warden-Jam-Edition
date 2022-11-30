/// @description

// for browser build
gpu_set_texfilter(false);

x = room_width / 2;
y = room_height / 2;

fullScreen = false;

level = 0;

// パーク保管庫
perks = ds_list_create();
// 武器種保管庫
weapons = ds_list_create();

for(var _i=1; _i<10; _i++) {
	ds_list_add(perks, _i);
}
ds_list_delete(perks, ds_list_find_index(perks, PERK_BOMB_ADD));

// 初期武器リスト
ds_list_add(weapons, WEP_SWORD);
ds_list_add(weapons, WEP_BOW);
ds_list_add(weapons, WEP_SHIELD);

// チュートリアルフラグ
tutorialFlag = 0;


// メニュー系
menu = 0;
canClick = true;
gameover = false;

// 言語設定
enum LANG {
	ENG = 0,
	JP = 1
}
lang = LANG.ENG;	// 0:ENG 1:JPN

// 音量設定
audio_play_sound(snBGM,1,true);
volume = 1;
audio_group_set_gain(audiogroup_default,volume/3,1);


flash = 0;

room_goto(rTitle);
//application_surface_draw_enable(false);