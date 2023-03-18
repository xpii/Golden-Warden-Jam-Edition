/// @description 

	var _flash = 11;
if(level == 0) {
	
	// タイトルとか
	drawSetMid();
	
	// flash
	if(menu == 0 && floor(flash/_flash)%2 == 0) draw_set_color(c_aqua);
	else draw_set_color(c_white);
	
	draw_set_font(fnEngBig);
	draw_sprite(sLogo, 0, x, y-48);

	draw_set_font(fnJP);
	if(lang == LANG.ENG) draw_text(x, y+32, "Click to start");
	else draw_text(x, y+32, "クリックしてスタート");
	
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
	
	draw_sprite(sEarth, 0, 56, 16);
	if(lang == LANG.ENG) draw_text(80, 16, "ENG");
	else draw_text(80, 16, "JP");

	
	drawSetDefault();
}

// クレジット
else if(level == -1) {
	
	drawSetMid();
	draw_set_font(fnJP);
	draw_set_color(c_white);
	draw_text(room_width * 0.5, room_height * 0.15, "Credit");
	
	drawSetDefault();
	draw_set_font(fnJP);
	draw_text(room_width * 0.3, room_height * 0.25, "Program, Art   : xpii\nMusic          : rotteruo\nSE             : SKIPMORE\nTitle font     : ゆうたONE\nSpecial thanks : CROWsan");
	
	drawSetMid();
	draw_text(room_width * 0.5, room_height * 0.60, "This game was made for Game Off 2022.");
	// flash
	if(floor(flash/_flash)%2 == 0) draw_set_color(c_aqua);
	else draw_set_color(c_white);
	draw_text(room_width * 0.5, room_height * 0.9, "Click to return");
}

// ゲームクリアメッセージ
else if(instance_exists(oBoxOpened)) {
	with(oBoxOpened) {
		if(lastTresure && other.canClick) {
			oGame.control = false;
			
			drawSetMid();
			draw_set_font(fnJP);
			draw_set_color(c_white);

			
			if(other.lang == LANG.JP) var _text = "おめでとう!!\nオタカラを てにいれたぞ!!";
			else var _text = "Congratulation!!\nYou got tresure!!";
			
			// 縁取り
			draw_set_color(c_black);
			draw_text(room_width/2+1, TILESIZE+1, _text);
				
			// flash
			if(floor(other.flash/_flash)%2 == 0) draw_set_color(c_aqua);
			else draw_set_color(c_white);
			
			draw_text(room_width/2, TILESIZE, _text);
			
			if(returnTitle) {
				draw_set_color(c_white);
				if(other.lang == LANG.JP) draw_text(room_width/2, room_height*0.9, "クリックしてタイトルにもどる");	
				else draw_text(room_width/2, room_height*0.9, "Click to return");	
			}
			drawSetDefault();
		}
	}
}

else if(gameover) {
	drawSetMid();
	draw_set_font(fnJP);
	if(canClick) {
		if(other.lang == LANG.JP) draw_text(room_width/2, TILESIZE, "ゲームオーバー\nクリックしてリトライ");
		else draw_text(room_width/2, TILESIZE, "Game Over\nclick to restart");
	}
	else {
		if(other.lang == LANG.JP) draw_text(room_width/2, TILESIZE, "ゲームオーバー");
		else draw_text(room_width/2, TILESIZE, "Game Over");
	}
	oGame.control = false;
	
	drawSetDefault();
}



