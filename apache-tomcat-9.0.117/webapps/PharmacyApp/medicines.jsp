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
    <title>Medicines Inventory - PharmaCare</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://unpkg.com/lucide@latest"></script>
</head>
<body>
    <div class="dashboard-layout">
        <nav class="navbar">
            <div class="nav-brand">
                <a href="dashboard.jsp" style="text-decoration: none; color: inherit; display: flex; align-items: center; gap: 10px;">
                    <i data-lucide="pill" class="primary"></i>
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
                    <h2>Medicines Inventory</h2>
                    <p>Manage and track your pharmaceutical products.</p>
                </div>
                <button class="btn btn-primary btn-sm">
                    <i data-lucide="plus" style="width:16px"></i>
                    Add New Medicine
                </button>
            </div>

            <div class="table-actions animate-fade-in" style="margin-bottom: 20px; display: flex; justify-content: space-between; align-items: center;">
                <div class="search-wrapper">
                    <i data-lucide="search" class="search-icon"></i>
                    <input type="text" class="search-input" placeholder="Search medicines by name or ID...">
                </div>
                <div class="filter-group" style="display: flex; gap: 10px;">
                    <select class="form-input" style="width: 150px; padding: 8px;">
                        <option>All Categories</option>
                        <option>Tablets</option>
                        <option>Syrups</option>
                        <option>Injections</option>
                    </select>
                </div>
            </div>
            
            <div class="table-container animate-fade-in">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Medicine Name</th>
                            <th>Category</th>
                            <th>Manufacturer</th>
                            <th>Price</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>#MED-001</td>
                            <td style="font-weight: 500;">Paracetamol 500mg</td>
                            <td>Tablet</td>
                            <td>Generic Pharma</td>
                            <td>$5.00</td>
                            <td><span class="badge badge-success">In Stock</span></td>
                            <td>
                                <button class="btn-logout" style="background: var(--bg-main); color: var(--accent); padding: 5px 10px;">Edit</button>
                            </td>
                        </tr>
                        <tr>
                            <td>#MED-002</td>
                            <td style="font-weight: 500;">Amoxicillin 250mg</td>
                            <td>Capsule</td>
                            <td>BioLabs Inc.</td>
                            <td>$12.50</td>
                            <td><span class="badge badge-success">In Stock</span></td>
                            <td>
                                <button class="btn-logout" style="background: var(--bg-main); color: var(--accent); padding: 5px 10px;">Edit</button>
                            </td>
                        </tr>
                        <tr>
                            <td>#MED-003</td>
                            <td style="font-weight: 500;">Cough Relief Syrup</td>
                            <td>Syrup</td>
                            <td>NatureCure</td>
                            <td>$8.75</td>
                            <td><span class="badge badge-warning">Low Stock</span></td>
                            <td>
                                <button class="btn-logout" style="background: var(--bg-main); color: var(--accent); padding: 5px 10px;">Edit</button>
                            </td>
                        </tr>
                        <tr>
                            <td>#MED-004</td>
                            <td style="font-weight: 500;">Vitamin C Tablets</td>
                            <td>Supplement</td>
                            <td>VitaPlus</td>
                            <td>$15.00</td>
                            <td><span class="badge badge-danger">Out of Stock</span></td>
                            <td>
                                <button class="btn-logout" style="background: var(--bg-main); color: var(--accent); padding: 5px 10px;">Edit</button>
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
