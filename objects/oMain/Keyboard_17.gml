// toggle fullscreen
if(keyboard_check_pressed(ord("F"))) {
	if(!fullScreen) {
		window_set_fullscreen(true);
		fullScreen = true;
	}
	else {
		window_set_fullscreen(false);
		fullScreen = false;
	}
}

// close game
if(keyboard_check_pressed(vk_f4)) {
	game_end();	
}