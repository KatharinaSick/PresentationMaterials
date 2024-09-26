---
theme: ksick-dynatrace
title: "Simplifying Development with Developer Platforms: A Beginner's Overview"
defaults:
  speaker: Katharina Sick
  image: me.webp
  website: ksick.dev
  description: Developer Advocate at Dynatrace
  eventName: Women Techmakers Salzburg
  eventDate: September 26, 2024
  showDynatraceLogo: true
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

.bigEmoji, .emoji, .smallEmoji, .circle, .logo {
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

.logo {
  width: 50px;
  height: 50px;

  padding: 8px;

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

# Simplifying Development

A Beginner's Overview to Developer Platforms

---
layout: speaker
---

---
layout: center
---

<img src="/hcc.jpg" alt="Sticking post its" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0" />

---
layout: two-cols
---

<img src="/happy-dev.jpeg" alt="Happy Developer" style="padding: 48px"/>

::right::

<img v-click src="/sad-dev.jpeg" alt="Sad Developer" style="padding: 48px"/>

---
preload: false
---

<span
class="bigEmoji"
v-motion
:initial="{ scale: 0 }"
:enter="{ scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">
🦖
</span>

---
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
preload: false
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
---

<img src="/connect.webp" alt="Platform" class="background" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0" />

<h1 style="z-index: 2; font-size: 48px; line-height: 1.3em">
Platform Engineering is all about <span class="gradient">empowering developers</span>
</h1>

---
preload: false
layout: center
---

<img src="/reddit.png" alt="Reddit post" style="border-radius: 4px"/>

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

---
preload: false
---

# How to Build a Successful Platform?

<v-clicks>

🫵 Find <strong>YOUR</strong> needs

🎯 Have a clear mission with measurable KPIs

✏️ Design for a good User (Developer) Experience

🐥 Start small

📊 Make everything observable
</v-clicks>

---
layout: center
---

<img src="/product.webp" alt="Platform" class="background" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0" />

<h1 style="z-index: 2">
Treat Your Developer Platform as a Product
</h1>

<!--
Developers are your most important customers

Listen to their needs, gather their feedback, and iterate based on their experiences.

Building a platform people love starts with building a platform people actually use.
-->

---
layout: center
---

<img src="/perspective.jpg" alt="Platform" class="background" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0" />

<div style="display: flex; flex-flow: column; gap: 12px; margin-top: -64px">
<h1 style="z-index: 2; margin: 0; font-size: 48px">
<v-click><span class="gradient">Your<br/></span></v-click>
</h1>
<h1 style="z-index: 2; margin: 0; font-size: 48px">
Perspective Matters
</h1>
</div>

<div style="position: absolute; width: 250px; top:350px; display: flex; align-items: center; justify-content: center; flex-direction: column">
<img style="height: 100px; width: 100px" src="/qr-hbr.svg" alt="QR Code"/>
<a style="font-size: 12px; margin-top: 8px" target="_blank" href="https://hbr.org/2013/12/how-diversity-can-drive-innovation">HBR: How Diversity<br/>Can Drive Innovation</a>
</div>

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

---
layout: center
---

<img src="/kcd-austria.jpg" alt="Speaker at KCD Austria" style="object-fit: cover; opacity: 0.3; position:absolute; width: 100%; height: 100%; left: 0; top: 0" />
<img src="/kcd-austria-logo.png" alt="KCD Austria Logo" style="position: absolute; top: 12px; right: 12px; height: 100px; z-index: 2" />

<h1 style="font-size: 56px; line-height: 1.2; z-index: 2">
<span style="font-size: 32px">Join us at<br/></span>
KCD Austria
<span style="font-size: 32px"><br/>October 8th-10th</span>

</h1>
<a href="https://kcdaustria.at" target="_blank" style="font-size: 24px; z-index: 2"><br/>kcdaustria.at</a>

<div style="position: absolute; z-index: 2; top: 10px">
<p style="font-size: 20px; line-height: 1.3">10% Discount Code:<br/><strong>COMMUNITYROCKS</strong></p>
</div>
