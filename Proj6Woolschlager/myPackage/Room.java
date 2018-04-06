


public class Room
    {
    private String _name;
    private String _description;
        
    //constructor
    public Room(String name, String description)
    {
        _name = name;
        _description = description;
        
    }
	
	public String toString()
    {
        return _name + " " + _description;
    }

}