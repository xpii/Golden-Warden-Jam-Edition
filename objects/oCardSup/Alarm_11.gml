/// @description 情報設定

switch(type) {
	case SUP_REROLL:
	desc = "すべてのアクションカードを ランダムにへんかさせる";
	break;
	
	case SUP_NUMUP:
	desc = string_insert(option, "アクションカードのすうじを ふやす", 15);
	break;
	
	case SUP_NUMDOWN:
	desc = string_insert(option, "アクションカードのすうじを へらす\n(0より すくなくならない)", 15);
	break;
	
	case SUP_HPGAIN:
	if(option == 1) option = 2;
	desc = string_insert(option, "HPを かいふくさせる", 5);
	break;
	
	case SUP_COINGAIN:
	if(option == 1) option = 2;
	desc = string_insert(option, "コインを まい かくとくする", 6);
	break;
}



