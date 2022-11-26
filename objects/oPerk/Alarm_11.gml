/// @description 価格設定

switch(type) {
	case PERK_ATK_UP:
	price = 20;
	desc = "こうげきりょく +1";
	break;
	
	case PERK_SWORD_UPGRADE:
	price = 10;
	desc = "ソードをロングソードにアップグレード";
	break;
	case PERK_SWORD_DUAL:
	price = 10;
	desc = "ソードをデュアルソードにアップグレード";
	break;
	case PERK_BOW_UPGRADE:
	price = 15;
	desc = "ボウをクロスボウにアップグレード";
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
	desc = "カードをいっぱいになるまでゲット";
	break;
	case PERK_ADD_SUP:
	price = 3;
	desc = "サポートカードを3まいゲット";
	break;
	
	default:
	price = 0;
	desc = "なにもかわない";
	break;
}

