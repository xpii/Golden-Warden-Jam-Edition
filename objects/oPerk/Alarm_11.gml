/// @description 価格設定

switch(type) {
	case PERK_ATK_UP:
	price = 20;
	if(oMain.lang == LANG.JP) desc = "きんせつ こうげきりょく +1";
	else desc ="+1 melee attack"
	break;
	
	case PERK_SWORD_UPGRADE:
	price = 10;
	if(oMain.lang == LANG.JP) desc = "ソードをサイスにアップグレード\nまえ2マスに 2ダメージ";
	else desc ="Upgrade the sword to scythe\n2 damage to the front two tile"
	break;
	case PERK_SWORD_DUAL:
	price = 10;
	if(oMain.lang == LANG.JP) desc = "ソードをデュアルソードにアップグレード\nぜんご1マスに 2ダメージ";
	else desc ="Upgrade the sword to dual sword\n2 damage to one tile in front and behind"
	break;
	case PERK_BOW_UPGRADE:
	price = 15;
	if(oMain.lang == LANG.JP) desc = "ボウをクロスボウにアップグレード\nまえのてきすべてに 1ダメージ";
	else desc ="Upgrade the bow to crossbow\n1 damage to all enemies in front of you"
	break;
	case PERK_BOMB_ADD:
	price = 10;
	desc = "ブキにボムをついか";
	break;
	
	case PERK_HP_MAX:
	price = 3;
	if(oMain.lang == LANG.JP) desc = "HP ぜんかいふく";
	else desc = "Restore all HP";
	break;
	case PERK_ADD_EXTRA:
	price = 3;
	if(oMain.lang == LANG.JP) desc = "アクションカードを4まいゲット";
	else desc = "Add 4 Action Cards";
	break;
	case PERK_ADD_SUP:
	price = 5;
	if(oMain.lang == LANG.JP) desc = "サポートカードを2まいゲット";
	else desc = "Add 2 Support Cards";
	break;
	case PERK_MAXHP_UP:
	price = 10;
	if(oMain.lang == LANG.JP) desc = "さいだいHP +1";
	else desc ="+1 max HP";
	break;
	
	default:
	price = 0;
	if(oMain.lang == LANG.JP) desc = "なにもかわない";
	else desc = "Buy nothing"
	break;
}

