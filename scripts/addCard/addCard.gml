///@desc addCard	カードを追加する
function addCard(){
	if(oGame.nums_of_cards >= 7) return;
	else {
		// カード生成
		for(var _i=1; _i<6; _i++) {
			var _check = false;
			
			with(oCard) {
				if(num == _i) _check = true;
			}
			
			if(!_check) {
				// ダブリnumが居なければそこに挿入
				with(instance_create_layer(room_width/2+72 + _i*36, CARD_START_Y, "Info", oCard)) {
					disposable = true;
					num = _i;
				}
				oGame.nums_of_cards++;
				break;
			}
		}
	}
}

function addCardSup(){
	if(oGame.nums_of_supCards >= 4) return;
	else {
		// カード生成
		for(var _i=1; _i<6; _i++) {
			var _check = false;
			
			with(oCardSup) {
				if(num == _i) _check = true;
			}
			
			if(!_check) {
				// ダブリnumが居なければそこに挿入
				with(instance_create_layer(room_width/2-72 - _i*36, CARD_START_Y, "Info", oCardSup)) {
					num = _i;
				}
				oGame.nums_of_supCards++;
				break;
			}
		}
	}
}