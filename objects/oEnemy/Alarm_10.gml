/// @description カーソルを合わせた時の情報表示

if(weapon == 0) return;

var _targetNum = 0;

switch(weapon) {
	case WEP_SWORD:
	desc = "まえ1マスに 2ダメージ";
	_targetNum = -1;
	break;
	
	case WEP_BOW:
	desc = "まえに 1ダメージのやをはなつ";
	_targetNum = min(0, oPlayer.current_depth - current_depth);
	break;
	
	case WEP_SHIELD:
	desc = "ダメージを 1かいふせぐ たてをはる";
	break;
	
	case WEP_SCYTHE:
	desc = "まえ2マスに 2ダメージ";
	_targetNum = -2;
	break;
	
	case WEP_DUALSWORD:
	desc = "ぜんご1マスに 2ダメージ";
	_targetNum = 1;
	break;
	
	case WEP_XBOW:
	desc = "まえのてきすべてに 1ダメージ";
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

