draw_self();


//gun rotation and adjustments for direction worm is facing
gun_angle = point_direction(x, y, mouse_x, mouse_y)

if(gun_angle > 90 && gun_angle < 270)
{
	draw_sprite_ext(spr_basegun, 0, x - 1, y - 1, gun_xscale, gun_yscale, gun_angle, image_blend, image_alpha);
	gun_yscale = -1;
	image_xscale = -1;
	
		if(gun_angle <= 110 && gun_angle >= 90)
	{
		with(self) 
		{
			sprite_index = spr_worm4;
		}
	}

	if(gun_angle <= 130 && gun_angle >= 110)
	{
		with(self) 
		{
			sprite_index = spr_worm3;
		}
	}

	if(gun_angle <= 150 && gun_angle >= 130)
	{
		with(self) 
		{
			sprite_index = spr_worm2;
		}
	}

	if(gun_angle <= 170 && gun_angle >= 150)
	{
		with(self) 
		{
			sprite_index = spr_worm1;
		}
	}

	if(gun_angle <= 210 && gun_angle >= 170)
	{
		with(self) 
		{
			sprite_index = spr_worm0;
		}
	}

	if(gun_angle <= 230 && gun_angle >= 220)
	{
		with(self) 
		{
			sprite_index = spr_wormd1;
		}
	}

	if(gun_angle <= 240 && gun_angle >= 230)
	{
		with(self) 
		{
			sprite_index = spr_wormd2;
		}
	}
	
}
else
{
	draw_sprite_ext(spr_basegun, 0, x + 1, y - 1, gun_xscale, gun_yscale, gun_angle, image_blend, image_alpha);
	gun_yscale = 1
	image_xscale = 1;
	
	if(gun_angle >= 70 && gun_angle <= 90)
	{
		with(self) 
		{
			sprite_index = spr_worm4;
		}
	}

	if(gun_angle >= 50 && gun_angle <= 70)
	{
		with(self) 
		{
			sprite_index = spr_worm3;
		}
	}

	if(gun_angle >= 30 && gun_angle <= 50)
	{
		with(self) 
		{
			sprite_index = spr_worm2;
		}
	}

	if(gun_angle >= 10 && gun_angle <= 30)
	{
		with(self) 
		{
			sprite_index = spr_worm1;
		}
	}

	if(gun_angle >= 330 || gun_angle <= 10)
	{
		with(self) 
		{
			sprite_index = spr_worm0;
		}
	}

	if(gun_angle >= 310 && gun_angle <= 330)
	{
		with(self) 
		{
			sprite_index = spr_wormd1;
		}
	}

	if(gun_angle >= 300 && gun_angle <= 310)
	{
		with(self) 
		{
			sprite_index = spr_wormd2;
		}
	}
	
}