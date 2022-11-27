/// @description 

draw_self();
if(follow.activate) draw_text(x,y-32,hp);
draw_sprite(sIcons, weapon, x, y-8*6);

drawSetMid();
draw_set_font(fnJP);
draw_text(room_width/2 ,room_height-32,desc);

drawSetDefault();
