/// @desc attack(weapon);	攻撃処理	oPlayer	oEnemy
/// @arg weapon
/// @arg target
/// @arg dir
function attack(_weapon, _target, _dir){
	
	// 剣
	if(_weapon == SWORD) {
		// 一マス先の敵にx2ダメージ
		with(_target) {
			if(_dir == RIGHT && current_depth = other.current_depth + 1 || _dir == LEFT && current_depth = other.current_depth - 1) {
				// エフェクト
				instance_create_layer(other.x+TILESIZE*_dir, other.y, "Mobs", oSlash);
				damage(self, atk*2);
				other.weapon = 0
				if(other.object_index == oPlayer) other.alarm[0] = TURNSTEP;	// 連続攻撃の処理
				break;
			}
		}
		// 射程内に敵が居なければ発動しない
		if(weapon == _weapon) return 0;
	}
	
	// 弓
	else if(_weapon == BOW) {
		// 前方の敵に1ダメージ
		with(_target) {
			if(_target.object_index == oEnemy) {
				if(!follow.activate) continue;
			}
			if(_dir == RIGHT && current_depth > other.current_depth || _dir == LEFT && current_depth < other.current_depth) {
				// エフェクト
				if(_dir == RIGHT) {
					with(instance_create_layer(other.x, other.y, "Mobs", oArrow)) {
						dir = RIGHT;
						follow = oPlayer;
						target = oEnemy;
					}
				}
				else if(_dir == LEFT) {
					with(instance_create_layer(other.x, other.y, "Mobs", oArrow)) {
						dir = LEFT;
						follow = oEnemy;
						target = oPlayer;
					}
				}
				other.weapon = 0
				break;
			}
		}
		// 射程内に敵が居なければ発動しない
		if(weapon == _weapon) return 0;
	}
	
	// 盾
	else if(_weapon == SHIELD) {
		// 盾を発動
		with(instance_create_layer(x, y, "Mobs", oGuard)) {
			follow = other;	
		}
		guard = true;
		weapon = 0
		if(object_index == oPlayer) alarm[0] = TURNSTEP;
	}
	
		// 鎌
	else if(_weapon == SCYTHE) {
		// ２マス先の敵にx2ダメージ
		with(_target) {
			if(_dir == RIGHT && current_depth = other.current_depth + 2 || _dir == LEFT && current_depth = other.current_depth - 2) {
				// エフェクト
				instance_create_layer(other.x+TILESIZE*_dir, other.y, "Mobs", oSlash);
				damage(self, atk*2);
				other.weapon = 0
				if(other.object_index == oPlayer) other.alarm[0] = TURNSTEP;	// 連続攻撃の処理
				break;
			}
		}
		// 射程内に敵が居なければ発動しない
		if(weapon == _weapon) return 0;
	}
	else {
		return 0;
	}
	
	return 1;
}

///@desc damage(target, amount)	対象にダメージを与える
///@arg target		対象 oPlayer or oEnemy
///@arg amount		ダメージ量
function damage(_target, _amount) {
	
	with(_target) {
		// 表示
		with(instance_create_layer(x,y,"info",oLog)) {
			if(other.guard) {
				text = "Blocked"
			}
			else {	
				text = _amount*(-1);
				color = c_red;
			}
		}
		
		if(guard) guard = false;	// シールドがあればガード
		else hp = max(0,hp-_amount);
		
		
	}
	
}