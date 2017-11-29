
import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)

/**
 * Write a description of class Link here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Link extends Characters
{
    private char Direction[] = {'N', 'S', 'E', 'W'};
    private String Action[] = {"Walk", "Attack"};
    
    private GreenfootImage[] WalkN;
    private GreenfootImage[] WalkS;
    private GreenfootImage[] WalkE;
    private GreenfootImage[] WalkW;
    
    private GreenfootImage AttackN;
    private GreenfootImage AttackS;
    private GreenfootImage AttackE;
    private GreenfootImage AttackW;
    
    private GreenfootImage[] Sprite;
    
    private int spriteCount = 0;
    
    private int countbomb=10000000;
    public Link() // Carrega os Sprite
    {
        GreenfootImage[] SpriteAux;
        
        String folder = "Link/"; //Pasta onde estão os sprites referentes ao Link.
        String suffix = ".png"; // Extensão das imagens. Todas são PNG por possuírem transparência.
        
        for (String act : Action)
        {
            if (act == "Walk")
            {
                for (char dir: Direction)
                {
                    SpriteAux = new GreenfootImage[2]; //Recebe uma nova imagem vazia cada vez que a repetição ocorra.
                    
                    for (int i=0 ; i<2 ; i++)
                    {
                        SpriteAux[i] = new GreenfootImage(folder+act+"/"+dir+(i+1)+suffix);
                    }
                    
                    if (act == "Walk")
                    {
                        if (dir == 'N')
                            WalkN = SpriteAux;
                        else if (dir == 'S')
                            WalkS = SpriteAux;
                        else if (dir == 'E')
                            WalkE = SpriteAux;
                        else if (dir == 'W')
                            WalkW = SpriteAux;
                    }
                }
                
                Sprite = WalkS;
                setImage(Sprite[0]);
            }
            if (act == "Attack")
            {
                GreenfootImage SpriteAux2;
                
                for (char dir : Direction)
                {
                    SpriteAux2 = new GreenfootImage(folder+act+"/"+dir+suffix);
                        
                    if (dir == 'N')
                        AttackN = SpriteAux2;
                    else if (dir == 'S')
                        AttackS = SpriteAux2;
                    else if (dir == 'E')
                        AttackE = SpriteAux2;
                    else if (dir == 'W')
                        AttackW = SpriteAux2;
                }
            }
        }
        
    }
    
    private boolean move;
    private boolean attack = false;
    private int attackCount = 5;
    private char dir = 'S';
    
    public void act() 
    {
        move = false;
        int deltaX = 0;
        int deltaY = 0;
        int speed = 5;
        
        Hyrule hyrule = (Hyrule)getWorld();
        if(getOneIntersectingObject(Door.class)!= null)
        {
            hyrule.phase++;
            hyrule.remove=true;
            hyrule.prepare(hyrule.phase,hyrule.remove);
        }
        if (attack || Greenfoot.isKeyDown("space")) //Faz com que o ataque começe nesse mesmo act e continue por outros 4 acts
        {
            attack = true;
            
            switch (attackCount)
            {
                case 5: //Posiciona o sprite de ataque, mas ainda não a espada
                    //Sprite[spriteCount] = getImage();
                    
                    if (dir == 'N')
                        setImage(AttackN);
                    else if (dir == 'S')
                        setImage(AttackS);
                    else if (dir == 'E')
                        setImage(AttackE);
                    else if (dir == 'W')
                        setImage(AttackW);
                    attackCount--;
                break;
                case 4: //Adiciona a espada
                    //Hyrule hyrule = (Hyrule)getWorld();
                    hyrule.drawSword(dir, getX(), getY());
                    attackCount--;
                break;
                case 3:
                    attackCount--;
                break;
                case 2:
                    attackCount--;
                break;
                case 1: //Tira a espada para dar uma sensação de movimento
                    //Hyrule hyrule = (Hyrule)getWorld();
                    hyrule.keepSword();
                    attackCount--;
                break;
                case 0: //Volta ao normal
                    setImage(Sprite[spriteCount]);
                    attackCount = 5;
                    attack = false;
                break;
            }
        }
        else if (Greenfoot.isKeyDown("up") || Greenfoot.isKeyDown("w"))
        {
            Sprite = WalkN;
            deltaY= -speed;
            dir = 'N';
            move = true;
        }
        else if (Greenfoot.isKeyDown("down") || Greenfoot.isKeyDown("s"))
        {
            Sprite = WalkS;
            deltaY= +speed;
            dir = 'S';
            move = true;
        }
        else if (Greenfoot.isKeyDown("left") || Greenfoot.isKeyDown("a"))
        {
            Sprite = WalkW;
            deltaX= -speed;
            dir = 'W';
            move = true;
        }
        else if (Greenfoot.isKeyDown("right") || Greenfoot.isKeyDown("d"))
        {
            Sprite = WalkE;
            deltaX= +speed;
            dir = 'E';
            move = true;
        }
        
        if(Greenfoot.isKeyDown("z"))
        {
            if(countbomb >= 1)
            {
              bomb bomb= new bomb();
              getWorld().addObject(bomb,getX(),getY());
              //countbomb--;
            }
        }
        
        if (getOneIntersectingObject(Projectile.class)!= null)
        {
            Projectile projectile = (Projectile)getOneIntersectingObject(Projectile.class);
            
            if ((dir == 'N') && (projectile.getY() < this.getY()))
            {
                projectile.turn(225);
                projectile.reflected();
            }
            else if ((dir == 'S') && (projectile.getY() > this.getY()))
            {
                projectile.turn(225);
                projectile.reflected();
            }
            else if ((dir == 'E') && (projectile.getX() > this.getX()))
            {
                projectile.turn(135);
                projectile.reflected();
            }
            else if ((dir == 'W') && (projectile.getX() < this.getX()))
            {
                projectile.turn(225);
                projectile.reflected();
            }
            else
            {
                getWorld().removeObject(projectile);
                hyrule.damageTaken();
            }
        }
        if (getOneIntersectingObject(Explosion.class)!= null)
        {
            Explosion explosion = (Explosion)getOneIntersectingObject(Explosion.class);
            getWorld().removeObject(explosion);
            hyrule.damageTaken();
        }
        
        if (move)
        {
            setLocation(getX()+deltaX,getY()+deltaY);
            
            if (getOneIntersectingObject(Obstacle.class) != null)
            {
                setLocation(getX()-deltaX,getY()-deltaY);
            }
            else
            {
                spriteCount++;
                
                if (spriteCount >= Sprite.length)
                    spriteCount = 0;

                setImage(Sprite[spriteCount]);
            }
        }
    }
}