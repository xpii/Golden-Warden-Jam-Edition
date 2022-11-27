/// @description reroll

walk = irandom_range(1,4);

ds_list_shuffle(oMain.weapons);
weapon = ds_list_find_value(oMain.weapons, 1);

alarm[11] = 1;
