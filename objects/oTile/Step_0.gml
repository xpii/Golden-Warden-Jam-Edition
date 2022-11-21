/// @description

if(num < oPlayer.current_depth - 3 || num > oPlayer.current_depth + oGame.view_range) {
	image_alpha = 0.2;
	activate = false;
}

else {
	image_alpha = 1;
	activate = true;
}

switch(type) {
	case "hp":
	image_index = 1;
	break;
	
	case "coin":
	image_index = 2;
	break;
	
	case "boom":
	image_index = 3;
	break;
	
	case "enemy":
	image_index = 4;
	break;
	
	default:
	image_index = 0;
	break;
}


