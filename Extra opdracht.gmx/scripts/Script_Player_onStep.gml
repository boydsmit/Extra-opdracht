xPrevious = x;
yPrevious = y;

Script_Player_Gravity();
Script_Player_Jumping();
Script_Player_Moving();


//Counting speed

y += jumpForceCurrent;
x += moveSpeedCurrent;

Script_Player_CollisionCheck();
