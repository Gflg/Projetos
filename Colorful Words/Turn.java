import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)
import java.awt.Color;

/**
 * Write a description of class Turn here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Turn extends Actor
{
    private int points=1;
    private int count=0;    
    
    public Turn() 
    {
        act();
    }
    
    public void act() 
    {
        if(points>10){
            Mundodascores myWorld=(Mundodascores)getWorld();
            myWorld.remove();
            myWorld.prepare3();
        }
        
        if(count==0){
            GreenfootImage image=new GreenfootImage("Rodada: "+points,
                                                                30,
                                                                new Color(0,0,0,200),
                                                                new Color(255,255,255,0));
            
            setImage(image);        
        }
        
        if(count==10)
           count=0;
        else
           count++;
    }    
    
    public void addTurn(int newPoints){
        points+=newPoints;
    }
    
    public int getTurn(){
        return points;
    }
}
