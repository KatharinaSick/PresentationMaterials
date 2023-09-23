---
theme: ksick-dynatrace
title: Internal Developer Platforms - The Key to Developer Productivity
download: true
defaults:
  speaker: Katharina Sick
  image: https://raw.githubusercontent.com/KatharinaSick/PresentationMaterials/main/About/Drawing.png
  website: ksick.dev
  jobTitle: Senior Software Engineer
  eventName: TechTalkDays
  eventDate: September 6, 2023
---

<style>
/* Slide size is always 980x552 */
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

# Internal Developer Platforms

The Key to Developer Productivity

<!--
## Introduce myself
- Passionate about 
  - Automating deployments and infrastructure
  - Speeding up pipelines
  - Observability and security
  - Improving developer experience and unifying solutions

## Why IDP?
- Many developers do not share this passion
- Enable developers to focus on what they usually like most and therefore are best at: writing code
- Take away all those daunting tasks around shipping and running software in production
- No compromises regarding autonomy

## ⏭️ But what is an IDP?
To explain that we will travel back in time together to see how the way we are working has evolved over time. And we are 
going to **travel back a loooong time** ⏭️
-->

---
layout: custom
preload: false
---

<span
class="bigEmoji"
v-motion
:initial="{ scale: 0 }"
:enter="{ scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">
🦖
</span>

<!--
## Well, not to the Dinosaur era, but ⏭️
-->

---
layout: custom
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

<!--
## To the time before Agile was a thing
-->

---
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: custom
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
layout: center
---

# Why?

---
preload: false
---

<h1 v-motion :initial="{x: 384, y: 196}" :enter="{x: 0, y: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 }}">Why?</h1>

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
preload: false
layout: image-center
image: /reddit.png
---

---
preload: false
layout: center
---

# How?

---
preload: false
---

<h1 v-motion :initial="{x: 384, y: 196}" :enter="{x: 0, y: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 }}">How?</h1>

<v-clicks>

🫵 Find <strong>YOUR</strong> needs

🎯 Have a clear mission

✏️ Design for a good User Experience

🐥 Start small

📊 Make it observable
</v-clicks>

<!--
## Build for your needs

- Find out how engineers are working at the moment
- A lot of stakeholders
- Think about cultural changes

## Have a clear mission

- You need to have a goal for your platform

## Design

- There are no bad users, just bad design
- Stay away from RTFM driven development (Design > Documentation) - Docs should be a last resort
- complexity should be moved into the platform
- Design (not UI but design) is important even if your platform doesn't have a gui

## Start Small

- Quality > Quantity
- Fast feedback loop

## Observability

- Measure the success of your IDP
- User Adoption & Productivity
  - Active users
  - Surveys for User satisfaction
- DORA
  - Deployment Frequency
  - Lead time for changes
  - Change Failure rate
  - Time to restore service
-->

---
preload: false
layout: center
---

# Treat Your
# Internal Developer Platform
# as a Product

<!--
- The most important thing to take away today
- Find stakeholders
- identify use cases
- have a clear mission
- apply things we already learned in Software development like MVP
-->

---
layout: custom
preload: false
---

<span
class="bigEmoji"
v-motion
:initial="{ scale: 0 }"
:enter="{ scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">
👩‍💻
</span>

---
layout: custom
preload: false
---

<!-- Feature -->
<span
class="emoji"
style="top: 165px"
v-motion
:initial="{ y: 60, scale: 0 }"
:enter="{ y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }">
🌟
</span>

<!-- Alex -->
<span class="bigEmoji">👩‍💻</span>

---
layout: custom
preload: false
---

<!-- Alex -->
<span class="emoji" style="left: 40px; top: 36px" v-motion :initial="{ y: 196, x: 394, scale: 2 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">👩‍💻</span>
<span class="smallEmoji" style="left: 90px; top: 36px" v-motion :initial="{ y: 139, x: 365, scale: 2 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">🌟</span>

<!-- Build -->
<span class="circleText" style="fontSize: 32px" v-motion :initial="{ scale: 0 }" :enter="{ scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">BUILD</span>

---
layout: custom
preload: false
---

<!-- Alex -->
<span class="emoji" style="left: 40px; top: 36px">👩‍💻</span>
<span class="smallEmoji" style="left: 90px; top: 36px">🌟</span>

