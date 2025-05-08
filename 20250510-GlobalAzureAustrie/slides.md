---
theme: ksick-dynatrace
title: 'Build Their Platform, Not Yours: Empowering Developers'
defaults:
  speaker: Katharina Sick
  image: me.jpg
  website: ksick.dev
  description: Developer Advocate at Dynatrace
  showDynatraceLogo: true
  showSlideNumber: false
  eventName: Global Azure Austria
  eventDate: May 10, 2025
download: true
---

<style>
/*Slide size is always 980x552 */
.source {
    font-size: 16px;
    color: white;
}

.background {
  opacity: 0.2;
}

.disabled {
  opacity: 0.1;
}

.invisible {
  opacity: 0;
}

.icon {
  width: 50px;
  height: 50px;

  margin: 4px;
}

.component {
  width: 200px;
  height: 50px;
  border: 1px solid var(--green);
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 4px;
}

.noDecoration, a:link, a:visited {
    text-decoration: none!important;
}

.bigEmoji, .emoji, .smallEmoji, .circle {
  position: absolute;

  display: flex;
  align-items: center;
  justify-content: center;

  left: 0;
  top: 0;
}

.bigEmoji {
  font-size: 86px;

  width: 100px;
  height: 100px;

  left: 440px;
  top: 226px;
}

.emoji {
  font-size: 48px;

  width: 50px;
  height: 50px;

  left: 465px;
  top: 251px;
}

.smallEmoji {
  font-size: 32px;

  width: 50px;
  height: 50px;

  left: 465px;
  top: 251px;
}

.circle {
  font-size: 64px;

  width: 200px;
  height: 200px;

  left: 415px;
  top: 201px;

  background:  linear-gradient(45deg, var(--purple), var(--blue), var(--green));
  border-radius: 50%;
  border: 3px solid white;

  font-weight: 900;
}

.circleText {
  position: absolute;

  width: 110px;
  height: 110px;

  display: flex;
  align-items: center;
  justify-content: center;

  font-weight: 900;
  font-size: 64px;

  background-image: var(--gradient);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;

  border: 2px solid white;
  border-radius: 50%;

  left: 435px;
  top: 221px;
}

.circleTextSmall {
  position: absolute;
  
  width: 50px;
  height: 50px;

  display: flex;
  align-items: center;
  justify-content: center;

  font-weight: 900;
  font-size: 28px;

  background-image: var(--gradient);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;

  border: 2px solid white;
  border-radius: 50%;
}
</style>

# Build Their Platform, Not Yours

Empowering Developers

---
layout: speaker
logos:
  - src: 'https://cloudnativelinz.at/images/cloudnativelinz-logo.png'
    alt: Cloud Native Linz
    link: 'https://cloudnativelinz.at'
  - src: 'https://raw.githubusercontent.com/cloud-native-austria/cloud-native-days-austria/refs/heads/main/Brand/Logo07_colorFerrisWheel_whiteCloud_transBG.png'
    alt: Cloud Native Days Austria
    link: 'https://cloudnativedays.at'
---

---
layout: center
---

<img src="/hcc.jpg" alt="Sticking post its" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0" />

---
layout: two-cols
---

<div style="width: 100%; height: 100%; display: flex; align-items: center; justify-content: center; gap: 24px; flex-direction: column">
    <span style="font-size: 100px; height: 140px;">☀️</span>
    <p style="text-align: center; font-size: 24px">
        - Feature  Development<br><br>
        - Architecture Discussions<br><br>
        - Performance Improvements<br><br>
        - Security Fixes
    </p>
</div>

::right::

<div v-click style="width: 100%; height: 100%; margin-top: 10px; display: flex; align-items: center; justify-content: center; gap: 24px; flex-direction: column">
    <span style="font-size: 100px; height: 140px;">🌧️</span>
    <p style="text-align: center; font-size: 24px">
        - Mysterious Build Failures<br><br>
        - Slow Pipelines<br><br>
        - Manual Processes<br><br>
        - "Works on My Machine!" Syndrome<br><br>
    </p>
</div>

---
layout: center
---

<img src="/connect.webp" alt="Platform" class="background" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0" />

<h1 style="z-index: 2; font-size: 48px; line-height: 1.3em">
Platform Engineering is all about <span class="gradient">empowering developers</span>
</h1>

---

<span
class="bigEmoji"
v-motion
:initial="{ scale: 0 }"
:enter="{ scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">
🦖
</span>

---

<span
class="smallEmoji"
style="left: 32px; top: 445px"
v-motion
:initial="{ x: 410, y: -197, scale: 2 }"
:enter="{ x: 0, y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">
🦖
</span>
<strong
style="position: absolute; left: 12px; top: 490px; fontSize: 18px"
v-motion
:initial="{ y: 35 }"
:enter="{ y: 0, transition: { type: 'keyframes', ease: 'linear', duration: 500, delay: 500 } }">
Before Agile
</strong>

---

<!-- Timeline -->
<span class="smallEmoji" style="left: 32px; top: 445px">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; fontSize: 18px">Before Agile</strong>

<span
class="bigEmoji"
v-motion
:initial="{ scale: 0 }"
:enter="{ scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">
👩‍💻
</span>

<!--
## Introduce Alex
-->

---

<!-- Timeline -->
<span class="smallEmoji" style="left: 32px; top: 445px">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; fontSize: 18px">Before Agile</strong>

<!-- Development -->
<span
class="emoji"
style="left: 400px; top: 355px"
v-motion
:initial="{ x: 65, opacity: 0 }"
:enter="{ x: 0, opacity: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500, delay: 500 } }">
🧑🏽‍💻
</span>
<span
class="emoji"
style="left: 530px; top: 355px"
v-motion
:initial="{ x: -65, opacity: 0 }"
:enter="{ x: 0, opacity: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500, delay: 500 } }">
🧑🏿‍💻
</span>
<h3
style="position: absolute; left: 408px; top: 410px"
v-motion
:initial="{ scale: 0 }"
:enter="{ scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500, delay: 500 } }">
Development
</h3>

<!-- Alex -->
<span
class="emoji"
style="left: 465px; top: 355px"
v-motion
:initial="{ y: -110, scale: 1.79 }"
:enter="{ y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">
👩‍💻
</span>

<!--
## Introduce the team of Alex
-->

---

<!-- Timeline -->
<span class="smallEmoji" style="left: 32px; top: 445px">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; fontSize: 18px">Before Agile</strong>

<!-- Feature -->
<span
class="smallEmoji"
style="left: 465px; top: 300px"
v-motion
:initial="{ y: 60, scale: 0 }"
:enter="{ y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">
🌟
</span>

<!-- Development -->
<span class="emoji" style="left: 400px; top: 355px">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px">👩‍💻</span>
<h3 style="position: absolute; left: 408px; top: 410px">Development</h3>

---

<!-- Timeline -->
<span class="smallEmoji" style="left: 32px; top: 445px">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; fontSize: 18px">Before Agile</strong>

<!-- Feature -->
<span class="smallEmoji" style="left: 465px; top: 300px">🌟</span>

<!-- Development -->
<span class="emoji" style="left: 400px; top: 355px">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px">👩‍💻</span>
<h3 style="position: absolute; left: 408px; top: 410px">Development</h3>

<!-- Production -->
<span
class="bigEmoji"
style="left: unset; right: 100px; top: 40px"
v-motion
:initial="{ scale: 0 }"
:enter="{ scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">
🌈
</span>
<h3
style="position: absolute; right: 90px; top: 145px"
v-motion
:initial="{ scale: 0 }"
:enter="{ scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">
Production
</h3>

---

<!-- Timeline -->
<span class="smallEmoji" style="left: 32px; top: 445px">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; fontSize: 18px">Before Agile</strong>


<!-- Development -->
<span class="emoji" style="left: 400px; top: 355px" v-motion :inital="{ opacity: 1 }" :enter="{ opacity: 0.2 }">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px" v-motion :inital="{ opacity: 1 }" :enter="{ opacity: 0.2 }">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px" v-motion :inital="{ opacity: 1 }" :enter="{ opacity: 0.2 }">👩‍💻</span>
<h3 style="position: absolute; left: 408px; top: 410px" v-motion :enter="{ opacity: 0.2 }">Development</h3>

