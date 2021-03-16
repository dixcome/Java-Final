package contants;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Database {
    public static final String DRIVER_NAME = "com.mysql.jdbc.Driver";
    public static final String CONNECTION_STRING = "jdbc:mysql://localhost:3306/a?serverTimezone=UTC";
    public static final String USER_NAME = "root";
    public static final String PASSWORD = "";
}
