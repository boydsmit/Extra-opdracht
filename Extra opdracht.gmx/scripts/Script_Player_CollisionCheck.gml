var platformNumber = instance_number(obj_platform);
var platform = -1;

//Always say that player = jumping
jump = true;

for (var i= 0; i < instance_number(obj_platform); i++){
    platform =instance_find(obj_platform , i);
    
    
    if(
        bbox_top    <= platform.bbox_bottom &&
        bbox_bottom >= platform.bbox_top    &&
        bbox_right  >= platform.bbox_left   &&
        bbox_left   <= platform.bbox_right
     ){
       
         if (bbox_bottom - (y - yPrevious) <= platform.bbox_top){
            //back TOP
            y = platform.bbox_top - sprite_height;
            jumpForceCurrent = 0;
            jump = false;
        }
        
        else if (bbox_top - (y - yPrevious) >= platform.bbox_bottom){
            //back UNDER
            y = platform.bbox_bottom;
            jumpForceCurrent = 0;
        }
        
        else if (bbox_left - (x - xPrevious) >= platform.bbox_right){
            //from RIGHT
            x = platform.bbox_right;
            moveSpeedCurrent = 0;
        }
        
        else if (bbox_right - (x - xPrevious) <= platform.bbox_left){
            //from LEFT
            x = platform.bbox_left - sprite_width;
            moveSpeedCurrent = 0;
        }

    
    }
    
    
}
