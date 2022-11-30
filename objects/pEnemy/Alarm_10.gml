/// @description カーソルを合わせた時の情報表示

if(weapon == 0 && follow.activate) {
	if(oMain.lang == LANG.JP) desc = "スケルトン";
	else desc = "Skeleton";
	return;
}
var _targetNum = 0;

switch(weapon) {
	case WEP_SWORD:
	if(oMain.lang == LANG.JP) desc = "まえ1マスに 2ダメージ";
	else desc = "2 damage to the front one tile";
	_targetNum = -1;
	break;
	
	case WEP_BOW:
	if(oMain.lang == LANG.JP) desc = "まえに 1ダメージのやをはなつ";
	else desc = "Shoots 1 damage arrow in front of you.";
	_targetNum = min(0, oPlayer.current_depth - current_depth);
	break;
	
	case WEP_SHIELD:
	if(oMain.lang == LANG.JP) desc = "ダメージを 1かいふせぐ たてをはる";
	else desc = "Use a shield to prevent damage once";
	break;
	
	case WEP_SCYTHE:
	if(oMain.lang == LANG.JP) desc = "まえ2マスに 2ダメージ";
	else desc = "2 damage to the front two tile";
	_targetNum = -2;
	break;
	
	case WEP_DUALSWORD:
	if(oMain.lang == LANG.JP) desc = "ぜんご1マスに 2ダメージ";
	else desc = "2 damage to one tile in front and behind";
	_targetNum = 1;
	break;
	
	case WEP_XBOW:
	if(oMain.lang == LANG.JP) desc = "まえのてきすべてに 1ダメージ";
	else desc = "1 damage to all enemies in front of you";
	_targetNum = min(0, oPlayer.current_depth - current_depth);
	break;
}

if(_targetNum == 0) return;

// 攻撃判定を表示
with(oTile) {
	if(num == other.current_depth + _targetNum) {
		drawBy = other;
		drawMode = 2;
	}
}

// 追加で-1にも攻撃判定を表示
if(weapon == WEP_SCYTHE || weapon == WEP_DUALSWORD) {
	with(oTile) {
		if(num == other.current_depth - 1) {
			drawBy = other;
			drawMode = 2;
		}
	}
}

