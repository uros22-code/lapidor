$jsonRaw = Get-Content "C:\Users\urosv\Desktop\LAPIDOR\assets\brosura_base64.json" -Raw -Encoding UTF8
$data = $jsonRaw | ConvertFrom-Json

function Get-ImgSrc {
  param([string]$key)
  return "assets/b_opt_$key.jpg"
}

$imgHero = Get-ImgSrc "hero"
$imgCraft = Get-ImgSrc "craft"
$imgQuarry = Get-ImgSrc "quarry"
$imgBathtub = Get-ImgSrc "bathtub"
$imgBathroom = Get-ImgSrc "bathroom"
$imgSink = Get-ImgSrc "sink"
$imgChiseled = Get-ImgSrc "chiseled"
$imgHotel = Get-ImgSrc "hotel"
$imgWellness = Get-ImgSrc "wellness"
$imgArt = Get-ImgSrc "art"
$imgSacred = Get-ImgSrc "sacred"
$imgFountain = Get-ImgSrc "fountain"

$imgReal1 = Get-ImgSrc "real1"
$imgReal2 = Get-ImgSrc "real2"
$imgReal3 = Get-ImgSrc "real3"
$imgReal4 = Get-ImgSrc "real4"
$imgReal5 = Get-ImgSrc "real5"
$imgReal6 = Get-ImgSrc "real6"
$imgReal7 = Get-ImgSrc "real7"
$imgReal8 = Get-ImgSrc "real8"
$imgReal9 = Get-ImgSrc "real9"

$logoPath = "assets/lapidor_logo_final_v6.png"

