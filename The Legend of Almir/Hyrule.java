import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)

/**
 * Write a description of class Hyrule here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Hyrule extends World
{

    /**
     * Constructor for objects of class Hyrule.
     * 
     */
    
    public boolean remove=false;
    int phase=1;
    int cond = 0;
    GreenfootSound backgroundMusic1 = new GreenfootSound("Barroom.mp3");
    GreenfootSound backgroundMusic2 = new GreenfootSound("Epic.mp3");
    Link link = new Link();
    Enemy enemy = new Enemy();
    Water1 water1 = new Water1();
    Water2 water2 = new Water2();
    Life life = new Life();
    Explosion explosion= new Explosion();
    Sword sword = new Sword();
    Menu menu = new Menu();
    GameOver gameover = new GameOver();
    Background background = new Background();
    Porta1 porta1= new Porta1();
    Porta2 porta2= new Porta2();
    Porta3 porta3= new Porta3();
    Porta4 porta4= new Porta4();
    Portaf1 portaf1= new Portaf1();
    Portaf2 portaf2= new Portaf2();
    Portaf3 portaf3= new Portaf3();
    Portaf4 portaf4= new Portaf4();
    Pedra pedra= new Pedra();
    
    private enum GameState{MENU,PLAYING,GAMEOVER};
    private GameState state;
    /**
    private int[][] tiles = {
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
        };
        */
        
    public Hyrule()
    {    
        // Create a new world with 600x400 cells with a cell size of 1x1 pixels.
        super(420, 278, 1);
        //TileFactory.world = this;

        /**
        
        for (int i=0; i<tiles.length; i++)
        {
            for (int j=0; j<tiles[i].length; j++)
            {
                TileFactory.make(tiles[i][j],j,i);
            }            
        }
        */
        prepare(phase,remove);
        //prepare(phase,remove);
    }
    
    private void prepareMenu()
    {
        // Clear the world
        removeObjects(getObjects(Actor.class));
                
        // Create the menu
        //button = new MenuButton();        
        addObject(menu,getWidth()/2,getHeight()/2);
        if(Greenfoot.mouseClicked(menu))
        {
            prepare(1,true);
        }
        // Set the game state
        state = GameState.MENU;
    }
    
    public void prepare(int phase ,boolean remove)
    {
        if(phase==1){
        if(remove=true)
      {
        removeObjects(getObjects(Door.class));
        removeObjects(getObjects(Enemy.class));
        removeObjects(getObjects(Obstacle.class));
        removeObjects(getObjects(Characters.class));
        removeObjects(getObjects(Menu.class));
      }
        backgroundMusic1.playLoop();
        addObject(background,getWidth()/2-10 ,getHeight()/2 );
        addObject(link,getWidth()/2,getHeight()/2);
        addObject(enemy, 200, 100);
        
        wall1 wall1 = new wall1();
        addObject(wall1, 208, 26);
        
        wall2 wall2 = new wall2();
        addObject(wall2, 21, 165);
        
        wall3 wall3 = new wall3();
        addObject(wall3, 230 , 260);
        
        wall4 wall4 = new wall4();
        addObject(wall4, 393, 145);
        addObject(porta4,383,getHeight()/2+8);
        
        
        //addObject(porta2,30,getHeight()/2);
        //addObject(porta3,104,30);
        //addObject(porta1,104,30);
        addObject(life, 50, 50);
        
        cond=1;
        remove=false;
        //caso();
    }
    if(phase==2){
        if(remove=true)
       {
        removeObjects(getObjects(Door.class));
        removeObjects(getObjects(Enemy.class));
        removeObjects(getObjects(Obstacle.class));
        removeObjects(getObjects(Characters.class));
        removeObjects(getObjects(Life.class));
       }
        backgroundMusic1.stop();
        backgroundMusic2.playLoop();
        addObject(background,getWidth()/2-10 ,getHeight()/2 );
        addObject(enemy, 200, 100);
        
        wall1 wall1 = new wall1();
        addObject(wall1, 208, 26);
   
        wall2 wall2 = new wall2();
        addObject(wall2, 21, 165);
        
        wall3 wall3 = new wall3();
        addObject(wall3, 230 , 260);
        
        wall4 wall4 = new wall4();
        addObject(wall4, 393, 145);
        //addObject(porta4,395,getHeight()/2);
        addObject(portaf2,20,getHeight()/2+5);
        //addObject(porta3,104,30);
        //addObject(porta1,104,30);
        addObject(porta1,getWidth()/2,43);
        addObject(link, 60, getHeight()/2 +20);
        addObject(life, 50, 30);
        cond=1;
        remove=false;
        //caso();
    }
    if(phase==3){
        if(remove=true)
       {
        removeObjects(getObjects(Door.class));
        removeObjects(getObjects(Enemy.class));
        removeObjects(getObjects(Obstacle.class));
        removeObjects(getObjects(Characters.class));
        removeObjects(getObjects(Life.class));
       }
        backgroundMusic2.stop();
        backgroundMusic1.playLoop();
        addObject(background,getWidth()/2-10 ,getHeight()/2 );
        
        addObject(enemy, 200, 100);
        
        wall1 wall1 = new wall1();
        addObject(wall1, 208, 26);
        
        wall2 wall2 = new wall2();
        addObject(wall2, 21, 165);
        
        wall3 wall3 = new wall3();
        addObject(wall3, 230 , 260);
        
        wall4 wall4 = new wall4();
        addObject(wall4, 393, 145);
        addObject(life, 50, 50);
        addObject(new Pedra(),102,120);
        addObject(new Pedra(),298,120);
        addObject(new Pedra(),298,177);
        addObject(new Pedra(),102,177);
        //addObject(porta4,395,getHeight()/2);
        addObject(portaf3,getWidth()/2,260);
        //addObject(porta2,30,getHeight()/2+5);
        addObject(porta1,getWidth()/2,43);
        addObject(link,getWidth()/2+5,235);
        cond=1;
        remove=false;
        //caso();
    }
    if(phase==4){
        if(remove=true)
       {
        removeObjects(getObjects(Door.class));
        removeObjects(getObjects(Enemy.class));
        removeObjects(getObjects(Obstacle.class));
        removeObjects(getObjects(Characters.class));
        removeObjects(getObjects(Life.class));
       }
        backgroundMusic1.stop();
        backgroundMusic2.playLoop();
        addObject(background,getWidth()/2-10 ,getHeight()/2 );
        
        addObject(enemy, 200, 100);
        
        wall1 wall1 = new wall1();
        addObject(wall1, 208, 26);
        
        wall2 wall2 = new wall2();
        addObject(wall2, 21, 165);
        
        wall3 wall3 = new wall3();
        addObject(wall3, 230 , 260);
        
        wall4 wall4 = new wall4();
        addObject(wall4, 393, 145);
        addObject(life, 50, 50);
        addObject(new Pedra(),102,92);
        addObject(new Pedra(),298,92);
        addObject(new Pedra(),298,205);
        addObject(new Pedra(),102,205);
        //addObject(porta4,395,getHeight()/2);
        addObject(portaf3,getWidth()/2,260);
        addObject(porta2,30,getHeight()/2+5);
        //addObject(porta1,getWidth()/2,34);
        addObject(link,getWidth()/2+5,235);
        cond=1;
        remove=false;
        //caso();
    }
    if(phase==5){
        if(remove=true)
       {
        removeObjects(getObjects(Door.class));
        removeObjects(getObjects(Enemy.class));
        removeObjects(getObjects(Obstacle.class));
        removeObjects(getObjects(Characters.class));
       }
        backgroundMusic2.stop();
        backgroundMusic1.playLoop();
        addObject(background,getWidth()/2-10 ,getHeight()/2 );
        
        addObject(enemy, 200, 100);
        
        addObject(new Pedra(),46,233);
        addObject(new Pedra(),355,64);
        addObject(new Pedra(),298,233);
        
        wall1 wall1 = new wall1();
        addObject(wall1, 208, 26);
        
        wall2 wall2 = new wall2();
        addObject(wall2, 21, 165);
        
        wall3 wall3 = new wall3();
        addObject(wall3, 230 , 260);
        
        wall4 wall4 = new wall4();
        addObject(wall4, 393, 145);
        addObject(life, 50, 50);
        
        addObject(new Pedra(),102,64);
        addObject(new Pedra(),74,92);
        
        addObject(new Pedra(),158,120);
        addObject(new Pedra(),186,92);
        addObject(new Pedra(),131,148);
        addObject(new Pedra(),102,177);
        addObject(new Pedra(),74,205);
        
        addObject(new Pedra(),214,205);
        addObject(new Pedra(),242,177);
        addObject(new Pedra(),270,148);
        addObject(new Pedra(),298,120);
        addObject(new Pedra(),327,92);
        
        addObject(new Pedra(),327,205);
        
        addObject(portaf4,395,getHeight()/2);
        //addObject(portaf3,getWidth()/2,260);
        //addObject(porta2,30,getHeight()/2+5);
        addObject(porta1,getWidth()/2,43);
        addObject(link,360,getHeight()/2);
        cond=1;
        remove=false;
        //caso();
    }
    if(phase==6){
        if(remove=true)
       {
        removeObjects(getObjects(Door.class));
        removeObjects(getObjects(Enemy.class));
        removeObjects(getObjects(Obstacle.class));
        removeObjects(getObjects(Characters.class));
       }
        backgroundMusic1.stop();
        backgroundMusic2.playLoop();
        addObject(background,getWidth()/2-10 ,getHeight()/2 );
        
        addObject(enemy, 200, 100);
        
        wall1 wall1 = new wall1();
        addObject(wall1, 208, 26);
        
        wall2 wall2 = new wall2();
        addObject(wall2, 21, 165);
        
        wall3 wall3 = new wall3();
        addObject(wall3, 230 , 260);
        
        wall4 wall4 = new wall4();
        addObject(wall4, 393, 145);
        addObject(life, 50, 50);
        //addObject(portaf4,395,getHeight()/2);
        addObject(portaf3,getWidth()/2,260);
        //addObject(porta2,30,getHeight()/2+5);
        addObject(porta1,getWidth()/2,43);
        addObject(link,getWidth()/2+5,235);
        addObject(new Water2(),105,90);
        addObject(new Water2(),300,90);
        addObject(new Water1(),75,121);
        addObject(new Water1(),75,151);
        addObject(new Water1(),329,121);
        addObject(new Water1(),329,151);
        addObject(new Water2(),105,205);
        addObject(new Water2(),300,204);
        addObject(new Water2(),190,148);
        addObject(new Water2(),210,148);
        cond=1;
        remove=false;
        //caso();
    }
    if(phase==7){
        if(remove=true)
       {
        removeObjects(getObjects(Door.class));
        removeObjects(getObjects(Enemy.class));
        removeObjects(getObjects(Obstacle.class));
        removeObjects(getObjects(Characters.class));
       }
        backgroundMusic2.stop();
        backgroundMusic1.playLoop();
        addObject(background,getWidth()/2-10 ,getHeight()/2 );
        
        addObject(enemy, 200, 100);
        
        wall1 wall1 = new wall1();
        addObject(wall1, 208, 26);
        
        wall2 wall2 = new wall2();
        addObject(wall2, 21, 165);
        
        wall3 wall3 = new wall3();
        addObject(wall3, 230 , 260);
        
        wall4 wall4 = new wall4();
        addObject(wall4, 393, 145);
        addObject(life, 50, 50);
        addObject(porta4,383,getHeight()/2+8);
        addObject(portaf3,getWidth()/2,260);
        addObject(new Water2(),85,119);
        addObject(new Water2(),105,119);
        addObject(new Water2(),195,119);
        addObject(new Water2(),285,119);
        addObject(new Water2(),323,119);
        //addObject(porta2,30,getHeight()/2+5);
        //addObject(porta1,getWidth()/2,34);
        addObject(link,getWidth()/2+5,235);
        cond=1;
        remove=false;
        //caso();
    }
    if(phase==8){
        if(remove=true)
       {
        removeObjects(getObjects(Door.class));
        removeObjects(getObjects(Enemy.class));
        removeObjects(getObjects(Obstacle.class));
        removeObjects(getObjects(Characters.class));
       }
        backgroundMusic1.stop();
        backgroundMusic2.playLoop();
        addObject(background,getWidth()/2-10 ,getHeight()/2 );
        
        addObject(enemy, 200, 100);
        
        wall1 wall1 = new wall1();
        addObject(wall1, 208, 26);
        
        wall2 wall2 = new wall2();
        addObject(wall2, 21, 165);
        
        wall3 wall3 = new wall3();
        addObject(wall3, 230 , 260);
        
        wall4 wall4 = new wall4();
        addObject(wall4, 393, 145);
        addObject(life, 50, 50);
        addObject(new Pedra(),158,148);
        addObject(new Pedra(),244,148);
        //addObject(porta4,385,getHeight()/2);
        //addObject(portaf3,getWidth()/2,260);
        addObject(portaf2,20,getHeight()/2+5);
        addObject(porta1,getWidth()/2,43);
        addObject(link,55,getHeight()/2+5);
        cond=1;
        remove=false;
        //caso();
    }
    if(phase==9){
        if(remove=true)
       {
        removeObjects(getObjects(Door.class));
        removeObjects(getObjects(Enemy.class));
        removeObjects(getObjects(Obstacle.class));
        removeObjects(getObjects(Characters.class));
       }
        backgroundMusic2.stop();
        backgroundMusic1.playLoop();
        addObject(background,getWidth()/2-10 ,getHeight()/2 );
        
        addObject(enemy, 200, 100);
        
        wall1 wall1 = new wall1();
        addObject(wall1, 208, 26);
        
        wall2 wall2 = new wall2();
        addObject(wall2, 21, 165);
        
        wall3 wall3 = new wall3();
        addObject(wall3, 230 , 260);
        
        wall4 wall4 = new wall4();
        addObject(wall4, 393, 145);
        addObject(life, 50, 50);
        addObject(new Pedra(),102,120);
        addObject(new Pedra(),298,120);
        addObject(new Pedra(),298,177);
        addObject(new Pedra(),102,177);
        addObject(new Pedra(),74,148);
        addObject(new Pedra(),327,148);
        addObject(porta4,380,getHeight()/2);
        addObject(portaf3,getWidth()/2,260);
        //addObject(portaf2,30,getHeight()/2+5);
        //addObject(porta1,getWidth()/2,34);
        addObject(link,getWidth()/2+5,235);
        cond=1;
        remove=false;
        //caso();
    }
    if(phase==10){
        if(remove=true)
       {
        removeObjects(getObjects(Door.class));
        removeObjects(getObjects(Enemy.class));
        removeObjects(getObjects(Obstacle.class));
        removeObjects(getObjects(Characters.class));
       }
        backgroundMusic1.stop();
        backgroundMusic2.playLoop();
        addObject(background,getWidth()/2-10 ,getHeight()/2 );
        
        addObject(enemy, getWidth()/2, getHeight()/2);
        
        wall1 wall1 = new wall1();
        addObject(wall1, 208, 26);
        
        wall2 wall2 = new wall2();
        addObject(wall2, 21, 165);
        
        wall3 wall3 = new wall3();
        addObject(wall3, 230 , 260);
        
        wall4 wall4 = new wall4();
        addObject(wall4, 393, 145);
        addObject(life, 50, 50);
        addObject(porta4,380,getHeight()/2+8);
        //addObject(portaf3,getWidth()/2,260);
        addObject(portaf2,20,getHeight()/2+5);
        //addObject(porta1,getWidth()/2,34);
        addObject(water2,105,90);
        addObject(new Water2(),195,90);
        addObject(new Water2(),285,90);
        addObject(new Water2(),295,90);
        addObject(new Water2(),105,119);
        addObject(new Water2(),195,119);
        addObject(new Water2(),285,119);
        addObject(new Water2(),295,119);
        addObject(new Water2(),105,148);
        addObject(new Water2(),295,148);
        addObject(new Water2(),105,177);
        addObject(new Water2(),105,206);
        addObject(new Water2(),105,230);
        addObject(new Water2(),295,177);
        addObject(new Water2(),295,206);
        addObject(new Water2(),295,230);
        addObject(new Water2(),195,206);
        addObject(new Water2(),195,230);
        addObject(new Water2(),285,206);
        addObject(new Water2(),285,230);
        addObject(link,54,getHeight()/2+5);
        
        cond=1;
        remove=false;
        //caso();
    }
    if(phase==11){
        if(remove=true)
       {
        removeObjects(getObjects(Door.class));
        removeObjects(getObjects(Enemy.class));
        removeObjects(getObjects(Obstacle.class));
        removeObjects(getObjects(Characters.class));
       }
        backgroundMusic2.stop();
        backgroundMusic1.playLoop();
        addObject(background,getWidth()/2-10 ,getHeight()/2 );
        
        addObject(enemy, 200, 100);
        
        wall1 wall1 = new wall1();
        addObject(wall1, 208, 26);
        
        wall2 wall2 = new wall2();
        addObject(wall2, 21, 165);
        
        wall3 wall3 = new wall3();
        addObject(wall3, 230 , 260);
        
        wall4 wall4 = new wall4();
        addObject(wall4, 393, 145);
        addObject(life, 50, 50);
        addObject(new Pedra(),158,148);
        addObject(new Pedra(),244,148);
        //addObject(porta4,385,getHeight()/2);
        //addObject(portaf3,getWidth()/2,260);
        addObject(portaf2,20,getHeight()/2+5);
        //addObject(porta1,getWidth()/2,34);
        addObject(link,55,getHeight()/2+5);
        cond=1;
        remove=false;
        //caso();
    }
    }
    
    private void prepareGameOver()
    {
        // Clear the world
        removeObjects(getObjects(Actor.class)); 
      
        // Add gameover screen
        
        addObject(gameover,getWidth()/2,getHeight()/2);
        if(Greenfoot.mouseClicked(gameover))
        {
            prepareMenu();
        }                 
        // Set the game state
        state = GameState.GAMEOVER;           
    }
     //private void caso()
    //{
        //if (cond == 1){
          //  backgroundMusic1.stop();
            //backgroundMusic2.play();
            //backgroundMusic2.stop();
            //cond=0;
        //}
    //}
    public void drawSword (char dir, int LinkX, int LinkY)
    {
        if (dir == 'N')
        {
            LinkY -= 14;
            LinkX -= 2;
        }
        else if (dir == 'S')
        {
            LinkY += 13;
        }
        else if (dir == 'E')
        {
            LinkX += 13;
            LinkY++;
        }
        else if (dir == 'W')
        {
            LinkX -= 12;
            LinkY++;
        }
        
        sword.setImage("Sword/"+dir+".png");
        addObject(sword, LinkX, LinkY);
    }
    
    public void damageTaken()
    {
        life.lifeDamage();
    }
    
    public void gameOver()
    {
        removeObjects(getObjects(Actor.class));
        Greenfoot.stop();
    }
    
    public void keepSword()
    {
        removeObject(sword);
    }
}