<!-- Build -->
<span class="circleText" style="fontSize: 32px">BUILD</span>
<logos-github-actions class="logo" style="top: 160px" v-motion :initial="{ y: 60, scale: 0 }" :enter="{ y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }" />

---
layout: custom
preload: false
---

<!-- Alex -->
<span class="emoji" style="left: 40px; top: 36px">👩‍💻</span>
<span class="smallEmoji" style="left: 90px; top: 36px">🌟</span>

<!-- CI -->
<span class="circleTextSmall" style="left: 175px; top: 36px; fontSize: 14px" v-motion :initial="{ y: 196, x: 260, scale: 2 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">BUILD</span>
<logos-github-actions class="logo" style="left: 225px; top: 36px" v-motion :initial="{ y: 124, x: 240, scale: 1 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }"/>

<!-- Spec -->
<span style="position: absolute; width: 400px; left: 290px; top: 150px;" v-motion :initial="{ y: 60, scale: 0 }" :enter="{ y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 800 } }">
```yaml{3,4}
apiVersion: core.oam.dev/v1beta1
kind: Application
metadata:
  name: hello-world
spec:
  components:
    - name: service
      type: webservice
      properties:
        image: registry/hello-world
        ports:
         - port: 8080
           expose: true
      traits:
        - type: database
          properties:
            size: medium
```
</span>

---
layout: custom
preload: false
---

<!-- Alex -->
<span class="emoji" style="left: 40px; top: 36px">👩‍💻</span>
<span class="smallEmoji" style="left: 90px; top: 36px">🌟</span>

<!-- CI -->
<span class="circleTextSmall" style="left: 175px; top: 36px; fontSize: 14px">BUILD</span>
<logos-github-actions class="logo" style="left: 225px; top: 36px" />

<!-- Spec -->
<span style="position: absolute; width: 400px; left: 290px; top: 150px;">
```yaml{5-8}
apiVersion: core.oam.dev/v1beta1
kind: Application
metadata:
  name: hello-world
spec:
  components:
    - name: service
      type: webservice
      properties:
        image: registry/hello-world
        ports:
         - port: 8080
           expose: true
      traits:
        - type: database
          properties:
            size: medium
```
</span>

---
layout: custom
preload: false
---

<!-- Alex -->
<span class="emoji" style="left: 40px; top: 36px">👩‍💻</span>
<span class="smallEmoji" style="left: 90px; top: 36px">🌟</span>

<!-- CI -->
<span class="circleTextSmall" style="left: 175px; top: 36px; fontSize: 14px">BUILD</span>
<logos-github-actions class="logo" style="left: 225px; top: 36px" />

<!-- Spec -->
<span style="position: absolute; width: 400px; left: 290px; top: 150px;">
```yaml{10,12}
apiVersion: core.oam.dev/v1beta1
kind: Application
metadata:
  name: hello-world
spec:
  components:
    - name: service
      type: webservice
      properties:
        image: registry/hello-world
        ports:
         - port: 8080
           expose: true
      traits:
        - type: database
          properties:
            size: medium
```
</span>

---
layout: custom
preload: false
---

<!-- Alex -->
<span class="emoji" style="left: 40px; top: 36px">👩‍💻</span>
<span class="smallEmoji" style="left: 90px; top: 36px">🌟</span>

<!-- CI -->
<span class="circleTextSmall" style="left: 175px; top: 36px; fontSize: 14px">BUILD</span>
<logos-github-actions class="logo" style="left: 225px; top: 36px" />

<!-- Spec -->
<span style="position: absolute; width: 400px; left: 290px; top: 150px;">
```yaml{15-17}
apiVersion: core.oam.dev/v1beta1
kind: Application
metadata:
  name: hello-world
spec:
  components:
    - name: service
      type: webservice
      properties:
        image: registry/hello-world
        ports:
         - port: 8080
           expose: true
      traits:
        - type: database
          properties:
            size: medium
```
</span>

---
layout: custom
preload: false
---


<!-- Alex -->
<span class="emoji" style="left: 40px; top: 36px">👩‍💻</span>
<span class="smallEmoji" style="left: 90px; top: 36px">🌟</span>

<!-- CI -->
<span class="circleTextSmall" style="left: 175px; top: 36px; fontSize: 14px">BUILD</span>
<logos-github-actions class="logo" style="left: 225px; top: 36px" />

