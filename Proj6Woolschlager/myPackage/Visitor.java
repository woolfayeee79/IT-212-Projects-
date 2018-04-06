//package myPackage;

public class Visitor
   { 
    private String _name; 
    private String _gender;
    private int _age;
    private String _nationality;
    private int _currentRoom;
            
    public Visitor (String name, String gender, int age, String nationality)
    {
        _name = name;
        _gender = gender;
        _age = age;
        _nationality = nationality;
        _currentRoom = 0;
    }
    
    public void nextRoom()
    {
       _currentRoom += 1;
    }
    
    public int currentRoom()
    {
     return _currentRoom;   
    }
         
    public String toString()
    {
        return _name + " " + _nationality + " " + _currentRoom;
    }
    public String getNameCitizenship()
    {
        return _name + " " +  _nationality;   
    }
    
    
    
}