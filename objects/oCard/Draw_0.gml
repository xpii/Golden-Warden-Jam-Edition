/// @description Insert description here
// You can write your code in this editor

var _y = y;
if(isSelected) _y = y-6;

draw_sprite_ext(sprite_index, image_index, x, _y, 1, 1, 0, -1, image_alpha);

drawSetMid();
draw_text(x,_y-12,walk);
draw_sprite(sIcons, weapon, x, _y+8);


// 説明
if(isSelected) {
	draw_sprite(sIconsFont, 0, oPlayer.x-6, oPlayer.y-8*4);
	draw_text(oPlayer.x+6, oPlayer.y-8*4, walk);				// プレイヤーの頭上に歩数
	draw_sprite(sIcons, weapon, oPlayer.x, oPlayer.y-8*6);		// プレイヤーの頭上に武器アイコン
	
	draw_set_font(fnJP);
	draw_text(room_width/2 ,room_height-32,desc);
}


drawSetDefault();