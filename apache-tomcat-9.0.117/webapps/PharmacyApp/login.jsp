<%@ include file="db.jsp" %>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");

if(email != null && password != null) {
    try {
        PreparedStatement ps = con.prepareStatement(
        "SELECT * FROM users WHERE email=? AND password=?");
        
        ps.setString(1, email);
        ps.setString(2, password);
        
        ResultSet rs = ps.executeQuery();
        
        if(rs.next()) {
            session.setAttribute("user", email);
            response.sendRedirect("dashboard.jsp");
        } else {
            out.println("<h3 style='color: red;'>Invalid Email or Password</h3>");
            out.println("<a href='index.jsp'>Go back to login</a>");
        }
        ps.close();
    } catch(Exception e) {
        out.println("Error: " + e);
    }
} else {
    response.sendRedirect("index.jsp");
}
%>
