/// @description 行動
if(!follow.activate) {
	// 状態変化処理へ
	oGame.turn_statement = 4;
	oGame.alarm[0] = TURNSTEP;
	return;
}

// 攻撃をセット
if(weapon == "") {
	if(current_depth < 50) weapon = "sword";
	else if(current_depth < 100) weapon = choose("sword","bow");
	else if(current_depth >= 100) weapon = choose("sword","bow","shield");
}

// 攻撃がある場合攻撃処理
else attack(weapon, oPlayer, LEFT);

// 状態変化処理へ
oGame.turn_statement = 4;
oGame.alarm[0] = TURNSTEP;