---
theme: underglow
title: 'Turning Platform Engineering Right Side Up: Building Better Paths for Juniors'
event:
  name: Platform Engineering Linz
  date: February 12, 2026
logo: 'https://raw.githubusercontent.com/KatharinaSick/PresentationMaterials/refs/heads/main/Shared/Logos/dynatrace-white-no-text.svg'
themeConfig:
  color-primary: '#EA580C'
  color-middle: '#7C3AED'
  color-accent: '#991B1B'

# Cover slide
layout: image-full
image: cover.png
hideFooter: true
---

---
layout: two-columns
---

::left::

🐧&numsp;Linux<br/>
🔗&numsp;Networking<br/>
🔐&numsp;Auth<br/>
📦&numsp;Containers<br/>
☁️&numsp;Cloud<br/>
⚙️&numsp;CI/CD<br/>
🏗️&numsp;Infrastructure as Code<br/>
🔭&numsp;Observability

::right::

<img v-click src="/02-reality.png" class="h-120 mt--5 ms-10" />

---
layout: intro
name: Katharina Sick
image: me.jpeg
jobTitle: Developer Programs Engineer
company: Dynatrace
website: https://ksick.dev
---

---
layout: center
---

<div class="flex items-baseline justify-center gap-30 font-black leading-none ml-20">
    <span style="font-size: 22rem; color: var(--slidev-theme-color-text-primary)">44</span>
    <div class="relative">
        <span v-click style="font-size: 2rem; color: var(--slidev-theme-color-accent)">2</span>
        <div v-click class="absolute -top-4 left-1/2 -translate-x-1/2 w-16 h-16 rounded-full border-4" style="border-color: var(--slidev-theme-color-text-primary)"></div>
 </div>
</div>

<img src="/04-karriere-at.png" class="absolute bottom-10 right-3 w-10" />

---
layout: quote
quote: Learning ≠ Readiness
subtitle: Perkins & Salomon, Transfer of Learning (1992)
background: 05-hawkins.jpeg
overlayOpacity: 0.3
---

---
layout: two-columns
---

# Procrastination Log

```bash
[09:15:32] INFO  🧠 read the docs
[09:47:18] INFO  📺 watch another tutorial
[10:23:45] WARN  🔍 google best practices
[11:02:11] INFO  📦 try one more tool
[11:38:56] ERROR 😵 feel overwhelmed
[11:45:03] DEBUG 🍵 quick energy break
[12:15:47] INFO  💪 ok focus, try again
[13:21:33] WARN  🌐 revisit 10+ open tabs
[14:08:22] ERROR 😵 feel overwhelmed again
[14:15:09] FATAL 🌀 spiral away
```

---
layout: quote
quote: Our Brains Have Limits.<br/>The Platform Doesn't Care.
subtitle: Sweller, Cognitive Load During Problem Solving (1988)
background: 07-demogorgons.jpeg
---

---
layout: three-columns
---

::left::

<div class="text-center">
  <div style="font-size: 4rem; margin-bottom: 1rem;">🧠</div>
  <h2>Intrinsic Load</h2>
</div>

::middle::

<div class="text-center" v-click>
  <div style="font-size: 4rem; margin-bottom: 1rem;">🚫</div>
  <h2>Extraneous Load</h2>
</div>

::right::

<div class="text-center" v-click>
  <div style="font-size: 4rem; margin-bottom: 1rem;">✨</div>
  <h2>Germane Load</h2>
</div>

---
layout: center
---

<h1 style="font-size: 86px">So What?!</h1>

---
layout: quote
quote: The In-Between
subtitle: Safe • Realistic • Guided
background: 10-inbetween.jpeg
overlayOpacity: 0.8
---

# 
<div class="mt-12 text-2xl opacity-70">
Safe • Realistic • Guided
</div>

---
layout: two-columns
---

::left::

<div class="text-center">
  <div style="font-size: 4rem; margin-bottom: 1rem;">📚</div>
  <h1>We Teach Nouns</h1>
  <p v-click="2" style="font-size: 24px">🔭 Observability</p>
</div>

::right::

