<%@ page import="java.sql.*" %>
<%
String url = "jdbc:mysql://localhost:3306/pharmacy";
String user = "root";
String pass = "CHAOS";

Connection con = null;
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection(url, user, pass);
} catch(Exception e) {
    out.println("DB Error: " + e);
}
%>
