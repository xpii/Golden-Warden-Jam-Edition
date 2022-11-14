/// @description 行動

// 移動力が残っていれば移動
if(remain_move > 0) {
	move();
	remain_move--;
	
	// 先制攻撃
	if(instance_exists(oEnemy)) {
		with(oEnemy) {
			// 同じマスに敵がいる場合、先制攻撃を行う
			if(other.current_depth == follow.num) {
				other.remain_move++;
				other.target = self;
				other.alarm[1] = 1;
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
	if(weapon != "") {
		target = oEnemy;
		
		// 攻撃。不発ならタイル処理
		if(attack(weapon, target, RIGHT) == 0) {
			target = noone;
			
			oGame.turn_statement = 2;
			oGame.alarm[0] = 1;
		}
	}
	
	// 攻撃が無い場合
	else {
		// サブウェポンも無ければタイル処理
		if(subWeapon == "") {
			target = noone;
			
			oGame.turn_statement = 2;
			oGame.alarm[0] = 1;
		}

		else {
			// 攻撃が残っていれば次の攻撃
			weapon = subWeapon;
			subWeapon = "";
			target = oEnemy;
			
			// 攻撃。不発ならタイル処理
			if(attack(weapon, target, RIGHT) == 0) {
				oGame.turn_statement = 2;
				oGame.alarm[0] = 1;
			}
		}
	}
}