<div class="text-center" v-click="1">
  <div style="font-size: 4rem; margin-bottom: 1rem;">⚡</div>
  <h1>But Work in Verbs</h1>
  <p v-click="2" style="font-size: 24px">🚀 Release Safely</p>
</div>

<div v-click="2" class="absolute left-1/2 top-87 -translate-x-1/2 -translate-y-1/2 text-2xl opacity-85">
→
</div>

---
clicks: 2
---

# 🔭 Observability → 🚀 Release Safely

<div 
    class="absolute left-30 top-40 flex flex-col items-center justify-center"
    v-motion
    :initial="{ x: 0, y: -30 }"
    :click-1="{ x: 0, y: 0, transition: { type: 'tween', ease: 'easeInOut', duration: 700 } }">
    <img src="/12-argo-rollouts.png" class="w-15 h-15 p-2 rounded-full bg-white"/>
    <p style="font-size: 1rem; margin-top: 0">Argo Rollouts</p>
</div>

<div 
    class="absolute left-166 bottom--10 flex flex-col items-center justify-center"
    v-motion
    :initial="{ x: -525, y: -190, scale: 1, opacity: 1 }"
    :click-1="{ x: 0, y: 0, scale: 0.6, opacity: 0.3, transition: { type: 'tween', ease: 'easeInOut', duration: 700 } }">
    <img src="/12-fluentd.svg" class="w-15 h-15 p-2 rounded-full bg-white"/>
    <p style="font-size: 1rem; margin-top: 0">fluentd</p>
</div>

<div 
    class="absolute left-177 bottom--10 flex flex-col items-center justify-center"
    v-motion
    :initial="{ x: -570, y: -50, scale: 1, opacity: 1 }"
    :click-1="{ x: 0, y: 0, scale: 0.6, opacity: 0.3, transition: { type: 'tween', ease: 'easeInOut', duration: 700 } }">
    <img src="/12-thanos.svg" class="w-15 h-15 p-2 rounded-full bg-white"/>
    <p style="font-size: 1rem; margin-top: 0">Thanos</p>
</div>

<div 
    class="absolute left-188 bottom--10 flex flex-col items-center justify-center"
    v-motion
    :initial="{ x: -285, y: -330, scale: 1, opacity: 1 }"
    :click-1="{ x: 0, y: 0, scale: 0.6, opacity: 0.3, transition: { type: 'tween', ease: 'easeInOut', duration: 700 } }">
    <img src="/12-cortex.svg" class="w-15 h-15 p-2 rounded-full bg-white"/>
    <p style="font-size: 1rem; margin-top: 0">Cortex</p>
</div>

<div 
    class="absolute left-198 bottom--10 flex flex-col items-center justify-center"
    v-motion
    :initial="{ x: 5, y: -330, scale: 1, opacity: 1 }"
    :click-1="{ x: 0, y: 0, scale: 0.6, opacity: 0.3, transition: { type: 'tween', ease: 'easeInOut', duration: 700 } }">
    <img src="/12-grafana.png" class="w-15 h-15 p-2 rounded-full bg-white"/>
    <p style="font-size: 1rem; margin-top: 0">Grafana</p>
</div>

<div 
    class="absolute left-210 bottom--10 flex flex-col items-center justify-center"
    v-motion
    :initial="{ x: -40, y: -50, scale: 1, opacity: 1 }"
    :click-1="{ x: 0, y: 0, scale: 0.6, opacity: 0.3, transition: { type: 'tween', ease: 'easeInOut', duration: 700 } }">
    <img src="/12-istio.svg" class="w-15 h-15 p-2 rounded-full bg-white"/>
    <p style="font-size: 1rem; margin-top: 0">Istio</p>
</div>

<div 
    class="absolute left-100 top-40 flex flex-col items-center justify-center"
    v-motion
    :initial="{ x: 0, y: 105 }"
    :click-1="{ x: 0, y: 0, transition: { type: 'tween', ease: 'easeInOut', duration: 500 } }">
    <img src="/12-otel.png" class="w-15 h-15 p-2 rounded-full bg-white"/>
    <p style="font-size: 1rem; margin-top: 0">OpenTelemetry Collector</p>
