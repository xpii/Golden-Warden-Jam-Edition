/// @description 価格設定

switch(type) {
	case PERK_ATK_UP:
	price = 20;
	desc = "きんせつ こうげきりょく +1";
	break;
	
	case PERK_SWORD_UPGRADE:
	price = 10;
	desc = "ソードをサイスにアップグレード\nまえ2マスに 2ダメージ";
	break;
	case PERK_SWORD_DUAL:
	price = 10;
	desc = "ソードをデュアルソードにアップグレード\nぜんご1マスに 2ダメージ";
	break;
	case PERK_BOW_UPGRADE:
	price = 15;
	desc = "ボウをクロスボウにアップグレード\nまえのてきすべてに 1ダメージ";
	break;
	case PERK_BOMB_ADD:
	price = 10;
	desc = "ブキにボムをついか";
	break;
	
	case PERK_HP_MAX:
	price = 3;
	desc = "HP ぜんかいふく";
	break;
	case PERK_ADD_EXTRA:
	price = 3;
	desc = "アクションカードを4まいゲット";
	break;
	case PERK_ADD_SUP:
	price = 5;
	desc = "サポートカードを2まいゲット";
	break;
	case PERK_MAXHP_UP:
	price = 10;
	desc = "さいだいHP +1";
	break;
	
	default:
	price = 0;
	desc = "なにもかわない";
	break;
}

