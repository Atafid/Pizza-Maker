package  {
	
	import flash.display.MovieClip;
	import flash.events.TouchEvent;
	import flash.net.SharedObject;
	
	
	public class Ingredients extends MovieClip {
		
		//Features of an ingredient
		private var _appearance:MovieClip;
		private var _isUnlocked:Boolean;
		private var _isPut:Boolean;
		private var _button:MovieClip;
		private var _isClicked:Boolean;
		private var _isOnCommand:Boolean;
		private var _commandApp:MovieClip;
		private var _saveUnlocked:SharedObject;
		
		public function Ingredients(app:MovieClip, butt:MovieClip, comm:MovieClip, path:String) {
			// constructor code
			_appearance = app;
			_isUnlocked = false;
			_isPut = false;
			_button = butt;
			_isClicked = false;
			_isOnCommand = false;
			_commandApp = comm;
			_saveUnlocked = SharedObject.getLocal(path);
			
			_appearance.visible = false;
			
			defineEventsIngredients();
		}
		
		//define the events of the button
		public function defineEventsIngredients() {
			_button.addEventListener(TouchEvent.TOUCH_TAP, clickButton);
		}
		
		//the state change if we click
		public function clickButton(e:TouchEvent) {
			_isClicked = true;
		}
		
		//Accessor functions
		public function get appearance():MovieClip {
			return _appearance;
		}
		
		public function set appearance(newApp):void {
			_appearance = newApp;
		}
		
		public function get isUnlocked():Boolean {
			return _isUnlocked;
		}
		
		public function set isUnlocked(newState):void {
			_isUnlocked = newState;
		}
		
		public function get isPut():Boolean {
			return _isPut;
		}
		
		public function set isPut(newState):void {
			_isPut = newState;
		}
		
		public function get button():MovieClip {
			return _button;
		}
		
		public function set button(newB):void {
			_button = newB;
		}
		
		public function get isClicked():Boolean {
			return _isClicked;
		}
		
		public function set isClicked(newState):void {
			_isClicked = newState;
		}
		
		public function get isOnCommand():Boolean {
			return _isOnCommand;
		}
		
		public function set isOnCommand(newState):void {
			_isOnCommand = newState;
		}
		
		public function get commandApp():MovieClip {
			return _commandApp;
		}
		
		public function set commandApp(newApp):void {
			_commandApp = newApp;
		}
		
		public function get saveUnlocked():SharedObject {
			return _saveUnlocked;
		}
		
		public function set saveUnlocked(newState):void {
			_saveUnlocked = newState;
		}
	}
	
}
