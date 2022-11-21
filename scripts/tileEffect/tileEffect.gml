///@desc tileEffect()	足元のタイルの効果を発動する	oPlayer

function tileEffect(){
	if(object_index != oPlayer) return;

	
	// 足元のタイルの効果を発動
	with(oTile) {
		if(num == other.current_depth) {
			if(type == "coin") {

				other.coin++;
			}
			else if(type == "hp") {
				
				other.hp = min(other.hp+1, other.maxHp);
			}
			else if(type == "boom") boom();
			
			// 次のエリアに移動
			else if(type == "stair") {
				oMain.level++;
				room_goto(rStage);
			}
			type = "";
		}
	}
	
	// 次は敵の行動処理
	oGame.turn_statement = 3;
	oGame.alarm[0] = TURNSTEP;
	
}

///@desc boom()		その場と前後一マスにダメージを与える	oTile
function boom() {
	if(object_index != oTile) return;
	
	// エフェクト
	with(oTile) {
		if(num == other.num) instance_create_layer(x, y, "Mobs", oBoom);
		if(num == other.num + 1 || num == other.num - 1) instance_create_layer(x, y, "Mobs", oBoom);
	}
	// ダメージ
	with(oEnemy) {
		if(follow.num == other.num + 1 || follow.num == other.num - 1) damage(self, 2);
	}
	
	damage(oPlayer, 2);
}
