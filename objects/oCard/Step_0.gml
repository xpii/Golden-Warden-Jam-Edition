/// @description 

// クリックで消費
if(point_in_rectangle(mouse_x, mouse_y, x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2) && mouse_check_button_pressed(mb_left)) {
	if(oGame.control) {
		// コントロール停止
		oGame.control = false;
		oGame.turn_statement = 1;
		oGame.alarm[0] = 1;
		
		with(oPlayer) {
			// 移動前に攻撃が余っていたらsubWeaponに格納
			if(weapon != "") {
				subWeapon = weapon;
				weapon = "";
			}
		
			// プレイヤーに情報を格納
			remain_move = other.num;
			weapon = other.weapon;
		}
		
		instance_destroy();
		if(!disposable) instance_create_layer(x,y,"Tile",oCard);
	}
}

if(oGame.control) image_alpha = 1;
else image_alpha = 0.5;