<!-- Spec -->
<span style="position: absolute; width: 400px; left: 290px; top: 150px;">
```yaml
apiVersion: core.oam.dev/v1beta1
kind: Application
metadata:
  name: hello-world
spec:
  components:
    - name: service
      type: webservice
      properties:
        image: registry/hello-world
        ports:
         - port: 8080
           expose: true
      traits:
        - type: database
          properties:
            size: medium
```
</span>
<img class="logo" src="/oam.svg" style="top: 90px" v-motion :initial="{ y: 60, scale: 0 }" :enter="{ y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }" />

---
layout: custom
preload: false
---

<!-- Alex -->
<span class="emoji" style="left: 40px; top: 36px">👩‍💻</span>
<span class="smallEmoji" style="left: 90px; top: 36px">🌟</span>

<!-- Build -->
<span class="circleTextSmall" style="left: 175px; top: 36px; fontSize: 14px">BUILD</span>
<logos-github-actions class="logo" style="left: 225px; top: 36px" />

<!-- Spec -->
<span class="circleTextSmall" style="left: 310px; top: 36px; fontSize: 14px" v-motion :initial="{ y: 196, x: 125, scale: 3 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">SPEC</span>
<img class="logo" src="/oam.svg" style="left: 360px; top: 36px" v-motion :initial="{ y: 54, x: 105, scale: 1 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }" />

<!-- Push -->
<span class="circleText" style="fontSize: 28px" v-motion :initial="{ scale: 0 }" :enter="{ scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">PUSH</span>

---
layout: custom
preload: false
---

<!-- Alex -->
<span class="emoji" style="left: 40px; top: 36px">👩‍💻</span>
<span class="smallEmoji" style="left: 90px; top: 36px">🌟</span>

<!-- Build -->
<span class="circleTextSmall" style="left: 175px; top: 36px; fontSize: 14px">BUILD</span>
<logos-github-actions class="logo" style="left: 225px; top: 36px" />

<!-- Spec -->
<span class="circleTextSmall" style="left: 310px; top: 36px; fontSize: 14px">SPEC</span>
<img class="logo" src="/oam.svg" style="left: 360px; top: 36px" />

<!-- Push -->
<span class="circleText" style="fontSize: 28px">PUSH</span>
<logos-git-icon class="logo" style="top: 160px" v-motion :initial="{ y: 60, scale: 0 }" :enter="{ y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }" />

---
layout: custom
preload: false
---

<!-- Alex -->
<span class="emoji" style="left: 40px; top: 36px">👩‍💻</span>
<span class="smallEmoji" style="left: 90px; top: 36px">🌟</span>

<!-- Build -->
<span class="circleTextSmall" style="left: 175px; top: 36px; fontSize: 14px">BUILD</span>
<logos-github-actions class="logo" style="left: 225px; top: 36px" />

<!-- Spec -->
<span class="circleTextSmall" style="left: 310px; top: 36px; fontSize: 14px">SPEC</span>
<img class="logo" src="/oam.svg" style="left: 360px; top: 36px" />

<!-- Push -->
<span class="circleTextSmall" style="left: 445px; top: 36px; fontSize: 14px" v-motion :initial="{ y: 195, x: 10, scale: 2 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">PUSH</span>
<logos-git-icon class="logo" style="left: 495px; top: 36px" v-motion :initial="{ y: 124, x: -30, scale: 1.7 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }" />

<!-- Sync -->
<span class="circleText" style="fontSize: 28px" v-motion :initial="{ scale: 0 }" :enter="{ scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">SYNC</span>

---
layout: custom
preload: false
---

<!-- Alex -->
<span class="emoji" style="left: 40px; top: 36px">👩‍💻</span>
<span class="smallEmoji" style="left: 90px; top: 36px">🌟</span>

<!-- Build -->
<span class="circleTextSmall" style="left: 175px; top: 36px; fontSize: 14px">BUILD</span>
<logos-github-actions class="logo" style="left: 225px; top: 36px" />

<!-- Spec -->
<span class="circleTextSmall" style="left: 310px; top: 36px; fontSize: 14px">SPEC</span>
<img class="logo" src="/oam.svg" style="left: 360px; top: 36px" />

<!-- Push -->
<span class="circleTextSmall" style="left: 445px; top: 36px; fontSize: 14px">PUSH</span>
<logos-git-icon class="logo" style="left: 495px; top: 36px" />