</div>

<div class="absolute right-30 top-40 flex flex-col items-center justify-center"
    v-motion
    :initial="{ x: 0, y: 105 }"
    :click-1="{ x: 0, y: 0, transition: { type: 'tween', ease: 'easeInOut', duration: 500 } }">
    <img src="/12-jaeger.png" class="w-15 h-15 p-2 rounded-full bg-white"/>
    <p style="font-size: 1rem; margin-top: 0">Jaeger</p>
</div>

<div class="absolute left-113 top-90 flex flex-col items-center justify-center"
    v-motion
    :initial="{ x: 0, y: 45 }"
    :click-1="{ x: 0, y: 0, transition: { type: 'tween', ease: 'easeInOut', duration: 500 } }">
    <img src="/12-prometheus.png" class="w-15 h-15 p-2 rounded-full bg-white"/>
    <p style="font-size: 1rem; margin-top: 0">Prometheus</p>
</div>

<!-- Arrows -->
<v-click at="2">
<div class="absolute left-70 top-45 flex flex-col items-center">
    <div style="font-size: 2rem;">→</div>
    <p style="font-size: 0.75rem; margin-top: 0.25rem; white-space: nowrap; opacity: 0.7;">sends traces</p>
</div>

<div class="absolute left-165 top-45 flex flex-col items-center">
    <div style="font-size: 2rem;">→</div>
    <p style="font-size: 0.75rem; margin-top: 0.25rem; white-space: nowrap; opacity: 0.7;">sends traces</p>
</div>

<div class="absolute left-122 top-70 flex flex-row items-center gap-2">
    <div style="font-size: 2rem; line-height: 1;">↑</div>
    <span style="font-size: 0.75rem; white-space: nowrap; display: inline-block; opacity: 0.7;">scrapes metrics</span>
</div>

<div class="absolute left-75 top-80 flex flex-col items-start" style="transform: rotate(-15deg); transform-origin: center;">
    <div style="font-size: 1.5rem; line-height: 1;">↖</div>
</div>
<div class="absolute left-87 top-79">
    <span style="font-size: 0.75rem; white-space: nowrap; display: inline-block; opacity: 0.7;">scrapes metrics</span>
</div>
<div class="absolute left-79 top-80 flex flex-col items-start" style="transform: rotate(-15deg); transform-origin: center;">
    <div style="font-size: 1.5rem; line-height: 1;">↘</div>
</div>

<div class="absolute left-48 top-79">
    <span style="font-size: 0.75rem; white-space: nowrap; display: inline-block; opacity: 0.7;">queries metrics</span>
</div>
</v-click>

---
layout: three-columns
---

# Constructing Mental Schemas

::left::

<div class="text-center">
  <div style="font-size: 4rem; margin-bottom: 1rem;">🔗</div>
  <h2>Connect Facts</h2>
</div>

::middle::

<div class="text-center" v-click>
  <div style="font-size: 4rem; margin-bottom: 1rem;">🏛️</div>
  <h2>Form Structures</h2>
</div>

::right::

<div class="text-center" v-click>
  <div style="font-size: 4rem; margin-bottom: 1rem;">📦</div>
  <h2>Chunk Complexity</h2>
</div>

---
layout: quote
quote: Platform Engineering Isn’t Tools.<br/>It’s Connections.
background: 14-hawkins.jpeg
overlayOpacity: 0.8
---

---

# Make Systems Visible

<v-clicks>

🗺️ Show interactions

🔄 Make cause and effect explicit

📍 Make boundaries clear

👀 If it's invisible it adds load
</v-clicks>

---

# Practice in the In-Between

<v-clicks>

🛟 Safe to fail

🎯 Practice real scenarios

📈 Increase difficulty gradually

🧭 Guide reasoning, not steps
</v-clicks>

---

# Practice in the In-Between

