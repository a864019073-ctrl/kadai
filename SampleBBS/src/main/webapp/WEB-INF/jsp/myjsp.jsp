<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>シングルページ・ポートフォリオ</title>
    <style>
        /* --- ベーススタイル --- */
        :root {
            --primary-color: #2563eb; /* メインカラー（青） */
            --text-color: #333;       /* 文字色 */
            --bg-color: #f8fafc;      /* 背景色 */
            --white: #ffffff;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Helvetica Neue", Arial, "Hiragino Kaku Gothic ProN", "Hiragino Sans", Meiryo, sans-serif;
            line-height: 1.6;
            color: var(--text-color);
            background-color: var(--bg-color);
        }

        a { text-decoration: none; color: inherit; }
        ul { list-style: none; }

        /* --- ヘッダー --- */
        header {
            background: var(--white);
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1000px;
            margin: 0 auto;
            padding: 1rem 20px;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: bold;
            color: var(--primary-color);
        }

        .nav-links {
            display: flex;
            gap: 20px;
        }

        .nav-links a {
            transition: color 0.3s;
            font-weight: 500;
        }

        .nav-links a:hover {
            color: var(--primary-color);
        }

        /* ハンバーガーメニュー（スマホ用） */
        .hamburger {
            display: none;
            cursor: pointer;
            font-size: 1.5rem;
        }

        /* --- メインコンテンツ --- */
        main {
            padding-top: 80px; /* ヘッダーの分だけ下げる */
        }

        section {
            padding: 60px 20px;
            max-width: 1000px;
            margin: 0 auto;
        }

        h2 {
            text-align: center;
            margin-bottom: 40px;
            font-size: 2rem;
            color: var(--primary-color);
        }

        /* ヒーローセクション */
        .hero {
            text-align: center;
            padding: 100px 20px;
            background: linear-gradient(135deg, #e0e7ff 0%, #f8fafc 100%);
            border-radius: 0 0 50px 50px;
        }

        .hero h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .btn {
            display: inline-block;
            padding: 12px 30px;
            background-color: var(--primary-color);
            color: var(--white);
            border-radius: 30px;
            transition: background 0.3s;
        }

        .btn:hover {
            background-color: #1d4ed8;
        }

        /* サービス（カードグリッド） */
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
        }

        .card {
            background: var(--white);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.05);
            transition: transform 0.3s;
            text-align: center;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .icon-box {
            font-size: 2rem;
            margin-bottom: 15px;
            color: var(--primary-color);
        }

        /* お問い合わせフォーム */
        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
        }

        button[type="submit"] {
            width: 100%;
            border: none;
            cursor: pointer;
        }

        /* --- フッター --- */
        footer {
            background: #333;
            color: var(--white);
            text-align: center;
            padding: 20px;
            margin-top: 50px;
        }

        /* --- レスポンシブ対応 (スマホ) --- */
        @media (max-width: 768px) {
            .nav-links {
                display: none; /* 初期状態は隠す */
                flex-direction: column;
                position: absolute;
                top: 70px;
                right: 0;
                width: 100%;
                background: var(--white);
                text-align: center;
                padding: 20px 0;
                box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            }

            .nav-links.active {
                display: flex;
            }

            .nav-links li {
                margin: 15px 0;
            }

            .hamburger {
                display: block;
            }

            .hero h1 { font-size: 2rem; }
        }
    </style>
</head>
<body>

    <header>
        <nav>
            <div class="logo">MySite</div>
            <div class="hamburger" id="hamburger">☰</div>
            <ul class="nav-links" id="nav-links">
                <li><a href="#home">ホーム</a></li>
                <li><a href="#about">私について</a></li>
                <li><a href="#services">サービス</a></li>
                <li><a href="#contact">お問い合わせ</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section id="home" class="hero">
            <h1>Webの世界へようこそ</h1>
            <p>シンプルで美しい、シングルページのテンプレートです。<br>あなたのアイデアをここに表現しましょう。</p>
            <br>
            <a href="#contact" class="btn">お問い合わせはこちら</a>
        </section>

        <section id="about">
            <h2>私について</h2>
            <div style="text-align: center; max-width: 700px; margin: 0 auto;">
                <p>ここに自己紹介文が入ります。このテンプレートはHTMLファイル一枚だけで構成されており、サーバーにアップロードするだけで公開可能です。CSSでのデザイン調整やJavaScriptでの機能追加も簡単に行えます。</p>
            </div>
        </section>

        <section id="services">
            <h2>サービス</h2>
            <div class="grid">
                <div class="card">
                    <div class="icon-box">💻</div>
                    <h3>Web制作</h3>
                    <p>レスポンシブで見やすいWebサイトを制作します。</p>
                </div>
                <div class="card">
                    <div class="icon-box">🎨</div>
                    <h3>デザイン</h3>
                    <p>シンプルで飽きのこないUI