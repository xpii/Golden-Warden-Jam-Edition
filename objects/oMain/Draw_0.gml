/// @description 

if(level == 0) {
	
	var _flash = 11;
	
	// タイトルとか
	drawSetMid();
	
	// flash
	if(menu == 0 && floor(flash/_flash)%2 == 0) draw_set_color(c_aqua);
	else draw_set_color(c_white);
	
	draw_set_font(fnEngBig);
	draw_text(x, y, "Title");

	draw_set_font(fnEng);
	draw_text(x, y+16, "Press enter to start");
	
	// クレジット
	draw_set_color(c_white);
	draw_text(room_width * 0.1, room_height-16, VERSION);
	draw_text(room_width * 0.88, room_height-16, COPYRIGHT);
	
	//flash
	if(menu == 1 && floor(flash/_flash)%2 == 0) draw_set_color(c_aqua);
	else draw_set_color(c_white);
	
	draw_text(room_width * 0.5, room_height-16, "Credits");
	
	// 音量
	draw_sprite(sVol,volume, 16, 16);
	
	// 言語設定
	// flash
	if(menu == 3 && floor(flash/_flash)%2 == 0) draw_set_color(c_aqua);
	else draw_set_color(c_white);
	
	if(lang == LANG.ENG) {
		// draw_sprite(sDice3, floor(lang_image_index/2), 64, 16);
		draw_text(80, 16, "ENG");
	}
	else if(lang == LANG.JP) {
		// draw_sprite(sDice, floor(lang_image_index/2), 64, 16);
		draw_text(80, 16, "JP");
	}
	
	
	drawSetDefault();
}



