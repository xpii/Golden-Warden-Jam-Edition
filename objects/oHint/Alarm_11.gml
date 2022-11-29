/// @description メッセージ設定

if(oMain.lang != LANG.JP) {
	x -= 1.5*TILESIZE;
	w_max += 1.5*TILESIZE;
}
else {
	x += 1.5*TILESIZE;
	w_max -= 1.5*TILESIZE;
}

switch(type) {
	case 0:
	if(oMain.lang == LANG.JP) text = "ヒント\nてきをたおすと カードやコインを\nかくとくできる";
	else text = "Hints:\nWhen you kill an enemy, \nyou gain cards and coins.";
	break;
	case 1:
	if(oMain.lang == LANG.JP) text = "ヒント\nついかアクションカードは\nいちどつかうとなくなる";
	else text = "Hints:\nExtra Action Card \nis disposable.";
	break;
	case 2:
	if(oMain.lang == LANG.JP) text = "ヒント\nサポートカードは つかうとすぐに\nこうかがはつどうする";
	else text = "Hints:\nSupport Card have \nimmediate effect.";
	break;
	case 3:
	if(oMain.lang == LANG.JP) text = "ヒント\nつかわなかったブキは\nつぎのターンにもちこされる";
	else text = "Hints:\nUnused weapon \ncan use next turn.";
	break;
}