//Jumping animation
var yScale  = 1 - ((jumpForceBuildUp / jumpForceMax) * 0.50);
var yOffset = sprite_height * (1- yScale) 
var xScale  = 1 + ((jumpForceBuildUp / jumpForceMax) * 0.50);
var xOffset = sprite_width * ((1 - xScale) / 2)
//Draw the sprite in the field
draw_sprite_ext(sprite_index,image_index,x + xOffset,y + yOffset,xScale,yScale,0,c_white,1);



