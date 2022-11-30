/// @description 

follow = self;

returnTitle = false;
lastTresure = false;

if(oMain.level == 4) {
	lastTresure = true;
	game_set_speed(20, gamespeed_fps);
	oMain.alarm[0] = 30;
	oMain.canClick = false;

	audio_play_sound(snDeath,1,false);
	
	alarm[0] = 400;
}
