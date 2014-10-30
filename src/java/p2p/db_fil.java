/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p2p;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 *
 * @author preet_000
 */
public class db_fil implements Filter {

    // mysql driver

    private String driver = "com.mysql.jdbc.Driver";
    // the "url" to our DB, the last part is the name of the DB
    private String url = "jdbc:mysql://localhost:3306/p2p_support";

    // the default DB username and password may be the same as your control panel login
    private String name = "root";
    private String pass = "toor";
    private Connection con=null;

    @Override
    public void init(FilterConfig filterConfig) {
        
        
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain fc) throws IOException, ServletException {
    try {
            Class.forName(driver);
            con=DriverManager.getConnection(url, name, pass);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(db_fil.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(db_fil.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        request.setAttribute("dbSocket", con);
    
    request.setAttribute("str", "dumb string");
    PrintWriter out= response.getWriter();
//    out.print("filter working");
//    out.print(con);
    fc.doFilter(request, response);
    }

    @Override
    public void destroy() {
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(db_fil.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
