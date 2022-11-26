/// @description 先制攻撃

// 攻撃
if(target != noone) {
	var _guard = target.guard;	// ターゲットがガード状態かどうか保存　ガード状態は通り抜け不可
	damage(target, atk+1);
	
	// 通り抜け不可の場合移動力を失う
	if(place_meeting(target.x+TILESIZE, target.y, oEnemy) || _guard) {
		remain_move = 0;
		
		// 攻撃で倒しきれなかった場合
		if(target.hp > 0) {
			// 一マス戻る
			back();
		}
		// 移動後の処理
		target = noone;
		alarm[0] = TURNSTEP;
		
	}
	// 通り抜ける
	else {
		// 次の移動 or 移動後の処理
		target = noone;
		alarm[0] = 1;
	}
}




