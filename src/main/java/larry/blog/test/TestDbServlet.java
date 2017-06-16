package larry.blog.test;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import java.io.PrintWriter;
import java.sql.*;
import java.io.IOException;

/**
 * Created by hangyanjiang on 2017/6/12.
 */

@WebServlet("/TestDbServlet")
public class TestDbServlet extends javax.servlet.http.HttpServlet {
    private static final long serialVertionUID = 1L;

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws ServletException, IOException {

        // setup connection variable
        String user = "root";
        String pass = "19940921";

        String jdbcUrl = "jdbc:mysql://localhost:3306/larry_blog?useSSL=false";
        String driver = "com.mysql.jdbc.Driver";

        // get connection to database
        try {
            PrintWriter out = response.getWriter();

            out.println(">> Conneting to database: " + jdbcUrl);

            Class.forName(driver);

            Connection myConn = DriverManager.getConnection(jdbcUrl, user, pass);

            out.println(">> SUCCESS!!!");

            myConn.close();
        } catch (Exception exc) {
            exc.printStackTrace();
            throw new ServletException(exc);
        }
    }
}
