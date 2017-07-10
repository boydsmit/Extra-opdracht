if(!jump){
    
    if(keyboard_check(vk_space)) {
        jumpForceBuildUp  += jumpForceCharge;
        
        //Charge The jump
        if(jumpForceBuildUp >= jumpForceMax){
            jumpForceBuildUp = jumpForceMax;
        }
    //jumpForceCurrent -= jumpForce
   // jump = true;
    }
    
    else if(keyboard_check_released(vk_space)){
        jumpForceCurrent -= jumpForceBuildUp
        jumpForceBuildUp = 0;
        
        // Set jump if lower than to minimum
        if(jumpForceBuildUp <= jumpForceMin){
            jumpForceBuildUp = jumpForceMin;
        }         
    }
}
else{
    jumpForceBuildUp = 0;
}

