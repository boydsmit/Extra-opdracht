if(place_meeting(x,y,obj_enemy)){
    hp =- 1;
    Deaths =+ 1;   
}

if(hp < 0){
    instance_destroy();
    room_restart();
}

if(place_meeting(x,y,obj_void)){
    hp =- 1;
    Deaths =+ 1;
}
