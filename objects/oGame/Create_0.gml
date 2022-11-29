/// @description Insert description here
// You can write your code in this editor
randomize();

current_depth = 0;	// 現在のダンジョン深度
max_depth = 40;		// 一エリアの最大深度
view_range = 7;		// 見る事の出来る先のマスの数

nums_of_cards = 3;						// カードの所持数
nums_of_reusable_cards = nums_of_cards;	// 再利用可能なカードの所持数
nums_of_supCards = 0;					// サポートカードの所持数

control = true;		// 操作可能時間かどうか
turn_statement = 0;	// ターン全体の処理変数(

combo = 0;			// コンボ数

start_x = 0;
start_y = 0;

alarm[11] = 1;

