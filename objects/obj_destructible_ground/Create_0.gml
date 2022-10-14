spawn_dirt = function()
{
	
	var _spacing = sprite_get_width(spr_dirt);
	for(var col = 0; col < my_map.width; col += 1)
	{
		for(var row = 0; row < my_map.height; row += 1)
		{
			if(my_map.map[col][row])
			{
				
				surface_set_target(dirt_surface);
				draw_sprite(spr_dirt, irandom_range(0, 3), col * _spacing, row * _spacing);
				surface_reset_target();
				
			}
		}
	}
	
}

randomize();
//values for running the CA simulation. adjust for different map generation
my_map = new cellular_automata_map(504, 350, .939, random_range(7.2, 7.6), 7.9999888);
//adjust how many generations to run
my_map.iterate(4);
dirt_surface = surface_create(window_get_width(), window_get_height());
spawn_dirt();