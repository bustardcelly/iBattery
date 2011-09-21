package com.custardbelly.air.extensions.battery.ios
{
	/**
	 * BatteryStateEnum is an enumeration of possible battery states returned from an iOS device.  
	 * @author toddanderson
	 * 
	 * @bustardcelly
	 * http://custardbelly.com/blog
	 */
	public class BatteryStateEnum
	{
		/**
		 * Unknown state of battery. 
		 */
		public static const UNKNOWN:int = 0;
		/**
		 * Battery is currently unplugged from recharge. 
		 */
		public static const UNPLUGGED:int = 1;
		/**
		 * Battery is currently charging. 
		 */
		public static const CHARGING:int = 2;
		/**
		 * Battery charge is full. 
		 */
		public static const FULL:int = 3;
	}
}