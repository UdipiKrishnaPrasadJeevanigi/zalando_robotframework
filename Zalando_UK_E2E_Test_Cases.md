# Zalando UK - E2E Manual Test Cases

## Test Environment
- **URL**: https://www.zalando.co.uk/
- **Platform**: Web (Desktop/Mobile)
- **Browser**: Chrome/Firefox/Safari/Edge

---

## 1. USER AUTHENTICATION

### TC-001: User Registration
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-001 |
| **Title** | User Registration with valid credentials |
| **Pre-condition** | User is not registered, navigated to registration page |
| **Steps** | 1. Click "Sign Up" / "Create Account"<br>2. Enter valid email address<br>3. Enter valid password (min 8 chars, mixed case, number)<br>4. Confirm password<br>5. Click "Create Account" button |
| **Expected Result** | Account created successfully, user redirected to home page with welcome message, confirmation email sent |
| **Priority** | High |

### TC-002: User Login
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-002 |
| **Title** | User Login with valid credentials |
| **Pre-condition** | User has a registered account |
| **Steps** | 1. Click "Log In"<br>2. Enter registered email<br>3. Enter correct password<br>4. Click "Log In" button |
| **Expected Result** | User successfully logged in, redirected to home page, username displayed in header |
| **Priority** | High |

### TC-003: User Login with Invalid Credentials
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-003 |
| **Title** | User Login with wrong password |
| **Pre-condition** | User has a registered account |
| **Steps** | 1. Click "Log In"<br>2. Enter registered email<br>3. Enter incorrect password<br>4. Click "Log In" button |
| **Expected Result** | Error message displayed: "Wrong password" or "Invalid credentials" |
| **Priority** | High |

### TC-004: User Logout
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-004 |
| **Title** | User can successfully log out |
| **Pre-condition** | User is logged in |
| **Steps** | 1. Click on user account icon<br>2. Click "Log Out" button |
| **Expected Result** | User logged out, redirected to home page, "Log In" option visible |
| **Priority** | High |

---

## 2. PRODUCT SEARCH

### TC-005: Search for Product by Keyword
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-005 |
| **Title** | Search for products using keyword |
| **Pre-condition** | User is on home page |
| **Steps** | 1. Locate search bar<br>2. Enter search term (e.g., "Nike trainers")<br>3. Click search button or press Enter |
| **Expected Result** | Search results page displays relevant products matching the keyword |
| **Priority** | High |

### TC-006: Search with No Results
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-006 |
| **Title** | Search for non-existent product |
| **Pre-condition** | User is on home page |
| **Steps** | 1. Locate search bar<br>2. Enter random/garbage text<br>3. Click search button |
| **Expected Result** | "No results found" message displayed with suggestions |
| **Priority** | Medium |

### TC-007: Search Autocomplete Suggestions
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-007 |
| **Title** | Verify search autocomplete functionality |
| **Pre-condition** | User is on home page |
| **Steps** | 1. Click on search bar<br>2. Start typing a brand name (e.g., "Adid")<br>3. Observe autocomplete suggestions |
| **Expected Result** | Relevant suggestions appear as user types |
| **Priority** | Medium |

---

## 3. PRODUCT NAVIGATION & FILTERS

### TC-008: Browse Product Categories
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-008 |
| **Title** | Navigate through main category menu |
| **Pre-condition** | User is on home page |
| **Steps** | 1. Hover over "Women/Men/Children" menu<br>2. Click on a sub-category (e.g., "Shoes") |
| **Expected Result** | Product listing page displays products from selected category |
| **Priority** | High |

### TC-009: Filter Products by Brand
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-009 |
| **Title** | Filter products by brand |
| **Pre-condition** | User is on product listing page |
| **Steps** | 1. Click on "Brand" filter<br>2. Select a brand (e.g., "Nike")<br>3. Apply filter |
| **Expected Result** | Products filtered to show only selected brand |
| **Priority** | High |

### TC-010: Filter Products by Price Range
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-010 |
| **Title** | Filter products by price range |
| **Pre-condition** | User is on product listing page |
| **Steps** | 1. Click on "Price" filter<br>2. Set minimum and maximum price<br>3. Apply filter |
| **Expected Result** | Products filtered within selected price range |
| **Priority** | High |

### TC-011: Filter Products by Size
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-011 |
| **Title** | Filter products by size |
| **Pre-condition** | User is on product listing page |
| **Steps** | 1. Click on "Size" filter<br>2. Select a size<br>3. Apply filter |
| **Expected Result** | Products filtered to show selected size |
| **Priority** | High |

### TC-012: Sort Products by Price
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-012 |
| **Title** | Sort products by price (low to high / high to low) |
| **Pre-condition** | User is on product listing page |
| **Steps** | 1. Locate sort dropdown<br>2. Select "Price: Low to High"<br>3. Verify sorting |
| **Expected Result** | Products displayed in ascending price order |
| **Priority** | Medium |

