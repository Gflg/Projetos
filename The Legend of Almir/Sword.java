import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)

/**
 * Write a description of class Sword here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Sword extends Actor
{
    /*private char Direction[] = {'N', 'S', 'E', 'W'};
    
    private string folder = "Sword/"
    
    private GreenfootImage N;
    private GreenfootImage S;
    private GreenfootImage E;
    private GreenfootImage W;
    
    public Sword()
    {
        GreenfootImage SpriteAux;
        
        for (char dir : Direction)
        {
            SpriteAux = new GreenfootImage(folder+dir);
            
            if (dir == 'N')
                N = SpriteAux;
            else if (dir == 'S')
                S = SpriteAux;
            else if (dir == 'E')
                E = SpriteAux;
            else if (dir == 'W')
                W = SpriteAux;
        }
    }*/
    
    public void act() 
    {
        if (getOneIntersectingObject(Enemy.class)!= null)
        {
            Enemy enemy = (Enemy)getOneIntersectingObject(Enemy.class);
            getWorld().removeObject(enemy);
        }
    }
}
