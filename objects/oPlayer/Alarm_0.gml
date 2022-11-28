/// @description 行動

// 移動力が残っていれば移動
if(remain_move > 0) {
	// 先制攻撃ではない場合
	move();
	remain_move--;
	
	// 先制攻撃
	if(instance_exists(oEnemy)) {
		with(oEnemy) {
			// 同じマスに敵がいる場合、先制攻撃を行う
			if(other.current_depth+1 == current_depth) {
				other.remain_move++;
				other.target = self;
				other.alarm[1] = 5;
				break;
			}
		}
	}
	

	
	// 先制攻撃でなければまた移動
	if(target == noone) alarm[0] = TURNSTEP;
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