<!-- Testing -->
<span class="emoji" style="left: 205px; top: 205px" v-motion :initial="{ opacity: 0 }" :enter="{ opacity: 1 }">👨🏻‍💻</span>
<h3 style="position: absolute; left: 180px; top: 260px" v-motion :initial="{ opacity: 0 }" :enter="{ opacity: 1 }">Testing</h3>

<!-- Feature -->
<span
class="smallEmoji"
style="left: 265px; top: 205px"
v-motion
:initial="{ x: 200, y: 95 }"
:enter="{ x: 0, y: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1500 } }">
🌟
</span>

<!-- Production -->
<span class="bigEmoji" style="left: unset; right: 100px; top: 40px">🌈</span>
<h3 style="position: absolute; right: 90px; top: 145px">Production</h3>

---

<!-- Timeline -->
<span class="smallEmoji" style="left: 32px; top: 445px">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; fontSize: 18px">Before Agile</strong>

<!-- Development -->
<span class="emoji" style="left: 400px; top: 355px" v-motion :inital="{ opacity: 0.2 }" :enter="{ opacity: 1 }">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px" v-motion :inital="{ opacity: 0.2 }" :enter="{ opacity: 1 }">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px" v-motion :inital="{ opacity: 0.2 }" :enter="{ opacity: 1 }">👩‍💻</span>
<h3 style="position: absolute; left: 408px; top: 410px" v-motion :inital="{ opacity: 0.2 }" :enter="{ opacity: 1 }">Development</h3>

<!-- Testing -->
<span class="emoji" style="left: 205px; top: 205px" v-motion :initial="{ opacity: 1 }" :enter="{ opacity: 0.2 }">👨🏻‍💻</span>
<h3 style="position: absolute; left: 180px; top: 260px" v-motion :initial="{ opacity: 1 }" :enter="{ opacity: 0.2 }">Testing</h3>

<!-- Feature -->
<span
class="smallEmoji"
style="left: 465px; top: 300px"
v-motion
:initial="{ x: -200, y: -95 }"
:enter="{ x: 0, y: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1500 } }">
🌟
</span>

<!-- Production -->
<span class="bigEmoji" style="left: unset; right: 100px; top: 40px">🌈</span>
<h3 style="position: absolute; right: 90px; top: 145px">Production</h3>

---

<!-- Timeline -->
<span class="smallEmoji" style="left: 32px; top: 445px">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; fontSize: 18px">Before Agile</strong>

<!-- Development -->
<span class="emoji" style="left: 400px; top: 355px" v-motion :inital="{ opacity: 1 }" :enter="{ opacity: 0.2 }">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px" v-motion :inital="{ opacity: 1 }" :enter="{ opacity: 0.2 }">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px" v-motion :inital="{ opacity: 1 }" :enter="{ opacity: 0.2 }">👩‍💻</span>
<h3 style="position: absolute; left: 408px; top: 410px" v-motion :enter="{ opacity: 0.2 }">Development</h3>

<!-- Testing -->
<span class="emoji" style="left: 205px; top: 205px" v-motion :enter="{ opacity: 0.2 }">👨🏻‍💻</span>
<h3 style="position: absolute; left: 180px; top: 260px" v-motion :enter="{ opacity: 0.2 }">Testing</h3>

<!-- Operations -->
<span class="emoji" style="left: 290px; top: 90px" v-motion :initial="{ opacity: 0 }" :enter="{ opacity: 1 }">👩🏽‍💻</span>
<span class="emoji" style="left: 355px; top: 90px" v-motion :initial="{ opacity: 0 }" :enter="{ opacity: 1 }">👨🏼‍💻</span>
<h3 style="position: absolute; left: 280px; top: 145px" v-motion :initial="{ opacity: 0 }" :enter="{ opacity: 1 }">Operations</h3>

<!-- Feature -->
<span
class="smallEmoji"
style="left: 415px; top: 90px"
v-motion
:initial="{ x: 50, y: 210 }"
:enter="{ x: 0, y: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1500 } }">
🌟
</span>

<!-- Production -->
<span class="bigEmoji" style="left: unset; right: 100px; top: 40px">🌈</span>
<h3 style="position: absolute; right: 90px; top: 145px">Production</h3>

---

<!-- Timeline -->
<span class="smallEmoji" style="left: 32px; top: 445px">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; fontSize: 18px">Before Agile</strong>

<!-- Development -->
<span class="emoji" style="left: 400px; top: 355px" v-motion :enter="{ opacity: 0.2 }">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px" v-motion :enter="{ opacity: 0.2 }">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px" v-motion :enter="{ opacity: 0.2 }">👩‍💻</span>
<h3 style="position: absolute; left: 408px; top: 410px" v-motion :enter="{ opacity: 0.2 }">Development</h3>

<!-- Testing -->
<span class="emoji" style="left: 205px; top: 205px" v-motion :enter="{ opacity: 0.2 }">👨🏻‍💻</span>
<h3 style="position: absolute; left: 180px; top: 260px" v-motion :enter="{ opacity: 0.2 }">Testing</h3>

<!-- Operations -->
<span class="emoji" style="left: 290px; top: 90px" v-motion :inital="{ opacity: 1 }" :enter="{ opacity: 0.2 }">👩🏽‍💻</span>
<span class="emoji" style="left: 355px; top: 90px" v-motion :inital="{ opacity: 1 }" :enter="{ opacity: 0.2 }">👨🏼‍💻</span>
<h3 style="position: absolute; left: 280px; top: 145px" v-motion :inital="{ opacity: 1 }" :enter="{ opacity: 0.2 }">Operations</h3>

<!-- Feature -->
<span
class="smallEmoji"
style="left: 750px; top: 40px"
v-motion
:initial="{ x: -345, y: 50 }"
:enter="{ x: 0, y: 0, transition: { type: 'keyframes', ease: 'linear', duration: 2000 } }">
🌟
</span>


<!-- Production -->
<span class="bigEmoji" style="left: unset; right: 100px; top: 40px">🌈</span>
<h3 style="position: absolute; right: 90px; top: 145px">Production</h3>

---

<!-- Timeline -->
<span class="smallEmoji" style="left: 32px; top: 445px">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; fontSize: 18px">Before Agile</strong>

<!-- Development -->
<span class="emoji" style="left: 400px; top: 355px" v-motion :inital="{ opacity: 0.2 }" :enter="{ opacity: 1 }">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px" v-motion :inital="{ opacity: 0.2 }" :enter="{ opacity: 1 }">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px" v-motion :inital="{ opacity: 0.2 }" :enter="{ opacity: 1 }">👩‍💻</span>
<h3 style="position: absolute; left: 408px; top: 410px" v-motion :inital="{ opacity: 0.2 }" :enter="{ opacity: 1 }">Development</h3>

<!-- Testing -->
<span class="emoji" style="left: 205px; top: 205px" v-motion :inital="{ opacity: 0.2 }" :enter="{ opacity: 1 }">👨🏻‍💻</span>
<h3 style="position: absolute; left: 180px; top: 260px" v-motion :inital="{ opacity: 0.2 }" :enter="{ opacity: 1 }">Testing</h3>

<!-- Operations -->
<span class="emoji" style="left: 290px; top: 90px" v-motion :inital="{ opacity: 0.2 }" :enter="{ opacity: 1 }">👩🏽‍💻</span>
<span class="emoji" style="left: 355px; top: 90px" v-motion :inital="{ opacity: 0.2 }" :enter="{ opacity: 1 }">👨🏼‍💻</span>
<h3 style="position: absolute; left: 280px; top: 145px" v-motion :inital="{ opacity: 0.2 }" :enter="{ opacity: 1 }">Operations</h3>

<!-- Feature -->
<span class="smallEmoji" style="left: 750px; top: 40px">🌟</span>

<!-- Production -->
<span class="bigEmoji" style="left: unset; right: 100px; top: 40px">🌈</span>
<h3 style="position: absolute; right: 90px; top: 145px">Production</h3>

<!--
## Disadvantages

