package {
	import net.flashpunk.graphics.Text;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	
	public class theWorld extends World {
		
		private var playerHealth:Text;
		private var player:thePlayer;
		
		public function theWorld() {
			player = new thePlayer();
			add(player);	
			playerHealth = new Text("Health: "+player.getHealth().toString());	
			var i:int = 0
			for (i = 0; i < 20; i++) {
				add(new theWall(i, 0));
				
				if(i < 12)
					add(new theWall(i, 14));
				else
					add(new leWater(i, 14));
			}
			for (i = 1; i < 14; i++) {
				add(new theWall(0, i));
				add(new theWall(19, i));
			}
			for (i = 1; i < 5; i++) {
				add(new theWall(5 - i, 14 - i));
				add(new theWall(8 + i, 5 + i));
				add(new theWall(2 + i, 10 - i));
				add(new theWall(13 + i, 8 - i));
			}
		}
		
		override public function begin():void
		{
			addGraphic(playerHealth, 0, 35, 35);
		}
		
		override public function update():void
		{
			playerHealth.text = "Health: " + player.getHealth().toString();
			if (player.y > FP.screen.height)
			{
				player.moveTo(305, 225);
			}
			super.update();
		}
	}
}