<v-switch class="flex items-center justify-center h-full">
    <template #0><img src="/17-challenges.png" class="h-100"></template>
    <template #1><img src="/17-architecture.png"/></template>
    <template #2><img src="/17-ports.png"/></template>
    <template #3><img src="/17-argocd.png"/></template>
    <template #4><img src="/17-otel-fixes.png" class="h-100"/></template>
    <template #5><img src="/17-jaeger.png" class="h-100"/></template>
    <template #6><img src="/17-rollouts.png" class="h-100"/></template>
    <template #7><img src="/17-rollout-fixes.png" class="h-100"/></template>
    <template #8><img src="/17-smoke-test.png" class="h-100"/></template>
</v-switch>

---
layout: two-columns
---

# 🕹️ Practice in the In-Between

::left::

<div class="flex flex-col items-center justify-start h-full">
    <div class="relative">
        <div class="bg-white p-1 rounded-lg mb-4 border-4" style="border-color: var(--slidev-theme-color-primary)">
            <img src="/17-qr.png" class="w-48 h-48" alt="QR code to challenges"/>
        </div>
        <!-- Shameless Self-Promotion Stamp -->
        <div class="absolute -top-8 -right-8 text-white px-3 py-1 rounded-full transform rotate-12 text-xs font-bold shadow-lg border-2 border-white" style="background-color: var(--slidev-theme-color-middle)">
            🎉 SHAMELESS<br/>SELF-PROMO
        </div>
    </div>
    <h3 class="text-center mb-2 font-bold">Try the challenges!</h3>
    <a class="text-center" href="https://dynatrace-oss.github.io/open-ecosystem-challenges" target="_blank" style="font-size: 16px; color: var(--slidev-theme-color-text-primary);">
        dynatrace-oss.github.io/<br/>open-ecosystem-challenges
    </a>
</div>

::right::

### More Hands-on Learning

<ul class="space-y-0 text-lg mt-4">
    <li>🎮 <strong>Kubernetes by Example</strong><br/><a class="quote-source opacity-70 text-sm" href="https://kubebyexample.com" target="_blank">kubebyexample.com</a></li>
    <li>🎯 <strong>KillerCoda</strong><br/><a class="quote-source opacity-70 text-sm" href="https://killercoda.com" target="_blank">killercoda.com</a></li>
    <li>🏆 <strong>Kubernetes the Hard Way</strong><br/><a class="quote-source opacity-70 text-sm" href="https://github.com/kelseyhightower/kubernetes-the-hard-way" target="_blank">github.com/kelseyhightower/kubernetes-the-hard-way</a></li>
</ul>

---

# Learning is Social

<v-clicks>

👥 Share mental models

🔊 Think out loud

🧩 Explain reasoning, not just answers

♾️ Reflect and refine together
</v-clicks>

---
layout: center
hideFooter: true
---

<div class="flex flex-col items-center justify-center h-full">
    <h1 class="mb-8">Thank you ❤️</h1>

<div class="text-xl opacity-90 mb-12">
Let's keep the conversation going
</div>

<div class="flex gap-16 items-center justify-center">
<!-- LinkedIn QR Code -->
<div class="flex flex-col items-center">
    <div class="p-2 rounded-lg mb-3" style="background: linear-gradient(135deg, var(--slidev-theme-color-primary) 0%, var(--slidev-theme-color-middle) 50%, var(--slidev-theme-color-accent) 100%);">
        <div class="bg-white p-1 rounded">
            <img src="/20-linkedin.png" class="w-40 h-40" alt="LinkedIn QR code"/>
        </div>
    </div>
    <div class="text-center">
        <a class="quote-source" href="https://linkedin.com/in/katharinasick" target="_blank">LinkedIn</a>
    </div>
</div>

<!-- Slides QR Code -->
<div class="flex flex-col items-center">
    <div class="p-2 rounded-lg mb-3" style="background: linear-gradient(135deg, var(--slidev-theme-color-primary) 0%, var(--slidev-theme-color-middle) 50%, var(--slidev-theme-color-accent) 100%);">
        <div class="bg-white p-1 rounded">
            <img src="/20-slides.png" class="w-40 h-40" alt="Slides QR code"/>
        </div>
    </div>
    <div class="text-center">
        <a class="quote-source" href="https://slides.ksick.dev/20260212/PlatformEngineeringLinz" target="_blank">Slides</a>
    </div>
</div>
</div>
</div>
