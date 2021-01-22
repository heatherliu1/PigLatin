public void setup() 
{
  String[] lines = loadStrings("word.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public int findFirstVowel(String word){
  for (int i = 0; i < word.length(); i++){
    if(word.substring(i,i+1).equals("a"))
      return i;
    else if(word.substring(i,i++).equals("e"))
      return i;
    else if(word.substring(i,i++).equals("i"))
      return i;
    else if(word.substring(i,i++).equals("o"))
      return i;
    else if(word.substring(i,i++).equals("u"))
      return i;
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  //rule #1
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  //rule #2
  else if (findFirstVowel(sWord) == 0)
  {
    return sWord + "way";
  }
  //rule #3
  else if (sWord.substring(0,2).equals("qu"))
  {
    return sWord.substring(2,sWord.length()) + "quay";
  }
  //rule #4
  else if(findFirstVowel(sWord) != -1 && findFirstVowel(sWord) != 0)
  {
    return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
  }
  return "ERROR!";
}