- Inefficient & very slow
- Bugs are found late in the lifecycle
- It took ages to build and deploy
-->

---

<!-- Timeline -->
<span style="position: absolute; left: 64px; top: 475px; height: 2px; width: 440px; background: white;" v-motion :initial="{ scale: 0 }" :enter="{ scale: 1, opacity: 0.3, transition: { type: 'keyframes', ease: 'linear', duration: 500, delay: 500 } }" />
<span class="smallEmoji" style="left: 32px; top: 445px" v-motion :initial="{ opacity: 1 }" :enter="{ opacity: 0.3, transition: { type: 'keyframes', ease: 'linear', duration: 500, delay: 500 } }">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; fontSize: 18px" v-motion :initial="{ opacity: 1 }" :enter="{ opacity: 0.3, transition: { type: 'keyframes', ease: 'linear', duration: 500, delay: 500 } }">Before Agile</strong>
<span class="smallEmoji" style="top: 445px" v-motion :initial="{ x: -413 }" :enter="{ x: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">👍</span>
<strong style="position: absolute; left: 340px; top: 490px; width: 300px; text-align: center; fontSize: 18px" v-motion :initial="{ y: 35 }" :enter="{ y: 0, transition: { type: 'keyframes', ease: 'linear', duration: 500, delay: 500 } }">Agile</strong>


<!-- Development -->
<span class="emoji" style="left: 400px; top: 355px">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px">👩‍💻</span>
<h3 style="position: absolute; left: 408px; top: 410px">Development</h3>

<!-- Testing -->
<span class="emoji" style="left: 205px; top: 205px">👨🏻‍💻</span>
<h3 style="position: absolute; left: 180px; top: 260px">Testing</h3>

<!-- Operations -->
<span class="emoji" style="left: 290px; top: 90px">👩🏽‍💻</span>
<span class="emoji" style="left: 355px; top: 90px">👨🏼‍💻</span>
<h3 style="position: absolute; left: 280px; top: 145px">Operations</h3>

<!-- Feature -->
<span class="smallEmoji" style="left: 750px; top: 40px">🌟</span>

<!-- Production -->
<span class="bigEmoji" style="left: unset; right: 100px; top: 40px">🌈</span>
<h3 style="position: absolute; right: 90px; top: 145px">Production</h3>

---

<!-- Timeline -->
<span style="position: absolute; left: 64px; top: 475px; height: 2px; width: 440px; background: white; opacity: 0.3" />
<span class="smallEmoji" style="left: 32px; top: 445px; opacity: 0.3">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; fontSize: 18px; opacity: 0.3">Before Agile</strong>
<span class="smallEmoji" style="top: 445px">👍</span>
<strong style="position: absolute; left: 340px; top: 490px; fontSize: 18px; width: 300px; text-align: center">Agile</strong>


<!-- Development -->
<span class="emoji" style="left: 400px; top: 355px">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px">👩‍💻</span>
<span class="emoji" style="left: 430px; top: 295px" v-motion :initial="{ x: -225, y: -90}" :enter="{ x: 0, y: 0 , transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">👨🏻‍💻</span>
<h3 style="position: absolute; left: 408px; top: 410px">Development</h3>

<!-- Testing -->
<span class="emoji" style="left: 205px; top: 205px" v-motion :initial="{opacity: 1}" :enter="{ opacity: 0.3, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">👨🏻‍💻</span>
<h3 style="position: absolute; left: 180px; top: 260px" v-motion :initial="{opacity: 1}" :enter="{ opacity: 0.3, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">Testing</h3>
<span class="bigEmoji" style="left: 178px; top: 195px; opacity: 0.7" v-motion :initial="{scale: 0}" :enter="{ scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">❌</span>

<!-- Operations -->
<span class="emoji" style="left: 290px; top: 90px">👩🏽‍💻</span>
<span class="emoji" style="left: 355px; top: 90px">👨🏼‍💻</span>
<h3 style="position: absolute; left: 280px; top: 145px">Operations</h3>

<!-- Feature -->
<span class="smallEmoji" style="left: 750px; top: 40px">🌟</span>

<!-- Production -->
<span class="bigEmoji" style="left: unset; right: 100px; top: 40px">🌈</span>
<h3 style="position: absolute; right: 90px; top: 145px">Production</h3>


---

<!-- Timeline -->
<span style="position: absolute; left: 64px; top: 475px; height: 2px; width: 440px; background: white; opacity: 0.3" />
<span class="smallEmoji" style="left: 32px; top: 445px; opacity: 0.3">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; opacity: 0.3; fontSize: 18px">Before Agile</strong>
<span class="smallEmoji" style="top: 445px">👍</span>
<strong style="position: absolute; left: 340px; top: 490px; width: 300px; text-align: center; fontSize: 18px">Agile</strong>


<!-- Development -->
<span class="emoji" style="left: 400px; top: 355px">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px">👩‍💻</span>
<span class="emoji" style="left: 430px; top: 295px">👨🏻‍💻</span>
<span class="emoji" style="left: 495px; top: 295px" v-motion :initial="{ x: -140, y: -205}" :enter="{ x: 0, y: 0 ,transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">👨🏼‍💻</span>
<h3 style="position: absolute; left: 408px; top: 410px">Development</h3>

<!-- Testing -->
<span class="emoji" style="left: 205px; top: 205px; opacity: 0.3">👨🏻‍💻</span>
<h3 style="position: absolute; left: 180px; top: 260px; opacity: 0.3">Testing</h3>
<span class="bigEmoji" style="left: 178px; top: 195px; opacity: 0.7">❌</span>

<!-- Operations -->
<span class="emoji" style="left: 290px; top: 90px" v-motion :initial="{opacity: 1}" :enter="{ opacity: 0.3, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">👩🏽‍💻</span>
<span class="emoji" style="left: 355px; top: 90px" v-motion :initial="{opacity: 1}" :enter="{ opacity: 0.3, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">👨🏼‍💻</span>
<h3 style="position: absolute; left: 280px; top: 145px" v-motion :initial="{opacity: 1}" :enter="{ opacity: 0.3, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">Operations</h3>
<span class="bigEmoji" style="left: 300px; top: 80px; opacity: 0.7" v-motion :initial="{scale: 0}" :enter="{ scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">❌</span>

<!-- Feature -->
<span class="smallEmoji" style="left: 750px; top: 40px">🌟</span>

<!-- Production -->
<span class="bigEmoji" style="left: unset; right: 100px; top: 40px">🌈</span>
<h3 style="position: absolute; right: 90px; top: 145px">Production</h3>

---

<!-- Timeline -->
<span style="position: absolute; left: 64px; top: 475px; height: 2px; width: 440px; background: white; opacity: 0.3" />
<span class="smallEmoji" style="left: 32px; top: 445px; opacity: 0.3">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; opacity: 0.3; fontSize: 18px">Before Agile</strong>
<span class="smallEmoji" style="top: 445px">👍</span>
<strong style="position: absolute; left: 340px; top: 490px; width: 300px; text-align: center; fontSize: 18px">Agile</strong>


<!-- Development -->
<span class="emoji" style="left: 400px; top: 355px">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px">👩‍💻</span>
<span class="emoji" style="left: 430px; top: 295px">👨🏻‍💻</span>
<span class="emoji" style="left: 495px; top: 295px">👨🏼‍💻</span>
<h3 style="position: absolute; left: 408px; top: 410px">Development</h3>

<!-- Testing -->
<span class="emoji" style="left: 205px; top: 205px; opacity: 0.3" v-motion :initial="{scale: 1}" :enter="{scale: 0 ,transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">👨🏻‍💻</span>
<h3 style="position: absolute; left: 180px; top: 260px; opacity: 0.3" v-motion :initial="{scale: 1}" :enter="{scale: 0 ,transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">Testing</h3>
<span class="bigEmoji" style="left: 178px; top: 195px; opacity: 0.7" v-motion :initial="{scale: 1}" :enter="{scale: 0 ,transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">❌</span>

