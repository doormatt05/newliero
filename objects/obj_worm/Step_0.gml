//add set velocities to the x and y
x += xvel;
y += yvel;

//limit x movement velocity (will be tweaked later to allow recoil forces)
if(xvel > 0.4)
{
	xvel = 0.4;
}
else if(xvel < -0.4)
{
	xvel = -0.4;
}

//collision checks go here but are removed currently

//animate worm
if(doNotAnimate == true)
{
	image_speed = 0;
	image_index = 0;
}
else if(doNotAnimate == false)
{
	image_speed = 1;
}

//increase y velocity when falling with limit
if(grounded == false)
{
	
	if(yvel < 1.4)
	{
		yvel += 0.02;
	}
	else
	{
		yvel = 1.4;
	}
	
}
else
{
	yvel = 0;
}

//move left
if(keyboard_check(ord("A")) && canMoveLeft == true)
{
	xvel += -0.08;
	doNotAnimate = false;
	
}
else if(keyboard_check_released(ord("A")))
{
	xvel = 0;
	doNotAnimate = true;
	canMoveRight = true;
}

//move right
if(keyboard_check(ord("D")) && canMoveRight == true)
{
	xvel += 0.08;
	doNotAnimate = false;
	
}
else if(keyboard_check_released(ord("D")))
{
	xvel = 0;
	doNotAnimate = true;
	canMoveLeft = true;
}

//jump
if(keyboard_check_pressed(vk_space) && grounded == true)
{
	yvel += -0.88;
}
