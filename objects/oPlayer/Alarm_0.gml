/// @description 行動

// 移動力が残っていれば移動
if(remain_move > 0) {
	// 先制攻撃
	var _slashed = false;
	
	if(instance_exists(oEnemy)) {
		with(oEnemy) {
			// 一マス先に敵がいる場合
			if(other.current_depth + 1 == current_depth) {
				other.target = self;
				other.alarm[1] = TURNSTEP;
				_slashed = true;
			}
		}
	}
	
	// 先制攻撃ではない場合
	if(!_slashed) {
		move();
		remain_move--;
		
		// 一定時間後にまた移動
		if(remain_move > 0) alarm[0] = TURNSTEP;
		else alarm[0] = TURNSTEP*2;
	}
}

// 移動終了時の処理
else {
	// 攻撃がある場合攻撃処理
	if(weapon != 0) {
		
		// 攻撃。不発ならタイル処理
		if(attack(weapon, oEnemy, RIGHT) == 0) {
			oGame.turn_statement = 2;
			oGame.alarm[0] = TURNSTEP;
		}
	}
	
	// 攻撃が無い場合タイル処理
	else {
		oGame.turn_statement = 2;
		oGame.alarm[0] = 1;
	}
}
