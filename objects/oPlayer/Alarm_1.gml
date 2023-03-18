/// @description 先制攻撃

// 攻撃
if(target != noone) {
	with(target) {
		var _guard = guard;	// ターゲットがガード状態かどうか保存　ガード状態は通り抜け不可
	
		// Slash表示
		with(instance_create_layer(x,y-16,"info",oLog)) {
			text = "Slash!"
		}
		// 移動力分のダメージを与える
		var _damage;
		if(!_guard) _damage = min(other.remain_move, hp); // 敵に与えられるダメージだけ移動力を減らす
		else _damage = other.remain_move;				  // 敵がガード中なら移動力全て消費する	
		
		damage(self, _damage);
		other.remain_move -= _damage;
		
		// ラストの宝箱は例外的に通り抜け不可　倒しても不可
		if(current_depth == oGame.max_depth) {
			other.remain_move = 0;
		}
		
		// 敵の一マス後ろに敵がいる or ガードしていたなら通り抜け不可
		else if(place_meeting(x+TILESIZE, y, pEnemy) || _guard) {	
			// 敵を倒せたならそのマスに移動
			if(hp <= 0) move();
		}
				
		// 通り抜け可能の場合
		else {
			repeat(2) move();	// 二マス移動（敵を通り抜ける）
		}
		
		audio_play_sound(snSlash, 1, false);
	}
	// 次の移動
	sprite_index = sPlayerSlash;
	image_index = 0;
	
	oMain.tutorialFlag = 1;
}




