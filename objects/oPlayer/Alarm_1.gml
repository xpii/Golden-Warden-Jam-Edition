/// @description 先制攻撃

// 攻撃
if(target != noone) {
	with(target) {
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
		if(place_meeting(x+TILESIZE, y, pEnemy) || _guard || current_depth == oGame.max_depth) {
					
			// 敵を倒せたならそのマスに移動
			if(hp <= 0) move();
		}
				
		// 通り抜け可能の場合
		else {
			repeat(2) move();	// 二マス移動（敵を通り抜ける）
		}
	}
	// 次の移動
	sprite_index = sPlayerSlash;
	image_index = 0;
	
	oMain.tutorialFlag = 1;
}




