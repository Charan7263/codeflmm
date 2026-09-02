<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · modern UI</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous" />

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #fafbfc;
      --surface: #ffffff;
      --primary: #0b1d2e;
      --primary-light: #1d334a;
      --accent: #6c5ce7;
      --accent-soft: #a29bfe;
      --accent-glow: rgba(108, 92, 231, 0.25);
      --text: #1a2634;
      --muted: #6f7d8f;
      --border: #eef1f5;
      --radius: 20px;
      --radius-sm: 12px;
      --shadow: 0 20px 40px -12px rgba(0, 0, 0, 0.06), 0 8px 24px -8px rgba(0, 0, 0, 0.02);
      --shadow-hover: 0 30px 50px -16px rgba(108, 92, 231, 0.15);
      --transition: 0.25s cubic-bezier(0.2, 0, 0, 1);
      --container: 1280px;
    }

    body {
      background: var(--bg);
      color: var(--text);
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    a {
      color: inherit;
      text-decoration: none;
    }
    .container {
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- header ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255, 255, 255, 0.82);
      backdrop-filter: blur(12px) saturate(180%);
      border-bottom: 1px solid var(--border);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      padding: 12px 0;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 700;
      font-size: 22px;
      letter-spacing: -0.02em;
    }
    .brand .accent {
      color: var(--accent);
    }
    .brand i {
      color: var(--accent);
      font-size: 24px;
    }

    nav.main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
    }
    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 10px 16px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 14px;
      color: var(--text);
      transition: var(--transition);
    }
    nav.main-nav li a:hover {
      background: var(--accent-glow);
      color: var(--accent);
    }

    .search-wrapper {
      display: flex;
      align-items: center;
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: 60px;
      padding: 6px 6px 6px 18px;
      min-width: 240px;
      transition: var(--transition);
    }
    .search-wrapper:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px var(--accent-glow);
    }
    .search-wrapper input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      font-size: 14px;
      color: var(--text);
    }
    .search-wrapper button {
      background: var(--accent);
      border: 0;
      color: white;
      width: 38px;
      height: 38px;
      border-radius: 40px;
      font-size: 15px;
      cursor: pointer;
      transition: var(--transition);
    }
    .search-wrapper button:hover {
      background: var(--primary);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn {
      background: transparent;
      border: 0;
      font-size: 18px;
      width: 44px;
      height: 44px;
      border-radius: 40px;
      display: inline-grid;
      place-items: center;
      color: var(--text);
      transition: var(--transition);
      cursor: pointer;
    }
    .icon-btn:hover {
      background: var(--border);
      color: var(--accent);
    }

    .cart-wrap {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: 2px;
      right: 2px;
      background: var(--accent);
      color: white;
      font-size: 11px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 30px;
      display: grid;
      place-items: center;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      font-size: 22px;
      cursor: pointer;
      color: var(--text);
    }

    /* ----- hero ----- */
    .hero {
      background: linear-gradient(145deg, #0b1d2e 0%, #1d2f44 100%);
      border-radius: var(--radius);
      margin: 24px auto 0;
      padding: 64px 48px;
      color: white;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 30px;
      position: relative;
      overflow: hidden;
    }
    .hero::after {
      content: '';
      position: absolute;
      right: -80px;
      bottom: -80px;
      width: 400px;
      height: 400px;
      background: radial-gradient(circle, var(--accent-glow) 0%, transparent 70%);
      opacity: 0.4;
      pointer-events: none;
    }
    .hero-content {
      max-width: 580px;
      position: relative;
      z-index: 2;
    }
    .hero-content h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 44px;
      letter-spacing: -0.02em;
      line-height: 1.2;
      margin-bottom: 16px;
    }
    .hero-content p {
      opacity: 0.8;
      margin-bottom: 28px;
      font-size: 17px;
    }
    .hero-actions {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 14px 28px;
      border-radius: 60px;
      font-weight: 600;
      border: 0;
      font-size: 15px;
      cursor: pointer;
      transition: var(--transition);
    }
    .btn-primary {
      background: var(--accent);
      color: white;
      box-shadow: 0 8px 20px var(--accent-glow);
    }
    .btn-primary:hover {
      background: #5a4bd1;
      transform: scale(1.02);
    }
    .btn-ghost {
      background: rgba(255, 255, 255, 0.08);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255, 255, 255, 0.15);
      color: white;
    }
    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.18);
    }
    .hero-feature {
      display: flex;
      gap: 30px;
      margin-top: 24px;
      flex-wrap: wrap;
    }
    .hero-feature span {
      display: flex;
      align-items: center;
      gap: 8px;
      opacity: 0.7;
      font-size: 14px;
    }
    .hero-feature i {
      color: var(--accent-soft);
    }

    /* sections */
    .section {
      padding: 56px 0 32px;
    }
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin-bottom: 28px;
      flex-wrap: wrap;
      gap: 12px;
    }
    .section-header h2 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 28px;
      letter-spacing: -0.01em;
    }
    .section-header .muted {
      color: var(--muted);
      font-size: 15px;
    }
    .view-all {
      font-weight: 600;
      color: var(--accent);
      display: inline-flex;
      align-items: center;
      gap: 6px;
    }

    /* categories */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }
    .cat-card {
      background: var(--surface);
      border-radius: var(--radius-sm);
      padding: 22px 10px;
      text-align: center;
      box-shadow: var(--shadow);
      border: 1px solid var(--border);
      transition: var(--transition);
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent);
    }
    .cat-card .icon {
      font-size: 28px;
      color: var(--accent);
      background: var(--accent-glow);
      width: 60px;
      height: 60px;
      border-radius: 40px;
      display: grid;
      place-items: center;
      margin: 0 auto 10px;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 15px;
    }

    /* products */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }
    .product-card {
      background: var(--surface);
      border-radius: var(--radius);
      overflow: hidden;
      border: 1px solid var(--border);
      transition: var(--transition);
      box-shadow: var(--shadow);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
    }
    .product-card .img-wrap {
      height: 210px;
      background: #f0f3f7;
      position: relative;
      overflow: hidden;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      display: block;
      transition: var(--transition);
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.02);
    }
    .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--accent);
      color: white;
      font-weight: 700;
      font-size: 11px;
      padding: 4px 14px;
      border-radius: 30px;
      letter-spacing: 0.03em;
      text-transform: uppercase;
    }
    .badge.sale {
      background: #f97373;
    }
    .product-body {
      padding: 16px 18px 12px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .product-body h5 {
      font-size: 16px;
      font-weight: 600;
    }
    .product-body .category-tag {
      font-size: 13px;
      color: var(--muted);
      text-transform: capitalize;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 4px;
    }
    .price {
      font-weight: 700;
      font-size: 18px;
      color: var(--primary);
    }
    .old-price {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 14px;
    }
    .rating {
      color: #f8b84a;
      font-size: 14px;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .rating span {
      color: var(--muted);
      font-size: 13px;
    }
    .product-footer {
      padding: 12px 18px 18px;
      display: flex;
      gap: 10px;
      border-top: 1px solid var(--border);
      background: var(--bg);
    }
    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: 0;
      padding: 12px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 14px;
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .add-btn:hover {
      background: var(--accent);
      transform: scale(1.01);
    }
    .wish-btn {
      background: transparent;
      border: 1px solid var(--border);
      width: 46px;
      border-radius: 40px;
      cursor: pointer;
      transition: var(--transition);
      font-size: 16px;
      color: var(--muted);
    }
    .wish-btn:hover {
      background: var(--accent-glow);
      color: var(--accent);
      border-color: var(--accent);
    }

    /* deal */
    .deal-card {
      background: var(--surface);
      border-radius: var(--radius);
      display: flex;
      overflow: hidden;
      border: 1px solid var(--border);
      box-shadow: var(--shadow);
    }
    .deal-card .deal-img {
      width: 45%;
      background: #eef2f7;
      min-height: 280px;
    }
    .deal-card .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      display: block;
    }
    .deal-content {
      padding: 32px 36px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-content h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 28px;
    }
    .timer {
      display: flex;
      gap: 16px;
      margin: 20px 0 16px;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 10px 16px;
      border-radius: var(--radius-sm);
      min-width: 70px;
      text-align: center;
    }
    .time-box div:first-child {
      font-size: 26px;
      font-weight: 700;
    }
    .time-box div:last-child {
      font-size: 12px;
      opacity: 0.7;
      text-transform: uppercase;
    }
    .deal-price {
      display: flex;
      align-items: center;
      gap: 16px;
      margin: 8px 0 12px;
    }
    .deal-price .price {
      font-size: 30px;
    }
    .deal-discount {
      background: #f97373;
      color: white;
      padding: 6px 16px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 15px;
    }

    /* testimonials */
    .testimonials-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
    }
    .testimonial {
      min-width: 320px;
      background: var(--surface);
      padding: 24px;
      border-radius: var(--radius);
      border: 1px solid var(--border);
      box-shadow: var(--shadow);
      scroll-snap-align: start;
    }
    .testimonial .rating {
      color: #f8b84a;
      margin-bottom: 8px;
    }
    .testimonial p {
      font-size: 15px;
      margin-bottom: 16px;
    }
    .testimonial .avatar {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial .avatar img {
      width: 44px;
      height: 44px;
      border-radius: 40px;
      object-fit: cover;
    }
    .testimonial .avatar strong {
      font-weight: 600;
    }

    /* newsletter */
    .newsletter-block {
      background: var(--primary);
      border-radius: var(--radius);
      padding: 48px 32px;
      text-align: center;
      color: white;
      margin-top: 20px;
    }
    .newsletter-block h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 28px;
    }
    .newsletter-block p {
      opacity: 0.7;
      margin: 8px 0 24px;
    }
    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 12px;
      flex-wrap: wrap;
      max-width: 500px;
      margin: 0 auto;
    }
    .newsletter-form input {
      flex: 1;
      padding: 14px 22px;
      border-radius: 60px;
      border: 0;
      min-width: 200px;
      font-size: 15px;
    }
    .newsletter-form button {
      background: var(--accent);
      border: 0;
      color: white;
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
    }
    .newsletter-form button:hover {
      background: #5a4bd1;
    }

    /* footer */
    footer {
      padding: 48px 0 24px;
      border-top: 1px solid var(--border);
      margin-top: 20px;
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      gap: 40px;
      justify-content: space-between;
    }
    .footer-brand p {
      color: var(--muted);
      max-width: 300px;
      margin-top: 8px;
    }
    .footer-links {
      display: flex;
      gap: 50px;
      flex-wrap: wrap;
    }
    .footer-links div {
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .footer-links div strong {
      font-weight: 600;
      margin-bottom: 4px;
    }
    .footer-links a {
      color: var(--muted);
      font-size: 14px;
      transition: var(--transition);
    }
    .footer-links a:hover {
      color: var(--accent);
    }
    .footer-bottom {
      text-align: center;
      color: var(--muted);
      font-size: 13px;
      border-top: 1px solid var(--border);
      padding-top: 24px;
      margin-top: 32px;
    }

    /* responsive */
    @media (max-width: 1100px) {
      .categories-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .products-grid {
        grid-template-columns: repeat(3, 1fr);
      }
    }
    @media (max-width: 860px) {
      nav.main-nav {
        display: none;
      }
      .mobile-toggle {
        display: inline-block;
      }
      .products-grid {
        grid-template-columns: repeat(2, 1fr);
      }
      .categories-grid {
        grid-template-columns: repeat(2, 1fr);
      }
      .deal-card {
        flex-direction: column;
      }
      .deal-card .deal-img {
        width: 100%;
        height: 220px;
      }
      .hero {
        padding: 40px 24px;
      }
      .hero-content h1 {
        font-size: 32px;
      }
    }
    @media (max-width: 550px) {
      .products-grid {
        grid-template-columns: 1fr;
      }
      .categories-grid {
        grid-template-columns: 1fr 1fr;
      }
      .header-inner {
        flex-wrap: wrap;
      }
      .search-wrapper {
        min-width: 140px;
        flex: 1;
      }
      .hero-feature {
        gap: 16px;
      }
      .timer {
        gap: 8px;
      }
      .time-box {
        min-width: 56px;
        padding: 8px 8px;
      }
      .time-box div:first-child {
        font-size: 20px;
      }
    }
  </style>
</head>
<body>
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:12px;">
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-cube"></i> Nexus<span class="accent">Shop</span></a>
    </div>

    <nav class="main-nav" id="mainNav">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      </ul>
    </nav>

    <div style="display:flex;align-items:center;gap:12px;flex:1;justify-content:flex-end;">
      <div class="search-wrapper">
        <input type="search" id="searchInput" placeholder="Search products…" aria-label="Search" />
        <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" title="Cart"><i class="fas fa-shopping-bag"></i></button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>

  <!-- mobile menu -->
  <div id="mobileMenu" style="display:none; background:var(--surface); border-top:1px solid var(--border);">
    <div class="container" style="padding:16px 0;">
      <ul style="list-style:none;display:flex;flex-direction:column;gap:6px;">
        <li><a href="#" style="padding:10px 0;display:block;">Home</a></li>
        <li><a href="#" style="padding:10px 0;display:block;">Categories</a></li>
        <li><a href="#" style="padding:10px 0;display:block;">Trending</a></li>
        <li><a href="#deals" style="padding:10px 0;display:block;">Deals</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- Hero -->
  <section class="container hero">
    <div class="hero-content">
      <h1>New arrivals <br />made for <span style="color:var(--accent-soft);">you</span></h1>
      <p>Discover premium tech, style, and accessories — curated with care. Limited drops & free shipping.</p>
      <div class="hero-actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
        <button class="btn btn-ghost" id="exploreDeals">Explore deals</button>
      </div>
      <div class="hero-feature">
        <span><i class="fas fa-truck"></i> Free shipping</span>
        <span><i class="fas fa-rotate-left"></i> 30-day returns</span>
        <span><i class="fas fa-lock"></i> Secure checkout</span>
      </div>
    </div>
    <div style="flex:1;min-width:120px;display:flex;justify-content:flex-end;position:relative;z-index:2;">
      <div style="background:var(--accent-glow);width:200px;height:200px;border-radius:60px;display:flex;align-items:center;justify-content:center;color:white;font-size:80px;opacity:0.5;backdrop-filter:blur(2px);"><i class="fas fa-bag-shopping"></i></div>
    </div>
  </section>

  <!-- Categories -->
  <section class="section container">
    <div class="section-header">
      <h2>Shop by category</h2>
      <span class="muted">find what you love</span>
    </div>
    <div class="categories-grid" id="categoriesGrid"></div>
  </section>

  <!-- Products -->
  <section class="section container">
    <div class="section-header">
      <h2>Trending now</h2>
      <a href="#" class="view-all">View all <i class="fas fa-chevron-right" style="font-size:12px;"></i></a>
    </div>
    <div class="products-grid" id="productsGrid"></div>
  </section>

  <!-- Deal -->
  <section id="deals" class="section container">
    <div class="section-header">
      <h2>Flash sale</h2>
      <span class="muted">limited time</span>
    </div>
    <div class="deal-card">
      <div class="deal-img">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" />
      </div>
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="muted">Ultraportable, all‑day battery, and a stunning display.</p>
        <div class="timer" id="dealTimer">
          <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
          <div class="time-box"><div id="dealHours">00</div><div>Hours</div></div>
          <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
          <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
        </div>
        <div class="deal-price">
          <span class="price">$999</span>
          <span class="old-price">$1,199</span>
          <span class="deal-discount">-17%</span>
        </div>
        <p style="margin:4px 0 12px;"><strong>12</strong> items left</p>
        <button class="btn btn-primary" id="buyDeal" style="align-self:flex-start;"><i class="fas fa-bolt"></i> Buy now</button>
      </div>
    </div>
  </section>

  <!-- Testimonials -->
  <section class="section container">
    <div class="section-header">
      <h2>What our customers say</h2>
      <span class="muted">real reviews</span>
    </div>
    <div class="testimonials-scroll" id="testimonials">
      <div class="testimonial">
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
        <p>"Incredible service and the quality exceeded expectations. Fast delivery too."</p>
        <div class="avatar">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80" alt="Ava" />
          <div><strong>Ava Martin</strong><div class="muted" style="font-size:13px;">Verified</div></div>
        </div>
      </div>
      <div class="testimonial">
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
        <p>"Smooth checkout, great selection. My new favorite place to shop."</p>
        <div class="avatar">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80" alt="Michael" />
          <div><strong>Michael Lee</strong><div class="muted" style="font-size:13px;">Frequent buyer</div></div>
        </div>
      </div>
      <div class="testimonial">
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
        <p>"Loved the packaging and the product is top-notch. Will buy again!"</p>
        <div class="avatar">
          <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80" alt="James" />
          <div><strong>James Chen</strong><div class="muted" style="font-size:13px;">Verified</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- Newsletter -->
  <section class="section container">
    <div class="newsletter-block">
      <h3>Stay in the loop</h3>
      <p>Subscribe for exclusive offers, early access & new drops.</p>
      <form class="newsletter-form" id="newsletterForm" onsubmit="return false;">
        <input type="email" id="newsletterEmail" placeholder="Enter your email" required />
        <button id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:14px;font-size:14px;display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="footer-brand">
        <div style="font-family:'Space Grotesk',sans-serif;font-weight:700;font-size:20px;"><i class="fas fa-cube" style="color:var(--accent);"></i> Nexus<span style="color:var(--accent);">Shop</span></div>
        <p>Modern e‑commerce demo with a polished UI. Built with care.</p>
        <div style="display:flex;gap:12px;margin-top:12px;">
          <a href="#" class="icon-btn" style="width:40px;height:40px;"><i class="fab fa-facebook"></i></a>
          <a href="#" class="icon-btn" style="width:40px;height:40px;"><i class="fab fa-twitter"></i></a>
          <a href="#" class="icon-btn" style="width:40px;height:40px;"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <div class="footer-links">
        <div><strong>Company</strong><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
        <div><strong>Support</strong><a href="#">Help Center</a><a href="#">Shipping</a><a href="#">Contact</a></div>
      </div>
    </div>
    <div class="footer-bottom">© <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<script>
  // --- DATA ---
  const CATEGORIES = [
    { id: 'phones', name: 'Phones', icon: 'fa-mobile-alt' },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
    { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
  ];

  const PRODUCTS = [
    { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'phones' },
    { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
    { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-25%', img: 'https
