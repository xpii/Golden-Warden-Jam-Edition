/// @description 持続時間を減らす

remain_turn--;

if(remain_turn == 0) instance_destroy();

// ターン終了
oGame.turn_statement = 5;
oGame.alarm[0] = TURNSTEP;
