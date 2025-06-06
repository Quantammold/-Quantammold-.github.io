<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Neon 3D Printing Service</title>
  <style>
    /* Reset */
    *,*:before,*:after{box-sizing:border-box;margin:0;padding:0;}
    body,html{height:100%;font-family:'Segoe UI',Tahoma,Geneva,Verdana,sans-serif;color:#fff;overflow-x:hidden;scroll-behavior:smooth;background:#000;}

    /* Parallax sections */
    .section{position:relative;display:flex;align-items:center;justify-content:center;text-align:center;height:100vh;width:100%;}
    .parallax{
      background-attachment:fixed;
      background-size:cover;
      background-position:center;
    }

    /* Neon text */
    .neon{
      font-size:4rem;font-weight:bold;letter-spacing:2px;color:#0ff;
      text-shadow:0 0 5px #0ff,0 0 10px #0ff,0 0 20px #0ff,0 0 40px #0ff;
      animation:flicker 2s infinite alternate;transition:color .3s ease;
    }
    @keyframes flicker{0%,18%,22%,25%,53%,57%,100%{opacity:1;}20%,24%,55%{opacity:0.4;}}

    /* Button */
    .btn{display:inline-block;margin-top:1.5rem;padding:0.75rem 2rem;border:2px solid #ff0;color:#ff0;font-size:1.25rem;text-decoration:none;border-radius:50px;transition:all .3s ease;text-shadow:0 0 5px #ff0,0 0 10px #ff0;cursor:pointer;user-select:none;}
    .btn:hover,.btn.active{background:#ff0;color:#000;box-shadow:0 0 10px #ff0,0 0 20px #ff0,0 0 30px #ff0;}

    /* Overlay for darkening bg */
    .overlay:before{content:"";position:absolute;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,0.5);z-index:0;}
    .content{position:relative;z-index:1;max-width:800px;padding:1rem;}

    /* Services grid */
    .services{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:1.5rem;padding:2rem 1rem;}
    .card{background:rgba(255,255,255,0.05);border:1px solid rgba(255,255,255,0.1);padding:1.5rem;border-radius:20px;backdrop-filter:blur(10px);transition:transform .3s ease,box-shadow .3s ease;cursor:default;box-shadow:0 0 8px rgba(0,255,255,0.3);}
    .card:hover{transform:translateY(-8px);box-shadow:0 0 15px #0ff,0 0 30px #0ff,0 0 45px #0ff;}
    .card h3{margin-bottom:0.5rem;color:#0ff;text-shadow:0 0 6px #0ff;}
    .card.glow{animation:glowPulse 2s infinite alternate;box-shadow:0 0 20px #0ff,0 0 40px #0ff,0 0 60px #0ff;}
    @keyframes glowPulse{0%{box-shadow:0 0 10px #0ff,0 0 20px #0ff,0 0 30px #0ff;}100%{box-shadow:0 0 30px #0ff,0 0 60px #0ff,0 0 90px #0ff;}}

    /* Scroll reveal */
    .reveal{opacity:0;transform:translateY(40px);}
    .reveal.show{animation:fadeUp .8s ease-out forwards;}
    @keyframes fadeUp{to{opacity:1;transform:translateY(0);}}

    /* Footer */
    footer{padding:2rem 1rem;text-align:center;background-image:url(https://img.freepik.com/free-vector/abstract-neon-lights-background-design_52683-44643.jpg?semt=ais_hybrid&w=740);border-top:1px solid #222;}
    footer p{font-size:0.9rem;color:#888;}

    /* Back to top button */
    #backToTop{position:fixed;bottom:40px;right:40px;background:#0ff;color:#000;padding:0.75rem 1rem;border-radius:30px;font-weight:bold;font-size:1rem;cursor:pointer;display:none;box-shadow:0 0 10px #0ff,0 0 20px #0ff;transition:background .3s ease,color .3s ease;z-index:999;user-select:none;}
    #backToTop:hover{background:#00cccc;color:#fff;}

    /* Responsive */
    @media(max-width:600px){.neon{font-size:2.5rem;}#backToTop{bottom:20px;right:20px;padding:0.5rem 1rem;font-size:0.9rem;}}
  </style>
</head>
<body>
  <!-- Hero Section -->
  <section class="section parallax overlay" style="background-image:url('https://images.unsplash.com/photo-1581093588401-918d5b78b025?auto=format&fit=crop&w=1740&q=80');">
    <div class="content reveal">
      <h1 class="neon">QUANTAM MOLD</h1>
      <p style="margin-top:1rem;font-size:1.25rem;">Custom prints • Buy at lunch • Quote based</p>
      <a href="#services" class="btn" id="exploreBtn">Explore Services</a>
    </div>
  </section>

  <!-- Services Section -->
  <section id="services" class="section" style="background-image:url(https://img.freepik.com/free-vector/abstract-neon-lights-background-design_52683-44643.jpg?semt=ais_hybrid&w=740); background-repeat:no-repeat;">
    <div class="content reveal">
      <h2 class="neon" style="font-size:3rem;">Our Services</h2>
      <div class="services">
        <div class="card reveal"><h3>Catalog</h3><p>Choose models from our catalog of approved prints</p></div>
        <div class="card reveal"><h3>Custom Printing</h3><p>Choose a file from websites like Printables and we will give you a quote</p></div>
      </div>
    </div>
  </section>

  <!-- Gallery Parallax -->
  <section class="section parallax overlay" style="background-image:url('https://images.unsplash.com/photo-1518557958270-9834b35b3cb7?auto=format&fit=crop&w=1740&q=80');">
    <div class="content reveal">
      <h2 class="neon" style="font-size:3rem;">At lunch every other day</h2>
    </div>
  </section>

  <!-- Contact Section -->
  <section id="contact" class="section" style="background:#000;">
    <div class="content reveal">
      <h2 class="neon" style="font-size:3rem;">Get a Quote</h2>
      <p style="margin:1rem 0;font-size:1.1rem;">Email us at <a href="mailto:lleungqwerty@gmail.com" style="color:#0ff;">lleungqwerty@gmail.com and kmalhotra@greenhillsschool.org</a></p>
      <a href="https://www.surveylegend.com/s/5zwx" class="btn">3D Printing Form</a>
    </div>
  </section>

  <footer>
    <p>&copy; 2025 Quantam Mold. All rights reserved.</p>
  </footer>

  <!-- Back to Top Button -->
  <button id="backToTop" title="Back to Top">↑ Top</button>

  <script>
    // Explore button
    const exploreBtn=document.getElementById('exploreBtn');
    exploreBtn.addEventListener('click',e=>{e.preventDefault();exploreBtn.classList.toggle('active');document.querySelector('#services').scrollIntoView({behavior:'smooth'});});

    // Glow on card click
    document.querySelectorAll('.card').forEach(card=>card.addEventListener('click',()=>card.classList.toggle('glow')));

    // Back to top
    const backBtn=document.getElementById('backToTop');
    window.addEventListener('scroll',()=>{backBtn.style.display=window.scrollY>window.innerHeight/2?'block':'none';});
    backBtn.addEventListener('click',()=>window.scrollTo({top:0,behavior:'smooth'}));

    // Scroll reveal
    const observer=new IntersectionObserver(entries=>{entries.forEach(entry=>{if(entry.isIntersecting){entry.target.classList.add('show');observer.unobserve(entry.target);}})},{threshold:0.15});
    document.querySelectorAll('.reveal').forEach(el=>observer.observe(el));
  </script>
</body>
</html>
