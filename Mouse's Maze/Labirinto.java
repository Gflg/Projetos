import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)

/**
 * Write a description of class Labirinto here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Labirinto extends World
{

    Mouse mouse = new Mouse();
    Obstacle obstacle = new Obstacle();
    Wall1 wall1 = new Wall1();
    Wall1 wall2 = new Wall1();
    Wall1 wall3 = new Wall1();
    Wall1 wall4 = new Wall1();
    Wall1 wall5 = new Wall1();
    Wall1 wall6 = new Wall1();
    Wall1 wall7 = new Wall1();
    Wall1 wall8 = new Wall1();
    Wall1 wall9 = new Wall1();
    Wall1 wall10 = new Wall1();
    Wall1 wall11 = new Wall1();
    Wall1 wall12 = new Wall1();
    Wall1 wall13 = new Wall1();
    Wall1 wall14 = new Wall1();
    Wall1 wall15 = new Wall1();
    Wall1 wall16 = new Wall1();
    Wall1 wall17 = new Wall1();
    Wall1 wall18 = new Wall1();
    Wall2 parede1 = new Wall2();
    Wall2 parede2 = new Wall2();
    Wall2 parede3 = new Wall2();
    Wall2 parede4 = new Wall2();
    Wall2 parede5 = new Wall2();
    Wall2 parede6 = new Wall2();
    Wall2 parede7 = new Wall2();
    Wall2 parede8 = new Wall2();
    Wall2 parede10 = new Wall2();
    Wall2 parede9 = new Wall2();
    Wall2 parede11 = new Wall2();
    Wall2 parede12 = new Wall2();
    Wall2 parede13 = new Wall2();
    Wall2 parede14 = new Wall2();
    Wall2 parede15 = new Wall2();
    Wall2 parede16 = new Wall2();
    Wall2 parede17 = new Wall2();
    Wall2 parede18 = new Wall2();
    White white1 = new White();
    Whitelado white2 = new Whitelado();
    Whitecima white3 = new Whitecima();
    Fake1 fake11 = new Fake1();
    Fake1 fake12 = new Fake1();
    Fake1 fake13 = new Fake1();
    Fake2 fake21 = new Fake2();
    Fake2 fake22 = new Fake2();
    Fake3 fake3 = new Fake3();
    Time time = new Time();
    Score scr = new Score();
    Titulo Titulo = new Titulo();
    Comecar Comecar = new Comecar();
    Ranking Ranking = new Ranking();
    Instrucoes Instrucoes = new Instrucoes();
    Gameover Gameover = new Gameover();
    Tryagain Tryagain = new Tryagain();
    int cond=1;
    
    public Labirinto()
    {    
        // Create a new world with 600x400 cells with a cell size of 1x1 pixels.
        super(600, 400, 1); 
        setBackground("blue.png");
        addObject(Titulo,getWidth()/2,getHeight()/3-40);
        addObject(Comecar,getWidth()/2,getHeight()/2+10);
        addObject(Ranking,getWidth()/2,(getHeight()*2)/3);
        addObject(Instrucoes,getWidth()/2,(getHeight()*4)/5 +7);
    }
    
    public void prepare()
    {
        if(cond!=11){
        addObject(wall1,85,15);
        addObject(wall2,255,15);
        addObject(wall3,425,15);
        addObject(wall4,525,15);
        addObject(wall5,85,385);
        addObject(wall6,255,385);
        addObject(wall7,425,385);
        addObject(wall8,525,385);
        addObject(parede1,15,110);
        addObject(parede2,15,220);
        addObject(parede3,15,290);
        addObject(parede4,585,100);
        addObject(parede5,585,220);
        addObject(parede6,585,290);
        
        if(cond==1){
           addObject(mouse,550,350);
           addObject(parede7,185,320);
           addObject(parede8,185,155);
           addObject(parede9,385,105);
           addObject(parede10,385,240);
           cond++;
           addObject(white2,16,49);
           addObject(scr,getWidth()/2,12);
           addObject(time,getWidth()/2-200,12);
        }
        else if (cond==2){
           addObject(mouse,550,350);
           addObject(parede8,500,300);
           addObject(parede9,500,85);
           addObject(parede10,300,5);
           addObject(parede11,300,300);
           addObject(parede12,300,205);
           addObject(parede13,100,35);
           addObject(parede14,100,180);
           addObject(parede15,100,395);
           cond++;
           addObject(white2,16,49);
           addObject(scr,getWidth()/2,12);
           addObject(time,getWidth()/2-200,12);
        }
        else if (cond==3){
           addObject(mouse,550,350);
           addObject(parede8,500,285);
           addObject(parede9,500,145);
           addObject(parede10,400,5);
           addObject(parede11,250,160);
           addObject(parede12,250,240);
           addObject(parede13,100,100);
           addObject(parede14,100,240);
           addObject(parede15,401,240);
           addObject(wall9,332,150);
           addObject(wall10,169,200);
           cond++;
           addObject(white2,16,49);
           addObject(scr,getWidth()/2,12);
           addObject(time,getWidth()/2-200,12);
        }
        else if (cond==4){
           addObject(mouse,550,350);
           addObject(parede8,500,0);
           addObject(parede9,500,400);
           addObject(parede10,500,200);
           addObject(parede11,350,330);
           addObject(parede12,90,250);
           addObject(parede13,90,154);
           addObject(parede14,191,15);
           addObject(parede15,191,395);
           addObject(wall9,420,200);
           addObject(wall10,260,200);
           addObject(wall11,160,200);
           addObject(wall12,21,83);
           addObject(wall13,350,100);
           addObject(wall14,260,100);
           addObject(wall15,260,300);
           cond++;
           addObject(white2,16,49);
           addObject(scr,getWidth()/2,12);
           addObject(time,getWidth()/2-200,12);
        }
        else if (cond==5){
           addObject(mouse,550,350);
           addObject(parede8,91,220);
           addObject(parede9,520,152);
           addObject(wall9,490,300);
           addObject(wall10,270,300);
           addObject(wall11,160,300);
           addObject(wall12,160,150);
           addObject(wall13,300,150);
           addObject(wall14,440,150);
           addObject(wall15,160,83);
           addObject(wall16,300,83);
           addObject(wall17,440,83);
           addObject(wall18,100,83);
           cond++;
           addObject(white2,16,49);
           addObject(scr,getWidth()/2,12);
           addObject(time,getWidth()/2-200,12);
        }
        else if (cond==6){
           addObject(mouse,550,350);
           addObject(parede8,500,300);
           addObject(parede9,500,40);
           addObject(parede10,90,40);
           addObject(parede11,90,170);
           addObject(parede12,195,239);
           addObject(wall9,431,170);
           addObject(wall10,360,109);
           addObject(wall11,190,109);
           addObject(wall12,265,170);
           addObject(wall13,100,308);
           addObject(wall14,400,290);
           cond++;
           addObject(white2,16,49);
           addObject(scr,getWidth()/2,12);
           addObject(time,getWidth()/2-200,12);
        }
        else if (cond==7){
           addObject(mouse,550,350);
           addObject(parede8,305,152);
           addObject(parede9,455,152);
           addObject(parede10,90,152);
           addObject(wall9,490,300);
           addObject(wall10,410,300);
           addObject(wall11,110,300);
           addObject(wall12,200,300);
           addObject(wall13,205,83);
           addObject(wall14,105,83);
           addObject(wall15,385,83);
           addObject(wall16,600,83);
           addObject(wall17,450,170);
           addObject(wall18,160,222);
           cond++;
           addObject(white2,16,49);
           addObject(scr,getWidth()/2,12);
           addObject(time,getWidth()/2-200,12);
        }
        else if (cond==8){
           addObject(mouse,550,350);
           addObject(parede8,520,151);
           addObject(parede9,81,220);
           addObject(parede10,81,152);
           addObject(parede11,151,149);
           addObject(parede12,151,49);
           addObject(parede13,319,149);
           addObject(wall9,600,320);
           addObject(wall10,400,320);
           addObject(wall11,450,220);
           addObject(wall12,450,80);
           addObject(wall13,300,320);
           addObject(wall14,150,320);
           addObject(wall15,10,83);
           addObject(wall16,250,80);
           addObject(wall17,250,218);
           cond++;
           addObject(white2,16,49);
           addObject(scr,getWidth()/2,12);
           addObject(time,getWidth()/2-200,12);
        }
        else if (cond==9){
           addObject(mouse,550,350);
           addObject(parede8,520,250);
           addObject(parede9,520,151);
           addObject(parede10,420,31);
           addObject(parede11,320,151);
           addObject(parede12,131,250);
           addObject(parede13,171,20);
           addObject(parede14,350,250);
           addObject(wall9,420,319);
           addObject(wall10,220,319);
           addObject(wall11,420,159);
           addObject(wall12,350,159);
           addObject(wall13,145,159);
           addObject(wall14,0,319);
           addObject(wall15,265,220);
           cond++;
           addObject(white2,16,49);
           addObject(scr,getWidth()/2,12);
           addObject(time,getWidth()/2-200,12);
        }
        else if (cond==10){
           addObject(mouse,550,200);
           addObject(parede8,520,100);
           addObject(parede9,420,299);
           addObject(parede10,350,299);
           addObject(parede11,165,370);
           addObject(parede12,140,100);
           addObject(parede13,370,100);
           addObject(parede14,302,100);
           addObject(wall9,500,230);
           addObject(wall10,270,230);
           addObject(wall11,60,230);
           addObject(wall12,440,169);
           addObject(wall13,232,169);
           cond++;
           addObject(white3,336,16);
           addObject(fake11,385,385);
           addObject(fake12,315,385);
           addObject(fake13,130,385);
           addObject(fake21,16,49);
           addObject(fake22,16,263);
           addObject(fake3,552,16);
           addObject(scr,getWidth()/2+150,12);
           addObject(time,getWidth()/2-150,12);
        }
    }
    else if(cond==11){
        addObject(scr,getWidth()/2,getHeight()/2);
        addObject(Gameover,getWidth()/2,100);
        addObject(Tryagain,getWidth()/2,300);
        }
    }
    
    public void remove()
    {
        removeObjects(getObjects(Actor.class));
        scr.addScore(100 + time.tempo);
        if(cond<4)
             time.addTime(100*cond);
        else if(cond<7)
             time.addTime(200);
        else if(cond==8)
             time.addTime(100);
        else if(cond<10)
             time.addTime(250);
        else if(cond==10)
             time.addTime(-100);
        prepare();
    }
    
    public void remove2()
    {
        removeObjects(getObjects(Actor.class));
        cond=11;
        prepare();
    }
    
    public void remove3()
    {
        removeObjects(getObjects(Actor.class));
        prepare();
    }
    
    public void add()
    {
        removeObjects(getObjects(Actor.class));
        addObject(Titulo,getWidth()/2,getHeight()/3-40);
        addObject(Comecar,getWidth()/2,getHeight()/2+10);
        addObject(Ranking,getWidth()/2,(getHeight()*2)/3);
        addObject(Instrucoes,getWidth()/2,(getHeight()*4)/5 +7);
    }
}
