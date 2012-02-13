import java.util.Arrays;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.ArrayList;
import java.io.*;
import java.lang.String;


class SortApp{
  public static void main(String[] args){
    //System.out.println(sortWord("helloworld"));
    String[] words = {"hat", "vile", "top", "potter", "live", "pot", "evil", "pier", "ripe", "veil"};
    printGroupsWithSameLetters(words);

    /*ArrayList<Object> list = new ArrayList<Object>(3);
    list.add("pretty");
    list.add("smart");list.add("nice");
    displayList(list);*/
  }

  public static void printGroupsWithSameLetters(String[] words) {
    //HashMap map = new HashMap();会出现警告
    HashMap<String,String> map = new HashMap<String,String>();
    //HashMap<Object, Object>map = new HashMap<Object, Object>();

    for(int i=0;i<words.length;i++){
      //if(words[i].getClass().getName()=="java.lang.String"){
        map.put(words[i],words[i]);
      //}      
    }
    
    Iterator iterator = map.keySet().iterator();
    String[] items = new String[map.size()];
    int j=0;
    while(iterator.hasNext()){
      Object key = iterator.next();
      items[j] = sortWord(map.get(key));
      map.put(key.toString(),items[j]);
      j++;
    }
    
    //System.out.println(join(items));
    //System.out.println(map.containsKey("hello"));
    //System.out.println(map.containsKey("top"));

    HashMap<String,ArrayList<Object>> newMap = new HashMap<String,ArrayList<Object>>();
    Iterator iter = map.keySet().iterator();
    while(iter.hasNext()){
      Object key = iter.next();
      if(newMap.containsKey(map.get(key))){
        ArrayList<Object> list = newMap.get(map.get(key));
        list.add(key.toString());
      }else {
        ArrayList<Object> l = new ArrayList<Object>(10);
        l.add(key.toString());
        newMap.put(map.get(key), l);
      }      
    }

    Iterator iterator2 = newMap.keySet().iterator();
    while(iterator2.hasNext()){
      Object key = iterator2.next();
      System.out.print(key.toString()+": ");
      displayList(newMap.get(key));
    }

  }

  public static String sortWord(String word){
    char[] content = word.toCharArray();
    Arrays.sort(content);
    String sorted = new String(content);
    return sorted;
  }
  
  public static String join(String [] items){
    String wordsStr = "";
    for(int i=0;i<items.length;i++){
      if(i < items.length - 1){
        wordsStr = wordsStr + items[i] + ",";
      }else{
        wordsStr = wordsStr + items[i];
      }
    }
    return wordsStr;
  }

  public static void displayList(ArrayList<Object> list){
    Iterator i = list.iterator();
    while(i.hasNext()){      
      Object item = i.next();
      System.out.print(item.toString()+" "); 
    }
    System.out.println();
  }
}


/*
    int[] arr = new int[] {18, 51, 19, 10, 116, 3, 14, 57, 82, 41 };         
    for(int i = 0; i < arr.length; i++) {     
      System.out.print(arr[i] + " ");     
    }     
    Arrays.sort(arr);  
    System.out.println();         
    for(int i = 0; i < arr.length; i++) {     
      System.out.print(arr[i] + " ");     
    }  
    System.out.println(); 
*/

/*  java.util.Arrays.sort(int[])
	java.util.Arrays.sort(int[], int, int)
	java.util.Arrays.sort(T[], int, int, java.util.Comparator)
	java.util.Arrays.sort(T[], java.util.Comparator)
	java.util.Collections.sort(java.util.List)
	java.util.Collections.sort(java.util.List,    java.util.Comparator) */

//System.out.println("abc".getClass().getName());

/*

String[] str = new String[size];
str.removeDuplicates();

Set set = new HashSet(Arrays.asList(array));
String[] array2 = (String[])(set.toArray(new String[set.size()]));




===================================
import java.util.Arrays;

public class RunRemoveDuplicates
{
public RunRemoveDuplicates()
{
super();
}

public static void main(String[] args)
{
String[] duplicates = new String[] {"mary","had","a","a","little","white","as","snow","mary"};

Arrays.sort(duplicates);

int k = 1;

for (int i = 1; i < duplicates.length; i++){
if(!duplicates[i].equals(duplicates[i - 1]))
duplicates[k++] = duplicates[i];
}

String[] unique = new String[k];
System.arraycopy(duplicates, 0, unique, 0, k);
//test that unique contains no duplicate strings
for (int i = 0; i < unique.length; i++)
System.out.println(unique[i]);
}
}
=================================
*/




