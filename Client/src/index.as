package
{
	import flash.display.Sprite;
	import flash.net.Socket;

	import net.SocketClient;

	public class index extends Sprite
	{
		public function index()
		{
			try
			{
				new SocketClient('127.0.0.1', 3456);
			}
			catch (e:Error)
			{
				trace(e);
			}
		}
	}
}
