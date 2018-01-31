public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String dog= new String();
  String cat= new String();
  for (int i=0; i<word.length(); i++){
    if ((Character.isUpperCase(word.charAt(i))==true)){
       cat=word.substring(i,i+1).toLowerCase();
       dog=dog+cat;
    }
    else
    dog=dog+word.substring(i,i+1);
  }
  word=dog;
    String noPunc= new String();
  for (int i=0; i<word.length(); i++){
    if ((Character.isLetter(word.charAt(i))==true))
    noPunc=noPunc+word.substring(i,i+1);
  }
word= noPunc;

  if (reverse(word).equals(word))
  return true;
  return false;
}
public String reverse(String str)
{
  String rhino=new String();
  int turtle=str.length()-1;
 for (int i=0; i<str.length(); i++){
   rhino=rhino+str.substring(turtle-i,turtle-i+1);
 }
 return rhino;
}