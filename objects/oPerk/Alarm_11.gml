/// @description 価格設定

switch(type) {
	case ATK_UP:
	price = 15;
	desc = "こうげきりょく +1";
	break;
	
	case SWORD_UPGRADE:
	price = 10;
	desc = "ソードをロングソードにアップグレード";
	break;
	case SWORD_DUAL:
	price = 10;
	desc = "ソードをデュアルソードにアップグレード";
	break;
	case BOW_UPGRADE:
	price = 10;
	desc = "ボウをクロスボウにアップグレード";
	break;
	case BOMB_ADD:
	price = 10;
	desc = "ブキにボムをついか";
	break;
	
	case HP_MAX:
	price = 3;
	desc = "HP ぜんかいふく";
	break;
	case ADD_EXTRA:
	price = 3;
	desc = "カードをいっぱいになるまでゲット";
	break;
	case ADD_SUP:
	price = 3;
	desc = "サポートカードを3まいゲット";
	break;
	
}

