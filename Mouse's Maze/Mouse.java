import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)

/**
 * Write a description of class Mouse here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Mouse extends Actor
{
    int count=2,deltaX=0,deltaY=0,xp=0,yp=0;
    
    public void act() 
    {
        if(count==2){
           xp = getX();
           yp = getY();
           if(Greenfoot.isKeyDown("left")||Greenfoot.isKeyDown("right")||Greenfoot.isKeyDown("down")||Greenfoot.isKeyDown("up")){
               walk();
            }
           count=0;
        }
        else
           count++;
    }    
    
    public void walk()
    {
            if(Greenfoot.isKeyDown("left")){
                setLocation(getX()-5, getY());
                deltaX=-5;
                deltaY=0;
               }
            else if(Greenfoot.isKeyDown("right")){
                setLocation(getX()+5, getY());
                deltaX=5;
                deltaY=0;
              }
            else if(Greenfoot.isKeyDown("down")){
                setLocation(getX(), getY()+5);
                deltaX=0;
                deltaY=5;
              }
            else if(Greenfoot.isKeyDown("up")){
                setLocation(getX(), getY()-5);
                deltaX=0;
                deltaY=-5;
             }
            if (getOneIntersectingObject(Obstacle.class) != null)
            {
                setLocation(getX()-deltaX,getY()-deltaY);
            }
            if (getOneIntersectingObject(White.class) != null)
            {
                Labirinto myWorld=(Labirinto)getWorld();
                myWorld.remove();
            }
    }
     }

