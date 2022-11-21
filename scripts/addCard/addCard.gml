///@desc addCard	カードを追加する
function addCard(){
	if(oGame.nums_of_cards >= 8) return;
	else {
		// カード生成
		for(var _i=0; _i<8; _i++) {
			var _check = false;
			
			with(oCard) {
				if(num == _i) _check = true;
			}
			
			if(!_check) {
				// ダブリnumが居なければそこに挿入
				with(instance_create_layer(6*TILESIZE+_i*48, 9*TILESIZE, "Tile", oCard)) {
					disposable = true;
					num = _i;
				}
				oGame.nums_of_cards++;
				break;
			}
		}
	}
}