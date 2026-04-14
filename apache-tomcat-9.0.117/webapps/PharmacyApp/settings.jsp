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
    <title>System Settings - PharmaCare</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://unpkg.com/lucide@latest"></script>
</head>
<body>
    <div class="dashboard-layout">
        <nav class="navbar">
            <div class="nav-brand">
                <a href="dashboard.jsp" style="text-decoration: none; color: inherit; display: flex; align-items: center; gap: 10px;">
                    <i data-lucide="settings" class="primary"></i>
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
                    <h2>System Settings</h2>
                    <p>Configure your pharmacy details and application preferences.</p>
                </div>
                <button class="btn btn-primary btn-sm">
                    <i data-lucide="save" style="width:16px"></i>
                    Save All Changes
                </button>
            </div>

            <div style="display: grid; grid-template-columns: 250px 1fr; gap: 40px;" class="animate-fade-in">
                <!-- Settings Sidebar -->
                <div style="display: flex; flex-direction: column; gap: 5px;">
                    <a href="#" style="padding: 12px 20px; background: #fff; border-radius: 8px; text-decoration: none; color: var(--primary); font-weight: 600; display: flex; align-items: center; gap: 10px; border: 1px solid var(--primary);">
                        <i data-lucide="user" style="width:18px"></i> General Profile
                    </a>
                    <a href="#" style="padding: 12px 20px; border-radius: 8px; text-decoration: none; color: var(--text-muted); display: flex; align-items: center; gap: 10px;">
                        <i data-lucide="building" style="width:18px"></i> Pharmacy Info
                    </a>
                    <a href="#" style="padding: 12px 20px; border-radius: 8px; text-decoration: none; color: var(--text-muted); display: flex; align-items: center; gap: 10px;">
                        <i data-lucide="bell" style="width:18px"></i> Notifications
                    </a>
                    <a href="#" style="padding: 12px 20px; border-radius: 8px; text-decoration: none; color: var(--text-muted); display: flex; align-items: center; gap: 10px;">
                        <i data-lucide="shield-check" style="width:18px"></i> Security & Access
                    </a>
                </div>

                <!-- Settings Content -->
                <div class="table-container" style="padding: 30px;">
                    <h3 style="margin-bottom: 25px;">General Profile</h3>
                    
                    <div style="display: flex; gap: 30px; margin-bottom: 40px; align-items: center;">
                        <div style="width: 100px; height: 100px; background: #f1f5f9; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 32px; color: #94a3b8; border: 2px dashed #cbd5e1;">
                            <i data-lucide="camera" style="width:32px"></i>
                        </div>
                        <div>
                            <button class="btn btn-logout" style="background: var(--bg-main); color: var(--primary); margin-bottom: 8px;">Upload New Photo</button>
                            <p style="font-size: 13px; color: var(--text-muted);">At least 400x400 px, PNG or JPG.</p>
                        </div>
                    </div>

                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px;">
                        <div class="form-group">
                            <label>Full Name</label>
                            <input type="text" class="form-input" value="Aditya Karodiwal">
                        </div>
                        <div class="form-group">
                            <label>Email Address</label>
                            <input type="text" class="form-input" value="<%= userEmail %>" disabled>
                        </div>
                        <div class="form-group">
                            <label>Organization</label>
                            <input type="text" class="form-input" value="PharmaCare Solutions">
                        </div>
                        <div class="form-group">
                            <label>Timezone</label>
                            <select class="form-input">
                                <option>IST (GMT +5:30)</option>
                                <option>UTC (GMT +0:00)</option>
                                <option>EST (GMT -5:00)</option>
                            </select>
                        </div>
                    </div>

                    <div style="margin-top: 30px; padding-top: 30px; border-top: 1px solid var(--border);">
                        <h4 style="margin-bottom: 15px;">Danger Zone</h4>
                        <button class="btn" style="background: #fee2e2; color: #ef4444; width: fit-content; border: 1px solid #fecaca;">Deactivate Account</button>
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
