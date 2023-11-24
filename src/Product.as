package  {
	
	import flash.display.MovieClip;
	import flash.events.TouchEvent;
	import flash.net.SharedObject;
	
	
	public class Product extends MovieClip {
		
		private var _button:MovieClip;
		private var _effect:String;
		private var _price:Number;
		private var _ingredients:Ingredients;
		private var _backGround:String;
		private var _Skin:String;
		private var _isClicked:Boolean;
		private var _isBuy:Boolean;
		private var _productID:String;
		private var _moneyWin:Number;
		private var _saveBuy:SharedObject;
		
		public function Product(app:MovieClip, eff:String, pri:Number, ing:Ingredients, background:String, skin:String, path:String) {
			// constructor code
			_button = app;
			_effect = eff;
			_price = pri;
			_ingredients = ing;
			_backGround = background;
			_Skin = skin;
			_isClicked = false
			_isBuy = false;
			_productID = null;
			_moneyWin = 0;
			_saveBuy = SharedObject.getLocal(path);
			
			defineEventsProducts();
		}

		//a method to add a listener to the button
		public function defineEventsProducts() {
			_button.addEventListener(TouchEvent.TOUCH_TAP, click);
		}
		
		//if the button is clicked
		public function click(e:TouchEvent) {
			_isClicked = true;
		}
		
		//the different accesors
		public function get button():MovieClip {
			return _button;
		}
		
		public function set button(newB):void {
			_button = newB;
		}
		
		public function get effect():String {
			return _effect;
		}
		
		public function set effect(newEffect):void {
			_effect = newEffect;
		}
		
		public function get price():Number {
			return _price;
		}
		
		public function set price(newPrice):void {
			_price = newPrice;
		}
		
		public function get ingredients():Ingredients {
			return _ingredients;
		}
		
		public function set ingredients(newIng):void {
			_ingredients = newIng;
		}
		
		public function get backGround():String {
			return _backGround;
		}
		
		public function set backGround(newBack):void {
			_backGround = newBack;
		}
		
		public function get Skin():String {
			return _Skin;
		}
		
		public function set Skin(newSkin):void {
			_Skin = newSkin;
		}
		
		public function get isClicked():Boolean {
			return _isClicked;
		}
		
		public function set isClicked(newState):void {
			_isClicked = newState;
		}
		
		public function get isBuy():Boolean {
			return _isBuy;
		}
		
		public function set isBuy(newState):void {
			_isBuy = newState;
		}
		
		public function get productID():String {
			return _productID;
		}
		
		public function set productID(newID):void {
			_productID = newID;
		}
		
		public function get moneyWin():Number {
			return _moneyWin
		}

		public function set moneyWin(newMoney):void {
			_moneyWin = newMoney;
		}
		
		public function get saveBuy():SharedObject {
			return _saveBuy;

		}
		
		public function set saveBuy(newState):void {
			_saveBuy = newState;
		}
	}
	
}
