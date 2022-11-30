/// @description desc変更

switch(type) {
	case TILE_HP:
	if(oMain.lang == LANG.JP) desc = "とまると HPを1かいふく";
	else desc = "When you stop on this\nrestore 1 HP";
	break;
	
	case TILE_COIN:
	if(oMain.lang == LANG.JP) desc = "とまると 1コイン ゲット";
	else desc = "When you stop on this\n+1 coin";
	break;
	
	case TILE_BOMB:
	if(oMain.lang == LANG.JP) desc = "とまると じぶんと ぜんご1マスに 2ダメージ";
	else desc = "When you stop on this\ndeal 2 damage to you and around you";
	break;
	
	case TILE_SHOP:
	if(oMain.lang == LANG.JP) desc = "とまると おかいもの\nコインをつかって パワーアップできる";
	else desc = "When you stop on this\nyou can buy an upgrade";
	break;
	
	case TILE_STAIR:
	if(oMain.lang == LANG.JP) desc = "とまると おかいものしたあと つぎのエリアに いどうする";
	else desc = "When you stop on this\nyou move next area after shopping";
	break;
	
	default:
	desc = "";
	break;
}


