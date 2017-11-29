import greenfoot.*;  // (World, Actor, GreenfootImage, Greenfoot and MouseInfo)

/**
 * Write a description of class Instrucoes here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Instrucoes extends Menu
{
    /**
     * Act - do whatever the Instrucoes wants to do. This method is called whenever
     * the 'Act' or 'Run' button gets pressed in the environment.
     */
    public void act() 
    {
        if(Greenfoot.mouseClicked(this) == true){
            MenuInstrucoes MenuInstrucoes = new MenuInstrucoes();
            Voltar Voltar = new Voltar();
            getWorld().addObject(MenuInstrucoes,getWorld().getWidth()/2,getWorld().getHeight()/2);
            getWorld().addObject(Voltar,getWorld().getWidth()*6/7,getWorld().getHeight()*6/7);
            getWorld().removeObjects(getWorld().getObjects(Menu.class));
        }
    }    
}
