/// @desc attack(weapon);	攻撃処理	oPlayer	pEnemy
/// @arg weapon
/// @arg target
/// @arg dir
function attack(_weapon, _target, _dir){
	
	// 剣
	if(_weapon == WEP_SWORD) {
		// 一マス先の敵にx2ダメージ
		with(_target) {
			if(_dir == RIGHT && current_depth = other.current_depth + 1 || _dir == LEFT && current_depth = other.current_depth - 1) {
				// エフェクト
				with(instance_create_layer(other.x+TILESIZE*_dir, other.y, "Mobs", oSlash)) {
					if(_dir = LEFT) image_xscale = -1;
				}
				damage(self, other.atk+1);
				other.weapon = 0
				
				break;
			}
		}
		// 射程内に敵が居なければ発動しない
		if(weapon == _weapon) return 0;
	}
	
	// 弓
	else if(_weapon == WEP_BOW) {
		// 前方の敵に1ダメージ
		with(_target) {
			if(_target.object_index == pEnemy) {
				if(!follow.activate) continue;
			}
			if(_dir == RIGHT && current_depth > other.current_depth || _dir == LEFT && current_depth < other.current_depth) {
				// エフェクト
				if(_dir == RIGHT) {
					with(instance_create_layer(other.x, other.y, "Mobs", oArrow)) {
						dir = RIGHT;
						follow = oPlayer;
						target = pEnemy;
					}
				}
				else if(_dir == LEFT) {
					with(instance_create_layer(other.x, other.y, "Mobs", oArrow)) {
						dir = LEFT;
						follow = pEnemy;
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
	else if(_weapon == WEP_SHIELD) {
		// 盾を発動
		with(instance_create_layer(x, y, "Mobs", oGuard)) {
			follow = other;	
		}
		guard = true;
		weapon = 0
		if(object_index == oPlayer) alarm[0] = TURNSTEP;
	}
	
	// 鎌
	else if(_weapon == WEP_SCYTHE) {
		// ２マス先の敵にx2ダメージ
		with(_target) {
			if(_dir == RIGHT && current_depth = other.current_depth + 2 ||
			   _dir == RIGHT && current_depth = other.current_depth + 1 ||
			   _dir == LEFT && current_depth = other.current_depth - 2 ||
			   _dir == LEFT && current_depth = other.current_depth - 1) {
				
				damage(self, other.atk+1);
				other.weapon = 0;
			}
		}
		// 射程内に敵が居なければ発動しない
		if(weapon == _weapon) return 0;
		
		// 発動した場合の処理
		else {
			// エフェクト
			with(instance_create_layer(other.x+TILESIZE*_dir, other.y, "Mobs", oSlash)){
				if(_dir = LEFT) image_xscale = -1;
			}
			if(other.object_index == oPlayer) other.alarm[0] = TURNSTEP;	// 連続攻撃の処理
		}
	}
	
	// 双剣
	else if(_weapon == WEP_DUALSWORD) {
		// １マス先の両隣の敵にx2ダメージ
		with(_target) {
			if(current_depth = other.current_depth + 1 || current_depth = other.current_depth - 1) {
				damage(self, other.atk+1);
				other.weapon = 0;
			}
		}
		// 射程内に敵が居なければ発動しない
		if(weapon == _weapon) return 0;
		
		// 発動した場合の処理
		else {
			// エフェクト
			instance_create_layer(other.x+TILESIZE, other.y, "Mobs", oSlash);
			with(instance_create_layer(other.x-TILESIZE, other.y, "Mobs", oSlash)) {
				image_xscale = -1;
			}
			if(other.object_index == oPlayer) other.alarm[0] = TURNSTEP;	// 連続攻撃の処理
		}
	}
	
	// クロスボウ
	else if(_weapon == WEP_XBOW) {
		// 前方の敵に1ダメージ
		with(_target) {
			if(_target.object_index == pEnemy) {
				if(!follow.activate) continue;
			}
			if(_dir == RIGHT && current_depth > other.current_depth || _dir == LEFT && current_depth < other.current_depth) {
				damage(self, 1);
				other.weapon = 0
			}
		}
		// 射程内に敵が居なければ発動しない
		if(weapon == _weapon) return 0;
		// 発動した場合の処理
		else {
			// エフェクト
			
			if(other.object_index == oPlayer) other.alarm[0] = TURNSTEP;	// 連続攻撃の処理
		}
	}
	else {
		return 0;
	}
	
	// 連続攻撃の処理
	if(_weapon != WEP_BOW && object_index == oPlayer) {
		// 攻撃が残っていれば次の攻撃準備
		if(subWeapon != 0) {
			weapon = subWeapon;
			subWeapon = 0;
			
			alarm[0] = TURNSTEP;
		}
		
		else alarm[0] = TURNSTEP*2;
	}
	
	return 1;
}

///@desc damage(target, amount)	対象にダメージを与える
///@arg target		対象 oPlayer or pEnemy
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