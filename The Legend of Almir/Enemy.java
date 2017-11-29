import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)

/**
 * Write a description of class Enemy here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Enemy extends Actor //Mover
{
    /**
     * Act - do whatever the Enemy wants to do. This method is called whenever
     * the 'Act' or 'Run' button gets pressed in the environment.
     */
    
    //private int speed = 5;
    private int actCount = 20;
    
    public void act() 
    {
        //moveAround();
        
        actCount--;
        
        if (actCount == 0)
        {
            actCount = 100;
            Projectile projectile = new Projectile();
            getWorld().addObject(projectile,getX(),getY());
            projectile.setRotation(getRotation());
            turn(90);
        }
        if (getOneIntersectingObject(Explosion.class)!= null)
        {
            Explosion explosion = (Explosion)getOneIntersectingObject(Explosion.class);
            getWorld().removeObject(explosion);
            getWorld().removeObject(this);
            return;
        }
    }
    
    /*public void moveAround()
    {
        move(4);
        
        turn(Greenfoot.getRandomNumber(5)*90);
    }*/
}
