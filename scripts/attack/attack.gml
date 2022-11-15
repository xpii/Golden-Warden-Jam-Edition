#macro RIGHT 1	// →
#macro LEFT -1	// ←

/// @desc attack(weapon);	攻撃処理	oPlayer	oEnemy
/// @arg weapon
/// @arg target
/// @arg dir
function attack(_weapon, _target, _dir){
	
	// 剣
	if(_weapon == "sword") {
		// 一マス先の敵にx2ダメージ
		with(_target) {
			if(_dir == RIGHT && current_depth = other.current_depth + 1 || _dir == LEFT && current_depth = other.current_depth - 1) {
				// エフェクト
				instance_create_layer(other.x+TILESIZE*_dir, other.y, "Mobs", oSlash);
				damage(self, atk*2);
				other.weapon = "";
				if(other.object_index == oPlayer) other.alarm[0] = TURNSTEP;	// 連続攻撃の処理
				break;
			}
		}
		// 射程内に敵が居なければ発動しない
		if(weapon == _weapon) return 0;
	}
	
	// 弓
	else if(_weapon == "bow") {
		// 前方の敵に1ダメージ
		with(_target) {
			if(!follow.activate) continue;
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
				other.weapon = "";
				break;
			}
		}
		// 射程内に敵が居なければ発動しない
		if(weapon == _weapon) return 0;
	}
	
	// 盾
	else if(_weapon == "shield") {
		// 盾を発動
		with(instance_create_layer(x, y, "Mobs", oGuard)) {
			follow = other;	
		}
		guard = true;
		weapon = "";
		if(object_index == oPlayer) alarm[0] = TURNSTEP;
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
		if(guard) guard = false;	// シールドがあればガード
		else hp = max(0,hp-_amount);
	}
}