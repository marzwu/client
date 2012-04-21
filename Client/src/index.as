package
{
	import flash.display.Sprite;
	import flash.net.Socket;
	import flash.utils.setInterval;

	import net.SocketClient;

	public class index extends Sprite
	{
		public function index()
		{
			try
			{
				var i:int = 0;
				setInterval(connect, 500, i);
				function connect():void
				{
					var s:SocketClient = new SocketClient('127.0.0.1', 3456);
					s.writeUTFBytes(i++.toString());
					s.flush();
				}
			}
			catch (e:Error)
			{
				trace(e);
			}
		}
	}
}
