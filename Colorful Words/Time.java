import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)
import java.awt.Color;

/**
 * Write a description of class Time here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Time extends Actor
{
    int tempo=300;
    
    public Time()
    {
        act();
    }
    
    public void act() 
    {
        GreenfootImage image=new GreenfootImage("Tempo: "+tempo,
                                                                30,
                                                                new Color(0,0,0,200),
                                                                new Color(255,255,255,0));
            
            setImage(image);        
        
        if(tempo==0){
            Mundodascores myWorld=(Mundodascores)getWorld();
            myWorld.removeword();
            myWorld.vamosla();
            myWorld.loser();
            myWorld.adelante();
        }
        tempo--;
    }    
    
    public void removeTime(int newTime)
    {
        tempo=newTime;
    }
}
