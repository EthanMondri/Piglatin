String input;
int vowel;
public void setup()
{
  input = "beastay";
  vowel = findFirstVowel(input);
  
  noLoop();
}

public void draw()
{
  System.out.println(pigLatin(input, vowel));
}

public int findFirstVowel(String word)
{
  for (int i = 1; i <= word.length(); i++)
  {
    if (word.substring(i-1, i).equals("a") || word.substring(i-1, i).equals("e") || word.substring(i-1, i).equals("i") || word.substring(i-1, i).equals("o") || word.substring(i-1, i).equals("u"))
    {
      return i-1;
    }
  }
  return -1;
}

public String pigLatin(String word, int first)
{
  if (word.length() > 1 && word.substring(0, 2).equals("qu"))
  {
    return word.substring(2) + "quay";
  }
  else if (first == -1)
  {
    return word + "ay";
  }
  else if (first == 0)
  {
    return word + "way";
  }
  else
  {
    return word.substring(first) + word.substring(0, first) + "ay";
  }
}