<!-- Sync -->
<span class="circleText" style="fontSize: 28px">SYNC</span>
<logos-argo-icon class="logo" style="top: 160px" v-motion :initial="{ y: 60, scale: 0 }" :enter="{ y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }" />

---
layout: custom
preload: false
---

<!-- Alex -->
<span class="emoji" style="left: 40px; top: 36px">👩‍💻</span>
<span class="smallEmoji" style="left: 90px; top: 36px">🌟</span>

<!-- Build -->
<span class="circleTextSmall" style="left: 175px; top: 36px; fontSize: 14px">BUILD</span>
<logos-github-actions class="logo" style="left: 225px; top: 36px" />

<!-- Spec -->
<span class="circleTextSmall" style="left: 310px; top: 36px; fontSize: 14px">SPEC</span>
<img class="logo" src="/oam.svg" style="left: 360px; top: 36px" />

<!-- Push -->
<span class="circleTextSmall" style="left: 445px; top: 36px; fontSize: 14px">PUSH</span>
<logos-git-icon class="logo" style="left: 495px; top: 36px" />

<!-- Sync -->
<span class="circleTextSmall" style="left: 580px; top: 36px; fontSize: 14px" v-motion :initial="{ y: 195, x: -125, scale: 2 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">SYNC</span>
<logos-argo-icon class="logo" style="left: 630px; top: 36px" v-motion :initial="{ y: 124, x: -165, scale: 2 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }" />

<!-- Apply -->
<span class="circleText" style="fontSize: 28px" v-motion :initial="{ scale: 0 }" :enter="{ scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">APPLY</span>

---
layout: custom
preload: false
---

<!-- Alex -->
<span class="emoji" style="left: 40px; top: 36px">👩‍💻</span>
<span class="smallEmoji" style="left: 90px; top: 36px">🌟</span>

<!-- Build -->
<span class="circleTextSmall" style="left: 175px; top: 36px; fontSize: 14px">BUILD</span>
<logos-github-actions class="logo" style="left: 225px; top: 36px" />

<!-- Spec -->
<span class="circleTextSmall" style="left: 310px; top: 36px; fontSize: 14px">SPEC</span>
<img class="logo" src="/oam.svg" style="left: 360px; top: 36px" />

<!-- Push -->
<span class="circleTextSmall" style="left: 445px; top: 36px; fontSize: 14px">PUSH</span>
<logos-git-icon class="logo" style="left: 495px; top: 36px" />

<!-- Sync -->
<span class="circleTextSmall" style="left: 580px; top: 36px; fontSize: 14px">SYNC</span>
<logos-argo-icon class="logo" style="left: 630px; top: 36px" />

<!-- Apply -->
<span class="circleText" style="fontSize: 28px">APPLY</span>
<logos-kubernetes class="logo" style="top: 160px; left: 440px" v-motion :initial="{ y: 60, x: 30, scale: 0 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }" />
<img class="logo" src="/crossplane.svg" style="left: 490px; top: 160px" v-motion :initial="{ y: 60, x: -30, scale: 0 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }" />

---
layout: custom
preload: false
---

<!-- Alex -->
<span class="emoji" style="left: 40px; top: 36px">👩‍💻</span>
<span class="smallEmoji" style="left: 90px; top: 36px">🌟</span>

<!-- Build -->
<span class="circleTextSmall" style="left: 175px; top: 36px; fontSize: 14px">BUILD</span>
<logos-github-actions class="logo" style="left: 225px; top: 36px" />

<!-- Spec -->
<span class="circleTextSmall" style="left: 310px; top: 36px; fontSize: 14px">SPEC</span>
<img class="logo" src="/oam.svg" style="left: 360px; top: 36px" />

<!-- Push -->
<span class="circleTextSmall" style="left: 445px; top: 36px; fontSize: 14px">PUSH</span>
<logos-git-icon class="logo" style="left: 495px; top: 36px" />

<!-- Sync -->
<span class="circleTextSmall" style="left: 580px; top: 36px; fontSize: 14px">SYNC</span>
<logos-argo-icon class="logo" style="left: 630px; top: 36px" />

<!-- Apply -->
<span class="circleTextSmall" style="left: 715px; top: 36px; fontSize: 14px" v-motion :initial="{ y: 195, x: -260, scale: 2 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">APPLY</span>
<logos-kubernetes class="logo" style="left: 765px; top: 36px" v-motion :initial="{ y: 124, x: -325, scale: 1 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }" />
<img class="logo" src="/crossplane.svg" style="left: 765px; top: 76px" v-motion :initial="{ y: 84, x: -275}" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }" />