<!-- Operations -->
<span class="emoji" style="left: 290px; top: 90px; opacity: 0.3" v-motion :initial="{scale: 1}" :enter="{scale: 0 ,transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">👩🏽‍💻</span>
<span class="emoji" style="left: 355px; top: 90px; opacity: 0.3" v-motion :initial="{scale: 1}" :enter="{scale: 0 ,transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">👨🏼‍💻</span>
<h3 style="position: absolute; left: 280px; top: 145px; opacity: 0.3" v-motion :initial="{scale: 1}" :enter="{scale: 0 ,transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">Operations</h3>
<span class="bigEmoji" style="left: 300px; top: 80px; opacity: 0.7" v-motion :initial="{scale: 1}" :enter="{scale: 0 ,transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">❌</span>

<!-- Feature -->
<span class="smallEmoji" style="left: 750px; top: 40px">🌟</span>

<!-- Production -->
<span class="bigEmoji" style="left: unset; right: 100px; top: 40px">🌈</span>
<h3 style="position: absolute; right: 90px; top: 145px">Production</h3>

---

<!-- Timeline -->
<span style="position: absolute; left: 64px; top: 475px; height: 2px; width: 440px; background: white; opacity: 0.3" />
<span class="smallEmoji" style="left: 32px; top: 445px; opacity: 0.3">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; opacity: 0.3; fontSize: 18px">Before Agile</strong>
<span class="smallEmoji" style="top: 445px">👍</span>
<strong style="position: absolute; left: 340px; top: 490px; width: 300px; text-align: center; fontSize: 18px">Agile</strong>

<!-- Features -->
<span class="smallEmoji" style="left: 750px; top: 40px">🌟</span>
<span class="smallEmoji" style="left: 463px; top: 240px" v-motion :initial="{ y: 100, scale: 0 }" :enter="{ y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">🌟</span>

<!-- Development -->
<span class="emoji" style="left: 400px; top: 355px">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px">👩‍💻</span>
<span class="emoji" style="left: 430px; top: 295px">👨🏻‍💻</span>
<span class="emoji" style="left: 495px; top: 295px">👨🏼‍💻</span>
<h3 style="position: absolute; left: 408px; top: 410px">Development</h3>

<!-- Production -->
<span class="bigEmoji" style="left: unset; right: 100px; top: 40px">🌈</span>
<h3 style="position: absolute; right: 90px; top: 145px">Production</h3>

---

<!-- Timeline -->
<span style="position: absolute; left: 64px; top: 475px; height: 2px; width: 440px; background: white; opacity: 0.3" />
<span class="smallEmoji" style="left: 32px; top: 445px; opacity: 0.3">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; opacity: 0.3; fontSize: 18px">Before Agile</strong>
<span class="smallEmoji" style="top: 445px">👍</span>
<strong style="position: absolute; left: 340px; top: 490px; width: 300px; text-align: center; fontSize: 18px">Agile</strong>

<!-- Features -->
<span class="smallEmoji" style="left: 750px; top: 40px">🌟</span>
<span class="smallEmoji" style="left: 730px; top: 80px" v-motion :initial="{ x: -267, y: 160 }" :enter="{ x: 0, y: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1500 } }">🌟</span>

<!-- Development -->
<span class="emoji" style="left: 400px; top: 355px">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px">👩‍💻</span>
<span class="emoji" style="left: 430px; top: 295px">👨🏻‍💻</span>
<span class="emoji" style="left: 495px; top: 295px">👨🏼‍💻</span>
<h3 style="position: absolute; left: 408px; top: 410px">Development</h3>

<!-- Production -->
<span class="bigEmoji" style="left: unset; right: 100px; top: 40px">🌈</span>
<h3 style="position: absolute; right: 90px; top: 145px">Production</h3>

---

<!-- Timeline -->
<span style="position: absolute; left: 64px; top: 475px; height: 2px; width: 440px; background: white; opacity: 0.3" />
<span class="smallEmoji" style="left: 32px; top: 445px; opacity: 0.3">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; opacity: 0.3; fontSize: 18px">Before Agile</strong>
<span class="smallEmoji" style="top: 445px">👍</span>
<strong style="position: absolute; left: 340px; top: 490px; width: 300px; text-align: center; fontSize: 18px">Agile</strong>

<!-- Features -->
<span class="smallEmoji" style="left: 750px; top: 40px">🌟</span>
<span class="smallEmoji" style="left: 730px; top: 80px">🌟</span>

<!-- Development -->
<span class="emoji" style="left: 400px; top: 355px">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px">👩‍💻</span>
<span class="emoji" style="left: 430px; top: 295px">👨🏻‍💻</span>
<span class="emoji" style="left: 495px; top: 295px">👨🏼‍💻</span>
<h3 style="position: absolute; left: 408px; top: 410px">Development</h3>

<!-- Production -->
<span class="bigEmoji" style="left: unset; right: 100px; top: 40px">🌈</span>
<h3 style="position: absolute; right: 90px; top: 145px">Production</h3>

<!-- Operations -->
<span class="emoji" style="left: 290px; top: 90px" v-motion :initial="{ scale: 0 }" :enter="{ scale: 1 }">👩🏽‍💻</span>
<h3 style="position: absolute; left: 245px; top: 145px" v-motion :initial="{ scale: 0 }" :enter="{ scale: 1 }">Operations</h3>

---

<!-- Timeline -->
<span style="position: absolute; left: 64px; top: 475px; height: 2px; width: 440px; background: white; opacity: 0.3" />
<span class="smallEmoji" style="left: 32px; top: 445px; opacity: 0.3">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; opacity: 0.3; fontSize: 18px">Before Agile</strong>
<span class="smallEmoji" style="top: 445px">👍</span>
<strong style="position: absolute; left: 340px; top: 490px; width: 300px; text-align: center; fontSize: 18px">Agile</strong>

<!-- Features -->
<span class="smallEmoji" style="left: 750px; top: 40px" v-motion :initial="{ x: 0, scale: 1 }" :enter="{ x: 500, scale: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">🌟</span>
<span class="smallEmoji" style="left: 730px; top: 80px" v-motion :initial="{ x: 0, scale: 1 }" :enter="{ x: 500, scale: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">🌟</span>

<!-- Development -->
<span class="emoji" style="left: 400px; top: 355px" v-motion :initial="{ y: 0, scale: 1 }" :enter="{ y: 500, scale: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px" v-motion :initial="{ y: 0, scale: 1 }" :enter="{ y: 500, scale: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px" v-motion :initial="{ y: 0, scale: 1 }" :enter="{ y: 500, scale: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">👩‍💻</span>
<span class="emoji" style="left: 430px; top: 295px" v-motion :initial="{ y: 0, scale: 1 }" :enter="{ y: 500, scale: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">👨🏻‍💻</span>
<span class="emoji" style="left: 495px; top: 295px" v-motion :initial="{ y: 0, scale: 1 }" :enter="{ y: 500, scale: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">👩🏾‍💻</span>
<span class="emoji" style="left: 465px; top: 235px" v-motion :initial="{ y: 0, scale: 1 }" :enter="{ y: 500, scale: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">👨🏼‍💻</span>
<h3 style="position: absolute; left: 440px; top: 410px" v-motion :initial="{ y: 0, scale: 1 }" :enter="{ y: 500, scale: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">DevOps</h3>

<!-- Production -->
<span class="bigEmoji" style="left: unset; right: 100px; top: 40px" v-motion :initial="{ x: 0, scale: 1 }" :enter="{ x: 500, scale: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">🌈</span>
<h3 style="position: absolute; right: 90px; top: 145px" v-motion :initial="{ x: 0, scale: 1 }" :enter="{ x: 500, scale: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">Production</h3>

<!-- Operations -->
<span class="emoji" style="left: 290px; top: 90px" v-motion :initial="{ x: 0, scale: 1 }" :enter="{ x: -500, scale: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">👩🏽‍💻</span>
<h3 style="position: absolute; left: 245px; top: 145px" v-motion :initial="{ x: 0, scale: 1 }" :enter="{ x: -500, scale: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">Operations</h3>


