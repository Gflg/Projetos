import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)
import java.awt.Color; 

/**
 * Write a description of class Mundodascores here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Mundodascores extends World
{

    private int timer=300;
    private int cond=30;
    private int round=0;
    int a=1, count1=0, count2=0, count3=1;
    Number1 number1 = new Number1();
    Number2 number2 = new Number2();
    Number3 number3 = new Number3();
    Number4 number4 = new Number4();
    Number5 number5 = new Number5();
    Number6 number6 = new Number6();
    Score scr = new Score();
    Turn turn = new Turn();
    Time time = new Time();
    Menu menu;
    Word word;  
    
    GreenfootImage bgImg = null; 
    final int starCount = 200;
    Titulo Titulo = new Titulo();
    Comecar Comecar = new Comecar();
    Ranking Ranking = new Ranking();
    Instrucoes Instrucoes = new Instrucoes();
    Gameover Gameover = new Gameover();
    Tryagain Tryagain = new Tryagain();
    
    public Mundodascores()
    {    
        // Create a new world with 600x400 cells with a cell size of 1x1 pixels.
        super(600, 400, 1); 
        createBackgroundImage();
        addObject(Titulo,getWidth()/2,getHeight()/3-40);
        addObject(Comecar,getWidth()/2,getHeight()/2+10);
        addObject(Ranking,getWidth()/2,(getHeight()*2)/3);
        addObject(Instrucoes,getWidth()/2,(getHeight()*4)/5 +7);
    }
    
     private void createBackgroundImage()  
    {  
        bgImg = new GreenfootImage(getWidth(), getHeight());  
        
        //Cria a cor
        bgImg.setColor(new Color(224,255,255));  
        
        
        bgImg.fill();  
        setBackground(bgImg);  
    }  
    
    public void MenuInicial(){
        removeObjects(getObjects(Menu.class));
        addObject(Titulo,getWidth()/2,getHeight()/3-40);
        addObject(Comecar,getWidth()/2,getHeight()/2+10);
        addObject(Ranking,getWidth()/2,(getHeight()*2)/3);
        addObject(Instrucoes,getWidth()/2,(getHeight()*4)/5 +7);
    }
    
    public void prepare()
    {
        Word word = new Word();
        addObject(word, getWidth()/2, 150);
        addObject(number1,150,250);
        addObject(number2,300,248);
        addObject(number3,450,250);
        addObject(number4,150,349);
        addObject(number5,300,348);
        addObject(number6,450,349);
        addObject(scr,getWidth()/2,12);
        addObject(turn,getWidth()/2+200,12);
        addObject(time,getWidth()/2-200,12);
    }
    
    public void prepare2()
    {
        remove();
        Word word = new Word();
        addObject(word, getWidth()/2, 150);
        addObject(number1,150,250);
        addObject(number2,300,248);
        addObject(number3,450,250);
        addObject(number4,150,349);
        addObject(number5,300,348);
        addObject(number6,450,349);
        addObject(scr,getWidth()/2,12);
        addObject(turn,getWidth()/2+200,12);
        addObject(time,getWidth()/2-200,12);
    }
    
    public void prepare3(){
        addObject(scr,getWidth()/2,getHeight()/2);
        addObject(Gameover,getWidth()/2,100);
        addObject(Tryagain,getWidth()/2,300);
    }
    
    public void act()
    {
       
    }
    
    public void removeword()
    {
        removeObjects(getObjects(Word.class));
        prepare();
    }
    
    public void letsgo(){
        scr.addScore(100+10*count1);
        count1++;
        count2=0;
    }
    
    public void loser(){
        scr.addScore(-10-10*count2);
        count2++;
        count1=0;
    }
    
    public void adelante(){
        turn.addTurn(1);
    }
    
    public void vamosla(){
        time.removeTime(300-25*count3);
        count3++;
    }
    
    public void remove()
    {
        removeObjects(getObjects(Actor.class));
    }
    
}
