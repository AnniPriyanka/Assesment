import java.io.*;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public class hospital {
	private static final String CSV_FILE_PATH = "C:\\Users\\PAWAN\\Downloads\\sample.csv"; //csv file directory which is to be loaded into database
	private static final String DATE_FORMAT = "ddMMyyyy";
	private static Connection conn = null;
	
	public static void main(String args[]) throws Exception{

		try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost/hospital", "root", "");	// connection with the database
				System.out.print("DB is connected !");	//checking if connected or not
				//to read data from csv file and insert into database
				String sql = "INSERT INTO user_data (customer_name, customer_id, customer_open_date, last_consulted_date, vaccination_type, doctor_consulted, state, country,  date_of_birth, active_customer) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				PreparedStatement statement = conn.prepareStatement(sql);
				//Start of program to read data from file
				BufferedReader lineReader = new BufferedReader(new FileReader(CSV_FILE_PATH));
				System.out.println("Reading file from file path: " + CSV_FILE_PATH);
				String lineText = null;
				while ((lineText = lineReader.readLine()) != null) {	//start of while loop to continue until last row of file data
					String[] data = lineText.split("\\|");
					if ("D".equals(data[0])) {		//start of if to check if its a header or data row
						String dateOfBirth = data[9];
						Date date1 = new SimpleDateFormat(DATE_FORMAT).parse(dateOfBirth);	//converting the format to match with database format to avoid exception error
						java.sql.Date sqlDate = new java.sql.Date(date1.getTime());
						for (int i = 1; i < data.length; i++) {		//for loop to get and load data
								if(i == 9 ) //Using for date format
									statement.setDate(9, sqlDate);
								else {
									statement.setString(i, data[i]);
								}
						}	//end of for loop
						statement.addBatch();
						statement.executeBatch();	//executing to load the data into database at once per row
					}	//end of if block
				} //end of while loop
				lineReader.close();
				//End of program to read data from file
	
				//Start of program to get CREAT TABLE for customers based on the country and load them into corresponding country tables
				String sql1 = "SELECT DISTINCT country from user_data"; //query to get the distinct countries from data table
				PreparedStatement statement1 = conn.prepareStatement(sql1);
				ResultSet rs = statement1.executeQuery(sql1);
				while (rs.next()) {
					createTable(rs); //to create all the country tables 
				}
				conn.close();
		}

		catch (Exception e) {
			System.out.print("DB is not Connected Error:" + e);
		}
	}

	/**
	 * To create the country tables
	 * @param rs
	 * @throws SQLException
	 */
	private static void createTable(ResultSet rs) throws SQLException {
		//query to create table
		String sql2 = "Create table IF NOT EXISTS " + rs.getString(1)
				+ "(customer_name varchar(255) NOT NULL PRIMARY KEY, customer_id varchar(18) NOT NULL, customer_open_date date NOT NULL, last_consulted_date date, vaccination_type char(5), doctor_consulted char(255), state char(5), country char(5),  date_of_birth date, active_customer char(2))";
		PreparedStatement statement2 = conn.prepareStatement(sql2);
		statement2.execute(sql2);
		System.out.println("Created new table name: " + rs.getString(1));
		String sql3 = "SELECT * FROM user_data WHERE country= \"" + rs.getString(1) + "\"";	//get all the user data of a specific country to be inserted
		PreparedStatement statement3 = conn.prepareStatement(sql3);
		ResultSet rs3 = statement3.executeQuery(sql3);
		while (rs3.next()) {	//Start of while till last row of data
			insertData(rs, rs3);	//To insert data accordingly into country tables
		}	//End of while
	}

	/**
	 * To insert data accordingly into country tables
	 * @param rs
	 * @param rs3
	 * @throws SQLException
	 */
	private static void insertData(ResultSet rs, ResultSet rs3) throws SQLException {
		//query to insert or update if data with same primary key encounters
		String sql4 = "INSERT INTO " + rs.getString(1)
				+ "(customer_name, customer_id, customer_open_date, last_consulted_date, vaccination_type, doctor_consulted, state, country,  date_of_birth, active_customer) VALUES (\""
				+ rs3.getString(1) + "\", \"" + rs3.getString(2) + "\",\"" + rs3.getString(3) + "\",\""
				+ rs3.getString(4) + "\",\" " + rs3.getString(5) + "\",\" " + rs3.getString(6) + "\",\""
				+ rs3.getString(7) + "\",\"" + rs3.getString(8) + "\", \"" + rs3.getString(9) + "\",\" "
				+ rs3.getString(10) + "\") ON DUPLICATE KEY UPDATE customer_id=\""+ rs3.getString(2) +"\",customer_open_date=\""+ rs3.getString(3) +"\",last_consulted_date=\""+ rs3.getString(4) +"\",vaccination_type=\""+ rs3.getString(5) +"\",doctor_consulted=\""+ rs3.getString(6) +"\",state=\""+ rs3.getString(7) +"\",date_of_birth=\""+ rs3.getString(9) +"\",active_customer=\""+ rs3.getString(10) +"\"	";
		PreparedStatement statement4 = conn.prepareStatement(sql4);
		statement4.execute(sql4);
		System.out.println("Inserted " + rs.getString(1) + " data.");

	}

}
