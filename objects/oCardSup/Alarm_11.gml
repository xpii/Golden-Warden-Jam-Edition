/// @description 情報設定

switch(type) {
	case SUP_REROLL:
	if(oMain.lang == LANG.JP) desc = "すべてのアクションカードを ランダムにへんかさせる";
	else desc = "Reroll all Action Cards"
	break;
	
	case SUP_NUMUP:
	if(oMain.lang == LANG.JP) desc = string_insert(option, "アクションカードのすうじを ふやす", 15);
	else desc = string_insert(option, "Increase  walk in Action Card", 10);
	break;
	
	case SUP_NUMDOWN:
	if(oMain.lang == LANG.JP) desc = string_insert(option, "アクションカードのすうじを へらす", 15);
	else desc = string_insert(option, "Decrease  walk in Action Card", 10);
	break;
	
	case SUP_HPGAIN:
	if(option == 1) option = 2;
	if(oMain.lang == LANG.JP) desc = string_insert(option, "HPを かいふくさせる", 5);
	else desc = string_insert(option, "Restore  HP", 9);
	break;
	
	case SUP_COINGAIN:
	if(option == 1) option = 2;
	if(oMain.lang == LANG.JP) desc = string_insert(option, "コインを まい かくとくする", 6);
	else desc = string_insert(option, "Earn  coins", 6);
	break;
}



