package worlds.tiles {
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	public class Cloud extends Tile {
		[Embed(source='/assets/worlds/tiles/cloud.png')]
		private const CLOUD_PNG:Class;
		
		public function Cloud(posX:int, posY:int) {
			graphic = new Image(CLOUD_PNG);
			type = 'cloud';
			super(posX, posY);
		}
	}
}