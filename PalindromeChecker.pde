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

public boolean palindrome(String sWord)
{
  String usable = "";
  for (int i=0; i<sWord.length(); i++)
  {
    if (Character.isLetter(sWord.charAt(i)))
    {
      usable+=sWord.charAt(i);
    }
  }
  usable=usable.toLowerCase();
  for (int k=0; k<usable.length(); k++)
  {
    if (usable.charAt(k)!=usable.charAt(usable.length()-k-1))
    {
      return false;
    }
  }
  return true;

}