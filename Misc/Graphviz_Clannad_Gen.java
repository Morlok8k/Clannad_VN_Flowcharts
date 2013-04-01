package morlok8k;

public class Graphviz_Clannad_Gen {
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		String newLine = System.getProperty("line.separator");
		int loops = 0;
		String prefix = "", num = "";
		String output = "";
		String color = "";
		
		

		//edit these:
		loops = 26;								//the amount of loops
		prefix = "Enter_a_prefix_here";			//the prefix you want to use
		color = "green";						//this is a valid X11 color name
		//
		
		
		num = prefix + "_";
		
		int i = 0;
		
		for (i = 1; i <= loops; i++) {
			
			output = output + "    " + num + i + " [shape = Mrecord, label = \"<a>\"];" + newLine
					+ "    " + num + (i-1) + ":a -> "+ num + i + ":a [color = " + color + "];    //"+ prefix + newLine
					+ newLine;
						
		}
		
		output = output + "    " + num + "END [label = \"" + prefix + "'s Ending\"];" + newLine
				+ "    " + num + (i-1) + ":a -> "+ num + "END [color = " + color + "];    //"+ prefix + newLine
				+ newLine;
		
		
		
		System.out.println(output);

		
	}
	
	
	
	
}
