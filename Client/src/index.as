package
{
	import flash.display.Sprite;
	import flash.net.Socket;
	
	import net.SocketClient;
	
	public class index extends Sprite
	{
		public function index()
		{
			new SocketClient('127.0.0.1',3456);
		}
	}
}