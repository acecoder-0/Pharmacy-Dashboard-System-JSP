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
    <title>Staff Management - PharmaCare</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://unpkg.com/lucide@latest"></script>
</head>
<body>
    <div class="dashboard-layout">
        <nav class="navbar">
            <div class="nav-brand">
                <a href="dashboard.jsp" style="text-decoration: none; color: inherit; display: flex; align-items: center; gap: 10px;">
                    <i data-lucide="users" class="primary"></i>
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
                    <h2>Staff Management</h2>
                    <p>Manage your pharmacy team and their access roles.</p>
                </div>
                <button class="btn btn-primary btn-sm">
                    <i data-lucide="user-plus" style="width:16px"></i>
                    Add New Staff
                </button>
            </div>

            <div class="table-container animate-fade-in">
                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Role</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 32px; height: 32px; background: #e2e8f0; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 700; color: #64748b;">AK</div>
                                    <div style="font-weight: 500;">Aditya Karodiwal</div>
                                </div>
                            </td>
                            <td><span class="badge badge-info">Administrator</span></td>
                            <td>aditya@example.com</td>
                            <td>+91 9876543210</td>
                            <td><span class="badge badge-success">Active</span></td>
                            <td>
                                <button class="btn-logout" style="background: var(--bg-main); color: var(--accent); padding: 5px 10px;">Manage</button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 32px; height: 32px; background: #e2e8f0; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 700; color: #64748b;">SM</div>
                                    <div style="font-weight: 500;">Sarah Miller</div>
                                </div>
                            </td>
                            <td><span class="badge badge-success" style="background: #f0f9ff; color: #0369a1;">Pharmacist</span></td>
                            <td>sarah.m@example.com</td>
                            <td>+91 9123456789</td>
                            <td><span class="badge badge-success">Active</span></td>
                            <td>
                                <button class="btn-logout" style="background: var(--bg-main); color: var(--accent); padding: 5px 10px;">Manage</button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="display: flex; align-items: center; gap: 10px;">
                                    <div style="width: 32px; height: 32px; background: #e2e8f0; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 700; color: #64748b;">JD</div>
                                    <div style="font-weight: 500;">John Doe</div>
                                </div>
                            </td>
                            <td><span class="badge badge-warning">Cashier</span></td>
                            <td>john.d@example.com</td>
                            <td>+91 9345678901</td>
                            <td><span class="badge badge-danger" style="background: #fef2f2; color: #dc2626;">Off-duty</span></td>
                            <td>
                                <button class="btn-logout" style="background: var(--bg-main); color: var(--accent); padding: 5px 10px;">Manage</button>
                            </td>
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
