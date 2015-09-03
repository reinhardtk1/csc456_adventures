package guess;

public class GuessNumber {

  private int number;
  private int guess;
  boolean success;
  String help;
  int counter;

  public GuessNumber() {
    reset();
  }
  
  public void setGuess(String guessedNumber) {
    counter++;
    guess = Integer.parseInt(guessedNumber);
    if (guess == number) {
      success = true;
    }
    else if (guess == -1) {
      help = "a number next time";
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
  public int getNumber(){
	  return number;
  }
  
  public boolean getSuccess() {
    return success;
  }

  public String getHelp() {
    return "" + help;
  }

  public int getCounter() {
    return counter;
  }

  public void reset() {
    number = (int) (Math.random() * 10) + 1;
    success = false;
    counter = 0;
  }
}

