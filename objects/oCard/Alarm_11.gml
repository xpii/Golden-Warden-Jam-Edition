/// @description 情報設定

switch(weapon) {
	case WEP_SWORD:
	if(oMain.lang == LANG.JP) desc = string_insert(oPlayer.atk+1, "まえ1マスに ダメージ", 8);
	else desc = string_insert(oPlayer.atk+1, " damage to the front one tile", 0);
	break;
	
	case WEP_BOW:
	if(oMain.lang == LANG.JP) desc = "まえに 1ダメージのやをはなつ";
	else desc = "Shoots 1 damage arrow in front of you.";
	break;
	
	case WEP_SHIELD:
	if(oMain.lang == LANG.JP) desc = "ダメージを 1かいふせぐ たてをはる";
	else desc = "Use a shield to prevent damage once";
	break;
	
	case WEP_SCYTHE:
	if(oMain.lang == LANG.JP) desc = string_insert(oPlayer.atk+1, "まえ2マスに ダメージ", 8);
	else desc = string_insert(oPlayer.atk+1, " damage to the front two tile", 0);
	break;
	
	case WEP_DUALSWORD:
	if(oMain.lang == LANG.JP) desc = string_insert(oPlayer.atk+1, "ぜんご1マスに ダメージ", 9);
	else desc = string_insert(oPlayer.atk+1, " damage to one tile in front and behind", 0);
	break;
	
	case WEP_XBOW:
	if(oMain.lang == LANG.JP) desc = "まえのてきすべてに 1ダメージ";
	else desc = "1 damage to all enemies in front of you";
	break;
}

if(oMain.lang == LANG.JP) desc = string_insert(walk, string_insert(desc, "マス すすむ\n", 9), 0);
else desc = string_insert(walk, string_insert(desc, " walk\n", 9), 0);