<!-- Timeline -->
<span style="position: absolute; left: 64px; top: 475px; height: 2px; width: 440px; background: white; opacity: 0.3" />
<span class="smallEmoji" style="left: 32px; top: 445px; opacity: 0.3">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; opacity: 0.3; fontSize: 18px">Before Agile</strong>
<span class="smallEmoji" style="top: 445px">👍</span>
<strong style="position: absolute; left: 340px; top: 490px; width: 300px; text-align: center; fontSize: 18px">Agile</strong>

<!-- Team A -->
<span class="emoji" style="left: 400px; top: 20px" v-motion :initial="{ y: -250, scale: 0 }" :enter="{ y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 20px" v-motion :initial="{ y: -250, scale: 0 }" :enter="{ y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 20px" v-motion :initial="{ y: -250, scale: 0 }" :enter="{ y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">👩‍💻</span>
<h3 style="position: absolute; left: 440px; top: 75px" v-motion :initial="{ y: -250, scale: 0 }" :enter="{ y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">Team A</h3>

<!-- Team B -->
<span class="emoji" style="left: 660px; top: 200px" v-motion :initial="{ x: 250, scale: 0 }" :enter="{ x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">🧑🏽‍💻</span>
<span class="emoji" style="left: 790px; top: 200px" v-motion :initial="{ x: 250, scale: 0 }" :enter="{ x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">🧑🏿‍💻</span>
<span class="emoji" style="left: 725px; top: 200px" v-motion :initial="{ x: 250, scale: 0 }" :enter="{ x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">👩‍💻</span>
<h3 style="position: absolute; left: 710px; top: 255px" v-motion :initial="{ x: 250, scale: 0 }" :enter="{ x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">Team B</h3>

<!-- Team C -->
<span class="emoji" style="left: 400px; top: 355px" v-motion :initial="{ y: 250, scale: 0 }" :enter="{ y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px" v-motion :initial="{ y: 250, scale: 0 }" :enter="{ y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px" v-motion :initial="{ y: 250, scale: 0 }" :enter="{ y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">👩‍💻</span>
<h3 style="position: absolute; left: 440px; top: 410px" v-motion :initial="{ y: 250, scale: 0 }" :enter="{ y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">Team C</h3>

<!-- Team D -->
<span class="emoji" style="left: 140px; top: 200px" v-motion :initial="{ x: -250, scale: 0 }" :enter="{ x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">🧑🏽‍💻</span>
<span class="emoji" style="left: 270px; top: 200px" v-motion :initial="{ x: -250, scale: 0 }" :enter="{ x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">🧑🏿‍💻</span>
<span class="emoji" style="left: 205px; top: 200px" v-motion :initial="{ x: -250, scale: 0 }" :enter="{ x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">👩‍💻</span>
<h3 style="position: absolute; left: 185px; top: 255px" v-motion :initial="{ x: -250, scale: 0 }" :enter="{ x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">Team D</h3>

---

<!-- Timeline -->
<span style="position: absolute; left: 64px; top: 475px; height: 2px; width: 440px; background: white; opacity: 0.3" />
<span class="smallEmoji" style="left: 32px; top: 445px; opacity: 0.3">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; opacity: 0.3; fontSize: 18px">Before Agile</strong>
<span class="smallEmoji" style="top: 445px">👍</span>
<strong style="position: absolute; left: 340px; top: 490px; width: 300px; text-align: center; fontSize: 18px">Agile</strong>

<!-- Team A -->
<span class="emoji" style="left: 400px; top: 20px">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 20px">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 20px">👩‍💻</span>
<h3 style="position: absolute; left: 440px; top: 75px">Team A</h3>

<!-- Team B -->
<span class="emoji" style="left: 660px; top: 200px">🧑🏽‍💻</span>
<span class="emoji" style="left: 790px; top: 200px">🧑🏿‍💻</span>
<span class="emoji" style="left: 725px; top: 200px">👩‍💻</span>
<h3 style="position: absolute; left: 710px; top: 255px">Team B</h3>

<!-- Team C -->
<span class="emoji" style="left: 400px; top: 355px">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px">👩‍💻</span>
<h3 style="position: absolute; left: 440px; top: 410px">Team C</h3>

<!-- Team D -->
<span class="emoji" style="left: 140px; top: 200px">🧑🏽‍💻</span>
<span class="emoji" style="left: 270px; top: 200px">🧑🏿‍💻</span>
<span class="emoji" style="left: 205px; top: 200px">👩‍💻</span>
<h3 style="position: absolute; left: 185px; top: 255px">Team D</h3>

<!-- Operations -->
<span class="emoji" style="left: 140px; top: 20px" v-motion :initial="{ x: -250, y: -250, scale: 0 }" :enter="{ x: 0, y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">👩🏽‍💻</span>
<h3 style="position: absolute; left: 95px; top: 75px" v-motion :initial="{ x: -250, y: -250, scale: 0 }" :enter="{ x: 0, y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">Operations</h3>

---

<!-- Timeline -->
<span style="position: absolute; left: 64px; top: 475px; height: 2px; width: 410px; background: white; opacity: 0.3" />
<span style="position: absolute; left: 506px; top: 475px; height: 2px; width: 410px; background: white;" v-motion :initial="{ scale: 0 }" :enter="{ scale: 1, opacity: 0.3, transition: { type: 'keyframes', ease: 'linear', duration: 500, delay: 500 } }"/>
<span class="smallEmoji" style="left: 32px; top: 445px; opacity: 0.3">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; opacity: 0.3; fontSize: 18px">Before Agile</strong>
<span class="smallEmoji" style="top: 445px" v-motion :initial="{ opacity: 1 }" :enter="{ opacity: 0.3, transition: { type: 'keyframes', ease: 'linear', duration: 500, delay: 500 } }">👍</span>
<strong style="position: absolute; left: 340px; top: 490px; width: 300px; text-align: center; fontSize: 18px" v-motion :initial="{ opacity: 1 }" :enter="{ opacity: 0.3, transition: { type: 'keyframes', ease: 'linear', duration: 500, delay: 500 } }">Agile</strong>
<span class="smallEmoji" style="left: unset; right: 25px; top: 445px" v-motion :initial="{ x: -413 }" :enter="{ x: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">🚀</span>
<strong style="position: absolute; right: 12px; top: 490px; fontSize: 18px" v-motion :initial="{ y: 35 }" :enter="{ y: 0, transition: { type: 'keyframes', ease: 'linear', duration: 500, delay: 500 } }">Platform</strong>

<!-- Team A -->
<span class="emoji" style="left: 400px; top: 20px">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 20px">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 20px">👩‍💻</span>
<h3 style="position: absolute; left: 440px; top: 75px">Team A</h3>

<!-- Team B -->
<span class="emoji" style="left: 660px; top: 200px">🧑🏽‍💻</span>
<span class="emoji" style="left: 790px; top: 200px">🧑🏿‍💻</span>
<span class="emoji" style="left: 725px; top: 200px">👩‍💻</span>
<h3 style="position: absolute; left: 710px; top: 255px">Team B</h3>

<!-- Team C -->
<span class="emoji" style="left: 400px; top: 355px">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px">👩‍💻</span>
<h3 style="position: absolute; left: 440px; top: 410px">Team C</h3>

<!-- Team D -->
<span class="emoji" style="left: 140px; top: 200px">🧑🏽‍💻</span>
<span class="emoji" style="left: 270px; top: 200px">🧑🏿‍💻</span>
<span class="emoji" style="left: 205px; top: 200px">👩‍💻</span>
<h3 style="position: absolute; left: 185px; top: 255px">Team D</h3>

<!-- Operations -->
<span class="emoji" style="left: 140px; top: 20px">👩🏽‍💻</span>
<h3 style="position: absolute; left: 95px; top: 75px">Operations</h3>

---

<!-- Timeline -->
<span style="position: absolute; left: 64px; top: 475px; height: 2px; width: 410px; background: white; opacity: 0.3" />
<span style="position: absolute; left: 506px; top: 475px; height: 2px; width: 410px; background: white; opacity: 0.3"/>
<span class="smallEmoji" style="left: 32px; top: 445px; opacity: 0.3">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; opacity: 0.3; fontSize: 18px">Before Agile</strong>
<span class="smallEmoji" style="top: 445px; opacity: 0.3">👍</span>
<strong style="position: absolute; left: 340px; top: 490px; width: 300px; text-align: center; opacity: 0.3; fontSize: 18px">Agile</strong>
<span class="smallEmoji" style="left: unset; right: 25px; top: 445px">🚀</span>
<strong style="position: absolute; right: 12px; top: 490px; fontSize: 18px">Platform</strong>

