switch(mon_gaster.hand1.state)
{
    case 0:
        instance_destroy();
        break;
    case 2:
        creating = true;
        mon_gaster.hand1.go(Box.fx1 - 50, Box.fy2+10, 180, 3);
        mon_gaster.hand2.go(Box.fx2 + 50, Box.fy2+10, 180, 3);
        break;
    case 3:
        mon_gaster.hand1.go(50, Box.fy1, 180, 4);
        mon_gaster.hand2.go(590, Box.fy1, 180, 4);
        break;
    case 4:
        mon_gaster.resetHandPos();
        break;
}

if(creating)
{
    if(mon_gaster.hand1.y > Box.y+5)
    {
        if(timer[0] > 0) timer[0]--;
        else
        {
            var wind = instance_create_layer(Box.x-5, Box.y+5, "Attacks", atk_windings);
            wind.velX = 1;
            
            wind = instance_create_layer(Box.x2+5, Box.y+5, "Attacks", atk_windings);
            wind.velX = -1;
            
            timer[0] = 30;
        }
    }
    
    if(mon_gaster.hand1.y > Box.y+45)
    {
        if(timer[1] > 0) timer[1]--;
        else
        {
            var wind = instance_create_layer(Box.x-5, Box.y+45, "Attacks", atk_windings);
            wind.velX = 1;
            
            wind = instance_create_layer(Box.x2+5, Box.y+45, "Attacks", atk_windings);
            wind.velX = -1;
            
            timer[1] = 30;
        }
    }
    
    if(mon_gaster.hand1.y > Box.y+85)
    {
        if(timer[2] > 0) timer[2]--;
        else
        {
            var wind = instance_create_layer(Box.x-5, Box.y+85, "Attacks", atk_windings);
            wind.velX = 1;
            
            wind = instance_create_layer(Box.x2+5, Box.y+85, "Attacks", atk_windings);
            wind.velX = -1;
            
            timer[2] = 30;
        }
    }
}