package guess;

public class GuessNumber {
  private int number;
  private int guess;
  int correctNumber;
  int counter;
  String help;

  public GuessNumber() {
    reset();
  }
  
  public void setGuess(String guessedNumber) {
    counter++;
    guess = Integer.parseInt(guessedNumber);
    if (guess == number) {
      correctNumber = 1;
    }
    else if (guess < number) {
      help = "higher";
    }
    else if (guess > number) {
      help = "lower";
    }
  }
  
  public void setNumber(int sNumber){
	  number = sNumber;
  }
  
  public void reset() {
	    number = (int) (Math.random() * 10) + 1;
	    correctNumber = 0;
	    counter = 0;
  }
  
  public int getNumber(){
	  return number;
  }
  
  public int getCorrectNumber() {
    return correctNumber;
  }

  public int getCounter() {
    return counter;
  }
 
  public String getHelp() {
	    return "" + help;
 }
}

