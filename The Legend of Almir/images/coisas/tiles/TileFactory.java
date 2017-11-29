import greenfoot.*;

public class TileFactory  
{
    public static Hyrule world;

    public static void make(int index, int row, int column)
    {
        Tile tile = TileEnum.values()[index].tile();
        make(tile,row,column);
    }    
    
    public static void make(Tile tile, int row, int column)
    {
        world.addObject(new Tile1 (),row*16+16,column*16+16);
    }

    public enum TileEnum
    {
        chao(new Tile1());
                
        private Tile tile;
        
        private TileEnum(Tile tile)
        {
            this.tile = tile;
        }
        
        public Tile tile()
        {
            return tile;
        }
    }
}
