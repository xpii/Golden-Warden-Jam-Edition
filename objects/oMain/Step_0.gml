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
	else menu = 0;
	
	// メニュー決定
	if(mouse_check_button_pressed(mb_left)) {
		// ゲームスタート
		if(menu == 0) {
			level++;
			room_goto(rStage);
		}
		// クレジット表示
		else if(menu == 1){

		}
		
		// 音量変更
		else if(menu == 2) {
			alarm[1] = 1;
		}
		
		// 言語変更
		else if(menu == 3) {
			if(lang == LANG.ENG) lang = LANG.JP;
			else if(lang == LANG.JP) lang = LANG.ENG;
		}
	}
	
	
	flash ++;
	if(flash > 220) flash -= 220;
}



