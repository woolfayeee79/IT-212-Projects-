    public class test3 {

        public static void main(String[] args) {


    WhiteHouseTour tour = new WhiteHouseTour();
    System.out.print(tour.rooms() + "\n"); 
    System.out.print(tour.toString() + "\n");

    // Time: 9:00am
    tour.admit_new_visitor("Smirnov, Alex", "M", 35, "Russia"); 
    tour.admit_new_visitor("Smith, Stan", "M", 31, "United States");
    tour.admit_new_visitor("Malone, Maggie", "F", 32, "United States");
    tour.admit_new_visitor("Zhao, George", "M", 29, "China");
    tour.admit_new_visitor("Whiting, Whitney", "F", 32, "Canada");
    System.out.print(tour.toString() + "\n");

    // Time: 9:15am:
    tour.passage_of_time();
    System.out.print(tour.toString() + "\n");

    // Time: 9:30am:
    tour.passage_of_time();
    System.out.print(tour.toString + "\n");
    tour.admit_new_visitor ("Collins, Kate", "F", 31, "United States");
    tour.admit_new_visitor ("Collins, Julia", "F", 7, "United States");
    tour.admit_new_visitor ("Herzog, Helmut", "F", 71, "Germany");
    tour.admit_new_visitor ("Patel, Raj", "M", 29, "India");
    tour.admit_new_visitor ("Rollins, Stephanie", "F", 23, "United States");

    // Allow visitors to proceed through the tour at their own pace.
    while (tour.toString(current_time <= 1015) {
        tour.passage_of_time();
        System.out.print(tour);
    }
     // tour.passage_of_time
    //  print tour, "\n"
      
        }
}


