<%@ include file="db.jsp" %>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");

if(name != null && email != null && password != null) {
    try {
        PreparedStatement ps = con.prepareStatement(
        "INSERT INTO users(name,email,password) VALUES(?,?,?)");
        
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, password);
        
        ps.executeUpdate();
        ps.close();
        
        out.println("<!DOCTYPE html><html><head><link rel='stylesheet' href='css/style.css'></head><body>");
        out.println("<div class='auth-wrapper'><div class='auth-card' style='text-align:center;'>");
        out.println("<h2 style='color: var(--primary); margin-bottom: 20px;'>Registration Successful!</h2>");
        out.println("<p style='margin-bottom: 20px;'>Your account has been created. You can now log in.</p>");
        out.println("<a href='index.jsp' class='btn btn-primary'>Go to Login</a>");
        out.println("</div></div></body></html>");
    } catch(Exception e) {
        out.println("<!DOCTYPE html><html><head><link rel='stylesheet' href='css/style.css'></head><body>");
        out.println("<div class='auth-wrapper'><div class='auth-card' style='text-align:center;'>");
        out.println("<h2 style='color: #ef4444; margin-bottom: 20px;'>Registration Failed</h2>");
        out.println("<p style='margin-bottom: 20px;'>Error: " + e.getMessage() + "</p>");
        out.println("<a href='register.jsp' class='btn btn-primary' style='background:#ef4444'>Try Again</a>");
        out.println("</div></div></body></html>");
    }
} else {
    response.sendRedirect("register.jsp");
}
%>
