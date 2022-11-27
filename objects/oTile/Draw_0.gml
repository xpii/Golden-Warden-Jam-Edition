/// @description 

draw_self();
if(activate) draw_sprite_ext(sIconsTile, type, x, y, 1, 1, 0, -1, image_alpha);

// draw_text(x,y+16,num);

/*
if(drawMode > 0) {
	var _alp = abs(sin(oMain.n))*0.2;
	if(drawMode == 1) var _col = c_white;
	else var _col = c_red;
	
	// 単色化シェーダーを適用
	shader_set(shLight);

	// 単色化で描画
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, _col, _alp);

	// シェーダーをリセット
	shader_reset();
	// 通常のブレンドモードに戻す
	gpu_set_blendmode(bm_normal);
}
*/

if(drawMode == 1 && sprite_index != sTileFlash) sprite_index = sTileFlash;
else if(drawMode == 2 && sprite_index != sTileDanger) sprite_index = sTileDanger;
