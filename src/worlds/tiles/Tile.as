package worlds.tiles {
	import net.flashpunk.Entity;
	
	public class Tile extends Entity {
		public static const SIZE:int = 32;
		public function Tile(posX:int, posY:int) {
			setHitbox(SIZE, SIZE);
			x = posX * SIZE
			y = posY * SIZE;
		}	
	}
}