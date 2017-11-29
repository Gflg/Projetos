import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)

/**
 * Write a description of class bomb here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class bomb extends Actor
{
    /**
     * Act - do whatever the bomb wants to do. This method is called whenever
     * the 'Act' or 'Run' button gets pressed in the environment.
     */
    private int count=10;
    public void act() 
    {
        count--;
        if(count==0)
           {
                Explosion explosion= new Explosion();
                getWorld().addObject(explosion,getX(),getY());
                Explosion explosion1= new Explosion();
                getWorld().addObject(explosion1,getX()-20,getY());
                Explosion explosion2= new Explosion();
                getWorld().addObject(explosion2,getX(),getY()+20);
                Explosion explosion3= new Explosion();
                getWorld().addObject(explosion3,getX()+20,getY());
                Explosion explosion4= new Explosion();
                getWorld().addObject(explosion4,getX(),getY()-20);
                getWorld().removeObject(this);
                return;
           }
       }
      
    }    

