import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.Arrays;
import java.io.*;

class day4 {

  public static void main (String[] args){

    int goodCounter = 0;
    String input = "input.txt";
    String line;
    
    try {
      FileReader reader = new FileReader(input);
      BufferedReader bReader = new BufferedReader(reader);
  
      while ((line = bReader.readLine()) !=  null){
        if (checkPassphrase(line)) {
          goodCounter += 1;
        }
      }
    }
    catch(FileNotFoundException ex) {
      System.out.println("fuck");                
    }
    catch(IOException ex) {
      System.out.println("java");                  
    }
    
    bReader.close();
    
    System.out.println(goodCounter);
  }

  public static boolean checkPassphrase(String phrase){
    List<String> words = Arrays.asList(phrase.split(" ")); 
    HashSet<String> unique = new HashSet<String>(words);
    if (unique.size() == words.size()) {
      return true;
    } else {
      return false;
    }
  }
}