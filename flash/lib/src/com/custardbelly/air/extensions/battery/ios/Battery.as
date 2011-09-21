package com.custardbelly.air.extensions.battery.ios
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.external.ExtensionContext;
	
	/**
	 * iBattery provides access to battery life and state on an iOS device. 
	 * @author toddanderson
	 * 
	 * @bustardcelly
	 * http://custardbelly.com/blog
	 */
	public class Battery extends EventDispatcher
	{
		protected var _extensionContext:ExtensionContext;
		private static const COMMAND_LIFE:String = "GetBatteryLife";
		private static const COMMAND_INFO:String = "GetBatteryInfo";
		
		/**
		 * Constructor.
		 */
		public function Battery()
		{
			super();
			// Initialize extension.
			_extensionContext = ExtensionContext.createExtensionContext( "com.custardbelly.ibattery", "main" );
		}
		
		/**
		 * Returns the battery life in percent (0-1). 
		 * @return Number The percentage of battery life left on the iOS. Returns a value from 0 to 1.
		 */
		public function getBatteryLife():Number
		{
			return _extensionContext.call( Battery.COMMAND_LIFE ) as Number;
		}
		
		/**
		 * Returns the current state of the battery on the iOS device. 
		 * @return int Value corrsponding to the state of the battery. Values are related to those held on iBatteryStateEnum.
		 */
		public function getBatteryState():int
		{
			return _extensionContext.call( Battery.COMMAND_INFO ) as int;
		}
	}
}