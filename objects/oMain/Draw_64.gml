/// @description 2bitシェーダー適応

shader_set(sh2Bit);

if(surface_exists(application_surface)) {
	shader_set_uniform_f(surface_get_width(application_surface), surface_get_height(application_surface));
}

draw_surface(application_surface, 0, 0);

shader_reset();

