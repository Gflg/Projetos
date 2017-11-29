import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)

/**
 * Write a description of class Comecar here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Comecar extends Menu
{
    /**
     * Act - do whatever the Comecar wants to do. This method is called whenever
     * the 'Act' or 'Run' button gets pressed in the environment.
     */
    public void act() 
    {
        if(Greenfoot.mouseClicked(this) == true){
            Labirinto myWorld=(Labirinto)getWorld();
            myWorld.remove3();
        }
    }    
}
