xPrevious = x;
yPrevious = y;

Script_Player_Gravity();
Script_Player_Jumping();
Script_Player_Moving();
Script_Player_Charge();


//Counting speed

y += jumpForceCurrent;
x += moveSpeedCurrent;

Script_player_Finish();
Script_Player_CollisionCheck();