<!-- Team A -->
<span class="emoji" style="left: 400px; top: 20px">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 20px">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 20px">👩‍💻</span>
<h3 style="position: absolute; left: 440px; top: 75px">Team A</h3>

<!-- Team B -->
<span class="emoji" style="left: 660px; top: 200px">🧑🏽‍💻</span>
<span class="emoji" style="left: 790px; top: 200px">🧑🏿‍💻</span>
<span class="emoji" style="left: 725px; top: 200px">👩‍💻</span>
<h3 style="position: absolute; left: 710px; top: 255px">Team B</h3>

<!-- Team C -->
<span class="emoji" style="left: 400px; top: 355px">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px">👩‍💻</span>
<h3 style="position: absolute; left: 440px; top: 410px">Team C</h3>

<!-- Team D -->
<span class="emoji" style="left: 140px; top: 200px">🧑🏽‍💻</span>
<span class="emoji" style="left: 270px; top: 200px">🧑🏿‍💻</span>
<span class="emoji" style="left: 205px; top: 200px">👩‍💻</span>
<h3 style="position: absolute; left: 185px; top: 255px">Team D</h3>

<!-- Operations -->
<span class="emoji" style="left: 140px; top: 20px">👩🏽‍💻</span>
<h3 style="position: absolute; left: 95px; top: 75px">Operations</h3>

<!-- IDP -->
<span class="circle" style="left: 390px; top: 127px" v-motion :initial="{ scale: 0 }" :enter="{ scale: 1,  transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">IDP</span>

---

<!-- Timeline -->
<span style="position: absolute; left: 64px; top: 475px; height: 2px; width: 410px; background: white; opacity: 0.3" />
<span style="position: absolute; left: 506px; top: 475px; height: 2px; width: 410px; background: white; opacity: 0.3"/>
<span class="smallEmoji" style="left: 32px; top: 445px; opacity: 0.3">🦖</span>
<strong style="position: absolute; left: 12px; top: 490px; opacity: 0.3; fontSize: 18px">Before Agile</strong>
<span class="smallEmoji" style="top: 445px; opacity: 0.3">👍</span>
<strong style="position: absolute; left: 340px; top: 490px; width: 300px; text-align: center; opacity: 0.3; fontSize: 18px">Agile</strong>
<span class="smallEmoji" style="left: unset; right: 25px; top: 445px">🚀</span>
<strong style="position: absolute; right: 12px; top: 490px; fontSize: 18px">Platform</strong>

<!-- Team A -->
<span class="emoji" style="left: 400px; top: 20px">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 20px">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 20px">👩‍💻</span>
<h3 style="position: absolute; left: 440px; top: 75px">Team A</h3>

<!-- Team B -->
<span class="emoji" style="left: 660px; top: 200px">🧑🏽‍💻</span>
<span class="emoji" style="left: 790px; top: 200px">🧑🏿‍💻</span>
<span class="emoji" style="left: 725px; top: 200px">👩‍💻</span>
<h3 style="position: absolute; left: 710px; top: 255px">Team B</h3>

<!-- Team C -->
<span class="emoji" style="left: 400px; top: 355px">🧑🏽‍💻</span>
<span class="emoji" style="left: 530px; top: 355px">🧑🏿‍💻</span>
<span class="emoji" style="left: 465px; top: 355px">👩‍💻</span>
<h3 style="position: absolute; left: 440px; top: 410px">Team C</h3>

<!-- Team D -->
<span class="emoji" style="left: 140px; top: 200px">🧑🏽‍💻</span>
<span class="emoji" style="left: 270px; top: 200px">🧑🏿‍💻</span>
<span class="emoji" style="left: 205px; top: 200px">👩‍💻</span>
<h3 style="position: absolute; left: 185px; top: 255px">Team D</h3>

<!-- Operations -->
<span class="emoji" style="left: 140px; top: 20px" v-motion :initial="{ x: 0, y: 0, scale: 1 }" :enter="{ x: -500, y: -500, scale: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">👩🏽‍💻</span>
<h3 style="position: absolute; left: 95px; top: 75px" v-motion :initial="{ x: 0, y: 0, scale: 1 }" :enter="{ x: -500, y: -500, scale: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">Operations</h3>

<!-- IDP -->
<span class="circle" style="left: 390px; top: 127px">IDP</span>

---

# Why?

<v-clicks>

🤯 Less cognitive load

🤸 Autonomy

🤝 Unified solutions

📝 Standardized workflows

🗂️ Neat service catalogue
</v-clicks>

<!--
## Less cognitive load

- Developers can focus on writing code and don't have to learn many technologies
- Even if there are developers that know how to code, deploy and observe that's a lot of cognitive load that's not necessary
- Reduce the amount of steps that need to be taken while development and deployment
- Complexity is not eliminated but moved behind the platform

## Autonomy

- If a developer needs a database, there should be a mechanism to get it, no matter if that person is a database administrator or a Node.js developer
- Vastly reduced wait times for others

## Unified Solutions

- Many different solutions = chaos and hard to trouble shoot
- IDP brings order into the chaos

## Standardized workflows

- Golden paths
- Not about forcing standards but about regulating autonomy
- Less repetitive tasks

## Neat service catalogue

- Provide a starting point
- Especially helps for new employees
-->

---
layout: center
preload: false
---

<img src="/platform.webp" alt="Platform" class="background" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0" />

<h1 style="z-index: 2">Platforms are a means of centralising expertise whilst decentralising innovation to the customer or
user</h1>

<a class="source" style="z-index: 2" href="https://www.thoughtworks.com/insights/blog/platform-tech-strategy-three-layers" target="_blank">
thoughtworks.com
</a>

<!--
ops related tasks become a breeze<br/>
no operations bottleneck<br/>
performance and innovation -> awesome<br/>  

we're bulding one at dynatrace<br/>
How can users interact with the platform?
-->

---
layout: center
---

<h1 class="gradient">
Every Platform Offers a User Interface
</h1>

<div style="display: flex; flex-direction: row; gap: 48px; margin-top: 48px">
<div style="width: 120px; display: flex; flex-direction: column; justify-content: center; align-items: center; gap: 12px" v-click>
<vscode-icons-file-type-source class="icon"></vscode-icons-file-type-source>
Command Line Interface
</div>
<div style="width: 120px; display: flex; flex-direction: column; justify-content: center; align-items: center; gap: 12px" v-click>
<vscode-icons-file-type-apib2 class="icon"></vscode-icons-file-type-apib2>
HTTP<br/>API
</div>
<div style="width: 120px; display: flex; flex-direction: column; justify-content: center; align-items: center; gap: 12px" v-click>
<logos-git-icon class="icon"></logos-git-icon>
Git Repository
</div>
<div style="width: 120px; display: flex; flex-direction: column; justify-content: center; align-items: center; gap: 12px" v-click>
<img class="icon" src="/backstage.svg" alt="Backstage"/>
Developer Portal
</div>
<div style="width: 120px; display: flex; flex-direction: column; justify-content: center; align-items: center; gap: 12px" v-click>
<arcticons-anythingtopip class="icon"></arcticons-anythingtopip>
Something Else
</div>
</div>

<!--
Well-designed user interface is key for adoption<br/>
Get it right: more and more<br/>
ignore needs: end up like this folk on reddit
-->

---
preload: false
layout: center
---

<img src="/reddit.png" alt="Reddit post" style="border-radius: 4px"/>

<!--
No one sees value if it doesn't solve tehir problems

How to build a platofrm people actually like to use?
-->

---

# How to Build a Successful Platform?

<v-clicks>

🫵 Find <strong>YOUR</strong> needs

🎯 Have a clear mission

✏️ Design for a good User Experience

🐥 Start small

📊 Make it observable
</v-clicks>

