/// @description

// hp 0になったらゲームオーバー
if(hp <= 0 && !oMain.gameover) {
	
	if(instance_exists(oHint)) {
		with(oHint) if(enable) instance_destroy();
	}
	if(instance_exists(oMessage)) {
		with(oMessage) if(enable) instance_destroy();
	}
	
	game_set_speed(20, gamespeed_fps);
	oMain.alarm[0] = 30;
	oMain.canClick = false;
	
	image_alpha = 0;
	oMain.gameover = true;
	
	audio_play_sound(snDeath,1,false);
}


