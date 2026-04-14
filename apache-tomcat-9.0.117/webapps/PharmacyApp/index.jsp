<%
if(session.getAttribute("user") != null) {
    response.sendRedirect("dashboard.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pharmacy Management - Login</title>
    <link rel="stylesheet" href="css/style.css">
    <!-- Lucide Icons -->
    <script src="https://unpkg.com/lucide@latest"></script>
</head>
<body>
    <div class="auth-wrapper">
        <div class="auth-card animate-fade-in">
            <div class="auth-header">
                <h1>
                    <i data-lucide="pill" class="primary"></i>
                    PharmaCare
                </h1>
                <p>Welcome back! Please login to your account.</p>
            </div>
            
            <form action="login.jsp" method="post">
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="text" id="email" name="email" class="form-input" placeholder="Enter your email" required>
                </div>
                
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" class="form-input" placeholder="********" required>
                </div>
                
                <button type="submit" class="btn btn-primary">
                    Login
                    <i data-lucide="arrow-right"></i>
                </button>
            </form>
            
            <div class="auth-footer">
                Don't have an account? <a href="register.jsp">Register here</a>
            </div>
        </div>
    </div>

    <script>
        lucide.createIcons();
    </script>
</body>
</html>
