/// @description Insert description here
// You can write your code in this editor


num = 0;
isSelected = false;

walk = irandom_range(1,4);

ds_list_shuffle(oMain.weapons);
weapon = ds_list_find_value(oMain.weapons, 1);

desc = "";

disposable = false;		// 使いきりかどうか

alarm[11] = 1;