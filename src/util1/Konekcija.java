package util1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class Konekcija {
	private static Konekcija instanca;
	private static final int MAX_CON = 5;
	private static final Connection[]bafer = new Connection[MAX_CON];
	private int frist =0 ;
	private int last = 0;
	private int free = MAX_CON;
	private Konekcija() {
	try {
			Class.forName("com.mysql.jdbc.Driver");
			for(int i = 0; i< MAX_CON;i++) {
				try {
					bafer[i]= DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce2019", "root","");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
	public static Konekcija getInstanca() {
		if(instanca == null) {
			instanca = new Konekcija();
		}
		return instanca;
	}
	public synchronized Connection getConnection() {
		if(free == 0) {
			return null;
		}
		free --;
		Connection con = bafer[frist];//0
		System.out.println(free);
		frist = (frist+1)%MAX_CON;//0+1/5
		System.out.println(frist);
		return con;
		
		
		
	}
	public synchronized void putConnection(Connection con) {
		if(con == null) {
			return;
		}
		free ++;
		bafer[last]=con;
		last = (last+1)%MAX_CON;
		
	}
}
