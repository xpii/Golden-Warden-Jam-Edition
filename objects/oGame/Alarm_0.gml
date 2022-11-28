/// @description ターン全体の処理
#macro TURNSTEP 20	// 一動作ごとにかかるフレーム数

switch(turn_statement) {
	// プレイヤーの移動、攻撃
	case 1:
	oPlayer.alarm[0] = 1;
	break;
	
	// タイル処理
	case 2:
	with(oPlayer) tileEffect();
	break;
	
	// 敵の移動、攻撃
	case 3:
	if(instance_exists(oEnemy)) {
		with(oEnemy) {
			alarm[0] = 1;	
		}
	}
	else {
		turn_statement = 4;
		alarm[0] = TURNSTEP;
	}
	break;
	
	// 状態変化の残り時間を減らす
	case 4:
		if(instance_exists(pStateChange)) {
		with(pStateChange) {
			alarm[0] = 1;	
		}
	}
	else {
		turn_statement = 5;
		alarm[0] = TURNSTEP;
	}
	break;
	
	// 終了
	case 5:
	// ターン終了時に攻撃が余っていたらsubWeaponに格納
	with(oPlayer) {
		if(weapon != 0) {
			subWeapon = weapon;
			weapon = 0;
		}
		sprite_index = sPlayer;
	}
	turn_statement = 0;
	combo = 0;
	control = true;
	break;
}
