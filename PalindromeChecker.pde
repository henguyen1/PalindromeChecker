public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = word.toLowerCase();
  word = removeNonLetters(word);
  if(word.equals(reverse(word)))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i >=0;i--)
    {
      sNew += str.charAt(i);
    }
    return sNew;
}
public String removeNonLetters(String string)
{
  String sNewer = "";
  for(int i = 0; i < string.length();i++)
  {
    if(Character.isLetter(string.charAt(i)))
    {
        sNewer += string.charAt(i);
    }
  }
  return sNewer;
}


