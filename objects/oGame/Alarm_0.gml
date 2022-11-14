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
	
	// 終了
	case 4:
	turn_statement = 0;
	control = true;
	break;
}