<!--
It depends <br/>
Heaviliy influenced by its domain<br/>
Needs to be adjusted to workflows<br/>
find your needs, use-cases, requirements

Let's get focused<br/>
What problems?<br/>
Don't get distracted with tools, it's all about delivering value

Intuitive interactions & seamless workflows<br/>
Gregor's Law: "Excessive complexity is nature’s punishment for organizations that are
unable to make decisions."

MVP -> TVP

You are going to face errors. Be prepared
-->

---
layout: center
---

<img src="/product.webp" alt="Platform" class="background" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0" />

<h1 style="z-index: 2">
Treat Your Developer Platform as a Product
</h1>

<div style="position: absolute; width: 250px; top:350px; display: flex; align-items: center; justify-content: center; flex-direction: column">
<img style="height: 100px; width: 100px" src="/qr-techtalkdays.svg" alt="QR Code"/>
<a style="font-size: 12px; margin-top: 8px" href="https://youtu.be/zgxdq3O-atE?si=GdpU7MBRZdd_tuN4">Introduction to<br/>Developer Platforms</a>
</div>


<!--
Developers are your most important customers

Listen to their needs, gather their feedback, and iterate based on their experiences.

Building a
platform people love is about building a platform people actually use.

How do people actually interact with the platform? That's where we finally start diving into abstraction.

Burger example
-->

---
layout: two-cols
preload: false
---

<div style="width: 100%; height: 100%; display: flex; justify-content: center; align-items: center; text-align: center; gap: 12px; flex-direction: column">
    <span style="font-size: 48px;" :class="{ disabled: $slidev.nav.clicks > 4 }">🍞</span>
    <span style="font-size: 48px;" v-click :class="{ disabled: $slidev.nav.clicks > 4, invisible: $slidev.nav.clicks < 1 }">🥬</span>
    <span style="font-size: 48px;" v-click :class="{ disabled: $slidev.nav.clicks > 4, invisible: $slidev.nav.clicks < 2 }">🥩</span>
    <span style="font-size: 48px;" v-click :class="{ disabled: $slidev.nav.clicks > 4, invisible: $slidev.nav.clicks < 3 }">🧀</span>
    <span style="font-size: 48px;" v-click :class="{ disabled: $slidev.nav.clicks > 4, invisible: $slidev.nav.clicks < 4 }">🍅</span>
</div>

::right::
<div style="width: 100%; height: 100%; display: flex; justify-content: center; align-items: center;">
    <span style="font-size: 100px;" v-click :class="{ invisible: $slidev.nav.clicks < 5 }">🍔</span>
</div>

<!--
That's the power of abstraction
-->

---
layout: center
---

<img src="/connect.webp" alt="Platform" class="background" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0" />

<h1 style="z-index: 2">
However, the value of the platform doesn’t just derive from its scope, [...] but also from how these pieces come together to form a meaningful whole
</h1>

<a class="source" style="z-index: 2" href="https://leanpub.com/platformstrategy" target="_blank">
Platform Strategy, Gregor Hohpe
</a>

<!--
value of a platform = how well it connects components 

Just like cooking. Highest quality ingredients but great meal comes from how they are prepared.
We need to combine components and offer well-prepared meals to our developers

Meal = opinionated. Get all elements and put opinions & experiences on top to create something that can be **easily consumed**

High & direct impact on cognitive load

Devs should not have to wrestle with the inner mechanics of a platform

They should focus on "what" with minimal exposure to "how"
-->

---
layout: center
preload: false
---

<img style="height: 250px; width: 250px; position: absolute; left: 230px; top: 150px" src="/crossplane.svg" alt="Crossplane Logo"/>
<img style="height: 250px; width: 250px; position: absolute; left: 500px; top: 150px" src="/backstage.svg" alt="Backstage Logo"/>

<span v-click :class="{ invisible: $slidev.nav.clicks < 1 }">
<div style="position: absolute; width: 250px; left: 0px; top:50px; display: flex; align-items: center; justify-content: center; flex-direction: column">
<img style="height: 80px; width: 80px" src="/kubevela.svg" alt="Kubevela Logo"/>
<span style="font-size: 12px">KubeVela</span>
</div>

<div style="position: absolute; width: 250px; left: 0px; top:200px; display: flex; align-items: center; justify-content: center; flex-direction: column">
<span style="font-size: 48px">kro</span>
<span style="font-size: 12px">Kube Resource Orchestrator</span>
</div>

<div style="position: absolute; width: 250px; left: 0px; top:350px; display: flex; align-items: center; justify-content: center; flex-direction: column">
<img style="height: 80px; width: 80px" src="/helm.svg" alt="Helm Logo"/>
<span style="font-size: 12px">Helm</span>
</div>

<div style="position: absolute; width: 250px; right: 0px; top:150px; display: flex; align-items: center; justify-content: center; flex-direction: column">
<img style="height: 80px; width: 80px;" src="/port.svg" alt="Port Logo"/>
<span style="font-size: 12px">Port</span>
</div>

<div style="position: absolute; width: 250px; right: 0px; top:300px; display: flex; align-items: center; justify-content: center; flex-direction: column">
<img style="height: 80px; width: 80px; color: white" src="/cortex.svg" alt="Cortex Logo"/>
<span style="font-size: 12px">Cortex</span>
</div>
</span>

<!--
How can abstraction be implemented in a cloud native platform?

Very different approaches, alternatives exist
-->

---

<img src="/crossplane.svg" alt="Crossplane Logo" style="position: absolute; height: 200px; width: 200px; left: 100px; top: 176px" v-motion :initial="{ scale: 1.25, x: 130, y: 0 }" :enter="{ scale: 1, x: 0, y: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }"/>
<img src="/backstage.svg" alt="Backstage Logo" style="position: absolute; height: 80px; width: 80px; left: 895px; top: 420px" v-motion :initial="{ scale: 3.125, x: -395, y: -275, opacity: 1 }" :enter="{ scale: 1, x: 0, y: 0, opacity: 0.2, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }"/>

<span v-click>
<Arrow v-bind="{ x1:270, y1:240, x2:430, y2:60 }" />
<skill-icons-gcp-light style="position: absolute; height: 80px; width: 80px; left: 450px; top: 20px" />
</span>
<span v-click>
<Arrow v-bind="{ x1:270, y1:250, x2:430, y2:160 }" />
<skill-icons-azure-light style="position: absolute; height: 80px; width: 80px; left: 450px; top: 120px" />
</span>
<span v-click>
<Arrow v-bind="{ x1:270, y1:260, x2:430, y2:260 }" />
<skill-icons-aws-light style="position: absolute; height: 80px; width: 80px; left: 450px; top: 220px" />
</span>
<span v-click>
<Arrow v-bind="{ x1:270, y1:270, x2:430, y2:360 }" />
<skill-icons-github-light style="position: absolute; height: 80px; width: 80px; left: 450px; top: 320px" />
</span>
<span v-click>
<Arrow v-bind="{ x1:270, y1:280, x2:430, y2:460 }" />
<arcticons-anythingtopip style="position: absolute; height: 80px; width: 80px; left: 450px; top: 420px" />
</span>

<span v-click>
<Arrow v-bind="{ x1:550, y1:60, x2:650, y2:60 }" />
<ion:ios-more style="position: absolute; height: 50px; width: 50px; left: 670px; top: 35px" />
<Arrow v-bind="{ x1:550, y1:160, x2:650, y2:160 }" />
<ion:ios-more style="position: absolute; height: 50px; width: 50px; left: 670px; top: 135px" />
<Arrow v-bind="{ x1:550, y1:260, x2:650, y2:260 }" />
<ion:ios-more style="position: absolute; height: 50px; width: 50px; left: 670px; top: 235px" />
<Arrow v-bind="{ x1:550, y1:360, x2:650, y2:360 }" />
<ion:ios-more style="position: absolute; height: 50px; width: 50px; left: 670px; top: 335px" />
<Arrow v-bind="{ x1:550, y1:460, x2:650, y2:460 }" />
<ion:ios-more style="position: absolute; height: 50px; width: 50px; left: 670px; top: 435px" />
</span>

<!--
Two super powers: IaC & compositions.

