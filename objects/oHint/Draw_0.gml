/// @description 

if(enable) {
	var _x1 = x + w_max/2 - w/2 - margin;
	var _x2 = x + w_max/2 + w/2 + margin;
	var _y1 = y + h_max/2 - h/2 - margin;
	var _y2 = y + h_max/2 + h/2 + margin;

	var _x3 = x + w - sprite_width;
	var _y3 = y + h - sprite_height;

	draw_set_color(c_black);
	draw_rectangle(_x1, _y1, _x2, _y2, false);

	draw_set_color(c_white);
	draw_rectangle(_x1, _y1, _x2, _y2, true);

	if(w == w_max) {
		draw_set_font(fnJP);
		draw_text(x,y,text);

	
	
		drawSetDefault();
	}
}