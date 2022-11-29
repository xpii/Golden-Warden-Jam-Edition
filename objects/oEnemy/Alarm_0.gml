/// @description 行動

// 状態変化処理
oGame.turn_statement = 4;
oGame.alarm[0] = TURNSTEP;
if(!follow.activate) return;


// 攻撃をセット
if(weapon == 0) {
	if(oMain.level < 2) weapon = WEP_SWORD;
	else if(oMain.level < 3) weapon = choose(WEP_SWORD,WEP_BOW);
	else if(oMain.level < 4) weapon = choose(WEP_SWORD,WEP_BOW,WEP_SHIELD);
	else weapon = choose(WEP_SCYTHE,WEP_DUALSWORD,WEP_BOW,WEP_SHIELD);
	
	alarm[10] = 1;
}

// 攻撃がある場合攻撃処理
else {
	attack(weapon, oPlayer, LEFT);
	with(oTile) if(drawBy == other) drawBy = self;
	desc = "";
}
