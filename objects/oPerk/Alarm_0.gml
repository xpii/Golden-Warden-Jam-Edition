/// @description パークの内容を実行

switch(type) {
	case PERK_ATK_UP:
	oPlayer.atk++;
	break;
	
	case PERK_SWORD_UPGRADE:
	// リストのWEP_SWORDをWEP_SCYTHEに置き換え、同パークを選択肢から除去
	ds_list_replace(oMain.weapons, ds_list_find_index(oMain.weapons, WEP_SWORD), WEP_SCYTHE);
	with(oCard) {
		if(weapon == WEP_SWORD) weapon = WEP_SCYTHE;
		alarm[11] = 1;
	}
	ds_list_delete(oMain.perks, ds_list_find_index(oMain.perks, PERK_SWORD_UPGRADE));
	ds_list_delete(oMain.perks, ds_list_find_index(oMain.perks, PERK_SWORD_DUAL));
	break;
	
	case PERK_SWORD_DUAL:
	// リストのWEP_SWORDをWEP_DUALSWORDに置き換え、同パークを選択肢から除去
	ds_list_replace(oMain.weapons, ds_list_find_index(oMain.weapons, WEP_SWORD), WEP_DUALSWORD);
	with(oCard) {
		if(weapon == WEP_SWORD) weapon = WEP_DUALSWORD;
		alarm[11] = 1;
	}
	ds_list_delete(oMain.perks, ds_list_find_index(oMain.perks, PERK_SWORD_UPGRADE));
	ds_list_delete(oMain.perks, ds_list_find_index(oMain.perks, PERK_SWORD_DUAL));
	break;
	
	case PERK_BOW_UPGRADE:
	// リストのWEP_BOWをWEP_XBOWに置き換え、同パークを選択肢から除去
	ds_list_replace(oMain.weapons, ds_list_find_index(oMain.weapons, WEP_BOW), WEP_XBOW);
	with(oCard) {
		if(weapon == WEP_BOW) weapon = WEP_XBOW;
		alarm[11] = 1;
	}
	ds_list_delete(oMain.perks, ds_list_find_index(oMain.perks, PERK_BOW_UPGRADE));
	break;
	
	case PERK_BOMB_ADD:

	break;
	
	case PERK_HP_MAX:
	oPlayer.hp = oPlayer.maxHp;
	break;
	
	case PERK_ADD_EXTRA:
	repeat(5) addCard();
	break;
	
	case PERK_ADD_SUP:
	repeat(2) addCardSup();
	break;
	
	case PERK_MAXHP_UP:
	oPlayer.maxHp ++;
	oPlayer.hp ++;
	break;
	
	default:
	break;
}

// お金を支払う
oPlayer.coin -= price;
// 次ステージ
oGame.alarm[1] = 1;

