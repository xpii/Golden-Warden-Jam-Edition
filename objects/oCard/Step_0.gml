/// @description 

// マウスカーソルが乗っている時
if(oGame.control && point_in_rectangle(mouse_x, mouse_y, x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2)) {
	// マウスカーソルが乗った瞬間のみの処理
	if(!isSelected) {
		isSelected = true;
		
		// 移動地点を予測し、カーソルで表示する
		var _extra_walk = 0;
		
		for(var _i=0; _i<walk+_extra_walk; _i++) {
			with(oEnemy) {
				// プレイヤーの近くの一マスずつ調べる
				if(current_depth == oPlayer.current_depth + _i+1) {
					// 通り抜け出来ない場合
					if(place_meeting(x+TILESIZE, y, oEnemy) || guard) {
						// 先制攻撃で倒せる場合
						if(hp <= oPlayer.atk*2 && !guard) {
							with(oCursor) {
								x = other.x;
								y = other.y;
							}
						}
						// 倒せない場合
						else {
							with(oCursor) {
								x = other.x - TILESIZE;
								y = other.y;
							}
						}
						// 終了
						_extra_walk = -1;
						_i = other.walk;
						break;
					}
					// 通り抜け出来る場合
					else {
						_extra_walk++;
					}
				}
			}
		}
		
		if(_extra_walk >= 0) {
			with(oCursor) {
				x = oPlayer.x + TILESIZE*(other.walk+_extra_walk);
				y = oPlayer.y;
			}
		}
	}
	
	// クリック時
	if(mouse_check_button_pressed(mb_left)) {
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
				remain_move = other.walk;
				weapon = other.weapon;
			}
		
			instance_destroy();
			if(disposable) oGame.nums_of_cards--;
			else {
				with(instance_create_layer(x,y,"Tile",oCard)) {
					num = other.num;
				}
			}
		}
	}
	
}
else isSelected = false;

if(oGame.control) image_alpha = 1;
else image_alpha = 0.5;


