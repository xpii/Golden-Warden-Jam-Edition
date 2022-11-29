/// @description 情報設定

switch(weapon) {
	case WEP_SWORD:
	desc = string_insert(oPlayer.atk+1, "まえ1マスに ダメージ", 8);
	break;
	
	case WEP_BOW:
	desc = "まえに 1ダメージのやをはなつ";
	break;
	
	case WEP_SHIELD:
	desc = "ダメージを 1かいふせぐ たてをはる";
	break;
	
	case WEP_SCYTHE:
	desc = string_insert(oPlayer.atk+1, "まえ2マスに ダメージ", 8);
	break;
	
	case WEP_DUALSWORD:
	desc = string_insert(oPlayer.atk+1, "ぜんご1マスに ダメージ", 9);
	break;
	
	case WEP_XBOW:
	desc = "まえのてきすべてに 1ダメージ";
	break;
}

desc = string_insert(walk, string_insert(desc, "マス すすむ\n", 9), 0);



