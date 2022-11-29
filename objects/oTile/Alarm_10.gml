/// @description desc変更

switch(type) {
	case TILE_HP:
	desc = "とまると HPを1かいふく";
	break;
	
	case TILE_COIN:
	desc = "とまると 1コイン ゲット";
	break;
	
	case TILE_BOMB:
	desc = "とまると じぶんと ぜんご1マスに 2ダメージ";
	break;
	
	case TILE_SHOP:
	desc = "とまると おかいもの\nコインをつかって パワーアップできる";
	break;
	
	case TILE_STAIR:
	desc = "とまると おかいものしたあと つぎのエリアに いどうする";
	break;
	
	default:
	desc = "";
	break;
}


