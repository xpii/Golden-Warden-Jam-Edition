/// @description 

// マウスカーソルが乗っている時
if(oGame.control && point_in_rectangle(mouse_x, mouse_y, x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2)) {
	// マウスカーソルが乗った瞬間のみの処理
	if(!isSelected) {
		isSelected = true;
		
		// 移動地点を予測し、カーソルで表示する
		var _extra_walk = 0;
		var _other = self;		// oCardのインスタンス
		
		for(var _i=0; _i<walk+_extra_walk; _i++) {
			with(oEnemy) {
				// プレイヤーの近くの一マスずつ調べる
				if(current_depth == oPlayer.current_depth + _i+1) {
					// 通り抜け出来ない場合
					if(place_meeting(x+TILESIZE, y, oEnemy) || guard) {
						// 先制攻撃で倒せる場合
						if(hp <= oPlayer.atk+1 && !guard) {
							with(oTile) {
								if(num == other.current_depth) {
									drawMode = 1;
									drawBy = _other;
								}
							}
						}
						// 倒せない場合
						else {
							with(oTile) {
								if(num == other.current_depth - 1) {
									drawMode = 1;
									drawBy = _other;	
								}
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
			with(oTile) {
				if(num == oPlayer.current_depth + other.walk+_extra_walk) {
					drawMode = 1;
					drawBy = other;		
				}
			}
		}
			
		
		// oPlayerのスプライト変更
		if(weapon == 0) oPlayer.sprite_index = sPlayer;
		else if(weapon == WEP_SWORD || weapon == WEP_SCYTHE || weapon == WEP_DUALSWORD) oPlayer.sprite_index = sPlayerSword;
		else if(weapon == WEP_BOW || weapon == WEP_XBOW) oPlayer.sprite_index = sPlayerBow;
		else if(weapon == WEP_SHIELD) oPlayer.sprite_index = sPlayerShield;
	}
	
	// クリック時
	if(mouse_check_button_pressed(mb_left) && oGame.control) {
		// コントロール停止
		oGame.control = false;
		oGame.turn_statement = 1;
		oGame.alarm[0] = 1;
		
		with(oPlayer) {
			// プレイヤーに情報を格納
			remain_move = other.walk;
			weapon = other.weapon;
		}
		
		instance_destroy();
		with(oTile) if(drawBy == other) drawBy = self;
			
		// 使い捨ての場合、そうでない場合
		if(disposable) oGame.nums_of_cards--;
		else {
			with(instance_create_layer(x,y,"Info",oCard)) {
				num = other.num;
			}
		}
		oPlayer.sprite_index = sPlayer;
	}
}

// マウスカーソルが乗っていない場合
else {
	// マウスカーソルが降りた瞬間の処理
	if(isSelected) {
		isSelected = false;
		with(oTile) if(drawBy == other) drawBy = self;
		
		oPlayer.sprite_index = sPlayer;
	}	
}

if(oGame.control) {
	image_alpha = 1;
	image_speed = 1;
}
else {
	image_alpha = 0.5;
	image_speed = 0;
}


