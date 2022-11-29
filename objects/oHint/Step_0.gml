/// @description 

if(enable) {
	w = min(w + (w_max-w)*0.5 + 1, w_max);
	h = min(h + (h_max-h)*0.5 + 1, h_max);


	var _x1 = x + w_max/2 - w/2 - margin;
	var _x2 = x + w_max/2 + w/2 + margin;
	var _y1 = y + h_max/2 - h/2 - margin;
	var _y2 = y + h_max/2 + h/2 + margin;

	// OKボタンをマウスクリック
	if(w == w_max && h == h_max && point_in_rectangle(mouse_x, mouse_y, _x1, _y1, _x2, _y2)) {
		if(mouse_check_button_pressed(mb_left)) instance_destroy();
	}
}


