import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to Stone Paper Scissors Game");
  print("Enter your name:");
  String? name = stdin.readLineSync();
  int c = 0, p = 0;

  bool playAgain = true;
  while (playAgain) {
    c = 0;
    p = 0;
try{
  for (int i = 0; i < 3; i++) {
          print("\n------------------------------------------------\n");
    print("Enter your choice: 1 : Stone, 2 : Paper, 3 : Scissors:");
    int? choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print("Your Choice is \"STONE\"\n");
        break;

      case 2:
        print("Your Choice is \"PAPERS\"\n");
        break;

      case 3:
        print("Your Choice is \"SCISSORS\"\n");
        break;
      default:
        print("Invalid choice");
    }
    int? comp_choice = Random().nextInt(3) + 1;
    switch (comp_choice) {
      case 1:
        print("Computer chose \"STONE\"\n");
        break;
      case 2:
        print("Computer chose \"PAPERS\"\n");
        break;
      case 3:
        print("Computer chose  \"SCISSORS\"\n ");
        break;

      default: print("Invalid choice");
    }


        if(choice == 1 && comp_choice == 1 || choice == 2 && comp_choice == 2 || choice == 3 && comp_choice == 3){
          print("It's a draw\n");
        } else if((choice == 1 && comp_choice == 3) || (choice == 2 && comp_choice == 1) || (choice == 3 && comp_choice == 2)){
          print("You win\n");
          p++;
        } else {
          print("Computer wins\n");
          c++;
        }
      }
}catch(e){
  print("Invalid input "+e.toString());
}
    
      print("\n------------------------------------------------\n");

      if(c == p){
        print("It's a draw\n");
      } else if(c > p){
        print("Computer wins\n");
      } else {
        print("$name wins\n");
      } 

      print("press 1 to play again or 0 to exit");
      int? play = int.parse(stdin.readLineSync()!);
      if(play == 1){
        playAgain = true;
      } else {
        print("Thanks for playing");
        playAgain = false;
      }
  
}
}

