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
    <title>Sales Reports - PharmaCare</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://unpkg.com/lucide@latest"></script>
</head>
<body>
    <div class="dashboard-layout">
        <nav class="navbar">
            <div class="nav-brand">
                <a href="dashboard.jsp" style="text-decoration: none; color: inherit; display: flex; align-items: center; gap: 10px;">
                    <i data-lucide="bar-chart-3" class="primary"></i>
                    PharmaCare MS
                </a>
            </div>
            <div class="nav-actions">
                <div class="user-badge">
                    <i data-lucide="user" style="width:16px"></i>
                    <%= userEmail %>
                </div>
                <a href="logout.jsp" class="btn-logout">Logout</a>
            </div>
        </nav>
        
        <main class="main-content">
            <div class="page-header animate-fade-in">
                <div class="page-title">
                    <h2>Sales & Analytics</h2>
                    <p>Track your business performance and top selling items.</p>
                </div>
                <div style="display: flex; gap: 10px;">
                    <button class="btn btn-outline btn-sm" style="border: 1px solid var(--border); background: white;">
                        Month Selection
                        <i data-lucide="chevron-down" style="width:14px; margin-left: 5px;"></i>
                    </button>
                    <button class="btn btn-primary btn-sm">
                        <i data-lucide="file-text" style="width:16px"></i>
                        Download PDF
                    </button>
                </div>
            </div>

            <div class="analytics-grid animate-fade-in">
                <div class="analytic-card">
                    <div class="card-icon-wrapper" style="background: rgba(16, 185, 129, 0.1); color: var(--primary);">
                        <i data-lucide="dollar-sign"></i>
                    </div>
                    <div>
                        <div class="analytic-value">$12,450.00</div>
                        <div class="analytic-label">Total Revenue (Monthly)</div>
                    </div>
                </div>
                <div class="analytic-card">
                    <div class="card-icon-wrapper" style="background: rgba(59, 130, 246, 0.1); color: var(--accent);">
                        <i data-lucide="shopping-bag"></i>
                    </div>
                    <div>
                        <div class="analytic-value">842</div>
                        <div class="analytic-label">Total Transactions</div>
                    </div>
                </div>
                <div class="analytic-card">
                    <div class="card-icon-wrapper" style="background: rgba(139, 92, 246, 0.1); color: #8b5cf6;">
                        <i data-lucide="trending-up"></i>
                    </div>
                    <div>
                        <div class="analytic-value">+15.4%</div>
                        <div class="analytic-label">Growth vs Last Month</div>
                    </div>
                </div>
            </div>

            <div style="display: grid; grid-template-columns: 2fr 1fr; gap: 30px;" class="animate-fade-in">
                <!-- Sales Chart Placeholder -->
                <div class="table-container" style="padding: 24px;">
                    <h3 style="margin-bottom: 20px;">Revenue Trend</h3>
                    <div class="placeholder-chart">
                        <div class="chart-bar" style="height: 40%;"></div>
                        <div class="chart-bar" style="height: 60%;"></div>
                        <div class="chart-bar" style="height: 55%;"></div>
                        <div class="chart-bar" style="height: 85%;"></div>
                        <div class="chart-bar" style="height: 70%;"></div>
                        <div class="chart-bar" style="height: 90%;"></div>
                        <div class="chart-bar" style="height: 100%;"></div>
                    </div>
                    <div style="display: flex; justify-content: space-between; margin-top: 10px; color: var(--text-muted); font-size: 12px;">
                        <span>Mon</span><span>Tue</span><span>Wed</span><span>Thu</span><span>Fri</span><span>Sat</span><span>Sun</span>
                    </div>
                </div>

                <!-- Top Products -->
                <div class="table-container" style="padding: 24px;">
                    <h3 style="margin-bottom: 20px;">Top Selling</h3>
                    <div style="display: flex; flex-direction: column; gap: 15px;">
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            <div style="display: flex; align-items: center; gap: 10px;">
                                <div style="width: 8px; height: 8px; background: var(--primary); border-radius: 50%;"></div>
                                <span style="font-size: 14px; font-weight: 500;">Paracetamol</span>
                            </div>
                            <span style="font-size: 13px; color: var(--text-muted);">452 sold</span>
                        </div>
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            <div style="display: flex; align-items: center; gap: 10px;">
                                <div style="width: 8px; height: 8px; background: var(--accent); border-radius: 50%;"></div>
                                <span style="font-size: 14px; font-weight: 500;">Vitamin C</span>
                            </div>
                            <span style="font-size: 13px; color: var(--text-muted);">312 sold</span>
                        </div>
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            <div style="display: flex; align-items: center; gap: 10px;">
                                <div style="width: 8px; height: 8px; background: #8b5cf6; border-radius: 50%;"></div>
                                <span style="font-size: 14px; font-weight: 500;">Cough Syrup</span>
                            </div>
                            <span style="font-size: 13px; color: var(--text-muted);">198 sold</span>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>

    <script>
        lucide.createIcons();
    </script>
</body>
</html>
