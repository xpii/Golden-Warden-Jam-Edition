/// @description 情報設定

switch(weapon) {
	case WEP_SWORD:
	desc = "まえ1マスに 2ダメージ";
	break;
	
	case WEP_BOW:
	desc = "まえに 1ダメージのやをはなつ";
	break;
	
	case WEP_SHIELD:
	desc = "ダメージを 1かいふせぐ たてをはる";
	break;
	
	case WEP_SCYTHE:
	desc = "まえ2マスに 2ダメージ";
	break;
	
	case WEP_DUALSWORD:
	desc = "ぜんご1マスに 2ダメージ";
	break;
	
	case WEP_XBOW:
	desc = "まえのてきすべてに 1ダメージ";
	break;
}

desc = string_insert(walk, string_insert(desc, "マス すすむ\n", 9), 0);



