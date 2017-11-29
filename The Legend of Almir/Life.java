import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)

/**
 * Write a description of class Life here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Life extends Actor
{
    /**
     * Act - do whatever the Life wants to do. This method is called whenever
     * the 'Act' or 'Run' button gets pressed in the environment.
     */
    
    private int lifeMax = 6;
    
    private int lifeCount = lifeMax;
    
    public Life() //Desenha as vidas
    {
        drawLife();
    }
    
    private void drawLife()
    {
        setImage("Life/"+lifeCount+".png");
    }
    
    public void act() 
    {
        // Add your action code here.
    }
    
    public void lifeDamage()
    {
        lifeCount--;
        if (lifeCount > 0)
            drawLife();
        else
        {
            Hyrule hyrule = (Hyrule)getWorld();
            hyrule.gameOver();
        }
    }
    
    public int getLife()
    {
        return lifeCount;
    }
    
    public void lifePlus()
    {
        lifeMax += 2;
    }
}