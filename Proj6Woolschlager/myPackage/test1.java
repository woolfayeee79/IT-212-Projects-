

public class test1 {
    public static void main(String[] args) {
        
        Visitor p = new Visitor("Smirnov, Alex", "M", 35, "Russia");
        System.out.println(p);
        System.out.println(p.getNameCitizenship());
        
    }
}