<!-- Watch -->
<span class="circleText" style="fontSize: 26px" v-motion :initial="{ scale: 0 }" :enter="{ scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">WATCH</span>

---
layout: custom
preload: false
---

<!-- Alex -->
<span class="emoji" style="left: 40px; top: 36px">👩‍💻</span>
<span class="smallEmoji" style="left: 90px; top: 36px">🌟</span>

<!-- Build -->
<span class="circleTextSmall" style="left: 175px; top: 36px; fontSize: 14px">BUILD</span>
<logos-github-actions class="logo" style="left: 225px; top: 36px" />

<!-- Spec -->
<span class="circleTextSmall" style="left: 310px; top: 36px; fontSize: 14px">SPEC</span>
<img class="logo" src="/oam.svg" style="left: 360px; top: 36px" />

<!-- Push -->
<span class="circleTextSmall" style="left: 445px; top: 36px; fontSize: 14px">PUSH</span>
<logos-git-icon class="logo" style="left: 495px; top: 36px" />

<!-- Sync -->
<span class="circleTextSmall" style="left: 580px; top: 36px; fontSize: 14px">SYNC</span>
<logos-argo-icon class="logo" style="left: 630px; top: 36px" />

<!-- Apply -->
<span class="circleTextSmall" style="left: 715px; top: 36px; fontSize: 14px">APPLY</span>
<logos-kubernetes class="logo" style="left: 765px; top: 36px" />
<img class="logo" src="/crossplane.svg" style="left: 765px; top: 76px" />

<!-- Watch -->
<span class="circleText" style="fontSize: 26px">WATCH</span>
<logos-grafana class="logo" style="top: 160px; left: 420px" v-motion :initial="{ y: 60, x: 30, scale: 0 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }" />
<logos-opentelemetry-icon class="logo" style="top: 160px" v-motion :initial="{ y: 60, scale: 0 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }" />
<img class="logo" src="/keptn.svg" style="left: 510px; top: 160px" v-motion :initial="{ y: 60, x: -30, scale: 0 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 500 } }" />

---
layout: custom
preload: false
---

<!-- Alex -->
<span class="emoji" style="left: 40px; top: 36px">👩‍💻</span>
<span class="smallEmoji" style="left: 90px; top: 36px">🌟</span>

<!-- Build -->
<span class="circleTextSmall" style="left: 175px; top: 36px; fontSize: 14px">BUILD</span>
<logos-github-actions class="logo" style="left: 225px; top: 36px" />

<!-- Spec -->
<span class="circleTextSmall" style="left: 310px; top: 36px; fontSize: 14px">SPEC</span>
<img class="logo" src="/oam.svg" style="left: 360px; top: 36px" />

<!-- Push -->
<span class="circleTextSmall" style="left: 445px; top: 36px; fontSize: 14px">PUSH</span>
<logos-git-icon class="logo" style="left: 495px; top: 36px" />

<!-- Sync -->
<span class="circleTextSmall" style="left: 580px; top: 36px; fontSize: 14px">SYNC</span>
<logos-argo-icon class="logo" style="left: 630px; top: 36px" />

<!-- Apply -->
<span class="circleTextSmall" style="left: 715px; top: 36px; fontSize: 14px">APPLY</span>
<logos-kubernetes class="logo" style="left: 765px; top: 36px" />
<img class="logo" src="/crossplane.svg" style="left: 765px; top: 76px" />

<!-- Observe -->
<span class="circleTextSmall" style="left: 850px; top: 36px; fontSize: 10px" v-motion :initial="{ y: 195, x: -415, scale: 2 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }">WATCH</span>
<logos-grafana class="logo" style="left: 900px; top: 36px" v-motion :initial="{ y: 124, x: -480, scale: 1 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }" />
<logos-opentelemetry-icon class="logo" style="left: 900px; top: 76px"  v-motion :initial="{ y: 84, x: -435, scale: 1 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }" />
<img class="logo" src="/keptn.svg" style="left: 900px; top: 116px"  v-motion :initial="{ y: 44, x: -395, scale: 1 }" :enter="{ y: 0, x: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }" />

<span class="bigEmoji" v-motion :initial="{ scale: 0 }" :enter="{ scale: 1, transition: {  duration: 500 } }">🎉</span>

---
layout: outro-speaker
---
