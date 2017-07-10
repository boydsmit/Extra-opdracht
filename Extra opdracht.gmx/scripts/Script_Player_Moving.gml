
//To the left
if(keyboard_check(ord('A')))
{
    moveSpeedCurrent -= moveSpeed;
    
    //Speed limit
    if(moveSpeedCurrent <= -moveSpeedMax){
        moveSpeedCurrent = -moveSpeedMax;
    }
}

//To the right
else if(keyboard_check(ord('D')))
{
    moveSpeedCurrent += moveSpeed;
    
    //Speed limit
    if(moveSpeedCurrent >= moveSpeedMax){
        moveSpeedCurrent = moveSpeedMax;
    }
}
else
{
    //Decresing movespeed
    moveSpeedCurrent *= moveSpeedDecrFactor;
    
    //Stop infite counting to make the cube stop
    if(moveSpeedCurrent >= -moveSpeed && moveSpeedCurrent <= -moveSpeed){
        moveSpeedCurrent = 0;
    }
}

