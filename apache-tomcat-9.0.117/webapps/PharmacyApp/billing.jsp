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
    <title>Billing & POS - PharmaCare</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://unpkg.com/lucide@latest"></script>
</head>
<body>
    <div class="dashboard-layout">
        <nav class="navbar">
            <div class="nav-brand">
                <a href="dashboard.jsp" style="text-decoration: none; color: inherit; display: flex; align-items: center; gap: 10px;">
                    <i data-lucide="credit-card" class="primary"></i>
                    PharmaCare POS
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
                    <h2>Billing & POS</h2>
                    <p>Create new sales and generate customer invoices.</p>
                </div>
                <div class="user-info" style="margin-bottom: 0; background: var(--bg-card); border: 1px solid var(--border); font-size: 14px;">
                    Order ID: <strong>#INV-2023-8942</strong>
                </div>
            </div>

            <div class="billing-grid animate-fade-in">
                <!-- Left Pane: Sales Entry -->
                <div class="sales-entry">
                    <div class="table-container" style="padding: 24px;">
                        <h4 style="margin-bottom: 20px;">Search & Add Medicines</h4>
                        <div class="search-wrapper" style="max-width: none; margin-bottom: 24px;">
                            <i data-lucide="search" class="search-icon"></i>
                            <input type="text" class="search-input" placeholder="Type medicine name (e.g. Paracetamol)...">
                        </div>
                        
                        <div class="form-group">
                            <label>Customer Details (Optional)</label>
                            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 15px;">
                                <input type="text" class="form-input" placeholder="Customer Name">
                                <input type="text" class="form-input" placeholder="Phone Number">
                            </div>
                        </div>

                        <div style="margin-top: 30px;">
                            <h4 style="margin-bottom: 15px;">Recently Sold</h4>
                            <div style="display: grid; grid-template-columns: repeat(auto-fill, minmax(150px, 1fr)); gap: 10px;">
                                <div style="background: var(--bg-main); padding: 15px; border-radius: 8px; text-align: center; cursor: pointer; border: 1px solid transparent; transition: all 0.2s;" onmouseover="this.style.borderColor='var(--primary)'" onmouseout="this.style.borderColor='transparent'">
                                    <i data-lucide="pill" style="color: var(--primary); margin-bottom: 5px;"></i>
                                    <div style="font-weight: 600; font-size: 12px;">Paracetamol</div>
                                    <div style="font-size: 11px; color: var(--text-muted);">$5.00</div>
                                </div>
                                <div style="background: var(--bg-main); padding: 15px; border-radius: 8px; text-align: center; cursor: pointer; border: 1px solid transparent; transition: all 0.2s;" onmouseover="this.style.borderColor='var(--primary)'" onmouseout="this.style.borderColor='transparent'">
                                    <i data-lucide="pill" style="color: var(--primary); margin-bottom: 5px;"></i>
                                    <div style="font-weight: 600; font-size: 12px;">Vitamin C</div>
                                    <div style="font-size: 11px; color: var(--text-muted);">$15.00</div>
                                </div>
                                <div style="background: var(--bg-main); padding: 15px; border-radius: 8px; text-align: center; cursor: pointer; border: 1px solid transparent; transition: all 0.2s;" onmouseover="this.style.borderColor='var(--primary)'" onmouseout="this.style.borderColor='transparent'">
                                    <i data-lucide="pill" style="color: var(--primary); margin-bottom: 5px;"></i>
                                    <div style="font-weight: 600; font-size: 12px;">Amoxicillin</div>
                                    <div style="font-size: 11px; color: var(--text-muted);">$12.50</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Right Pane: Cart Summary -->
                <div class="cart-card">
                    <h3 style="margin-bottom: 20px; display: flex; align-items: center; gap: 10px;">
                        <i data-lucide="shopping-cart" style="width:20px"></i>
                        Order Summary
                    </h3>
                    
                    <div class="cart-items" style="min-height: 200px;">
                        <div class="cart-item">
                            <div>
                                <div style="font-weight: 600;">Paracetamol 500mg</div>
                                <div style="font-size: 12px; color: var(--text-muted);">Qty: 2 x $5.00</div>
                            </div>
                            <div style="font-weight: 600;">$10.00</div>
                        </div>
                        <div class="cart-item">
                            <div>
                                <div style="font-weight: 600;">Vitamin C Tablets</div>
                                <div style="font-size: 12px; color: var(--text-muted);">Qty: 1 x $15.00</div>
                            </div>
                            <div style="font-weight: 600;">$15.00</div>
                        </div>
                    </div>

                    <div style="margin-top: 20px;">
                        <div style="display: flex; justify-content: space-between; font-size: 14px; color: var(--text-muted); margin-bottom: 8px;">
                            <span>Subtotal</span>
                            <span>$25.00</span>
                        </div>
                        <div style="display: flex; justify-content: space-between; font-size: 14px; color: var(--text-muted); margin-bottom: 8px;">
                            <span>Tax (0%)</span>
                            <span>$0.00</span>
                        </div>
                        <div class="cart-total">
                            <span>Total</span>
                            <span style="color: var(--primary);">$25.00</span>
                        </div>
                    </div>

                    <button class="btn btn-primary" style="margin-top: 30px; width: 100%;">
                        <i data-lucide="printer" style="width:18px"></i>
                        Complete & Print Receipt
                    </button>
                    <button class="btn" style="margin-top: 10px; width: 100%; background: #fee2e2; color: #ef4444;">
                        Cancel Order
                    </button>
                </div>
            </div>
        </main>
    </div>

    <script>
        lucide.createIcons();
    </script>
</body>
</html>
