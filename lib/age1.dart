class AgeCalculator {
 static   late int age;

  AgeCalculator(int birthYear){
    age = DateTime.now().year - birthYear;
  }


}