-->

---
layout: two-cols-header
preload: false
---

<img src="/crossplane.svg" alt="Crossplane Logo" style="position: absolute; height: 80px; width: 80px; left: 0px; top: 15px" v-motion :initial="{ scale: 2.5, x: 100, y: 151 }" :enter="{ scale: 1, x: 0, y: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }"/>
<img src="/backstage.svg" alt="Backstage Logo" style="position: absolute; height: 80px; width: 80px; left: 895px; top: 425px; opacity: 0.2" />
<skill-icons-gcp-light style="position: absolute; height: 60px; width: 60px; left: 80px; top: 25px"  v-motion :initial="{ scale: 1.33, x: 370, y: -5 }" :enter="{ scale: 1, x: 0, y: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }" />

::left::

<v-click>
```yaml{all|1-2|3-4|5-18|all}
apiVersion: sql.gcp.upbound.io/v1beta1
kind: DatabaseInstance
metadata:
  name: cncf-sample-instance
spec:
  forProvider:
    databaseVersion: POSTGRES_15
    deletionProtection: false
    replicaConfiguration:
      ...
    region: us-central1
    settings:
      - diskSize: 20
        tier: db-f1-micro
        backupConfiguration:
          ...
        privateNetworkRef:
          ...
  writeConnectionSecretToRef:
    name: example-sql-db-instance-secret
    namespace: upbound-system
```
</v-click>

::right::

<v-click>
```yaml{all|1-2|3-4|5-7|all}
apiVersion: sql.gcp.upbound.io/v1beta1
kind: Database
metadata:
  name: cncf-sample-database
spec:
  forProvider:
    instance: cncf-sample-instance
```
</v-click>

<v-click >
<img style="padding: 12px 36px 12px 0" src="/gcp-database.png" alt="Database"/>
</v-click>

---
layout: two-cols-header
clicks: 6
---

<img src="/crossplane.svg" alt="Crossplane Logo" style="position: absolute; height: 80px; width: 80px; left: 0px; top: 15px"/>
<img src="/backstage.svg" alt="Backstage Logo" style="position: absolute; height: 80px; width: 80px; left: 895px; top: 425px; opacity: 0.2" />
<skill-icons-gcp-light style="position: absolute; height: 60px; width: 60px; left: 80px; top: 25px"   />

<v-click at="5"><span style="position: absolute; left: 380px; top: 45px; font-size: 350px">}</span></v-click>

::left::

<div style="display: flex; flex-direction: column; gap: 12px; align-items: center">
<div class="component">Database Instance</div>
<div class="component">Database</div>
<v-click at="1"><div class="component">Deployment</div></v-click>
<v-click at="2"><div class="component">Service</div></v-click>
<v-click at="3"><div class="component">Ingress</div></v-click>
<v-click at="4"><div class="component">DNS Configuration</div></v-click>
</div>

::right::

<div class="component" style="position: absolute; left: 550px; top: 273px" v-click="[5,6]">Application</div>

<v-click at="6">
<div style="position: absolute; left: 550px; top: 200px">
```yaml
apiVersion: demo.cloudnativelinz.github.io/v1beta1
kind: Application
metadata:
  name: my-fancy-app
spec:
  domain: my-fancy-app.cloudnativelinz.github.io
  database:
    enabled: true
    diskSize: 20GB
```
</div>
</v-click>

<!--
You need knowledge about GCP and Kubernetes.

We can make it easier

Composition enables us to create abstractions with Crossplane.

We can also choose a different path: Backstage
-->

---
layout: center
preload: false
clicks: 3
---

<img src="/crossplane.svg" alt="Crossplane Logo" style="position: absolute; height: 80px; width: 80px; left: 895px; top: 420px" v-motion :initial="{ opacity: 1, x: -895, y: -405 }" :enter="{ x: 0, y: 0, opacity: 0.2, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }"/>
<img src="/backstage.svg" alt="Backstage Logo" style="position: absolute; height: 60px; width: 60px; left: 15px; top: 15px" v-motion :initial="{ scale: 1.3, x: 880, y: 405 }" :enter="{ scale: 1, x: 0, y: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }"/>

<img v-if="$slidev.nav.clicks === 1" src="/scaffolder-overview.png" style="width: 90%">
<img v-if="$slidev.nav.clicks === 2" src="/scaffolder-review.png" style="width: 90%">
<img v-if="$slidev.nav.clicks === 3" src="/scaffolder-steps.png" style="width: 90%">

---
layout: center
---

# Crossplane + Backstage = ❤️

---

# Making Things Simpler Isn’t Always Simple

<v-clicks>

<span>🧑‍💻 Focus on the user</span>

<span>🗺️ Understand your domain</span>

<span>🤓 Provide opinions, not restrictions</span>

<span>📖 Be transparent</span>

<span>🎯 Show the right information at the right time</span>
</v-clicks>

<!--
And finally, let's remember a few guiding principles to ensure our abstractions are actually making things simpler,
instead of introducing hidden complexity

User focus: think about tasks, does your abstraction help achieving this task?<br/>it's not about hiding details but about showing the right information at the right time

Understand domain: meaningful name that shields from complexity<br/>name -> interface -> implementation

opinions: needs a strong vision. removing choice vs providing defaults<br/>jigsaw puzzle removing pieces makes it harder

transparent: communication, decision records, give devs the chance to understand what's going on

right information: failure doesn't respect abstraction
-->

---
layout: center
---

<h1 class="gradient" style="margin: 0; padding: 0; font-size: 36px">TLDR;</h1>
<div style="display: flex">
<h1 style="font-size: 64px; padding-top: 16px">It depends️</h1><h1 class="gradient" style="font-size: 48px">™️</h1>
</div>

<!--
This talk summarizes a lot of things, I learned from books, podcasts and conversations with great people.

Abstraction is not easy

But if you focus on your users and domain and follow guidelines
like using opinions instead of restrictions and being transparent it is doable and will have great effects on reducing
cognitive load and increasing developer productivity.
r-->

---

# Resources

<div style="display: flex; gap: 24px">
<div style="display: flex; flex-direction: column; align-items: center; gap: 16px; width: 200px; text-align: center">
<img src="/platform-strategy.png" style="object-fit: contain"/>
<a href="https://leanpub.com/platformstrategy" target="_blank">
Platform Strategy, Gregor Hohpe<br/>&nbsp;
</a></div>

<div style="display: flex; flex-direction: column; justify-content: center; align-items: center; gap: 16px; width: 200px; text-align: center">
<img src="/team-topologies.jpg" style="object-fit: contain"/>
<a href="https://teamtopologies.com/book" target="_blank">
Team Topologies, Matthew Skelton & Manuel Pais
</a>
</div>

<div style="display: flex; flex-direction: column; justify-content: center; align-items: center; gap: 16px; width: 220px; text-align: center">
<img src="/ddd.jpg" style="height: 280px; object-fit: contain"/>
<a href="https://www.oreilly.com/library/view/domain-driven-design-tackling/0321125215/" target="_blank">
Domain-Driven Design, Eric Evans<br/>&nbsp;
</a>
</div>

<div style="display: flex; flex-direction: column; justify-content: start; align-items: center; gap: 16px; width: 220px; text-align: center">
<img src="/dot.jpeg" style="object-fit: contain"/>
<a href="https://www.youtube.com/c/devopstoolkit" target="_blank">
The DevOps Toolkit, Viktor Farcic
</a>

<img src="/thoughtworks.png" style="object-fit: contain; padding: 0 24px"/>
<a href="https://www.thoughtworks.com/insights" target="_blank">
Thoughtworks Blog & Podcast
</a>

<h1 style="margin: 12px 0 0 0">💬</h1>
A lot of interesting conversations
</div>
</div>

---
layout: center
---

# Thank you ❤️

<div style="display: flex; flex-direction: row; gap: 100px; margin: 32px">
<div>
<img style="width: 200px; height: 200px" src="/qr-linkedin.svg" />
<strong>LinkedIn</strong>
</div>
<div>
<img style="width: 200px; height: 200px" src="/qr-slides.svg" />
<strong>Slides</strong>
</div>
</div>