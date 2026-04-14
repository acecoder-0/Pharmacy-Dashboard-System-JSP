<%
if(session.getAttribute("user") != null) {
    response.sendRedirect("dashboard.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pharmacy Management - Register</title>
    <link rel="stylesheet" href="css/style.css">
    <!-- Lucide Icons -->
    <script src="https://unpkg.com/lucide@latest"></script>
</head>
<body>
    <div class="auth-wrapper">
        <div class="auth-card animate-fade-in">
            <div class="auth-header">
                <h1>
                    <i data-lucide="pill-plus" class="primary"></i>
                    PharmaCare
                </h1>
                <p>Join us today! Create your account.</p>
            </div>
            
            <form action="registerProcess.jsp" method="post">
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" name="name" class="form-input" placeholder="Enter your name" required>
                </div>

                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="text" id="email" name="email" class="form-input" placeholder="Enter your email" required>
                </div>
                
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" class="form-input" placeholder="********" required>
                </div>
                
                <button type="submit" class="btn btn-primary">
                    Register
                    <i data-lucide="user-plus"></i>
                </button>
            </form>
            
            <div class="auth-footer">
                Already have an account? <a href="index.jsp">Login here</a>
            </div>
        </div>
    </div>

    <script>
        lucide.createIcons();
    </script>
</body>
</html>