$html = @"
<!DOCTYPE html>
<html lang="sl">
<head>
 <!-- Google Tag (gtag.js) - Google Analytics -->
 <script async src="https://www.googletagmanager.com/gtag/js?id=G-S266DZPTPC"></script>
 <script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-S266DZPTPC');
 </script>

 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>Ekskluzivna Prestižna Brošura LAPIDOR | Naravni Vietnamski Marmor</title>
 <meta name="description" content="Uradna prestižna brošura blagovne znamke LAPIDOR. Odkrijte naravni vietnamski marmor, ročno obdelavo, bivalne prostore, wellness in umetnost v marmorju.">
 <meta name="author" content="PROMOSCENTIA d.o.o.">
 <meta name="robots" content="index, follow">
 <link rel="canonical" href="https://lapidor.si/brosura.html">

 <!-- Favicon -->
 <link rel="icon" type="image/png" href="$logoPath">

 <!-- Fonts -->
 <link rel="preconnect" href="https://fonts.googleapis.com">
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
 <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,500;0,600;0,700;1,400&family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">

 <!-- FontAwesome Icons -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

 <!-- Custom CSS -->
 <link rel="stylesheet" href="style.css">

 <style>
  /* Dedicated Hybrid Brochure Styling with Embedded Assets */
  .b-page {
   background: #faf8f5;
   color: var(--text-main);
  }

  .b-cover {
   background: var(--bg-dark-accent);
   color: #ffffff;
   padding: 70px 20px 60px;
   text-align: center;
   position: relative;
   border-bottom: 3px solid var(--gold-primary);
  }

  .b-cover-logo {
   max-width: 220px;
   height: auto;
   margin: 0 auto 20px;
   filter: drop-shadow(0 4px 12px rgba(0,0,0,0.5));
  }

  .b-cover-hero-img {
   width: 100%;
   max-width: 920px;
   height: 380px;
   object-fit: cover;
   border-radius: var(--radius-sm);
   border: 1px solid var(--border-gold);
   box-shadow: 0 12px 36px rgba(0,0,0,0.4);
   margin: 28px auto;
   display: block;
  }

  .b-cover-subtitle {
   color: var(--gold-primary);
   font-family: var(--font-serif);
   font-size: 1.4rem;
   letter-spacing: 0.12em;
   text-transform: uppercase;
   margin-bottom: 8px;
  }

  .b-cover-title {
   font-size: clamp(2.2rem, 4.5vw, 3.5rem);
   color: #ffffff;
   font-weight: 700;
   line-height: 1.15;
   margin-bottom: 14px;
   letter-spacing: 0.05em;
  }

  .b-cover-slogan {
   font-family: var(--font-serif);
   font-style: italic;
   font-size: 1.3rem;
   color: rgba(255, 255, 255, 0.9);
   max-width: 700px;
   margin: 0 auto 28px;
  }

  .b-section:nth-child(even) {
   background-color: #ffffff;
  }

  .b-card {
   background: #ffffff;
   border: 1px solid var(--border-gold);
   border-radius: var(--radius-sm);
   padding: 36px;
   box-shadow: 0 8px 28px rgba(0, 0, 0, 0.04);
   margin-top: 24px;
  }

  .b-grid-2 {
   display: grid;
   grid-template-columns: repeat(2, 1fr);
   gap: 28px;
   align-items: center;
  }

  .b-img-box {
   border-radius: var(--radius-sm);
   overflow: hidden;
   border: 1px solid var(--border-gold);
   box-shadow: 0 8px 24px rgba(0,0,0,0.08);
   height: 300px;
   background: #f6f3ee;
  }

  .b-img-box img {
   width: 100%;
   height: 100%;
   object-fit: cover;
   transition: transform 0.5s ease;
  }

  .b-img-box:hover img {
   transform: scale(1.04);
  }

  .b-quote-box {
   background: rgba(184, 139, 42, 0.07);
   border-left: 4px solid var(--gold-primary);
   padding: 24px 28px;
   margin: 24px 0;
   border-radius: 0 var(--radius-sm) var(--radius-sm) 0;
  }

  .b-quote-text {
   font-family: var(--font-serif);
   font-size: 1.3rem;
   font-style: italic;
   color: var(--text-main);
   line-height: 1.6;
  }

  .b-stat-box {
   display: grid;
   grid-template-columns: repeat(4, 1fr);
   gap: 16px;
   margin-top: 28px;
  }

  .b-stat-card {
   background: #ffffff;
   border: 1px solid var(--border-gold);
   padding: 24px 16px;
   text-align: center;
   border-radius: var(--radius-sm);
  }

  .b-stat-num {
   font-family: var(--font-serif);
   font-size: 2.5rem;
   color: var(--gold-primary);
   font-weight: 700;
   line-height: 1;
   margin-bottom: 6px;
  }

  .b-stat-label {
   font-size: 0.8rem;
   font-weight: 700;
   letter-spacing: 0.08em;
   text-transform: uppercase;
   color: var(--text-main);
   margin-bottom: 4px;
  }

  .b-stat-desc {
   font-size: 0.8rem;
   color: var(--text-muted);
   line-height: 1.4;
  }

  .b-table {
   width: 100%;
   border-collapse: collapse;
   margin-top: 20px;
   font-size: 0.9rem;
  }

  .b-table th, .b-table td {
   padding: 14px 16px;
   border: 1px solid rgba(184, 139, 42, 0.3);
   text-align: left;
  }

  .b-table th {
   background: var(--bg-dark-accent);
   color: #ffffff;
   font-family: var(--font-serif);
   font-size: 1.1rem;
  }

  .b-table tr:nth-child(even) td {
   background: rgba(184, 139, 42, 0.04);
  }

    .b-link-badge {
   display: inline-flex;
   align-items: center;
   gap: 8px;
   padding: 8px 16px;
   background: rgba(184, 139, 42, 0.1);
   border: 1px solid var(--gold-primary);
   color: var(--gold-primary);
   border-radius: 20px;
   font-weight: 600;
   font-size: 0.88rem;
   text-decoration: none;
   transition: all 0.3s ease;
   margin-top: 16px;
  }

  .b-link-badge:hover {
   background: var(--gold-primary);
   color: #ffffff;
   transform: translateY(-2px);
  }

  .b-cat-grid {
   display: grid;
   grid-template-columns: repeat(2, 1fr);
   gap: 24px;
   margin-top: 28px;
  }

  .b-cat-card {
   background: #ffffff;
   border: 1px solid var(--border-gold);
   border-radius: var(--radius-sm);
   overflow: hidden;
   box-shadow: 0 6px 20px rgba(0,0,0,0.04);
  }

  .b-cat-img-wrapper {
   height: 240px;
   width: 100%;
   overflow: hidden;
   background: #f6f3ee;
  }

  .b-cat-img-wrapper img {
   width: 100%;
   height: 100%;
   object-fit: cover;
   transition: transform 0.5s ease;
  }

  .b-cat-card:hover .b-cat-img-wrapper img {
   transform: scale(1.05);
  }

  .b-cat-body {
   padding: 24px;
  }

  /* Real Brochure Photo Gallery */
  .b-gallery-grid {
   display: grid;
   grid-template-columns: repeat(3, 1fr);
   gap: 20px;
   margin-top: 28px;
  }

  .b-gallery-card {
   background: #ffffff;
   border: 1px solid var(--border-gold);
   border-radius: var(--radius-sm);
   overflow: hidden;
   box-shadow: 0 6px 18px rgba(0,0,0,0.05);
   transition: transform 0.3s ease, box-shadow 0.3s ease;
  }

  .b-gallery-card:hover {
   transform: translateY(-4px);
   box-shadow: 0 12px 28px rgba(184, 139, 42, 0.15);
  }

  .b-gallery-img-box {
   height: 260px;
   width: 100%;
   overflow: hidden;
   background: #f6f3ee;
  }

  .b-gallery-img-box img {
   width: 100%;
   height: 100%;
   object-fit: cover;
   transition: transform 0.5s ease;
  }

  .b-gallery-card:hover .b-gallery-img-box img {
   transform: scale(1.06);
  }

  .b-gallery-caption {
   padding: 16px;
   text-align: center;
   font-size: 0.9rem;
   font-weight: 600;
   color: var(--text-main);
   border-top: 1px solid rgba(184, 139, 42, 0.15);
   background: #faf8f5;
  }

  /* Print & PDF Page Optimization Rules */
  @media print {
   @page {
    size: A4 portrait;
    margin: 1.2cm 1cm;
   }
   .top-bar, .main-header, .floating-contact-widget, .b-actions, .main-footer, .toast {
    display: none !important;
   }
   body, .b-page {
    background: #ffffff !important;
    color: #000000 !important;
    -webkit-print-color-adjust: exact !important;
    print-color-adjust: exact !important;
   }
   .b-cover {
    background: #121417 !important;
    color: #ffffff !important;
    -webkit-print-color-adjust: exact !important;
    print-color-adjust: exact !important;
    padding: 50px 20px !important;
    page-break-after: always;
    break-after: page;
   }
   .b-cover-hero-img {
    height: 280px !important;
    max-width: 100% !important;
   }
   .b-section {
    padding: 30px 0 !important;
    page-break-inside: avoid;
    break-inside: avoid;
    border-bottom: 1px solid rgba(184, 139, 42, 0.2) !important;
   }
   .b-card, .b-cat-card, .b-gallery-card {
    padding: 20px !important;
    box-shadow: none !important;
    border: 1px solid #d4af37 !important;
    page-break-inside: avoid;
    break-inside: avoid;
   }
   .b-img-box {
    height: 200px !important;
   }
   .b-cat-img-wrapper {
    height: 190px !important;
   }
   .b-gallery-img-box {
    height: 190px !important;
   }
   .b-gallery-grid {
    grid-template-columns: repeat(3, 1fr) !important;
    gap: 16px !important;
   }
   .b-cat-grid {
    grid-template-columns: repeat(2, 1fr) !important;
    gap: 20px !important;
   }
   a {
    text-decoration: none !important;
    color: #b88b2a !important;
   }
  }

  @media (max-width: 992px) {
   .b-gallery-grid {
    grid-template-columns: repeat(2, 1fr);
   }
  }

  @media (max-width: 768px) {
   .b-card {
    padding: 24px 18px;
   }
   .b-grid-2, .b-cat-grid, .b-stat-box, .b-gallery-grid {
    grid-template-columns: 1fr;
    gap: 16px;
   }
   .b-img-box, .b-cat-img-wrapper, .b-gallery-img-box {
    height: 220px;
   }
  }
 </style>
