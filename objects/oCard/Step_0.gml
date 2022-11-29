/// @description 

// マウスカーソルが乗っている時
if(oGame.control && point_in_rectangle(mouse_x, mouse_y, x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2)) {
	// マウスカーソルが乗った瞬間のみの処理
	if(!isSelected) {
		isSelected = true;
		
		// 移動地点を予測し、カーソルで表示する
		var _walked = 0;		// 歩いた歩数
		var _other = self;		// oCardのインスタンス
		
		// 残り歩数が0になるまでループ
		var _remain_move = walk;
		while(_remain_move > 0) {
			
			var _slashed = false;	// 先制攻撃フラグ
			
			// 先制攻撃
			with(pEnemy) {
				// プレイヤーの一マス先に敵がいる場合
				if(current_depth == oPlayer.current_depth+_walked + 1) {
					
					// 与えられるダメージだけ移動力を減らす
					var _damage = min(hp, _remain_move); 
					_remain_move -= _damage;
					
					// 一マス後ろに敵がいるか、ガード中なら通り抜け不可
					if(place_meeting(x+TILESIZE, y, pEnemy) || guard) {
						
						// 敵を倒せるなら一歩前進
						if(hp - _damage <= 0 && !guard) _walked++;
					}
					
					// 通り抜け可能の場合、二歩前進（通り抜ける）
					else _walked += 2;

					_slashed = true;	// 先制攻撃をした
				}
			}
			
			// 先制攻撃が無い場合、残り歩数を1減らす
			if(!_slashed) {
				_remain_move--;
				_walked++;
			}
		}
		
		// 描画
		with(oTile) {
			if(num == oPlayer.current_depth + _walked) {
				drawMode = 1;
				drawBy = other;		
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

if(oGame.control) sprite_index = sCard;
else sprite_index = sCardDark;


