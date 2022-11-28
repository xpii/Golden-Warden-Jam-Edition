/// @description 

if(weapon == 0) sprite_index = sEnemy;
else if(weapon == WEP_SWORD || weapon == WEP_SCYTHE || weapon == WEP_DUALSWORD) sprite_index = sEnemySword;
else if(weapon == WEP_BOW || weapon == WEP_XBOW) sprite_index = sEnemyBow;
else if(weapon == WEP_SHIELD) sprite_index = sEnemyShield;

draw_self();

if(follow.activate) draw_text(x,y-32,hp);
draw_sprite(sIcons, weapon, x, y-8*6);

drawSetMid();
draw_set_font(fnJP);
draw_text(room_width/2 ,room_height-32,desc);

drawSetDefault();
