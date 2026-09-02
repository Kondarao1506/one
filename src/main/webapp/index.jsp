<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop — Ocean E-Commerce</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
    >

    <style>
        :root {
            --ocean-dark: #022b3a;
            --ocean-deep: #005f73;
            --ocean: #008cba;
            --cyan: #00d9ff;
            --aqua: #38e8d6;
            --sky: #74e8ff;

            --white: #ffffff;
            --text: #073b4c;
            --muted: #668894;

            --glass: rgba(255, 255, 255, 0.78);
            --glass-dark: rgba(2, 43, 58, 0.78);

            --surface: #eefcff;
            --success: #12b886;
            --danger: #ff5573;

            --radius: 20px;
            --container: 1200px;

            --shadow:
                0 20px 50px rgba(0, 80, 110, 0.12);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            min-height: 100vh;
            font-family: Inter, system-ui, sans-serif;
            color: var(--text);
            background:
                radial-gradient(
                    circle at 10% 10%,
                    rgba(0, 217, 255, .18),
                    transparent 30%
                ),
                radial-gradient(
                    circle at 90% 20%,
                    rgba(56, 232, 214, .15),
                    transparent 30%
                ),
                linear-gradient(
                    135deg,
                    #e9fbff 0%,
                    #d5f7ff 35%,
                    #eefcff 70%,
                    #d8f8ff 100%
                );

            background-attachment: fixed;
            line-height: 1.5;
            overflow-x: hidden;
        }

        body::before,
        body::after {
            content: "";
            position: fixed;
            z-index: -1;
            border-radius: 50%;
            filter: blur(10px);
            opacity: .35;
            pointer-events: none;
        }

        body::before {
            width: 420px;
            height: 420px;
            background: #00d9ff;
            top: 15%;
            left: -220px;
        }

        body::after {
            width: 360px;
            height: 360px;
            background: #38e8d6;
            right: -180px;
            bottom: 10%;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        button,
        input {
            font-family: inherit;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: auto;
            padding: 0 20px;
        }

        /* =========================
           HEADER
        ========================= */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;

            background: rgba(255, 255, 255, .72);
            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);

            border-bottom: 1px solid rgba(255, 255, 255, .7);
            box-shadow: 0 5px 25px rgba(0, 80, 110, .08);
        }

        .header-inner {
            min-height: 76px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 25px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;

            font-family: Poppins, sans-serif;
            font-size: 21px;
            font-weight: 800;
            color: var(--ocean-dark);
            white-space: nowrap;
        }

        .brand-logo {
            width: 42px;
            height: 42px;

            display: grid;
            place-items: center;

            color: white;
            border-radius: 14px;

            background:
                linear-gradient(
                    135deg,
                    var(--ocean-deep),
                    var(--cyan)
                );

            box-shadow:
                0 10px 25px rgba(0, 188, 212, .3);
        }

        .brand .accent {
            color: var(--ocean);
        }

        nav.main-nav ul {
            list-style: none;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        nav.main-nav a {
            display: flex;
            align-items: center;
            gap: 8px;

            padding: 10px 13px;
            border-radius: 12px;

            font-size: 14px;
            font-weight: 600;

            transition: .2s ease;
        }

        nav.main-nav a:hover {
            color: white;
            background:
                linear-gradient(
                    135deg,
                    var(--ocean-deep),
                    var(--ocean)
                );

            transform: translateY(-2px);
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .search {
            width: 245px;

            display: flex;
            align-items: center;
            gap: 9px;

            padding: 10px 13px;

            background: rgba(255, 255, 255, .72);
            border: 1px solid rgba(0, 137, 180, .1);
            border-radius: 999px;

            box-shadow:
                inset 0 1px 0 rgba(255,255,255,.8);
        }

        .search i {
            color: var(--ocean);
        }

        .search input {
            width: 100%;
            border: none;
            outline: none;
            background: transparent;

            color: var(--text);
            font-size: 13px;
        }

        .search input::placeholder {
            color: #8aaab5;
        }

        .icon-btn {
            width: 40px;
            height: 40px;

            display: grid;
            place-items: center;

            border: none;
            border-radius: 12px;

            background: rgba(255,255,255,.65);
            color: var(--ocean-dark);

            cursor: pointer;
            transition: .2s ease;
        }

        .icon-btn:hover {
            color: white;
            background: var(--ocean);
            transform: translateY(-2px);
        }

        .cart {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -5px;
            right: -5px;

            width: 20px;
            height: 20px;

            display: grid;
            place-items: center;

            background: var(--danger);
            color: white;

            border: 2px solid white;
            border-radius: 50%;

            font-size: 10px;
            font-weight: 800;
        }

        .mobile-toggle {
            display: none;
            border: none;
            background: transparent;
            font-size: 21px;
            color: var(--ocean-dark);
            cursor: pointer;
        }

        /* =========================
           HERO
        ========================= */

        .hero {
            position: relative;
            min-height: 570px;

            display: flex;
            align-items: center;
            text-align: center;

            color: white;
            overflow: hidden;

            background:
                linear-gradient(
                    180deg,
                    rgba(0, 30, 50, .42),
                    rgba(0, 91, 115, .62)
                ),
                url("https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=1800&q=85")
                center / cover no-repeat;

            border-bottom-left-radius: 35px;
            border-bottom-right-radius: 35px;
        }

        .hero::before {
            content: "";
            position: absolute;
            inset: auto -10% -130px;

            height: 250px;

            background: rgba(255,255,255,.12);
            border-radius: 50%;

            transform: rotate(-3deg);
        }

        .hero-content {
            position: relative;
            z-index: 2;

            max-width: 850px;
            margin: auto;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;

            padding: 8px 14px;
            margin-bottom: 18px;

            border: 1px solid rgba(255,255,255,.35);
            border-radius: 999px;

            background: rgba(255,255,255,.12);
            backdrop-filter: blur(10px);

            font-size: 12px;
            font-weight: 700;
        }

        .hero h1 {
            font-family: Poppins, sans-serif;
            font-size: clamp(34px, 6vw, 66px);
            line-height: 1.05;
            letter-spacing: -2px;

            margin-bottom: 20px;

            text-shadow:
                0 10px 30px rgba(0,0,0,.18);
        }

        .hero h1 span {
            color: var(--sky);
        }

        .hero p {
            max-width: 720px;
            margin: auto auto 28px;

            color: rgba(255,255,255,.92);
            font-size: 16px;
        }

        .hero-actions {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;

            padding: 12px 20px;

            border: none;
            border-radius: 999px;

            font-size: 14px;
            font-weight: 700;

            cursor: pointer;
            transition: .25s ease;
        }

        .btn-primary {
            color: #003344;

            background:
                linear-gradient(
                    135deg,
                    #72f5ff,
                    #38e8d6
                );

            box-shadow:
                0 12px 30px rgba(0, 217, 255, .3);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow:
                0 18px 35px rgba(0, 217, 255, .4);
        }

        .btn-outline {
            color: white;
            background: rgba(255,255,255,.1);

            border: 1px solid rgba(255,255,255,.35);
            backdrop-filter: blur(8px);
        }

        .btn-outline:hover {
            background: white;
            color: var(--ocean-dark);
        }

        /* =========================
           SECTION
        ========================= */

        .section {
            padding: 70px 0;
        }

        .title {
            text-align: center;
            margin-bottom: 30px;
        }

        .eyebrow {
            color: var(--ocean);
            font-size: 12px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-bottom: 8px;
        }

        .title h2 {
            font-family: Poppins, sans-serif;
            font-size: 30px;
            color: var(--ocean-dark);
            margin-bottom: 8px;
        }

        .muted {
            color: var(--muted);
        }

        /* =========================
           CATEGORY
        ========================= */

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }

        .cat-card {
            position: relative;
            overflow: hidden;

            padding: 24px 14px;

            text-align: center;

            background: rgba(255,255,255,.7);
            border: 1px solid rgba(255,255,255,.9);

            border-radius: var(--radius);

            box-shadow: var(--shadow);

            cursor: pointer;
            transition: .25s ease;

            backdrop-filter: blur(12px);
        }

        .cat-card::after {
            content: "";
            position: absolute;

            width: 80px;
            height: 80px;

            background: rgba(0,217,255,.12);
            border-radius: 50%;

            top: -35px;
            right: -25px;
        }

        .cat-card:hover {
            transform: translateY(-8px);
            background: white;

            box-shadow:
                0 25px 55px rgba(0, 100, 130, .16);
        }

        .cat-icon {
            width: 58px;
            height: 58px;

            display: grid;
            place-items: center;

            margin: auto auto 12px;

            border-radius: 18px;

            color: white;

            background:
                linear-gradient(
                    135deg,
                    var(--ocean-deep),
                    var(--cyan)
                );

            box-shadow:
                0 10px 25px rgba(0, 180, 220, .25);
        }

        .cat-card h4 {
            font-size: 14px;
            margin-bottom: 4px;
        }

        .cat-card small {
            color: var(--muted);
            font-size: 11px;
        }

        /* =========================
           PRODUCTS
        ========================= */

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product {
            position: relative;
            overflow: hidden;

            display: flex;
            flex-direction: column;

            background: rgba(255,255,255,.82);

            border: 1px solid rgba(255,255,255,.9);
            border-radius: var(--radius);

            box-shadow: var(--shadow);

            backdrop-filter: blur(12px);

            transition: .25s ease;
        }

        .product:hover {
            transform: translateY(-7px);
            box-shadow:
                0 28px 60px rgba(0, 90, 120, .17);
        }

        .product-image {
            position: relative;
            height: 220px;
            overflow: hidden;
            background: #dff8ff;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;

            transition: transform .5s ease;
        }

        .product:hover .product-image img {
            transform: scale(1.06);
        }

        .product-badge {
            position: absolute;
            top: 12px;
            left: 12px;

            padding: 6px 9px;

            color: white;
            background: var(--danger);

            border-radius: 8px;

            font-size: 10px;
            font-weight: 800;

            z-index: 2;
        }

        .wishlist {
            position: absolute;
            top: 12px;
            right: 12px;

            width: 35px;
            height: 35px;

            display: grid;
            place-items: center;

            border: none;
            border-radius: 50%;

            background: rgba(255,255,255,.88);
            color: var(--ocean-dark);

            cursor: pointer;
            z-index: 2;

            transition: .2s ease;
        }

        .wishlist:hover,
        .wishlist.active {
            color: white;
            background: var(--danger);
        }

        .product-body {
            padding: 17px;
            flex: 1;
        }

        .product-category {
            color: var(--ocean);
            text-transform: uppercase;
            font-size: 10px;
            font-weight: 800;
            letter-spacing: 1px;
            margin-bottom: 6px;
        }

        .product h3 {
            font-family: Poppins, sans-serif;
            font-size: 15px;
            margin-bottom: 9px;
        }

        .rating {
            color: #ffb703;
            font-size: 12px;
            margin-bottom: 12px;
        }

        .rating span {
            color: var(--muted);
            margin-left: 3px;
        }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .price {
            color: var(--ocean-dark);
            font-size: 19px;
            font-weight: 800;
        }

        .old-price {
            color: #9aafb6;
            font-size: 12px;
            text-decoration: line-through;
            margin-left: 4px;
        }

        .product-footer {
            padding: 0 14px 14px;
        }

        .add-btn {
            width: 100%;

            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;

            padding: 11px;

            border: none;
            border-radius: 11px;

            color: white;
            background:
                linear-gradient(
                    135deg,
                    var(--ocean-dark),
                    var(--ocean)
                );

            font-weight: 700;
            cursor: pointer;

            transition: .2s ease;
        }

        .add-btn:hover {
            transform: translateY(-2px);
            box-shadow:
                0 10px 20px rgba(0, 120, 160, .25);
        }

        .add-btn:disabled {
            background: var(--success);
            cursor: default;
        }

        .empty-state {
            grid-column: 1 / -1;

            padding: 50px;
            text-align: center;

            background: rgba(255,255,255,.7);
            border-radius: var(--radius);
        }

        .empty-state i {
            font-size: 42px;
            color: var(--ocean);
            margin-bottom: 12px;
        }

        /* =========================
           FLASH SALE
        ========================= */

        .deal {
            position: relative;
            overflow: hidden;

            display: flex;

            background:
                linear-gradient(
                    120deg,
                    rgba(0,45,65,.96),
                    rgba(0,120,150,.9)
                );

            color: white;

            border-radius: 28px;

            box-shadow:
                0 30px 70px rgba(0, 80, 110, .25);
        }

        .deal::after {
            content: "";
            position: absolute;

            width: 300px;
            height: 300px;

            right: -100px;
            bottom: -160px;

            border-radius: 50%;
            background: rgba(0,217,255,.2);
        }

        .deal-image {
            width: 48%;
            min-height: 360px;
            object-fit: cover;
        }

        .deal-content {
            position: relative;
            z-index: 2;

            flex: 1;
            padding: 48px;
        }

        .deal-content .eyebrow {
            color: var(--sky);
        }

        .deal-content h2 {
            font-family: Poppins, sans-serif;
            font-size: 35px;
            margin-bottom: 10px;
        }

        .deal-description {
            color: rgba(255,255,255,.78);
            margin-bottom: 20px;
        }

        .timer {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            margin: 20px 0;
        }

        .time-box {
            min-width: 72px;
            padding: 10px;

            text-align: center;

            background: rgba(255,255,255,.1);
            border: 1px solid rgba(255,255,255,.15);

            border-radius: 12px;
            backdrop-filter: blur(8px);
        }

        .time-box strong {
            display: block;
            font-size: 22px;
        }

        .time-box span {
            font-size: 10px;
            opacity: .75;
            text-transform: uppercase;
        }

        .deal-price {
            display: flex;
            align-items: center;
            gap: 10px;

            margin: 18px 0;
        }

        .deal-price strong {
            font-size: 28px;
        }

        .discount {
            padding: 6px 10px;

            border-radius: 8px;

            background: var(--danger);
            font-size: 12px;
            font-weight: 800;
        }

        /* =========================
           TESTIMONIALS
        ========================= */

        .testimonials {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .testimonial {
            padding: 25px;

            background: rgba(255,255,255,.75);
            border: 1px solid rgba(255,255,255,.9);

            border-radius: var(--radius);

            box-shadow: var(--shadow);

            backdrop-filter: blur(12px);
        }

        .testimonial-stars {
            color: #ffb703;
            margin-bottom: 12px;
        }

        .testimonial p {
            color: #4f727e;
            font-size: 14px;
            margin-bottom: 18px;
        }

        .customer {
            display: flex;
            align-items: center;
            gap: 11px;
        }

        .customer img {
            width: 43px;
            height: 43px;
            object-fit: cover;
            border-radius: 50%;
            border: 3px solid #c9f8ff;
        }

        .customer strong {
            display: block;
            font-size: 13px;
        }

        .customer small {
            color: var(--muted);
            font-size: 11px;
        }

        /* =========================
           NEWSLETTER
        ========================= */

        .newsletter {
            position: relative;
            overflow: hidden;

            padding: 45px 25px;

            text-align: center;
            color: white;

            border-radius: 28px;

            background:
                linear-gradient(
                    135deg,
                    #023047,
                    #007c91,
                    #00a6b8
                );

            box-shadow:
                0 30px 70px rgba(0,80,110,.2);
        }

        .newsletter::before {
            content: "";
            position: absolute;

            width: 250px;
            height: 250px;

            left: -100px;
            bottom: -150px;

            border-radius: 50%;
            background: rgba(255,255,255,.08);
        }

        .newsletter h2 {
            position: relative;
            font-family: Poppins, sans-serif;
            margin-bottom: 7px;
        }

        .newsletter p {
            position: relative;
            color: rgba(255,255,255,.78);
            margin-bottom: 20px;
        }

        .newsletter-form {
            position: relative;

            display: flex;
            justify-content: center;
            gap: 8px;

            max-width: 520px;
            margin: auto;
        }

        .newsletter-form input {
            flex: 1;

            min-width: 0;

            padding: 13px 16px;

            border: none;
            outline: none;
            border-radius: 999px;

            color: var(--text);
        }

        .newsletter-message {
            position: relative;
            margin-top: 12px;
            font-size: 13px;
        }

        /* =========================
           FOOTER
        ========================= */

        footer {
            margin-top: 20px;
            padding: 50px 0 25px;

            background:
                linear-gradient(
                    180deg,
                    #032f3f,
                    #021e2b
                );

            color: white;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 1.5fr 1fr 1fr 1fr;
            gap: 35px;
        }

        .footer-brand {
            font-family: Poppins, sans-serif;
            font-size: 20px;
            margin-bottom: 10px;
        }

        .footer-text {
            max-width: 330px;
            color: rgba(255,255,255,.58);
            font-size: 13px;
        }

        .footer h4 {
            margin-bottom: 12px;
        }

        .footer-links {
            display: grid;
            gap: 8px;
        }

        .footer-links a {
            color: rgba(255,255,255,.6);
            font-size: 13px;
            transition: .2s ease;
        }

        .footer-links a:hover {
            color: var(--sky);
        }

        .socials {
            display: flex;
            gap: 8px;
            margin-top: 18px;
        }

        .socials a {
            width: 37px;
            height: 37px;

            display: grid;
            place-items: center;

            border-radius: 10px;

            background: rgba(255,255,255,.08);
            color: white;

            transition: .2s ease;
        }

        .socials a:hover {
            background: var(--ocean);
            transform: translateY(-3px);
        }

        .copyright {
            margin-top: 35px;
            padding-top: 20px;

            text-align: center;

            border-top: 1px solid rgba(255,255,255,.08);

            color: rgba(255,255,255,.4);
            font-size: 11px;
        }

        /* =========================
           MOBILE MENU
        ========================= */

        .mobile-menu {
            display: none;

            padding: 15px 20px;

            background: rgba(255,255,255,.94);
            backdrop-filter: blur(15px);

            border-top: 1px solid rgba(0,80,110,.08);
        }

        .mobile-menu.open {
            display: block;
        }

        .mobile-menu a {
            display: flex;
            align-items: center;
            gap: 10px;

            padding: 11px 5px;

            border-bottom: 1px solid rgba(0,80,110,.06);

            font-size: 14px;
            font-weight: 600;
        }

        /* =========================
           TOAST
        ========================= */

        .toast {
            position: fixed;
            right: 20px;
            bottom: 20px;

            z-index: 9999;

            display: flex;
            align-items: center;
            gap: 10px;

            padding: 13px 17px;

            color: white;

            background:
                linear-gradient(
                    135deg,
                    var(--ocean-dark),
                    var(--ocean)
                );

            border-radius: 12px;

            box-shadow:
                0 15px 35px rgba(0,60,90,.25);

            transform: translateY(120px);
            opacity: 0;

            transition: .3s ease;

            font-size: 13px;
            font-weight: 600;
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        /* =========================
           RESPONSIVE
        ========================= */

        @media (max-width: 1100px) {
            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(3, 1fr);
            }

            .search {
                width: 190px;
            }
        }

        @media (max-width: 900px) {
            .main-nav {
                display: none;
            }

            .mobile-toggle {
                display: block;
            }

            .header-inner {
                gap: 12px;
            }

            .header-left {
                display: flex;
                align-items: center;
                gap: 10px;
            }

            .search {
                width: 200px;
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .deal {
                flex-direction: column;
            }

            .deal-image {
                width: 100%;
                height: 270px;
                min-height: 0;
            }

            .deal-content {
                padding: 30px;
            }

            .testimonials {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 600px) {
            .container {
                padding: 0 15px;
            }

            .header-inner {
                min-height: 68px;
            }

            .brand {
                font-size: 17px;
            }

            .brand-logo {
                width: 36px;
                height: 36px;
            }

            .search {
                display: none;
            }

            .header-actions {
                gap: 4px;
            }

            .icon-btn {
                width: 36px;
                height: 36px;
            }

            .hero {
                min-height: 520px;
                border-radius: 0 0 25px 25px;
            }

            .hero h1 {
                letter-spacing: -1px;
            }

            .hero p {
                font-size: 14px;
            }

            .section {
                padding: 50px 0;
            }

            .title h2 {
                font-size: 25px;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
                gap: 12px;
            }

            .cat-card {
                padding: 18px 10px;
            }

            .products {
                grid-template-columns: 1fr;
            }

            .product-image {
                height: 240px;
            }

            .deal-content h2 {
                font-size: 27px;
            }

            .deal-content {
                padding: 25px 20px;
            }

            .newsletter-form {
                flex-direction: column;
            }

            .newsletter-form .btn {
                width: 100%;
            }

            .footer-grid {
                grid-template-columns: 1fr;
                gap: 25px;
            }
        }
    </style>
</head>

<body>

    <!-- ================= HEADER ================= -->

    <header>
        <div class="container header-inner">

            <div class="header-left">
                <button
                    class="mobile-toggle"
                    id="mobileToggle"
                    aria-label="Open menu"
                >
                    <i class="fas fa-bars"></i>
                </button>

                <a href="#" class="brand">
                    <span class="brand-logo">
                        <i class="fas fa-water"></i>
                    </span>

                    <span>
                        Nexus<span class="accent">Shop</span>
                    </span>
                </a>
            </div>

            <nav class="main-nav">
                <ul>
                    <li>
                        <a href="#">
                            <i class="fas fa-home"></i>
                            Home
                        </a>
                    </li>

                    <li>
                        <a href="#categories">
                            <i class="fas fa-layer-group"></i>
                            Categories
                        </a>
                    </li>

                    <li>
                        <a href="#products">
                            <i class="fas fa-fire"></i>
                            Trending
                        </a>
                    </li>

                    <li>
                        <a href="#deals">
                            <i class="fas fa-bolt"></i>
                            Deals
                        </a>
                    </li>

                    <li>
                        <a href="#about">
                            <i class="fas fa-circle-info"></i>
                            About
                        </a>
                    </li>
                </ul>
            </nav>

            <div class="header-right">

                <div class="search">
                    <i class="fas fa-search"></i>

                    <input
                        type="search"
                        id="searchInput"
                        placeholder="Search products..."
                        aria-label="Search products"
                    >
                </div>

                <button
                    class="icon-btn"
                    title="Account"
                    aria-label="Account"
                >
                    <i class="far fa-user"></i>
                </button>

                <button
                    class="icon-btn"
                    title="Wishlist"
                    aria-label="Wishlist"
                >
                    <i class="far fa-heart"></i>
                </button>

                <button
                    class="icon-btn cart"
                    id="cartBtn"
                    title="Shopping cart"
                    aria-label="Shopping cart"
                >
                    <i class="fas fa-shopping-bag"></i>
                    <span
                        class="cart-count"
                        id="cartCount"
                    >0</span>
                </button>

            </div>
        </div>

        <!-- Mobile Navigation -->

        <div
            class="mobile-menu"
            id="mobileMenu"
        >
            <a href="#">
                <i class="fas fa-home"></i>
                Home
            </a>

            <a href="#categories">
                <i class="fas fa-layer-group"></i>
                Categories
            </a>

            <a href="#products">
                <i class="fas fa-fire"></i>
                Trending
            </a>

            <a href="#deals">
                <i class="fas fa-bolt"></i>
                Deals
            </a>

            <a href="#about">
                <i class="fas fa-circle-info"></i>
                About
            </a>
        </div>
    </header>


    <main>

        <!-- ================= HERO ================= -->

        <section class="hero">

            <div class="container hero-content">

                <div class="hero-badge">
                    <i class="fas fa-water"></i>
                    Ocean Collection 2026
                </div>

                <h1>
                    Dive Into
                    <span>Premium Shopping</span>
                </h1>

                <p>
                    Discover the latest fashion, technology,
                    accessories and lifestyle products —
                    carefully selected for your next adventure.
                </p>

                <div class="hero-actions">

                    <button
                        class="btn btn-primary"
                        id="shopNow"
                    >
                        Shop Collection
                        <i class="fas fa-arrow-right"></i>
                    </button>

                    <button
                        class="btn btn-outline"
                        id="exploreDeals"
                    >
                        Explore Flash Sale
                    </button>

                </div>

            </div>

        </section>


        <!-- ================= CATEGORIES ================= -->

        <section
            class="section container"
            id="categories"
        >

            <div class="title">

                <div class="eyebrow">
                    Explore
                </div>

                <h2>
                    Shop by Category
                </h2>

                <p class="muted">
                    Find everything you need in our curated ocean-inspired marketplace.
                </p>

            </div>

            <div
                class="categories"
                id="categoriesGrid"
            ></div>

        </section>


        <!-- ================= PRODUCTS ================= -->

        <section
            class="section container"
            id="products"
        >

            <div class="title">

                <div class="eyebrow">
                    Best Sellers
                </div>

                <h2>
                    Trending Products
                </h2>

                <p class="muted">
                    Popular products loved by our customers.
                </p>

            </div>

            <div
                class="products"
                id="productsGrid"
            ></div>

        </section>


        <!-- ================= DEAL ================= -->

        <section
            class="section container"
            id="deals"
        >

            <div class="title">

                <div class="eyebrow">
                    Limited Time
                </div>

                <h2>
                    Flash Sale
                </h2>

                <p class="muted">
                    Dive into incredible prices before the tide goes out.
                </p>

            </div>

            <div class="deal">

                <img
                    class="deal-image"
                    src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85"
                    alt="MacBook Air"
                >

                <div class="deal-content">

                    <div class="eyebrow">
                        Today's Ocean Deal
                    </div>

                    <h2>
                        MacBook Air M2
                    </h2>

                    <p class="deal-description">
                        Thin, lightweight and powerful.
                        Experience exceptional performance
                        wherever your journey takes you.
                    </p>

                    <div class="timer">

                        <div class="time-box">
                            <strong id="dealDays">00</strong>
                            <span>Days</span>
                        </div>

                        <div class="time-box">
                            <strong id="dealHours">00</strong>
                            <span>Hours</span>
                        </div>

                        <div class="time-box">
                            <strong id="dealMinutes">00</strong>
                            <span>Minutes</span>
                        </div>

                        <div class="time-box">
                            <strong id="dealSeconds">00</strong>
                            <span>Seconds</span>
                        </div>

                    </div>

                    <div class="deal-price">

                        <strong>
                            $999
                        </strong>

                        <span class="old-price">
                            $1,199
                        </span>

                        <span class="discount">
                            -17%
                        </span>

                    </div>

                    <p style="margin-bottom:18px;">
                        <i class="fas fa-fire"></i>
                        Only <strong>12</strong> items left!
                    </p>

                    <button
                        class="btn btn-primary"
                        id="buyDeal"
                    >
                        Buy Deal
                        <i class="fas fa-shopping-cart"></i>
                    </button>

                </div>

            </div>

        </section>


        <!-- ================= TESTIMONIALS ================= -->

        <section
            class="section container"
            id="about"
        >

            <div class="title">

                <div class="eyebrow">
                    Customer Stories
                </div>

                <h2>
                    What Our Customers Say
                </h2>

                <p class="muted">
                    Real experiences from our shopping community.
                </p>

            </div>

            <div class="testimonials">

                <article class="testimonial">

                    <div class="testimonial-stars">
                        ★★★★★
                    </div>

                    <p>
                        "Fast shipping, beautiful packaging and
                        excellent customer support. The product
                        exceeded my expectations!"
                    </p>

                    <div class="customer">

                        <img
                            src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
                            alt="Ava Martin"
                        >

                        <div>
                            <strong>Ava Martin</strong>
                            <small>Verified buyer</small>
                        </div>

                    </div>

                </article>


                <article class="testimonial">

                    <div class="testimonial-stars">
                        ★★★★★
                    </div>

                    <p>
                        "The website is incredibly easy to use.
                        Great selection and checkout was smooth.
                        I'll definitely shop here again."
                    </p>

                    <div class="customer">

                        <img
                            src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                            alt="Michael Lee"
                        >

                        <div>
                            <strong>Michael Lee</strong>
                            <small>Frequent buyer</small>
                        </div>

                    </div>

                </article>


                <article class="testimonial">

                    <div class="testimonial-stars">
                        ★★★★★
                    </div>

                    <p>
                        "Amazing deals and premium products.
                        NexusShop has become one of my favorite
                        online shopping destinations."
                    </p>

                    <div class="customer">

                        <img
                            src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                            alt="Sophia Williams"
                        >

                        <div>
                            <strong>Sophia Williams</strong>
                            <small>Verified buyer</small>
                        </div>

                    </div>

                </article>

            </div>

        </section>


        <!-- ================= NEWSLETTER ================= -->

        <section class="section container">

            <div class="newsletter">

                <h2>
                    Stay in the Loop
                </h2>

                <p>
                    Get exclusive ocean deals, new arrivals
                    and member-only offers.
                </p>

                <form
                    class="newsletter-form"
                    id="newsletterForm"
                >

                    <input
                        id="newsletterEmail"
                        type="email"
                        placeholder="Enter your email address"
                        aria-label="Email address"
                        required
                    >

                    <button
                        type="submit"
                        class="btn btn-primary"
                    >
                        Subscribe
                        <i class="fas fa-paper-plane"></i>
                    </button>

                </form>

                <div
                    class="newsletter-message"
                    id="newsletterMsg"
                ></div>

            </div>

        </section>

    </main>


    <!-- ================= FOOTER ================= -->

    <footer>

        <div class="container footer-grid">

            <div>

                <div class="footer-brand">
                    <i class="fas fa-water"></i>
                    NexusShop
                </div>

                <p class="footer-text">
                    A modern ocean-inspired e-commerce
                    experience built for today's shoppers.
                </p>

                <div class="socials">

                    <a href="#" aria-label="Facebook">
                        <i class="fab fa-facebook-f"></i>
                    </a>

                    <a href="#" aria-label="Instagram">
                        <i class="fab fa-instagram"></i>
                    </a>

                    <a href="#" aria-label="Twitter">
                        <i class="fab fa-x-twitter"></i>
                    </a>

                    <a href="#" aria-label="YouTube">
                        <i class="fab fa-youtube"></i>
                    </a>

                </div>

            </div>


            <div>

                <h4>Shop</h4>

                <div class="footer-links">
                    <a href="#products">Trending Products</a>
                    <a href="#categories">Categories</a>
                    <a href="#deals">Flash Deals</a>
                    <a href="#">New Arrivals</a>
                </div>

            </div>


            <div>

                <h4>Company</h4>

                <div class="footer-links">
                    <a href="#about">About Us</a>
                    <a href="#">Careers</a>
                    <a href="#">Our Story</a>
                    <a href="#">Press</a>
                </div>

            </div>


            <div>

                <h4>Support</h4>

                <div class="footer-links">
                    <a href="#">Help Center</a>
                    <a href="#">Shipping</a>
                    <a href="#">Returns</a>
                    <a href="#">Contact Us</a>
                </div>

            </div>

        </div>


        <div class="container copyright">
            © <span id="year"></span> NexusShop.
            All rights reserved.
        </div>

    </footer>


    <!-- Toast -->

    <div
        class="toast"
        id="toast"
    >
        <i class="fas fa-circle-check"></i>
        <span id="toastMessage">
            Added to cart
        </span>
    </div>


    <script>

        /* =========================
           PRODUCT DATA
        ========================= */

        const CATEGORIES = [
            {
                id: "phones",
                name: "Smartphones",
                icon: "fa-mobile-screen-button"
            },
            {
                id: "laptops",
                name: "Laptops",
                icon: "fa-laptop"
            },
            {
                id: "clothing",
                name: "Clothing",
                icon: "fa-shirt"
            },
            {
                id: "gadgets",
                name: "Gadgets",
                icon: "fa-headphones"
            },
            {
                id: "footwear",
                name: "Footwear",
                icon: "fa-shoe-prints"
            },
            {
                id: "accessories",
                name: "Accessories",
                icon: "fa-watch"
            }
        ];


        const PRODUCTS = [
            {
                id: 1,
                title: "iPhone 14 Pro Max",
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: "New",
                category: "phones",
                image: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 2,
                title: 'MacBook Pro 14"',
                price: 1999,
                rating: 5,
                reviews: 86,
                category: "laptops",
                image: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 3,
                title: "Apple Watch Series 8",
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: "-25%",
                category: "accessories",
                image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 4,
                title: "Nike Air Max 270",
                price: 150,
                rating: 4,
                reviews: 53,
                category: "footwear",
                image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 5,
                title: "Sony A7 IV Camera",
                price: 2499,
                rating: 5,
                reviews: 42,
                category: "gadgets",
                image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 6,
                title: "Premium Perfume",
                price: 120,
                rating: 5,
                reviews: 189,
                category: "accessories",
                image: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 7,
                title: "Travel Backpack",
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                category: "accessories",
                image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 8,
                title: "Sony WH-1000XM5",
                price: 399,
                rating: 5,
                reviews: 156,
                category: "gadgets",
                image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
            }
        ];


        /* =========================
           DOM
        ========================= */

        const categoriesGrid =
            document.getElementById("categoriesGrid");

        const productsGrid =
            document.getElementById("productsGrid");

        const searchInput =
            document.getElementById("searchInput");

        const cartCountEl =
            document.getElementById("cartCount");

        const toast =
            document.getElementById("toast");

        const toastMessage =
            document.getElementById("toastMessage");


        let cartCount = 0;


        /* =========================
           ESCAPE HTML
        ========================= */

        function escapeHtml(text) {

            return String(text).replace(
                /[&<>"']/g,
                char => ({
                    "&": "&amp;",
                    "<": "&lt;",
                    ">": "&gt;",
                    '"': "&quot;",
                    "'": "&#39;"
                }[char])
            );
        }


        /* =========================
           TOAST
        ========================= */

        let toastTimer;

        function showToast(message) {

            toastMessage.textContent = message;

            toast.classList.add("show");

            clearTimeout(toastTimer);

            toastTimer = setTimeout(() => {
                toast.classList.remove("show");
            }, 2200);
        }


        /* =========================
           CATEGORIES
        ========================= */

        function renderCategories() {

            categoriesGrid.innerHTML = "";

            CATEGORIES.forEach(category => {

                const card =
                    document.createElement("div");

                card.className = "cat-card";

                card.innerHTML = `
                    <div class="cat-icon">
                        <i class="fas ${category.icon}"></i>
                    </div>

                    <h4>
                        ${escapeHtml(category.name)}
                    </h4>

                    <small>
                        Explore ${escapeHtml(category.name)}
                    </small>
                `;

                card.addEventListener("click", () => {

                    searchInput.value =
                        category.name;

                    filterProducts(
                        category.name
                    );

                    document
                        .getElementById("products")
                        .scrollIntoView({
                            behavior: "smooth"
                        });
                });

                categoriesGrid.appendChild(card);
            });
        }


        /* =========================
           PRODUCTS
        ========================= */

        function renderProducts(products) {

            productsGrid.innerHTML = "";

            if (!products.length) {

                productsGrid.innerHTML = `
                    <div class="empty-state">
                        <i class="fas fa-water"></i>
                        <h3>No products found</h3>
                        <p class="muted">
                            Try another search term.
                        </p>
                    </div>
                `;

                return;
            }


            products.forEach(product => {

                const article =
                    document.createElement("article");

                article.className = "product";

                const stars =
                    "★".repeat(
                        Math.round(product.rating)
                    );


                article.innerHTML = `

                    <div class="product-image">

                        ${
                            product.badge
                            ? `
                                <span class="product-badge">
                                    ${escapeHtml(product.badge)}
                                </span>
                            `
                            : ""
                        }

                        <button
                            class="wishlist"
                            aria-label="Add to wishlist"
                            data-wishlist="${product.id}"
                        >
                            <i class="far fa-heart"></i>
                        </button>

                        <img
                            src="${product.image}"
                            alt="${escapeHtml(product.title)}"
                            loading="lazy"
                        >

                    </div>


                    <div class="product-body">

                        <div class="product-category">
                            ${escapeHtml(product.category)}
                        </div>

                        <h3>
                            ${escapeHtml(product.title)}
                        </h3>

                        <div class="rating">
                            ${stars}
                            <span>
                                (${product.reviews})
                            </span>
                        </div>

                        <div class="price-row">

                            <div class="price">
                                $${product.price.toLocaleString()}

                                ${
                                    product.oldPrice
                                    ? `
                                        <span class="old-price">
                                            $${product.oldPrice.toLocaleString()}
                                        </span>
                                    `
                                    : ""
                                }
                            </div>

                        </div>

                    </div>


                    <div class="product-footer">

                        <button
                            class="add-btn"
                            data-id="${product.id}"
                        >
                            <i class="fas fa-cart-plus"></i>
                            Add to Cart
                        </button>

                    </div>
                `;


                productsGrid.appendChild(article);
            });


            /* Add to cart */

            productsGrid
                .querySelectorAll(".add-btn")
                .forEach(button => {

                    button.addEventListener(
                        "click",
                        () => {

                            const id =
                                Number(button.dataset.id);

                            addToCart(id, button);
                        }
                    );
                });


            /* Wishlist */

            productsGrid
                .querySelectorAll(".wishlist")
                .forEach(button => {

                    button.addEventListener(
                        "click",
                        () => {

                            button.classList.toggle(
                                "active"
                            );

                            const icon =
                                button.querySelector("i");

                            if (
                                button.classList.contains(
                                    "active"
                                )
                            ) {

                                icon.className =
                                    "fas fa-heart";

                                showToast(
                                    "Added to wishlist"
                                );

                            } else {

                                icon.className =
                                    "far fa-heart";

                                showToast(
                                    "Removed from wishlist"
                                );
                            }
                        }
                    );
                });
        }


        /* =========================
           CART
        ========================= */

        function addToCart(
            productId,
            button
        ) {

            const product =
                PRODUCTS.find(
                    item => item.id === productId
                );

            if (!product) return;

            cartCount++;

            cartCountEl.textContent =
                cartCount;

            const original =
                button.innerHTML;

            button.innerHTML = `
                <i class="fas fa-check"></i>
                Added
            `;

            button.disabled = true;

            showToast(
                `${product.title} added to cart`
            );

            setTimeout(() => {

                button.innerHTML =
                    original;

                button.disabled = false;

            }, 1400);
        }


        /* =========================
           SEARCH
        ========================= */

        function filterProducts(query) {

            const value =
                String(query || "")
                    .trim()
                    .toLowerCase();

            if (!value) {

                renderProducts(PRODUCTS);
                return;
            }

            const filtered =
                PRODUCTS.filter(product =>

                    product.title
                        .toLowerCase()
                        .includes(value)

                    ||

                    product.category
                        .toLowerCase()
                        .includes(value)
                );

            renderProducts(filtered);
        }


        searchInput.addEventListener(
            "input",
            event => {
                filterProducts(
                    event.target.value
                );
            }
        );


        /* =========================
           MOBILE MENU
        ========================= */

        const mobileToggle =
            document.getElementById(
                "mobileToggle"
            );

        const mobileMenu =
            document.getElementById(
                "mobileMenu"
            );


        mobileToggle.addEventListener(
            "click",
            () => {

                mobileMenu.classList.toggle(
                    "open"
                );

                const icon =
                    mobileToggle.querySelector("i");

                if (
                    mobileMenu.classList.contains(
                        "open"
                    )
                ) {

                    icon.className =
                        "fas fa-xmark";

                } else {

                    icon.className =
                        "fas fa-bars";
                }
            }
        );


        mobileMenu
            .querySelectorAll("a")
            .forEach(link => {

                link.addEventListener(
                    "click",
                    () => {

                        mobileMenu.classList.remove(
                            "open"
                        );

                        mobileToggle
                            .querySelector("i")
                            .className =
                            "fas fa-bars";
                    }
                );
            });


        /* =========================
           SHOP NOW
        ========================= */

        document
            .getElementById("shopNow")
            .addEventListener(
                "click",
                () => {

                    document
                        .getElementById("products")
                        .scrollIntoView({
                            behavior: "smooth"
                        });
                }
            );


        /* =========================
           DEAL BUTTON
        ========================= */

        document
            .getElementById("exploreDeals")
            .addEventListener(
                "click",
                () => {

                    document
                        .getElementById("deals")
                        .scrollIntoView({
                            behavior: "smooth"
                        });
                }
            );


        document
            .getElementById("buyDeal")
            .addEventListener(
                "click",
                () => {

                    cartCount++;

                    cartCountEl.textContent =
                        cartCount;

                    showToast(
                        "MacBook Air M2 added to cart"
                    );
                }
            );


        /* =========================
           CART BUTTON
        ========================= */

        document
            .getElementById("cartBtn")
            .addEventListener(
                "click",
                () => {

                    if (cartCount === 0) {

                        showToast(
                            "Your cart is empty"
                        );

                    } else {

                        showToast(
                            `You have ${cartCount} item(s) in your cart`
                        );
                    }
                }
            );


        /* =========================
           NEWSLETTER
        ========================= */

        document
            .getElementById("newsletterForm")
            .addEventListener(
                "submit",
                event => {

                    event.preventDefault();

                    const email =
                        document
                            .getElementById(
                                "newsletterEmail"
                            )
                            .value
                            .trim();

                    const message =
                        document.getElementById(
                            "newsletterMsg"
                        );


                    if (
                        !email ||
                        !/^[^\s@]+@[^\s@]+\.[^\s@]+$/
                            .test(email)
                    ) {

                        message.textContent =
                            "Please enter a valid email address.";

                        message.style.color =
                            "#ffb3c1";

                        return;
                    }


                    message.textContent =
                        "You're subscribed! Welcome to NexusShop.";

                    message.style.color =
                        "#a7fff5";


                    document
                        .getElementById(
                            "newsletterEmail"
                        )
                        .value = "";

                    showToast(
                        "Subscription successful"
                    );

                    setTimeout(() => {
                        message.textContent = "";
                    }, 4000);
                }
            );


        /* =========================
           COUNTDOWN
        ========================= */

        function setupCountdown() {

            const target =
                new Date(
                    Date.now()
                    +
                    (
                        24 * 60 * 60 * 1000
                    )
                    +
                    (
                        36 * 60 * 1000
                    )
                );


            function updateCountdown() {

                const difference =
                    target - Date.now();


                if (difference <= 0) {

                    document
                        .getElementById(
                            "dealDays"
                        )
                        .textContent = "00";

                    document
                        .getElementById(
                            "dealHours"
                        )
                        .textContent = "00";

                    document
                        .getElementById(
                            "dealMinutes"
                        )
                        .textContent = "00";

                    document
                        .getElementById(
                            "dealSeconds"
                        )
                        .textContent = "00";

                    return;
                }


                const days =
                    Math.floor(
                        difference /
                        (
                            1000 *
                            60 *
                            60 *
                            24
                        )
                    );


                const hours =
                    Math.floor(
                        (
                            difference %
                            (
                                1000 *
                                60 *
                                60 *
                                24
                            )
                        )
                        /
                        (
                            1000 *
                            60 *
                            60
                        )
                    );


                const minutes =
                    Math.floor(
                        (
                            difference %
                            (
                                1000 *
                                60 *
                                60
                            )
                        )
                        /
                        (
                            1000 *
                            60
                        )
                    );


                const seconds =
                    Math.floor(
                        (
                            difference %
                            (
                                1000 *
                                60
                            )
                        )
                        /
                        1000
                    );


                document
                    .getElementById(
                        "dealDays"
                    )
                    .textContent =
                    String(days).padStart(
                        2,
                        "0"
                    );


                document
                    .getElementById(
                        "dealHours"
                    )
                    .textContent =
                    String(hours).padStart(
                        2,
                        "0"
                    );


                document
                    .getElementById(
                        "dealMinutes"
                    )
                    .textContent =
                    String(minutes).padStart(
                        2,
                        "0"
                    );


                document
                    .getElementById(
                        "dealSeconds"
                    )
                    .textContent =
                    String(seconds).padStart(
                        2,
                        "0"
                    );
            }


            updateCountdown();

            setInterval(
                updateCountdown,
                1000
            );
        }


        /* =========================
           INITIALIZE
        ========================= */

        renderCategories();

        renderProducts(PRODUCTS);

        setupCountdown();

        document
            .getElementById("year")
            .textContent =
            new Date().getFullYear();

    </script>

</body>
</html>
