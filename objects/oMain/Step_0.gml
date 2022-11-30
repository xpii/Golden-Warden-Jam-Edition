/// @description 

// for browser build
// check if display is larger than the window
if (display_get_width() != window_get_width()) {
    // resize window to display
    window_set_size(display_get_width(),display_get_height());
	display_set_gui_size(480, 270);
}

if(level == 0) {
	// マウスの位置によってメニューを決定
	if(mouse_y > room_height*0.88) menu = 1;
	else if(mouse_x < room_height*0.12 && mouse_y < room_height*0.12) menu = 2;
	else if(mouse_x < room_width*0.22 && mouse_y < room_height*0.12) menu = 3;
	else if(mouse_x > room_width*0.25 && mouse_x < room_width*0.75) menu = 0;
	else menu = -1;
	
	// メニュー決定
	if(mouse_check_button_pressed(mb_left)) {
		if(menu != -1) audio_play_sound(snClick, 1, false);
		// ゲームスタート
		if(menu == 0) {
			level = 1;
			room_goto(rStage);
		}
		// クレジット表示
		else if(menu == 1){
			level = -1;
		}
		
		// 音量変更
		else if(menu == 2) {
			alarm[1] = 1;
		}
		
		// 言語変更
		else if(menu == 3) {
			if(lang == LANG.ENG) lang = LANG.JP;
			else if(lang == LANG.JP) lang = LANG.ENG;
			
			with(oHint) alarm[11] = 1;
			with(oMessage) alarm[11] = 1;
		}
	}
}

// クレジット
else if(level == -1) {
	// 戻る
	if(mouse_check_button_pressed(mb_left)) {
		audio_play_sound(snClick, 1, false);
		level = 0;	
	}
}

flash ++;
if(flash > 220) flash -= 220;

