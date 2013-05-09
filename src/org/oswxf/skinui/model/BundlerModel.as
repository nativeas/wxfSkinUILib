package org.oswxf.skinui.model
{
	import flash.events.EventDispatcher;
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	
	import org.oswxf.skinui.events.BundlerEvent;
	import org.oswxf.skinui.vo.ResBundlerObject;

	
	/**
	 * 资源包管理器 
	 * 功能:
	 * 1.列出所有的包
	 * 2.载入某个包
	 * @author nativeas
	 * 
	 */
	public class BundlerModel extends EventDispatcher
	{
		public function BundlerModel()
		{
		}
		
		private static var _instance:BundlerModel = null;
		public static function getInstance():BundlerModel
		{
			if(!_instance)
				_instance = new BundlerModel();
			return _instance
		}
		
		
		/**
		 * 指定URI的资源包是否可用
		 * 可能这个包正在Loading之类的情况，也是不可用的 
		 * @param $uri
		 * @return 
		 * @TODO: this function need to Complete
		 */
		public function isBundlerAvaiable($uri:String):Boolean
		{
			return false;
		}
		
		/**
		 * bundler storeage 
		 */
		private var _bundlerStorage:Dictionary = new Dictionary();
		
		/**
		 * 置入某个URI的资源包二进制 
		 * @param $uri
		 * @param $bytes
		 * @return 
		 * 
		 */
		public function setBundler($uri:String,$bytes:ByteArray):Boolean
		{
			_bundlerStorage[$uri] = $bytes;
			this.dispatchEvent(new BundlerEvent(BundlerEvent.CHANGE));
			return  true;
		}
		
		/**
		 * 根据URI获取 
		 * @param $uri
		 * @return 
		 * 
		 */
		public function getBundler($uri:String):ByteArray
		{
			return _bundlerStorage[$uri];
		}
		
		
		/**
		 * 返回可用的Bundler 的列表 
		 * @return 
		 * 
		 */
		public function getBundlerList():Vector.<ResBundlerObject>
		{
			var result:Vector.<ResBundlerObject> = new Vector.<ResBundlerObject>();
			for (var key:String  in _bundlerStorage)
			{
				var res:ResBundlerObject = new ResBundlerObject();
				res.uri = key;
				result.push(res);
			}
			return result;	
		}
		
		/**
		 *  
		 * @param $uri
		 * @return 
		 * 
		 */
		public function isBundlerDataExist($uri:String):Boolean
		{
			return $uri in _bundlerStorage;
		}
	
	}
}