---

## 4. PRODUCT DETAILS

### TC-013: View Product Details
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-013 |
| **Title** | View product details page |
| **Pre-condition** | User is on product listing page |
| **Steps** | 1. Click on a product image or name |
| **Expected Result** | Product detail page loads with image, description, price, sizes, and "Add to Cart" button |
| **Priority** | High |

### TC-014: Select Product Size
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-014 |
| **Title** | Select size on product detail page |
| **Pre-condition** | User is on product detail page |
| **Steps** | 1. View available sizes<br>2. Click on desired size |
| **Expected Result** | Selected size is highlighted/indicated as selected |
| **Priority** | High |

### TC-015: Add Product to Wishlist
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-015 |
| **Title** | Add product to wishlist |
| **Pre-condition** | User is logged in, on product detail page |
| **Steps** | 1. Click on heart/wishlist icon |
| **Expected Result** | Product added to wishlist, confirmation message, icon filled |
| **Priority** | Medium |

---

## 5. SHOPPING CART

### TC-016: Add Product to Cart
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-016 |
| **Title** | Add product to shopping cart |
| **Pre-condition** | User is on product detail page with size selected |
| **Steps** | 1. Select size<br>2. Click "Add to Cart" button |
| **Expected Result** | Product added to cart, cart icon updates with item count, success message displayed |
| **Priority** | High |

### TC-017: View Shopping Cart
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-017 |
| **Title** | View items in shopping cart |
| **Pre-condition** | At least one item in cart |
| **Steps** | 1. Click on cart icon in header |
| **Expected Result** | Cart page displays all added items with images, names, sizes, quantities, prices |
| **Priority** | High |

### TC-018: Update Product Quantity
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-018 |
| **Title** | Change quantity of item in cart |
| **Pre-condition** | User has item(s) in cart |
| **Steps** | 1. Click on cart icon<br>2. Change quantity (+/- or input field)<br>3. Observe total update |
| **Expected Result** | Quantity updated, subtotal recalculated |
| **Priority** | High |

### TC-019: Remove Product from Cart
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-019 |
| **Title** | Remove item from cart |
| **Pre-condition** | User has item(s) in cart |
| **Steps** | 1. Click on cart icon<br>2. Click remove/delete button for an item |
| **Expected Result** | Item removed from cart, cart total updated |
| **Priority** | High |

### TC-020: Add Multiple Products to Cart
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-020 |
| **Title** | Add multiple different products to cart |
| **Pre-condition** | User is logged in |
| **Steps** | 1. Add product A to cart<br>2. Continue shopping<br>3. Add product B to cart<br>4. View cart |
| **Expected Result** | Cart contains both products with correct details and total |
| **Priority** | High |

---

## 6. CHECKOUT PROCESS

### TC-021: Proceed to Checkout
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-021 |
| **Title** | Navigate from cart to checkout |
| **Pre-condition** | User has items in cart |
| **Steps** | 1. Add item to cart<br>2. Click "Checkout" or "Go to Checkout" |
| **Expected Result** | User redirected to checkout page with cart summary |
| **Priority** | High |

### TC-022: Guest Checkout
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-022 |
| **Title** | Complete checkout as guest (without logging in) |
| **Pre-condition** | User has items in cart, not logged in |
| **Steps** | 1. Click "Checkout"<br>2. Enter email (guest checkout option)<br>3. Fill delivery address<br>4. Select delivery method<br>5. Enter payment details<br>6. Place order |
| **Expected Result** | Order placed successfully, confirmation page displayed |
| **Priority** | High |

### TC-023: Checkout as Logged-in User
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-023 |
| **Title** | Complete checkout when logged in |
| **Pre-condition** | User logged in with saved address |
| **Steps** | 1. Add item to cart<br>2. Proceed to checkout<br>3. Select saved address<br>4. Select delivery method<br>5. Enter payment details<br>6. Place order |
| **Expected Result** | Order placed successfully, confirmation displayed |
| **Priority** | High |

### TC-024: Delivery Address Entry
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-024 |
| **Title** | Enter delivery address during checkout |
| **Pre-condition** | User at checkout page |
| **Steps** | 1. Enter full name<br>2. Enter address line 1<br>3. Enter city<br>4. Enter postcode<br>5. Enter phone number |
| **Expected Result** | Address fields validated and accepted |
| **Priority** | High |

### TC-025: Select Delivery Method
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-025 |
| **Title** | Select delivery/shipping method |
| **Pre-condition** | User at checkout, address entered |
| **Steps** | 1. View available delivery options<br>2. Select preferred delivery method |
| **Expected Result** | Delivery method selected, cost added to total |
| **Priority** | High |

