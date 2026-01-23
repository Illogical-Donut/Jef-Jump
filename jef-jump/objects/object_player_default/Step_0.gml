 
 
 
 ysp=+1
 xsp=0
 
 if keyboard_check(vk_left)
 {
	 xsp=-1
	 
 }
 
 
 
 if keyboard_check(vk_right)
 {
	 xsp=+1
	 
 }
 
 
 if place_meeting(x,y+1,object_ground_block_basic)
 {
	ysp=0
	if keyboard_check(vk_up)
	{
	ysp=-40	
		
	}
	 
 }
 
 
 move_and_collide(xsp,ysp,object_ground_block_basic)