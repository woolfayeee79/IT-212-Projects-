//declare the class
public class WhiteHouseTour
    {
    private Room[ ] _room;
    private Visitor[ ] _visitors;
    private int _numVisitors;
    private int _currentTime;
        
    //constructor
    public WhiteHouseTour()
    {
        _room = new Room[8];
        _visitors = new Visitor [10];
        _numVisitors = 0;
        _currentTime = 540;
        
    _room[1] = new Room("Room 1", "Entrance Hall" +
"This room (also called the Grand Foyer) is the" +
"primary and formal entrance to the White House. The room" +
"is rectilinear in shape and measures approximately 31 by" +
"44 feet. Located on the State Floor, the room is entered" +
"from outdoors through the North Portico, which faces the" +
"North Lawn and Pennsylvania Avenue. The south side of" +
"the room opens to the Cross Hall through a screen of" +
"paired Roman Doric columns. The east wall opens to the" +
"Grand Staircase.");	

    _room[2] = new Room("Room 2", "Cross Hall" +
"This hall connects the first floor in the White House" +
"It runs east to west connecting the State Dining Room with" +
"ithe East Room. The room is used for receiving lines" +
"following a State Arrival Ceremony on the South Lawn" +
"or a procession of the President and a visiting head of" +
"state and their spouses.  The space measures just under" +
"18 by 80 feet (5.5 by 24 m). It allows access to the" +
"elevator vestibule, Entrance Hall,East Room, Blue Room" +
"Green Room, Red Room, and State Dining Room. The Grand" +
"Staircase is visible from an opening directly across from" +
"the Green Room.");
 
    _room[3] = new Room("Room 3", "East Room" +
"This is the largest room in the White House. It is" +
"Iused for receptions, press conferences, ceremonies" +
"concerts, and banquets. The room is + not quite 80 feet" +
"by 37 feet and the ceiling is over 20 feet high." +
"The White House's oldest possession, the Lansdowne" +
"portrait depicting George Washington, painted by" +
"Gilbert Stuart in 1797, was rescued from the 1814" +
"fire, and now hangs in the East Room with a companion" +
"portrait of Martha Washington painted by Eliphalet" +
"F. Andrews in 1878.");
   
    _room[4] = new Room("Room 4", "Green Room" +
"It is one of three state parlors on the first floor" +
"in the White House, It is used for small receptions and" +
"teas. During a state dinner, guests are served cocktails" +
"in the three state parlors before the president, first" +
"lady, and visiting head of state descend the Grand" +
"Staircase for dinner. The room is traditionally" +
"decorated in shades of green. The room is approximately" +
"28 feet by 22 12 feet (approx. 8.5m x 6.8m). It has" +
"six doors, which open into the Cross Hall, East Room" +
"South Portico, and Blue Room.");
   
    _room[5] = new Room("Room 5", "Blue Room" +
"This room is one of three state parlors on the first" +
"of the United States. It is distinct for its oval shape." +
"The room is used for receptions and receiving lines, and" +
"is occasionally set for small dinners. President Grover" +
"Cleveland married Frances Folsom in the room on June 2," +
"1886, the only wedding of a President and First Lady in" +
"the White House. The room is traditionally decorated in" +
"shades of blue. With the Yellow Oval Room above it and" +
"the  Diplomatic Reception Room below it, the Blue Room" +
"is one of three oval rooms in James Hoban's original" +
"design for the White House.  The room is approximately" +
"30 by 40 feet (9.1 by 12 m). It has six doors, which" +
"open into the Cross Hall, Green Room, Red Room, and" +
"South Portico. The three windows look out upon the" +
"South Lawn.");

    _room[6] = new Room("Room 6", "Red Room" +
"This is one of three state parlors on the first floor" +
"in the White House.  The room has served as a parlor and" +
"music room, and recent presidents have held small dinner" +
"parties in it.  It has been traditionally decorated in" +
"shades of red.  The room is approximately 28 feet by 22.5" +
"feet. It has six doors, which open into the Cross Hall" +
"Blue Room, South Portico, and State Dining Room");

    _room[7] = new Room("Room 7", "State Dining Room" +
"This room is the larger of two dining rooms on the" +
"State Floor of the White House. It is used for receptions" +
"luncheons, and larger formal dinners called state dinners" +
"for visiting heads of state on state visits. The room seats" +
"140 guests. The room measures approximately 48 feet by 36" +
"feet. It has six doors leading to a butler's pantry, the" +
"Family Dining Room, Cross Hall, and Red Room, and the West" +
"Terrace.  During the Andrew Jackson administration the room" +
"came to be formally called the State Dining Room.");
  
} 


    public String rooms(){
        String output = "White House Rooms in included in Tour: ";
        int num_rooms = _room.length;
        for (int i = 1; i < num_rooms; i++){
          output += _room[i].toString() + "\n"; 
        }
        return output;     
    }

    public String toString(){
        String output = "Current White House Tour Visitors: \n";
        output += String.format( "%02d %02d \n", _currentTime / 60, _currentTime % 60); 
        for (int i = 0; i < _numVisitors -1; i++){
            if (_visitors[i].currentRoom()<= 6){
                output += _visitors[i].toString() + "\n";
            }
         }
       return output;       
      }

    public void admit_new_visitor(String the_name,String the_gender ,int the_age, String the_citizenship){
        _numVisitors += 1;
        _visitors[_numVisitors - 1] = new Visitor(the_name, the_gender, 
          the_age, the_citizenship);
    }

    public void passage_of_time(){
        _currentTime += 15; 
        for (int i=0; i < _numVisitors -1; i++){
            if(Math.random() < 0.5)
                _visitors[i].nextRoom();
        }
    }

}
  