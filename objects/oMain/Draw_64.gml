/// @description 2bitシェーダー適応


shader_set(sh2Bit);

/*
if(surface_exists(application_surface)) {
	shader_set_uniform_f(surface_get_width(application_surface), surface_get_height(application_surface));
}*/

draw_surface(application_surface, 0, 0);

shader_reset();

if(level == 0) {
	drawSet(fa_middle, fa_center, fnEngBig);
	draw_text(x, y, "Title");

	draw_set_font(fnEng);
	draw_text(x, y+16, "Press enter to start");

	drawSetDefault();
}
