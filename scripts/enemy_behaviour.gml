//Limits the speed to 5
if(speed>5)
    speed=3;
    
//Limits the enemy to stay in room
x = clamp(x , sprite_get_width(spr_zombie) , room_width - sprite_get_width(spr_zombie) ); 
y = clamp(y , sprite_get_height(spr_zombie) , room_height - sprite_get_height(spr_zombie) );    

//Enemy look to the player

with(obj_player)
{
    player_x = other.x;
    player_y = other.y;
}

if point_distance(x, y, obj_player.x, obj_player.y) < look_distance 
    image_angle = point_direction(x,y, obj_player.x,obj_player.y);