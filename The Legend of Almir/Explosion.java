import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)

/**
 * Write a description of class explosion here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Explosion extends Actor
{
    /**
     * Act - do whatever the explosion wants to do. This method is called whenever
     * the 'Act' or 'Run' button gets pressed in the environment.
     */
   
      
    private int count=20;   
    public void act() 
    {
        count--;
        if (getOneIntersectingObject(Obstacle.class)!= null)
        {
            getWorld().removeObject(this);
            return;
        }
        if(count==0)
        {
            getWorld().removeObject(this);
            return;
        }
        
        /**
         * if(atWorldEdge())
        {
            getWorld().removeObject(this);
            return;
        }
         */
    }    
}