### TC-026: Apply Promo Code
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-026 |
| **Title** | Apply valid promo code |
| **Pre-condition** | User at checkout with items in cart |
| **Steps** | 1. Locate promo code field<br>2. Enter valid promo code<br>3. Click "Apply" |
| **Expected Result** | Discount applied, total reduced accordingly |
| **Priority** | Medium |

### TC-027: Payment Processing
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-027 |
| **Title** | Complete payment with credit card |
| **Pre-condition** | User at payment step of checkout |
| **Steps** | 1. Select credit card payment<br>2. Enter card number<br>3. Enter expiry date<br>4. Enter CVV<br>5. Click "Pay Now" |
| **Expected Result** | Payment processed, order confirmation displayed |
| **Priority** | High |

---

## 7. ORDER CONFIRMATION

### TC-028: Order Confirmation Page
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-028 |
| **Title** | Verify order confirmation after successful purchase |
| **Pre-condition** | Order placed successfully |
| **Steps** | 1. Complete checkout with payment<br>2. Observe confirmation page |
| **Expected Result** | Order number displayed, summary of order, estimated delivery date, confirmation email sent |
| **Priority** | High |

### TC-029: View Order History
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-029 |
| **Title** | View past orders in account |
| **Pre-condition** | User logged in with previous orders |
| **Steps** | 1. Click on account icon<br>2. Navigate to "Orders" or "Order History" |
| **Expected Result** | List of past orders displayed with details |
| **Priority** | Medium |

---

## 8. USER ACCOUNT MANAGEMENT

### TC-030: View Profile Information
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-030 |
| **Title** | View user profile information |
| **Pre-condition** | User logged in |
| **Steps** | 1. Click on account icon<br>2. Navigate to "My Profile" |
| **Expected Result** | Profile details displayed (name, email, etc.) |
| **Priority** | Medium |

### TC-031: Update Delivery Address
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-031 |
| **Title** | Add or update delivery address |
| **Pre-condition** | User logged in |
| **Steps** | 1. Go to account settings<br>2. Navigate to "Addresses"<br>3. Add new address or edit existing |
| **Expected Result** | Address saved successfully |
| **Priority** | Medium |

### TC-032: Update Password
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-032 |
| **Title** | Change account password |
| **Pre-condition** | User logged in |
| **Steps** | 1. Go to account settings<br>2. Click "Change Password"<br>3. Enter current password<br>4. Enter new password<br>5. Confirm new password |
| **Expected Result** | Password changed successfully, confirmation message displayed |
| **Priority** | High |

### TC-033: View Wishlist
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-033 |
| **Title** | View saved wishlist items |
| **Pre-condition** | User logged in with wishlist items |
| **Steps** | 1. Click on account icon<br>2. Navigate to "Wishlist" |
| **Expected Result** | Saved wishlist items displayed |
| **Priority** | Medium |

---

## 9. HOMEPAGE & NAVIGATION

### TC-034: Homepage Load
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-034 |
| **Title** | Verify homepage loads correctly |
| **Pre-condition** | None |
| **Steps** | 1. Navigate to zalando.co.uk<br>2. Observe homepage |
| **Expected Result** | Homepage loads with featured products, navigation menu, search bar, promotional banners |
| **Priority** | High |

### TC-035: Responsive Design - Mobile View
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-035 |
| **Title** | Verify website displays correctly on mobile |
| **Pre-condition** | None |
| **Steps** | 1. Open website on mobile device or resize browser<br>2. Navigate through pages |
| **Expected Result** | Website displays correctly with mobile-optimized layout, hamburger menu works |
| **Priority** | High |

### TC-036: Footer Links
| Field | Details |
|-------|---------|
| **Test Case ID** | TC-036 |
| **Title** | Verify footer links are functional |
| **Pre-condition** | User on any page |
| **Steps** | 1. Scroll to footer<br>2. Click on various links (Customer Service, About Us, Careers, etc.) |
| **Expected Result** | Correct pages load for each link |
| **Priority** | Low |

---

## Test Case Summary

| Category | Count |
|----------|-------|
| User Authentication | 4 |
| Product Search | 3 |
| Product Navigation & Filters | 5 |
| Product Details | 3 |
| Shopping Cart | 5 |
| Checkout Process | 7 |
| Order Confirmation | 2 |
| User Account Management | 4 |
| Homepage & Navigation | 3 |
| **TOTAL** | **36** |

---

## Priority Legend
- **High**: Critical E2E flow - must work for business
- **Medium**: Important feature - should work
- **Low**: Nice to have - edge case

## Test Data Needed
- Valid test email account
- Multiple test credit cards (test mode)
- Various promo codes for testing
- Test addresses for different delivery scenarios
