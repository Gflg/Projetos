import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)
import java.awt.Color;

/**
 * Write a description of class Word here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Word extends Actor
{
    int num,batata;
    int x,y,z;
    int count=1,cond=0,timer=300;    

    public Word()
    {
        num = Greenfoot.getRandomNumber(7);
        batata = Greenfoot.getRandomNumber(7);
        cores();
        desenha();
        
    }
    
    public void act() 
    {
        /*if(timer==0){
            verifyScore();
            timer=300;
        }
        timer--;
        */
        if (count == 0)
        {
            if(Greenfoot.isKeyDown("1") || Greenfoot.isKeyDown("2") || Greenfoot.isKeyDown("3") || Greenfoot.isKeyDown("4") || Greenfoot.isKeyDown("5") || Greenfoot.isKeyDown("6")) 
            {
                verifyScore();
                count = 1;
                //timer=300;
            }
        }
        else
        {
            count++;
            if (count==50)
                count=0;
        }
         
    }
    
    public void verifyScore()
    {
        int user = 0;
        
        if      (Greenfoot.isKeyDown("1")) user = 1;
        else if (Greenfoot.isKeyDown("2")) user = 2;        
        else if (Greenfoot.isKeyDown("3")) user = 3;        
        else if (Greenfoot.isKeyDown("4")) user = 4;        
        else if (Greenfoot.isKeyDown("5")) user = 5;                
        else if (Greenfoot.isKeyDown("6")) user = 6;  

        if(user == num || (num==0 && user==6))
        {
            Mundodascores myWorld=(Mundodascores)getWorld();
            myWorld.letsgo();
            myWorld.adelante();
            myWorld.vamosla();
        }
        else
        {
            Mundodascores myWorld=(Mundodascores)getWorld();
            myWorld.loser();
            myWorld.adelante();
            myWorld.vamosla();
        }
        Word word = new Word();
        Mundodascores myWorld=(Mundodascores)getWorld();
        myWorld.addObject(word, this.getX(), this.getY());
        myWorld.removeword();
    }
    
    private void cores(){
        if(num==1){
            x=0;
            y=0;
            z=255;
        }
        else
           if(num==2){
               x=0;
               y=255;
               z=0;
            }
            else
                if(num==3){
                   x=0;
                   y=255;
                   z=255;
                }
                else
                   if(num==4){
                       x=255;
                       y=0;
                       z=255;
                    }
                    else
                       if(num==5){
                           x=255;
                           y=255;
                           z=0;
                        }
                        else{
                           x=255;
                           y=0;
                           z=0;
                        }
    }
    
    private void desenha(){
        if(batata==1){
           GreenfootImage image=new GreenfootImage("Vermelho",
                                                                50,
                                                                new Color(x,y,z,255),
                                                                new Color(255,255,255,0));
            
            setImage(image);   
        }
        else
           if(batata==2){
               GreenfootImage image=new GreenfootImage("Azul",
                                                                50,
                                                                new Color(x,y,z,255),
                                                                new Color(255,255,255,0));
            
               setImage(image);  
           }
           else
               if(batata==3){
               GreenfootImage image=new GreenfootImage("Verde",
                                                                50,
                                                                new Color(x,y,z,255),
                                                                new Color(255,255,255,0));
            
               setImage(image);  
           }
               else
                if(batata==4){
                GreenfootImage image=new GreenfootImage("Violeta",
                                                                50,
                                                                new Color(x,y,z,255),
                                                                new Color(255,255,255,0));
            
                setImage(image);  
                }
                else
                if(batata==5){
                GreenfootImage image=new GreenfootImage("Amarelo",
                                                                50,
                                                                new Color(x,y,z,255),
                                                                new Color(255,255,255,0));
            
                setImage(image);  
                }
                else
                if(batata==6){
                GreenfootImage image=new GreenfootImage("Ciano",
                                                                50,
                                                                new Color(x,y,z,255),
                                                                new Color(255,255,255,0));
            
                setImage(image);  
                }
                else{
                    GreenfootImage image=new GreenfootImage("Ciano",
                                                                50,
                                                                new Color(x,y,z,255),
                                                                new Color(255,255,255,0));
            
                setImage(image);  
            }
        }
    
}

