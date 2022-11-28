/// @description 行動

// 移動力が残っていれば移動
if(remain_move > 0) {
	// 先制攻撃
	var _slashed = false;
	
	if(instance_exists(oEnemy)) {
		with(oEnemy) {
			// 一マス先に敵がいる場合
			if(other.current_depth + 1 == current_depth) {
				var _guard = guard;	// ターゲットがガード状態かどうか保存　ガード状態は通り抜け不可
				
				// Slash表示
				with(instance_create_layer(x,y-16,"info",oLog)) {
					text = "Slash!"
				}
				// 移動力だけダメージ　与えたダメージだけ移動力を減らす
				var _damage = min(other.remain_move, hp);
				damage(self, _damage);
				other.remain_move -= _damage;
				
				// 敵の一マス後ろに敵がいる or ガードしていたなら通り抜け不可
				if(place_meeting(x+TILESIZE, y, oEnemy) || _guard) {
					
					// 敵を倒せたならそのマスに移動
					if(hp <= 0) move();
				}
				
				// 通り抜け可能の場合
				else {
					repeat(2) move();	// 二マス移動（敵を通り抜ける）
				}
				_slashed = true;	// 先制攻撃をした
			}
		}
	}
	
	// 先制攻撃ではない場合
	if(!_slashed) {
		move();
		remain_move--;
	}
	
	// 一定時間後にまた移動
	if(remain_move > 0 && !_slashed) alarm[0] = TURNSTEP;
	else alarm[0] = TURNSTEP*2;
}

// 移動終了時の処理
else {
	// 攻撃がある場合攻撃処理
	if(weapon != 0) {
		
		// 攻撃。不発ならタイル処理
		if(attack(weapon, oEnemy, RIGHT) == 0) {
			oGame.turn_statement = 2;
			oGame.alarm[0] = 1;
		}
	}
	
	// 攻撃が無い場合タイル処理
	else {
		oGame.turn_statement = 2;
		oGame.alarm[0] = 1;
	}
}
