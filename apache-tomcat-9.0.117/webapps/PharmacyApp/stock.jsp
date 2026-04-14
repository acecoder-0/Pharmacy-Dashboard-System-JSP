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
    <title>Stock Management - PharmaCare</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://unpkg.com/lucide@latest"></script>
</head>
<body>
    <div class="dashboard-layout">
        <nav class="navbar">
            <div class="nav-brand">
                <a href="dashboard.jsp" style="text-decoration: none; color: inherit; display: flex; align-items: center; gap: 10px;">
                    <i data-lucide="package" class="primary"></i>
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
                    <h2>Stock Management</h2>
                    <p>Monitor inventory levels and batch tracking.</p>
                </div>
                <div style="display: flex; gap: 10px;">
                    <button class="btn btn-outline btn-sm" style="border: 1px solid var(--border); background: white;">
                        <i data-lucide="download" style="width:16px"></i>
                        Export Report
                    </button>
                    <button class="btn btn-primary btn-sm">
                        <i data-lucide="refresh-cw" style="width:16px"></i>
                        Sync Inventory
                    </button>
                </div>
            </div>

            <div class="analytics-grid animate-fade-in">
                <div class="analytic-card">
                    <div class="card-icon-wrapper" style="background: rgba(16, 185, 129, 0.1); color: var(--primary);">
                        <i data-lucide="check-circle"></i>
                    </div>
                    <div>
                        <div class="analytic-value">1,248</div>
                        <div class="analytic-label">Total Items</div>
                    </div>
                </div>
                <div class="analytic-card">
                    <div class="card-icon-wrapper" style="background: rgba(245, 158, 11, 0.1); color: #f59e0b;">
                        <i data-lucide="alert-triangle"></i>
                    </div>
                    <div>
                        <div class="analytic-value">12</div>
                        <div class="analytic-label">Low Stock Alerts</div>
                    </div>
                </div>
                <div class="analytic-card">
                    <div class="card-icon-wrapper" style="background: rgba(239, 68, 68, 0.1); color: #ef4444;">
                        <i data-lucide="x-circle"></i>
                    </div>
                    <div>
                        <div class="analytic-value">5</div>
                        <div class="analytic-label">Expired Items</div>
                    </div>
                </div>
            </div>
            
            <div class="table-container animate-fade-in">
                <table>
                    <thead>
                        <tr>
                            <th>Batch ID</th>
                            <th>Medicine</th>
                            <th>Current Stock</th>
                            <th>Minimum Required</th>
                            <th>Expiry Date</th>
                            <th>Supplier</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>#BAT-2023-01</td>
                            <td style="font-weight: 500;">Paracetamol 500mg</td>
                            <td>
                                450
                                <div style="width: 100px; height: 4px; background: #eee; border-radius: 2px; margin-top: 5px;">
                                    <div style="width: 80%; height: 100%; background: var(--primary); border-radius: 2px;"></div>
                                </div>
                            </td>
                            <td>100</td>
                            <td>Jan 2026</td>
                            <td>HealthLink Dist.</td>
                            <td><span class="badge badge-success">Good</span></td>
                        </tr>
                        <tr>
                            <td>#BAT-2023-05</td>
                            <td style="font-weight: 500;">Cough Relief Syrup</td>
                            <td>
                                25
                                <div style="width: 100px; height: 4px; background: #eee; border-radius: 2px; margin-top: 5px;">
                                    <div style="width: 30%; height: 100%; background: #f59e0b; border-radius: 2px;"></div>
                                </div>
                            </td>
                            <td>50</td>
                            <td>Mar 2025</td>
                            <td>Global Meds</td>
                            <td><span class="badge badge-warning">Low</span></td>
                        </tr>
                        <tr>
                            <td>#BAT-2022-12</td>
                            <td style="font-weight: 500;">Amoxicillin 250mg</td>
                            <td>
                                0
                                <div style="width: 100px; height: 4px; background: #eee; border-radius: 2px; margin-top: 5px;">
                                    <div style="width: 0%; height: 100%; background: #ef4444; border-radius: 2px;"></div>
                                </div>
                            </td>
                            <td>20</td>
                            <td>Oct 2024</td>
                            <td>BioLabs Inc.</td>
                            <td><span class="badge badge-danger">Critical</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </main>
    </div>

    <script>
        lucide.createIcons();
    </script>
</body>
</html>
