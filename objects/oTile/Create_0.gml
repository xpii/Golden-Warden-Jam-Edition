/// @description Insert description here
// You can write your code in this editor

num = 0;			// 自分が何マス目のタイルなのか
activate = true;	// 処理範囲内かどうか

type = choose(1, 2, 3);

drawMode = 0;		// 1: 白 2: 赤　3: 黒
drawBy = self;		// どのオブジェクトから描画変更を受けているか

alarm[11] = 1;