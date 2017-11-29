import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)

/**
 * Write a description of class Voltar here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Voltar extends MenuInstrucoes
{
    Titulo Titulo = new Titulo();
    Comecar Comecar = new Comecar();
    Ranking Ranking = new Ranking();
    Instrucoes Instrucoes = new Instrucoes();
    public void act() 
    {
        if(Greenfoot.mouseClicked(this) == true){
            getWorld().addObject(Titulo,getWorld().getWidth()/2,getWorld().getHeight()/3-40);
            getWorld().addObject(Comecar,getWorld().getWidth()/2,getWorld().getHeight()/2+10);
            getWorld().addObject(Ranking,getWorld().getWidth()/2,(getWorld().getHeight()*2)/3);
            getWorld().addObject(Instrucoes,getWorld().getWidth()/2,(getWorld().getHeight()*4)/5 +7);
            getWorld().removeObjects(getWorld().getObjects(MenuInstrucoes.class));
        }
    }    
}
