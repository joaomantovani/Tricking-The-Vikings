//control the player

if ( keyboard_check(vk_left) || keyboard_check(ord('A')) )
    motion_add(180,1);
if ( keyboard_check(vk_right) || keyboard_check(ord('D')) )
    motion_add(0,1);
if ( keyboard_check(vk_up) || keyboard_check(ord('W')) )
    motion_add(90,1);
if ( keyboard_check(vk_down) || keyboard_check(ord('S')) )
    motion_add(270,1);
    
if ( !keyboard_check(vk_left)  && !keyboard_check(ord('A')) &&
     !keyboard_check(vk_right) && !keyboard_check(ord('D')) &&
     !keyboard_check(vk_up)    && !keyboard_check(ord('W')) &&
     !keyboard_check(vk_down)  && !keyboard_check(ord('S')) )
        friction = 2;
else
    friction = 0;

//Limits the speed to 5
if(speed>5)
    speed=5;
    
//Limits the player to stay in room
x = clamp(x , sprite_get_width(spr_player) , room_width - sprite_get_width(spr_player) ); 
y = clamp(y , sprite_get_height(spr_player) , room_height - sprite_get_height(spr_player) );    

//Player look to the aim

image_angle = point_direction(x,y, mouse_x, mouse_y);
