package collection;

import java.util.ArrayList;

public class Alist {

	public static void main(String[] args) {
		
		ArrayList<String> names= new ArrayList<String>();
		names.add("ram");
		names.add("shyam");
		names.add("hari");
		names.add("kris");
		names.add("bikash");
		for (int i = 0; i < names.size(); i++)
		{
		System.out.println(names.get(i));	
		}
		
		for(String x:names)
		{
			System.out.println(x);
		}
	}

}
