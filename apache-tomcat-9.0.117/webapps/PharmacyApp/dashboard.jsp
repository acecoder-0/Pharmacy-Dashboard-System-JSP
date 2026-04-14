<%
if(session.getAttribute("user") == null) {
    response.sendRedirect("index.jsp");
}
String userEmail = (String)session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pharmacy Management Dashboard</title>
    <link rel="stylesheet" href="css/style.css">
    <!-- Lucide Icons -->
    <script src="https://unpkg.com/lucide@latest"></script>
</head>
<body>
    <div class="dashboard-layout">
        <nav class="navbar">
            <div class="nav-brand">
                <i data-lucide="pill" class="primary"></i>
                PharmaCare MS
            </div>
            <div class="nav-actions">
                <div class="user-badge">
                    <i data-lucide="user" style="width:16px"></i>
                    <%= userEmail %>
                </div>
                <a href="logout.jsp" class="btn-logout">
                    <i data-lucide="log-out" style="width:16px; display:inline; vertical-align:middle"></i>
                    Logout
                </a>
            </div>
        </nav>
        
        <main class="main-content">
            <div class="welcome-banner animate-fade-in">
                <h2>Welcome back, PharmaCare Pro!</h2>
                <p>Manage your inventory, track sales, and streamline your pharmacy operations all from one central dashboard.</p>
            </div>
            
            <div class="stats-grid">
                <a href="medicines.jsp" class="stat-card animate-fade-in" style="animation-delay: 0.1s">
                    <div class="card-icon-wrapper">
                        <i data-lucide="pill"></i>
                    </div>
                    <h3>Medicines</h3>
                    <p>Add, edit and manage your medical inventory and drug details.</p>
                </a>
                
                <a href="stock.jsp" class="stat-card animate-fade-in" style="animation-delay: 0.2s">
                    <div class="card-icon-wrapper" style="background: rgba(59, 130, 246, 0.1); color: var(--accent);">
                        <i data-lucide="package"></i>
                    </div>
                    <h3>Stock Management</h3>
                    <p>Monitor stock levels, set alerts for low inventory and manage supplies.</p>
                </a>
                
                <a href="billing.jsp" class="stat-card animate-fade-in" style="animation-delay: 0.3s">
                    <div class="card-icon-wrapper" style="background: rgba(245, 158, 11, 0.1); color: #f59e0b;">
                        <i data-lucide="credit-card"></i>
                    </div>
                    <h3>Billing & POS</h3>
                    <p>Create professional invoices and manage customer transactions smoothly.</p>
                </a>
                
                <a href="reports.jsp" class="stat-card animate-fade-in" style="animation-delay: 0.4s">
                    <div class="card-icon-wrapper" style="background: rgba(139, 92, 246, 0.1); color: #8b5cf6;">
                        <i data-lucide="bar-chart-3"></i>
                    </div>
                    <h3>Sales Reports</h3>
                    <p>View detailed analytics and performance reports of your pharmacy sales.</p>
                </a>
                
                <a href="staff.jsp" class="stat-card animate-fade-in" style="animation-delay: 0.5s">
                    <div class="card-icon-wrapper" style="background: rgba(236, 72, 153, 0.1); color: #ec4899;">
                        <i data-lucide="users"></i>
                    </div>
                    <h3>Staff Management</h3>
                    <p>Manage employee access, roles and pharmacy staff permissions.</p>
                </a>
                
                <a href="settings.jsp" class="stat-card animate-fade-in" style="animation-delay: 0.6s">
                    <div class="card-icon-wrapper" style="background: rgba(100, 116, 139, 0.1); color: #64748b;">
                        <i data-lucide="settings"></i>
                    </div>
                    <h3>System Settings</h3>
                    <p>Configure app preferences, backup data and update your profile.</p>
                </a>
            </div>
        </main>
    </div>

    <script>
        lucide.createIcons();
    </script>
</body>
</html>
