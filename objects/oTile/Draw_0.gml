/// @description 

draw_self();
if(activate) draw_sprite_ext(sIconsTile, type, x, y, 1, 1, 0, -1, image_alpha);

// draw_text(x,y+16,num);

if(drawMode == 1 && sprite_index != sTileFlash) sprite_index = sTileFlash;
else if(drawMode == 2 && sprite_index != sTileDanger) sprite_index = sTileDanger;

