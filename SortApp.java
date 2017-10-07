import java.util.Arrays;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.ArrayList;
import java.io.*;
import java.lang.String;


class SortApp{
  public static void main(String[] args){
    String[] words = {"hat", "vile", "top", "potter", "live", "pot", "evil", "pier", "ripe", "veil"};
    printGroupsWithSameLetters(words);
  }

  public static void printGroupsWithSameLetters(String[] words) {
    HashMap<String,String> map = new HashMap<String,String>();

    for(int i=0;i<words.length;i++){
      map.put(words[i],words[i]);
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