</head>
<body class="b-page">

 <!-- Top Announcement Bar -->
 <div class="top-bar">
  <div class="container top-bar-content">
   <span><i class="fa-solid fa-gem text-gold"></i> <span data-i18n="top_announcement">Ročno izdelani unikatni izdelki iz naravnega vietnamskega marmorja.</span></span>
   <div class="top-bar-right">
    <a href="https://lapidor.si/#vzorci" class="top-link"><i class="fa-solid fa-paper-plane text-gold"></i> <span data-i18n="top_inquiry">POŠLJI POVPRAŠEVANJE</span></a>
    <span class="divider">|</span>
    <a href="tel:+38631529003" class="top-link"><i class="fa-solid fa-phone text-gold"></i> +386 (0)31 529 003</a>
    <span class="divider">|</span>
    <div class="lang-switcher">
     <button type="button" class="lang-btn active" data-lang-btn="sl">SL</button>
     <span class="lang-divider">|</span>
     <button type="button" class="lang-btn" data-lang-btn="en">EN</button>
     <span class="lang-divider">|</span>
     <button type="button" class="lang-btn" data-lang-btn="hr">CRO</button>
     <span class="lang-divider">|</span>
     <button type="button" class="lang-btn" data-lang-btn="el">GR</button>
    </div>
   </div>
  </div>
 </div>

 <!-- Header / Navigation -->
 <header class="main-header" id="header">
  <div class="container header-container">
   <a href="https://lapidor.si/" class="brand-logo">
    <img src="$logoPath" alt="LAPIDOR Logo" class="header-logo-img">
   </a>

   <nav class="main-nav" id="main-nav">
    <ul>
     <li><a href="https://lapidor.si/#domov" class="nav-link" data-i18n="nav_home">DOMOV</a></li>
     <li><a href="https://lapidor.si/#nasazgodba" class="nav-link" data-i18n="nav_story">NAŠA ZGODBA</a></li>
     <li><a href="https://lapidor.si/#nasiizdelki" class="nav-link" data-i18n="nav_products">NAŠI IZDELKI</a></li>
     <li><a href="https://lapidor.si/#kontakt" class="nav-link" data-i18n="nav_contact">KONTAKT</a></li>
     <li><a href="brosura.html" class="nav-link active" data-i18n="nav_brochure">BROŠURA</a></li>
    </ul>
   </nav>

   <button class="mobile-toggle" id="mobile-toggle" aria-label="Odpri meni">
    <i class="fa-solid fa-bars"></i>
   </button>
  </div>
 </header>

 <!-- COVER SECTION -->
 <section class="b-cover">
  <div class="container">
   <a href="https://lapidor.si/">
    <img src="$logoPath" alt="LAPIDOR Logo" class="b-cover-logo">
   </a>
   <div class="b-cover-subtitle" data-i18n="brochure_cover_sub">EKSKLUZIVNA PRESTIŽNA BROŠURA</div>
   <h1 class="b-cover-title" data-i18n="brochure_cover_title">BREZČASNA ELEGANCA<br>NARAVNEGA MARMORJA</h1>
   
   <a href="https://lapidor.si/">
    <img src="$imgHero" alt="LAPIDOR Masivna Marmorna Kad in Ambient" class="b-cover-hero-img">
   </a>

   <p class="b-cover-slogan" data-i18n="brochure_cover_quote">"Narava ustvarja edinstvenost. Mi jo pomagamo izraziti."</p>

   <div class="b-actions">
    <a href="assets/LAPIDOR_Ekskluzivna_Brosura.pdf" download class="btn btn-gold" data-i18n="btn_download_pdf">
     <i class="fa-solid fa-file-pdf"></i> PRENESI BROŠURO (PDF)
    </a>
    <button type="button" onclick="window.print()" class="btn btn-outline-gold" style="color: #ffffff; border-color: #ffffff;" data-i18n="btn_print_brochure">
     <i class="fa-solid fa-print"></i> NATISNI BROŠURO
    </button>
    <a href="https://lapidor.si/#vzorci" class="btn btn-gold" data-i18n="top_inquiry">
     <i class="fa-solid fa-paper-plane"></i> POŠLJI POVPRAŠEVANJE
    </a>
   </div>
  </div>
 </section>

 <!-- SECTION 1: BRAND STATEMENT & STORY -->
 <section class="b-section">
  <div class="container">
   <div style="text-align: center; margin-bottom: 28px;">
    <span class="section-tag" style="display: block; text-align: center; margin-bottom: 8px;" data-i18n="about_tag">NAŠA ZGODBA</span>
    <h2 class="section-title" style="text-align: center; text-transform: uppercase;" data-i18n="about_title">UMETNOST ROČNEGA DELA</h2>
    <div class="gold-underline" style="margin: 14px auto 0;"></div>
   </div>

   <div class="b-card">
    <div class="b-grid-2">
     <div>
      <p class="lead-text" data-i18n="about_p1">
       Blagovna znamka <strong>LAPIDOR</strong> se je rodila iz osebnega potovanja po Vietnamu, kjer nas je prevzela izjemna lepota naravnega marmorja in mojstrstvo tamkajšnjih kamnosekov. Ob opazovanju njihovega dela smo spoznali, da pravi luksuz ne nastaja na proizvodnem traku, temveč v rokah ljudi, ki z znanjem in spoštovanjem ustvarjajo brezčasne mojstrovine.
      </p>
      <p style="margin-top: 14px;" data-i18n="about_p3">
       Ime naše blagovne znamke <strong>LAPIDOR</strong> izhaja iz latinske besede <em>lapis</em> – kamen. Iz masivnih blokov nastajajo unikatni kosi, ki nosijo edinstven podpis narave in človeških rok.
      </p>
      
      <a href="https://lapidor.si/#nasazgodba" class="b-link-badge" target="_blank" data-i18n="b_link_read_more">
       <i class="fa-solid fa-arrow-up-right-from-square"></i> Preberite več na spletni strani (lapidor.si/#nasazgodba)
      </a>
     </div>

     <div class="b-img-box">
      <a href="https://lapidor.si/#nasazgodba" target="_blank">
       <img src="$imgCraft" alt="Ročno klesanje marmorja z dletom in kladivom">
      </a>
     </div>
    </div>

    <div class="b-quote-box">
     <div class="b-quote-text" data-i18n="brand_statement_quote">
      "Vsak LAPIDOR izdelek je edinstveno ročno delo vietnamskih mojstrov in izraz narave. Njegova brezčasna vrednost ne temelji le na lepoti naravnega marmorja, temveč tudi na mojstrski ročni izdelavi, zaradi katere z leti izdelek ne izgublja svoje vrednosti – temveč jo pridobiva."
     </div>
    </div>

    <!-- 4 Stat Cards -->
    <div class="b-stat-box">
     <div class="b-stat-card">
      <div class="b-stat-num">7+</div>
      <div class="b-stat-label" data-i18n="stat_1_label">BARVNI ODTENKI</div>
      <div class="b-stat-desc" data-i18n="stat_1_desc">Od brezčasne bele do elegantnih sivih in toplih bež tonov.</div>
     </div>
     <div class="b-stat-card">
      <div class="b-stat-num">100%</div>
      <div class="b-stat-label" data-i18n="stat_2_label">ROČNO DELO</div>
      <div class="b-stat-desc" data-i18n="stat_2_desc">Brez serijske proizvodnje. Vsak izdelek je unikat.</div>
     </div>
     <div class="b-stat-card">
      <div class="b-stat-num"><i class="fa-solid fa-compass-drafting"></i></div>
      <div class="b-stat-label" data-i18n="stat_3_label">PO VAŠI MERI</div>
      <div class="b-stat-desc" data-i18n="stat_3_desc">Vaša ideja, naša izvedba. Izdelava po CAD/3D načrtu.</div>
     </div>
     <div class="b-stat-card">
      <div class="b-stat-num">&infin;</div>
      <div class="b-stat-label" data-i18n="stat_4_label">BREZČASNOST</div>
      <div class="b-stat-desc" data-i18n="stat_4_desc">Marmor vrednost ohranja in jo z leti pridobiva.</div>
     </div>
    </div>
   </div>
  </div>
 </section>

 <!-- SECTION 2: PRIMERJALNA ANALIZA IN DELAVNICA -->
 <section class="b-section">
  <div class="container">
   <div style="text-align: center; margin-bottom: 28px;">
    <span class="section-tag" style="display: block; text-align: center; margin-bottom: 12px;" data-i18n="comp_tag">Primerjava ključnih lastnosti in dolgoročne vrednosti</span>
    <h2 class="section-title" style="text-align: center;" data-i18n="comp_title">Zakaj vietnamski marmor?</h2>
    <div class="gold-underline" style="margin: 14px auto 0;"></div>
   </div>

   <div class="b-card">
    <div class="b-grid-2" style="margin-bottom: 24px;">
     <div class="b-img-box">
      <a href="https://lapidor.si/#prednosti" target="_blank">
       <img src="$imgQuarry" alt="Nahajališče in ročna delavnica vietnamskega marmorja">
      </a>
     </div>
     <div class="b-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="$imgBathtub" alt="Masivna kopalna kad iz kristalnega marmorja">
      </a>
     </div>
    </div>

    <div style="overflow-x: auto;">
     <table class="b-table">
      <thead>
       <tr>
        <th data-i18n="th_criterion">Kriterij lastnosti</th>
        <th style="color: var(--gold-primary);" data-i18n="th_vietnam">LAPIDOR vietnamski marmor</th>
        <th data-i18n="th_europe">Evropski marmor (Carrara/Calacatta)</th>
        <th data-i18n="th_composite">Tehnični kamen &amp; keramika</th>
       </tr>
      </thead>
      <tbody>
       <tr>
        <td><strong data-i18n="row1_title">Čistost (CaCO₃)</strong></td>
        <td data-i18n="row1_vietnam"><i class="fa-solid fa-check text-gold"></i> Nad 99 % (Izjemen kristalni sijaj)</td>
        <td data-i18n="row1_europe">85 – 95 %</td>
        <td data-i18n="row1_composite">Umetne smole / keramika</td>
       </tr>
       <tr>
        <td><strong data-i18n="row2_title">Poroznost &amp; voda</strong></td>
        <td data-i18n="row2_vietnam"><i class="fa-solid fa-check text-gold"></i> Izjemno nizka (Idealno za SPA in kadi)</td>
        <td data-i18n="row2_europe">Srednja (Občutljiv na tekočine)</td>
        <td data-i18n="row2_composite">Ne-porozen (Vsebuje veziva)</td>
       </tr>
       <tr>
        <td><strong data-i18n="row3_title">Ročna Unikatnost</strong></td>
        <td data-i18n="row3_vietnam"><i class="fa-solid fa-check text-gold"></i> 100% Ročni unikat klesarskega mojstra</td>
        <td data-i18n="row3_europe">Delno mehanska obdelava</td>
        <td data-i18n="row3_composite">Industrijski ponavljajoči odtis</td>
       </tr>
       <tr>
        <td><strong data-i18n="row4_title">Okoljski Odtis</strong></td>
        <td data-i18n="row4_vietnam"><i class="fa-solid fa-check text-gold"></i> 100% Naraven mineral (Brez smol)</td>
        <td data-i18n="row4_europe">100% Naraven marmor</td>
        <td data-i18n="row4_composite">Sintetična polimerna veziva</td>
       </tr>
       <tr>
        <td><strong data-i18n="row5_title">Dolgoročna Vrednost</strong></td>
        <td data-i18n="row5_vietnam"><i class="fa-solid fa-check text-gold"></i> Z leti pridobiva patino in prestiž</td>
        <td data-i18n="row5_europe">Ohranja vrednost</td>
        <td data-i18n="row5_composite">Sčasoma zbledi / se obrabi</td>
       </tr>
      </tbody>
     </table>
    </div>

    <div style="text-align: right; margin-top: 16px;">
     <a href="https://lapidor.si/#prednosti" class="b-link-badge" target="_blank" data-i18n="b_link_comp">
      <i class="fa-solid fa-arrow-up-right-from-square"></i> Oglejte si primerjalno analizo na spletu (lapidor.si/#prednosti)
     </a>
    </div>
   </div>
  </div>
 </section>

 <!-- SECTION 3: 4 TIPOLOGIJE OBDELAVE Z REALNIMI SLIKAMI -->
 <section class="b-section">
  <div class="container">
   <div style="text-align: center; margin-bottom: 28px;">
    <span class="section-tag" style="display: block; text-align: center; margin-bottom: 8px;" data-i18n="finishes_tag">OBDELAVE POVRŠINE</span>
    <h2 class="section-title" style="text-align: center; text-transform: uppercase;" data-i18n="finish_title_sec">ŠTIRI TIPOLOGIJE OBDELAVE POVRŠINE</h2>
    <div class="gold-underline" style="margin: 14px auto 0;"></div>
   </div>

   <div class="b-cat-grid">
    <div class="b-cat-card">
     <div class="b-cat-img-wrapper">
      <a href="https://lapidor.si/#obdelava" target="_blank">
       <img src="$imgBathroom" alt="Polirana površina marmorja v kopalnici">
      </a>
     </div>
     <div class="b-cat-body">
      <h3 style="color: var(--gold-primary); font-size: 1.25rem;" data-i18n="finish_tab1_h">1. Polirana (Polished)</h3>
      <p style="font-size: 0.9rem; margin-top: 8px;" data-i18n="finish_tab1_s">
       Zrcalno gladka površina z visokim kristalnim sijajem, ki poudari globlje naravne vzorce in kristalno čistost.
      </p>
     </div>
    </div>

    <div class="b-cat-card">
     <div class="b-cat-img-wrapper">
      <a href="https://lapidor.si/#obdelava" target="_blank">
       <img src="$imgSink" alt="Brušena mat površina marmornega umivalnika">
      </a>
     </div>
     <div class="b-cat-body">
      <h3 style="color: var(--gold-primary); font-size: 1.25rem;" data-i18n="finish_tab2_h">2. Brušena mat (Honed)</h3>
      <p style="font-size: 0.9rem; margin-top: 8px;" data-i18n="finish_tab2_s">
       Svilnato matirana površina z mehkih otipom in brez močnih odsevov. Izjemno elegantna in praktična za uporabo.
      </p>
     </div>
    </div>

    <div class="b-cat-card">
     <div class="b-cat-img-wrapper">
      <a href="https://lapidor.si/#obdelava" target="_blank">
       <img src="$imgChiseled" alt="Ročno klesana tekstura marmorne skulpture">
      </a>
     </div>
     <div class="b-cat-body">
      <h3 style="color: var(--gold-primary); font-size: 1.25rem;" data-i18n="finish_tab3_h">3. Ročno klesana (Chiseled)</h3>
      <p style="font-size: 0.9rem; margin-top: 8px;" data-i18n="finish_tab3_s">
       Izrazita klesarska tekstura, ki poudari avtentičnost naravnega marmorja in pristno mojstrsko ročno obdelavo z dletom.
      </p>
     </div>
    </div>

    <div class="b-cat-card">
     <div class="b-cat-img-wrapper">
      <a href="https://lapidor.si/#obdelava" target="_blank">
       <img src="$imgHotel" alt="Krtačena Antique površina marmorne opreme">
      </a>
     </div>
     <div class="b-cat-body">
      <h3 style="color: var(--gold-primary); font-size: 1.25rem;" data-i18n="finish_tab4_h">4. Krtačena / Antique (Brushed)</h3>
      <p style="font-size: 0.9rem; margin-top: 8px;" data-i18n="finish_tab4_s">
       Nežno reliefna površina z vintage videzom, ki ohranja naravni značaj marmorja in zagotavlja prijeten otip.
      </p>
     </div>
    </div>
   </div>

   <div style="margin-top: 20px; text-align: center;">
    <a href="https://lapidor.si/#obdelava" class="b-link-badge" target="_blank" data-i18n="b_link_finishes">
     <i class="fa-solid fa-arrow-up-right-from-square"></i> Preizkusite obdelave interaktivno na spletu (lapidor.si/#obdelava)
    </a>
   </div>
  </div>
 </section>

 <!-- SECTION 4: PODROČJA UPORABE Z REALNIMI SLIKAMI -->
 <section class="b-section">
  <div class="container">
   <div style="text-align: center; margin-bottom: 28px;">
    <span class="section-tag" style="display: block; text-align: center; margin-bottom: 8px;" data-i18n="b_sec_apps_tag">PODROČJA UPORABE</span>
    <h2 class="section-title" style="text-align: center; text-transform: uppercase;" data-i18n="b_sec_apps_title">ARHITEKTURNE APLIKACIJE IN KOLEKCIJE</h2>
    <div class="gold-underline" style="margin: 14px auto 0;"></div>
   </div>

   <div class="b-cat-grid">
    <div class="b-cat-card">
     <div class="b-cat-img-wrapper">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="$imgBathtub" alt="Bivalni prostori z masivno marmorno kadjo">
      </a>
     </div>
     <div class="b-cat-body">
      <h3 style="color: var(--gold-primary); font-size: 1.25rem;" data-i18n="cat_living"><i class="fa-solid fa-house-chimney"></i> BIVALNI PROSTORI</h3>
      <p style="font-size: 0.9rem; margin-top: 8px;" data-i18n="b_app1_desc">
       Prestižne rezidence, privatne kopalnice, dnevni saloni ter unikatni masivni kosi opreme po meri zahtevnih naročnikov.
      </p>
      <a href="https://lapidor.si/#nasiizdelki" class="b-link-badge" target="_blank" data-i18n="b_link_view_collection">Ogled kolekcije &rarr;</a>
     </div>
    </div>

    <div class="b-cat-card">
     <div class="b-cat-img-wrapper">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="$imgWellness" alt="Wellness in SPA marmorni ambienti">
      </a>
     </div>
     <div class="b-cat-body">
      <h3 style="color: var(--gold-primary); font-size: 1.25rem;" data-i18n="cat_wellness"><i class="fa-solid fa-hot-tub-person"></i> WELLNESS &amp; SPA</h3>
      <p style="font-size: 0.9rem; margin-top: 8px;" data-i18n="b_app2_desc">
       Namenjeno prostori za regeneracijo. Izjemno nizka poroznost omogoča trajno uporabo pri bazenskih robovih, savnah in recepcijah.
      </p>
      <a href="https://lapidor.si/#nasiizdelki" class="b-link-badge" target="_blank" data-i18n="b_link_view_collection">Ogled kolekcije &rarr;</a>
     </div>
    </div>

    <div class="b-cat-card">
     <div class="b-cat-img-wrapper">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="$imgArt" alt="Umetnost in skulpture v marmorju">
      </a>
     </div>
     <div class="b-cat-body">
      <h3 style="color: var(--gold-primary); font-size: 1.25rem;" data-i18n="cat_art"><i class="fa-solid fa-palette"></i> UMETNOST V MARMORJU</h3>
      <p style="font-size: 0.9rem; margin-top: 8px;" data-i18n="b_app3_desc">
       Unikatne kiparske stvaritve – od doprsnih figur in portretov do sodobne abstrakcije ter zunanjih vrtnih skulptur.
      </p>
      <a href="https://lapidor.si/#nasiizdelki" class="b-link-badge" target="_blank" data-i18n="b_link_view_collection">Ogled kolekcije &rarr;</a>
     </div>
    </div>

    <div class="b-cat-card">
     <div class="b-cat-img-wrapper">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="$imgSacred" alt="Sakralna arhitektura in spomeniki">
      </a>
     </div>
     <div class="b-cat-body">
      <h3 style="color: var(--gold-primary); font-size: 1.25rem;" data-i18n="cat_sacred"><i class="fa-solid fa-church"></i> SAKRALNA ARHITEKTURA</h3>
      <p style="font-size: 0.9rem; margin-top: 8px;" data-i18n="b_app4_desc">
       Ročno klesane sakralne plastike, spomeniki, oltarji in verski simboli po natančnih načrtih ali skicah naročnika.
      </p>
      <a href="https://lapidor.si/#nasiizdelki" class="b-link-badge" target="_blank" data-i18n="b_link_view_collection">Ogled kolekcije &rarr;</a>
     </div>
    </div>
   </div>
  </div>
 </section>

 <!-- SECTION 5: EKSKLUZIVNI VODNJAKI IN HOTELSKA OPREMA -->
 <section class="b-section">
  <div class="container">
   <div style="text-align: center; margin-bottom: 28px;">
    <span class="section-tag" style="display: block; text-align: center; margin-bottom: 8px;" data-i18n="b_sec_fountains_tag">ARHITEKTURNI VODNJAKI IN EKSKLUZIVNA OPREMA</span>
    <h2 class="section-title" style="text-align: center; text-transform: uppercase;" data-i18n="b_sec_fountains_title">MASIVNI MARMORNI VODNJAKI IN RECEPCIJE</h2>
    <div class="gold-underline" style="margin: 14px auto 0;"></div>
   </div>

   <div class="b-card">
    <div class="b-grid-2">
     <div class="b-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="$imgFountain" alt="Masivni vrtni vodnjak iz kristalnega marmorja">
      </a>
     </div>
     <div class="b-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="$imgHotel" alt="Ekskluzivni recepcijski pult iz naravnega marmorja">
      </a>
     </div>
    </div>
   </div>
  </div>
   <!-- SECTION 6: FOTOGALERIJA UNIKATNIH LAPIDOR IZDELKOV -->
 <section class="b-section">
  <div class="container">
   <div style="text-align: center; margin-bottom: 36px;">
    <h2 class="section-title" style="text-align: center; text-transform: uppercase;" data-i18n="b_gal_title">FOTOGALERIJA LE NEKAJ UNIKATNIH LAPIDOR IZDELKOV</h2>
    <div class="gold-underline" style="margin: 14px auto 0;"></div>
    <p style="color: rgba(255, 255, 255, 0.9); max-width: 720px; margin: 16px auto 0; font-size: 1.05rem; line-height: 1.6;" data-i18n="b_gal_desc">Vsak izdelek je izdelan po meri, skladno z željami, prostorom in vizijo naročnika.</p>
   </div>

   <div class="b-gallery-grid">

    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_1.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Shiva" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_2.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Jesus" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_3.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Mary 1" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_4.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Mary 2" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_5.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Jade buddha" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_6.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Mother Teresa" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_7.jpg" alt="Unikatni marmorni izdelek LAPIDOR - girl" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_8.jpg" alt="Unikatni marmorni izdelek LAPIDOR - girl" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_9.jpg" alt="Unikatni marmorni izdelek LAPIDOR - girl" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_10.jpg" alt="Unikatni marmorni izdelek LAPIDOR - elephant" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_11.jpg" alt="Unikatni marmorni izdelek LAPIDOR - elephant" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_12.jpg" alt="Unikatni marmorni izdelek LAPIDOR - elephant" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_13.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Green phoenix" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_14.jpg" alt="Unikatni marmorni izdelek LAPIDOR - pink phoenix" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_15.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Happy buddha" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_16.jpg" alt="Unikatni marmorni izdelek LAPIDOR - nude man" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_17.jpg" alt="Unikatni marmorni izdelek LAPIDOR - abstract girl" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_18.jpg" alt="Unikatni marmorni izdelek LAPIDOR - abstract girl" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_19.jpg" alt="Unikatni marmorni izdelek LAPIDOR - abstract girl" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_20.jpg" alt="Unikatni marmorni izdelek LAPIDOR - abstract girl" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_21.jpg" alt="Unikatni marmorni izdelek LAPIDOR - abstract girl" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_22.jpg" alt="Unikatni marmorni izdelek LAPIDOR - abstract girl" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_23.jpg" alt="Unikatni marmorni izdelek LAPIDOR - girl" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_24.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Four season girl" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_25.jpg" alt="Unikatni marmorni izdelek LAPIDOR - girl" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_26.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Guadalupe" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_28.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Abstract" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_29.jpg" alt="Unikatni marmorni izdelek LAPIDOR - abstract" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_30.jpg" alt="Unikatni marmorni izdelek LAPIDOR - buddha" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_31.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 31" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_32.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 32" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_33.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 33" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_34.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 34" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_35.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 35" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_36.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 36" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_37.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 37" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_38.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 38" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_39.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 39" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_40.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 40" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_41.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 41" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_42.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 42" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_43.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 43" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_44.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 44" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_45.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 45" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_46.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 46" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_47.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 47" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_48.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 48" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_49.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 49" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_50.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 50" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_51.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 51" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_52.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 52" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_53.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 53" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_54.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 54" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_55.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 55" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_56.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 56" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_57.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 57" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_58.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 58" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_59.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 59" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_60.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 60" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_61.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 61" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_62.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 62" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_63.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 63" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_64.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 64" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_65.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 65" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_66.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 66" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_67.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 67" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_68.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 68" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_69.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 69" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_70.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 70" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_71.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 71" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_72.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 72" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_73.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 73" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_74.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 74" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_75.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 75" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_76.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 76" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_77.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 77" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_78.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 78" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_79.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 79" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_80.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 80" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_81.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 81" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_82.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 82" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_83.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 83" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_84.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 84" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_85.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 85" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_86.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 86" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_87.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 87" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_88.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 88" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_89.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 89" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_90.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 90" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_91.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 91" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_92.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 92" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_93.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 93" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_94.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 94" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_95.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 95" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_96.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 96" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_97.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 97" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_98.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 98" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_99.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 99" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_101.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 101" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_102.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 102" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_103.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 103" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_104.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 104" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_105.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 105" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_106.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 106" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_107.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 107" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_108.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 108" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_109.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 109" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_110.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 110" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_111.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 111" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_112.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 112" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_113.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 113" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_114.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 114" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_115.jpg" alt="Unikatni marmorni izdelek LAPIDOR - Marmorni unikatni izdelek 115" loading="lazy">
      </a>
     </div>
    </div>
    <div class="b-gallery-card">
     <div class="b-gallery-img-box">
      <a href="https://lapidor.si/#nasiizdelki" target="_blank">
       <img src="assets/gal_item_116.jpg" alt="Unikatni marmorni izdelek LAPIDOR - The stations of the Cross" loading="lazy">
      </a>
     </div>
    </div>
   </div>
  </div>
 </section>

 <!-- CTA / CONTACT SECTION WITH ACTIVE LINKS -->
 <section class="b-section text-center" style="background: var(--bg-dark-accent); color: #ffffff;">
  <div class="container">
   <span class="section-tag" style="color: var(--gold-light); display: block; margin-bottom: 8px;" data-i18n="b_cta_tag">VAŠ PROJEKT, NAŠA IZVEDBA</span>
   <h2 class="section-title" style="color: #ffffff;" data-i18n="b_cta_title">Veselimo se vašega povpraševanja</h2>
   <div class="gold-underline" style="margin: 12px auto 24px;"></div>
   <p style="color: rgba(255,255,255,0.85); max-width: 680px; margin: 0 auto 32px; font-size: 1.1rem;" data-i18n="b_cta_desc">
    Pripravimo vam vzorce naravnega marmorja, ponudbo po vašem načrtu ter strokovno svetovanje.
   </p>

   <div style="display: flex; justify-content: center; gap: 16px; flex-wrap: wrap;">
    <a href="https://lapidor.si/#vzorci" class="btn btn-gold btn-lg" target="_blank" data-i18n="top_inquiry">
     <i class="fa-solid fa-paper-plane"></i> POŠLJI POVPRAŠEVANJE
    </a>
    <a href="assets/LAPIDOR_Ekskluzivna_Brosura.pdf" download class="btn btn-outline-gold btn-lg" style="color: #ffffff; border-color: #ffffff;" data-i18n="btn_download_pdf">
     <i class="fa-solid fa-file-pdf"></i> PRENESI PDF BROŠURO
    </a>
   </div>

   <div style="margin-top: 40px; border-top: 1px solid rgba(255,255,255,0.15); padding-top: 30px; font-size: 0.95rem; color: rgba(255,255,255,0.85);">
    <strong>PROMOSCENTIA d.o.o.</strong> &nbsp;|&nbsp; Mariborska cesta 86, 3000 Celje, Slovenija<br>
    Tel: <a href="tel:+38631529003" style="color: var(--gold-light); text-decoration: underline;">+386 (0)31 529 003</a> &nbsp;|&nbsp; 
    Email: <a href="mailto:info@lapidor.si" style="color: var(--gold-light); text-decoration: underline;">info@lapidor.si</a> &nbsp;|&nbsp; 
    Splet: <a href="https://lapidor.si/" style="color: var(--gold-light); text-decoration: underline;" target="_blank">https://lapidor.si</a>
   </div>
  </div>
 </section>

 <!-- Footer -->
 <footer class="main-footer">
  <div class="container text-center">
   <a href="https://lapidor.si/">
    <img src="$logoPath" alt="LAPIDOR Logo" class="footer-logo-img" style="margin: 0 auto 16px;">
   </a>
   <p style="font-size: 0.9rem;" data-i18n="footer_sub">Ročno izdelani unikatni izdelki iz naravnega vietnamskega marmorja.</p>
   <p style="color: var(--gold-primary); font-style: italic; font-family: var(--font-serif); margin-top: 10px;" data-i18n="footer_quote">"Narava ustvarja edinstvenost. Mi jo pomagamo izraziti."</p>
   <p style="margin-top: 20px; font-size: 0.85rem; color: var(--text-muted);" data-i18n="footer_copy">&copy; 2026 LAPIDOR. Vse pravice pridržane. Izdelava: Promoscentia d.o.o.</p>
  </div>
 </footer>

 <!-- Floating Quick Contact Widget -->
 <div class="floating-contact-widget">
  <a href="tel:+38631529003" class="float-btn float-phone" title="Pokličite nas +386 (0)31 529 003">
   <i class="fa-solid fa-phone"></i>
   <span class="float-tooltip" data-i18n="float_call">KLIC: +386 (0)31 529 003</span>
  </a>
  <a href="https://lapidor.si/#vzorci" class="float-btn float-inquiry" title="Pošlji povpraševanje" target="_blank">
   <i class="fa-solid fa-paper-plane"></i>
   <span class="float-tooltip" data-i18n="float_inquiry">HITRO POVPRAŠEVANJE</span>
  </a>
 </div>

 <!-- JS Engine -->
 <script src="main.js"></script>
</body>
</html>
"@

$utf8NoBom = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText("C:\Users\urosv\Desktop\LAPIDOR\brosura.html", $html, $utf8NoBom)
[System.IO.File]::WriteAllText("C:\Users\urosv\Desktop\LAPIDOR_Website_Backup\brosura.html", $html, $utf8NoBom)
Write-Host "brosura.html successfully built!"

$edgePath = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
$pdfOutputPath = "C:\Users\urosv\Desktop\LAPIDOR\assets\LAPIDOR_Ekskluzivna_Brosura.pdf"
$pdfTempHtml = "C:\Users\urosv\Desktop\LAPIDOR\brosura_pdf_temp.html"

if (Test-Path $edgePath) {
  Write-Host "Rendering high-resolution PDF via Microsoft Edge headless..."
  $pdfContent = $html.Replace('src="assets/', 'src="file:///C:/Users/urosv/Desktop/LAPIDOR/assets/').Replace('href="assets/', 'href="file:///C:/Users/urosv/Desktop/LAPIDOR/assets/')
  [System.IO.File]::WriteAllText($pdfTempHtml, $pdfContent, $utf8NoBom)
  
  Start-Process -FilePath $edgePath -ArgumentList "--headless", "--disable-gpu", "--print-to-pdf=`"$pdfOutputPath`"", "--no-margins", "`"file:///$pdfTempHtml`"" -Wait
  Remove-Item $pdfTempHtml -Force -ErrorAction SilentlyContinue
  Copy-Item -Path "C:\Users\urosv\Desktop\LAPIDOR\assets\LAPIDOR_Ekskluzivna_Brosura.pdf" -Destination "C:\Users\urosv\Desktop\LAPIDOR_Website_Backup\assets\LAPIDOR_Ekskluzivna_Brosura.pdf" -Force
  Write-Host "LAPIDOR_Ekskluzivna_Brosura.pdf successfully generated and saved to assets!"
}


