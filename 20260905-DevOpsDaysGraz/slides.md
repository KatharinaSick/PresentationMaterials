---
theme: underglow
title: 'Turning Platform Engineering Right Side Up: Building Better Paths for Juniors'
event:
  name: DevOpsDays Graz
  date: September 5, 2026
logo: 'https://raw.githubusercontent.com/KatharinaSick/PresentationMaterials/refs/heads/main/Shared/Logos/dynatrace-white-no-text.svg'
themeConfig:
  color-primary: '#EA580C'
  color-middle: '#7C3AED'
  color-accent: '#991B1B'

# 1. Cover
layout: image-full
image: cover.png
hideFooter: true
---

<!--
- Ironic: still feel junior quite often
- Kathi, DevRel @ Dynatrace, CNCF ambassador since last week
- Mobile → backend → DevOps, slipped in sideways
- If I started today? I'd google it
-->

---
layout: two-columns
---

::left::

# The Path We Advertise

<div class="roadmap">
  <div class="step"><span class="n">1</span> Linux</div>
  <div class="step"><span class="n">2</span> Containers</div>
  <div class="step"><span class="n">3</span> Kubernetes</div>
  <div class="step"><span class="n">4</span> Cloud</div>
  <div class="step"><span class="n">5</span> CI/CD</div>
  <div class="step"><span class="n">6</span> Observability</div>
  <div class="step done"><span class="n">★</span> Platform Engineer</div>
</div>

::right::

<img v-click src="/reddit.png" class="h-115 mt--6 ms-8" />

<style>
.roadmap {
  margin-top: 1rem;
  border-left: 2px solid rgba(255, 255, 255, 0.25);
  padding-left: 1.25rem;
}
.roadmap .step {
  font-size: 21px;
  line-height: 1.5;
  padding: 0.16rem 0;
  opacity: 0.85;
}
.roadmap .step .n {
  display: inline-block;
  width: 1.6rem;
  font-weight: 700;
  opacity: 0.55;
}
.roadmap .step.done {
  color: var(--slidev-theme-color-primary);
  font-weight: 700;
  opacity: 1;
}
</style>

<!--
- tools -> congrats, platform engineer
- So why is r/devops full of "where do I start"?
- **[1]** All from TWO two-week window. Sub banned the question.
- Same gap in the job market
- → karriere.at
-->

---
layout: center
---

<div class="flex items-baseline justify-center gap-30 font-black leading-none ml-20">
    <span style="font-size: 22rem; color: var(--slidev-theme-color-text-primary)">79</span>
    <div class="relative">
        <span v-click style="font-size: 0.8rem; color: var(--slidev-theme-color-accent)">3</span>
        <div v-click class="absolute -top-1.8 left-1/2 -translate-x-1/2 w-8 h-8 rounded-full border-2" style="border-color: var(--slidev-theme-color-text-primary)"></div>
 </div>
</div>

<img src="/karriere-at.png" class="absolute bottom-10 right-3 w-10" />

<!--
- 79 roles in Austria. Guess how many take entry level.
- **[1]** Three. **[2]** There it is - actual ratio, not a joke.
- "Not an entry-level role" -> that's fair. But nobody expects a junior to be GOOD on day one.
- **You don't have to learn TCP to be allowed to use HTTP**
- Best DevOps eng I know came from mobile computing
- → so why is it hard?
-->

---
layout: quote
quote: Learning ≠ Readiness
subtitle: Perkins & Salomon, Transfer of Learning (1992)
background: hawkins.jpeg
overlayOpacity: 0.3
---

<!--
- Knowledge doesn't travel between distant contexts — Perkins & Salomon 1992.
- **Hawkins vs Upside Down**
- map doesn't work because the rules changed.
- Tutorial ↔ our platform is as far as it gets.
- Bridges need to be built on purpose
- → here's how that looked for me
-->

---

# Procrastination Log

<pre class="log">
[09:15:32] <span class="i">INFO </span> 🧠 read the docs
[09:47:18] <span class="i">INFO </span> 📺 watch another tutorial
[10:23:45] <span class="i">DEBUG </span> 🔍 google best practices
[11:02:11] <span class="i">INFO </span> 📦 try one more tool
[11:38:56] <span class="e">ERROR</span> 😵 feel overwhelmed
[11:45:03] <span class="i">DEBUG</span> 🍵 quick energy break
[12:15:47] <span class="i">INFO </span> 💪 ok focus, try again
[13:21:33] <span class="w">WARN </span> 🌐 revisit 10+ open tabs
[14:08:22] <span class="e">ERROR</span> 😵 feel overwhelmed again
[14:15:09] <span class="f">FATAL</span> 🌀 spiral away
</pre>

<style>
.log {
  font-family: ui-monospace, SFMono-Regular, Menlo, monospace;
  font-size: 22px;
  line-height: 1.65;
  margin-top: 1.5rem;
}
/* Dim the quiet levels so the eye slides down to the loud ones. */
.log .i { opacity: 0.45; }
.log .w { color: var(--slidev-theme-color-primary); opacity: 0.45; }
.log .e { color: #DC2626; opacity: 0.45; }
/* Lighter than ERROR on purpose - deep reds sink into the dark background. */
.log .f { color: #DC2626; font-weight: 700; }
</style>

<!--
- **PAUSE FOR READING.**
- Every line = me trying to learn MORE. Only move I knew.
- Not stupid but transfer distance
- Every tab filled the space I needed to adapt
- → why didn't more learning help?
-->

---
layout: quote
quote: Our Brains Have Limits.<br/>The Platform Doesn't Care.
subtitle: Sweller, Cognitive Load During Problem Solving (1988) · Cowan, The Magical Number 4 (2001)
background: demogorgons.jpeg
---

<!--
- Hard limit, a handful of things. **Not intelligence, capacity.**
- 10+ tabs = 10+ things fighting for the same space. The platform doesn't care.
- **Colleagues had room because they had schemas. I fought every piece at once.**
- → so how does this working memory look like
-->

---
clicks: 3
---

# Not All Load Is Equal

<div class="mt-16 px-8">
<LoadBar
  :intrinsic="$clicks >= 1 ? 20 : 0"
  :extraneous="$clicks >= 2 ? 64 : 0"
  :germane="$clicks >= 3 ? 16 : 0"
  :caption="$clicks === 3 ? 'the part that turns into understanding' : $clicks === 2 ? 'everything in the way' : $clicks === 1 ? 'the problem itself' : ''"
/>
</div>

<div class="attrib">
  <div>
    <div class="attrib-cite">Sweller, Ayres &amp; Kalyuga, <em>Cognitive Load Theory</em> (2011)</div>
  </div>
</div>

<!--
- **[1] INTRINSIC** — how hard the thing is. K8s high, to-do app low. Can't remove it.
- **[2] EXTRANEOUS** — everything in the way. Bad docs, 3 deploy scripts, unclear ownership. Minimize.
- **[3] GERMANE** — what becomes understanding. Gets the leftovers. Maximize.
- (Some fold germane into intrinsic. Doesn't matter here — don't dwell.)
- → so what?
-->

---
layout: center
---

<h1 style="font-size: 86px">So What?!</h1>


<!--
- Tutorials: linear, clean. Too easy, too far to transfer.
- Production: the Upside Down. Real, overwhelming, no schemas yet.
- Neither one teaches. Need something in between.
- → starts with how we talk about it
-->

---
layout: two-columns
---

::left::

<div class="text-center">
  <div style="font-size: 4rem; margin-bottom: 1rem;">👋</div>
  <h1>Goodbye Nouns</h1>
  <p v-click="2" style="font-size: 24px">🔭 Observability</p>
</div>

::right::

<div class="text-center" v-click="1">
  <div style="font-size: 4rem; margin-bottom: 1rem;">🎬</div>
  <h1>Hello Verbs</h1>
  <p v-click="2" style="font-size: 24px">🚀 Release Safely</p>
</div>

<div v-click="2" class="absolute left-1/2 top-87 -translate-x-1/2 -translate-y-1/2 text-2xl opacity-85">
→
</div>

<!--
- Ever discussed your platform and just admired the tech? I love those. Nobody learns.
- **[1]** Verbs.
- **[2]** Not "learn observability" — "ship a change, know in 2 min whether to roll back"
- A verb has a starting point. A category doesn't — that's why they all ask "where do I start".
- → in practice
-->
---
clicks: 2
---

# 🔭 Observability → 🚀 Release Safely

<div class="stage">

<!-- The four that make up this job. Scattered, then in formation. -->
<div class="tool" v-motion
  :initial="{ x: 470, y: 240, rotate: -14 }"
  :click-1="{ x: 0, y: 0, rotate: 0, transition: { type: 'tween', ease: 'easeInOut', duration: 750 } }"
  style="left: 170px; top: 195px">
  <img src="/argo-rollouts.png" />
  <span>Argo Rollouts</span>
</div>

<div class="tool" v-motion
  :initial="{ x: -305, y: 240, rotate: 11 }"
  :click-1="{ x: 0, y: 0, rotate: 0, transition: { type: 'tween', ease: 'easeInOut', duration: 750 } }"
  style="left: 490px; top: 195px">
  <img src="/otel.png" />
  <span>OpenTelemetry<br/>Collector</span>
</div>

<div class="tool" v-motion
  :initial="{ x: -460, y: -20, rotate: -8 }"
  :click-1="{ x: 0, y: 0, rotate: 0, transition: { type: 'tween', ease: 'easeInOut', duration: 750 } }"
  style="left: 832px; top: 195px">
  <img src="/jaeger.png" style="width: 68px; height: 68px" />
  <span>Jaeger</span>
</div>

<div class="tool" v-motion
  :initial="{ x: 345, y: -230, rotate: 17 }"
  :click-1="{ x: 0, y: 0, rotate: 0, transition: { type: 'tween', ease: 'easeInOut', duration: 750 } }"
  style="left: 490px; top: 400px">
  <img src="/prometheus.png" />
  <span>Prometheus</span>
</div>

<!-- Still real, just not this job. They shrink back rather than disappear. -->
<div class="tool spare" v-motion
  :initial="{ x: -360, y: -228, rotate: -20, scale: 1, opacity: 1 }"
  :click-1="{ x: 0, y: 0, rotate: 0, scale: 0.55, opacity: 0.28, transition: { type: 'tween', ease: 'easeInOut', duration: 750 } }"
  style="left: 560px; top: 478px">
  <img src="/grafana.png" />
</div>

<div class="tool spare" v-motion
  :initial="{ x: -225, y: -178, rotate: 13, scale: 1, opacity: 1 }"
  :click-1="{ x: 0, y: 0, rotate: 0, scale: 0.55, opacity: 0.28, transition: { type: 'tween', ease: 'easeInOut', duration: 750 } }"
  style="left: 625px; top: 478px">
  <img src="/thanos.svg" />
</div>

<div class="tool spare" v-motion
  :initial="{ x: 0, y: -178, rotate: -9, scale: 1, opacity: 1 }"
  :click-1="{ x: 0, y: 0, rotate: 0, scale: 0.55, opacity: 0.28, transition: { type: 'tween', ease: 'easeInOut', duration: 750 } }"
  style="left: 690px; top: 478px">
  <img src="/cortex.svg" />
</div>

<div class="tool spare" v-motion
  :initial="{ x: -655, y: -308, rotate: 22, scale: 1, opacity: 1 }"
  :click-1="{ x: 0, y: 0, rotate: 0, scale: 0.55, opacity: 0.28, transition: { type: 'tween', ease: 'easeInOut', duration: 750 } }"
  style="left: 755px; top: 478px">
  <img src="/fluentd.svg" />
</div>

<div class="tool spare" v-motion
  :initial="{ x: -290, y: -318, rotate: -16, scale: 1, opacity: 1 }"
  :click-1="{ x: 0, y: 0, rotate: 0, scale: 0.55, opacity: 0.28, transition: { type: 'tween', ease: 'easeInOut', duration: 750 } }"
  style="left: 820px; top: 478px">
  <img src="/dynatrace.png" />
</div>

<div class="tool spare" v-motion
  :initial="{ x: -5, y: -58, rotate: 8, scale: 1, opacity: 1 }"
  :click-1="{ x: 0, y: 0, rotate: 0, scale: 0.55, opacity: 0.28, transition: { type: 'tween', ease: 'easeInOut', duration: 750 } }"
  style="left: 885px; top: 478px">
  <img src="/istio.svg" />
</div>

<!-- The wiring. This is the part no tool documents. -->
<svg class="wires" v-click="2" viewBox="0 0 980 552" preserveAspectRatio="none">
  <defs>
    <marker id="ah" viewBox="0 0 10 10" refX="9" refY="5"
            markerWidth="7" markerHeight="7" orient="auto-start-reverse">
      <path d="M 0 0 L 10 5 L 0 10 z" fill="rgba(255,255,255,0.75)" />
    </marker>
  </defs>
  <g stroke="rgba(255,255,255,0.75)" stroke-width="2" fill="none" marker-end="url(#ah)">
    <line x1="232" y1="195" x2="428" y2="195" />
    <line x1="552" y1="195" x2="726" y2="195" />
    <line x1="490" y1="358" x2="490" y2="280" />
  </g>
  <!-- Argo and Prometheus talk both ways: it scrapes, and it gets queried.
       Routed as an elbow so it doesn't cut a diagonal across the whole slide. -->
  <g stroke="rgba(255,255,255,0.75)" stroke-width="2" fill="none"
     marker-start="url(#ah)" marker-end="url(#ah)">
    <polyline points="170,254 170,404 424,404" />
  </g>
</svg>

<div class="wl" v-click="2" style="left: 330px; top: 170px">sends traces</div>
<div class="wl" v-click="2" style="left: 639px; top: 170px">sends traces</div>
<div class="wl" v-click="2" style="left: 500px; top: 320px; transform: none">scrapes metrics</div>
<div class="wl" v-click="2" style="left: 232px; top: 320px">scrapes metrics</div>
<div class="wl" v-click="2" style="left: 300px; top: 414px">queries metrics</div>

</div>

<style>
.stage {
  position: absolute;
  inset: 0;
}
.tool {
  position: absolute;
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 108px;
  margin-left: -54px;
  margin-top: -28px;
  text-align: center;
}
.tool img {
  width: 56px;
  height: 56px;
  object-fit: contain;
}
.tool span {
  margin-top: 0.45rem;
  font-size: 14px;
  line-height: 1.25;
  white-space: nowrap;
}
.wires {
  position: absolute;
  inset: 0;
  width: 100%;
  height: 100%;
  pointer-events: none;
}
.wl {
  position: absolute;
  font-size: 13px;
  opacity: 0.62;
  white-space: nowrap;
  transform: translateX(-50%);
}
</style>

<!--
- "Observability" = 10+ tools, no entry point
- [1] Ask a verb → four tools
- [2] connections
- Not four logos. **CONNECTIONS.** That's the map you hand a junior.
- → my first ticket
-->

---
layout: center
---

<div class="ticket">
  <div class="ticket-top">
    <span class="ticket-id">EP-1248</span>
    <span class="badge">✓ Done</span>
  </div>
  <div class="ticket-title">Deploy the Project Initializer to our internal cluster</div>
  <div class="ticket-meta">Closed after 3 days</div>
</div>

<style>
.ticket {
  width: 32rem;
  margin: 0 auto;
  border: 2px solid rgba(255, 255, 255, 0.22);
  border-radius: 0.9rem;
  padding: 1.7rem 1.9rem;
  background: rgba(255, 255, 255, 0.04);
  text-align: left;
}
.ticket-top {
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.ticket-id {
  font-family: ui-monospace, SFMono-Regular, Menlo, monospace;
  font-size: 1rem;
  opacity: 0.65;
  letter-spacing: 0.08em;
}
.badge {
  font-size: 0.85rem;
  font-weight: 700;
  letter-spacing: 0.04em;
  padding: 0.22rem 0.7rem;
  border-radius: 9999px;
  color: #86efac;
  background: rgba(134, 239, 172, 0.14);
  border: 1px solid rgba(134, 239, 172, 0.35);
}
.ticket-title {
  font-size: 1.9rem;
  font-weight: 700;
  margin: 1rem 0 0.8rem;
  line-height: 1.3;
}
.ticket-meta {
  font-size: 0.95rem;
  opacity: 0.55;
}
</style>

<!--
- Perfect verb, should have been fine
- Colleague walked me through it, I wrote every step down. Fast for weeks.
- **He gave me a map that worked in the Upside Down**
- Then one service wired differently → completely stuck
- Replayed steps, never learned
- Load low, capacity spare -> spent it rushing to look fast
- → now you don't even need the recipe
-->

---
clicks: 3
---

# You Don't Need Simple Maps Anymore

<div class="mt-14 px-8" v-click="1">
<LoadBar
  :intrinsic="20"
  :extraneous="$clicks >= 2 ? 28 : 64"
  :germane="$clicks >= 3 ? 6 : 16"
  :caption="$clicks === 3 ? 'But so does the part that turns into understanding.' : $clicks === 2 ? 'The noise drops. That part is good.' : ''"
/>
</div>

<!--
- Now you just prompt it. Nobody writes the recipe down.
- **how to notice you're not learning**
- **[1]** Same task, same brain, same budget
- **[2]** Extraneous drops. AI is genuinely good here — say that before ruining it.
- **[3]** Germane drops too. Understanding IS doing the work. Same recipe trap, faster.
- Big unused chunk. Tempting to spend all of it on speed. I did.
- → not a junior problem
-->

---
layout: center
clicks: 2
---

<div class="mx-auto leading-tight font-bold" style="max-width: 46rem; font-size: 54px">
It's Not Just Juniors
</div>

<div v-click class="mt-10 mx-auto" style="max-width: 42rem; font-size: 26px; opacity: 0.8">
When did you last figure out a system and could recall it a month later?
</div>

<div class="attrib" v-click="2">
  <div>
    <div class="attrib-who">Simon Schrottner</div>
    <a class="attrib-what" href="https://leftoftheloop.dev" target="_blank">leftoftheloop.dev</a>
  </div>
  <img class="attrib-qr" src="/qr-leftoftheloop.svg" alt="QR to leftoftheloop.dev" />
</div>

<!--
- could you recall it a month later without looking it up?
- I failed that writing this talk. Understood in the moment, gone a week later.
- Our mental models came from years of boring tickets. Can't feel it as the old ones still work.
- Juniors notice first: nothing to coast on
- **[2]** Simon Schrottner, from Graz, writing a book: leftoftheloop.dev
  - Left = deciding, loop = agents, right = prod
  - Implementation cheap → understanding scarce
  - Careful: direction marker, not where we are today
- Further left = your work SPENDS understanding instead of building it
- → we need a new way
-->

---
layout: center
clicks: 1
---

<h1 style="font-size: 86px">So What, Again?</h1>

<div v-click class="mt-8 mx-auto" style="max-width: 42rem; font-size: 26px; opacity: 0.8">
Now production feels easy too.
</div>

<!--
- Too easy / too hard / need something between. That question just changed.
- **[1]** Now production feels easy too
- It always looked like Hawkins. That was never the problem.
- The difference: it used to fight back, and now it doesn't.
- "Too hard" was a signal. Fake-easy tells you nothing.
- Some capacity → productivity. Some → understanding. Not a monthly learning Friday.
- → so how does anyone actually learn?
-->

---
layout: quote
quote: The In-Between
subtitle: Safe • Realistic • Guided
background: inbetween.jpeg
overlayOpacity: 0.8
---

<!--
- Somewhere between Hawkins and the Upside Down
- **REALISTIC** — close enough that it travels. Transfer distance from the start.
- **SAFE** — failing costs nothing, or the fear eats the budget
- **GUIDED** — everyone drops this one. Someone makes sure YOU did the thinking.
- All three, or it doesn't work
- → three ways: wiring, environment, out loud
-->


---
clicks: 1
---

<div class="kicker">1. Make the wiring visible</div>

<h1 class="claim">Platform Engineering Isn't Tools.<br/>It's Connections.</h1>

<div class="drawing" v-click="1">
  <img src="/architecture.png" />
</div>

<style>
.drawing {
  position: relative;
  width: 40rem;
  margin: 1.6rem auto 0;
  /* clips the spotlight's shadow so it dims the drawing, not the slide */
  overflow: hidden;
  border-radius: 0.5rem;
}
.drawing img {
  width: 100%;
  display: block;
}
/* a hole in a dark sheet: the bit we're teaching today */
</style>

<!--
- One tool = a day. The wiring = months.
- Every tool has docs. Connections are mostly in peoples heads.
- Drawing shows when people have different mental models
- **[1] Doesn't need to be beautiful**
- Full diagram on day one = extraneous load in a helpful costume
- Draw it all, then point at one box: today, let's focus on this
- → and that diagram is a lie
-->

---
clicks: 4
---

<div class="kicker">1. Make the wiring visible</div>

<h1>Lies Help Us Learn</h1>

<div class="lies">
  <div class="lie" v-click="1">
    <span class="tag">day one</span>
    <span class="txt">"Your manifests get applied to the cluster."</span>
  </div>
  <div class="lie" v-click="2">
    <span class="tag">week three</span>
    <span class="txt">"CI applies them, but only if the repo is wired up for it."</span>
  </div>
  <div class="lie" v-click="3">
    <span class="tag">month two</span>
    <span class="txt">"Argo watches the repo, and the rollout only promotes if Prometheus agrees."</span>
  </div>
</div>

<div v-click="4" class="lies-payoff">
  All three are wrong. The question is which one is useful today.
</div>

<div class="attrib">
  <img class="attrib-logo" src="/geekingout.jpg" alt="Geeking Out" />
  <div>
    <div class="attrib-who">Justin Garrison</div>
    <a class="attrib-what" href="https://geekingoutpodcast.substack.com/p/the-one-where-we-geek-out-on-linux" target="_blank">Geeking Out by Adriana Villela</a>
  </div>
  <img class="attrib-qr" src="/qr-geekingout.svg" alt="QR to the episode" />
</div>

<style>
.lies {
  margin-top: 2.4rem;
  max-width: 48rem;
  margin-left: auto;
  margin-right: auto;
}
.lie {
  display: flex;
  align-items: baseline;
  gap: 1.2rem;
  padding: 0.75rem 0;
}
.lie .tag {
  flex: 0 0 7rem;
  text-align: right;
  font-size: 0.85rem;
  font-weight: 700;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  opacity: 0.45;
}
.lie .txt {
  font-size: 21px;
  line-height: 1.45;
}
.lies-payoff {
  margin-top: 1.5rem;
  text-align: center;
  font-size: 23px;
  font-weight: 700;
  color: var(--slidev-theme-color-text-primary);
}
</style>

<!--
- Never lying vs truth but which lie is useful today, and coming back to replace it
- **QUOTE** (Justin Garrison, Geeking Out):
  - *"Everything we learn is a lie. It's just a slightly better, less... more true lie."*
- → somewhere safe to be wrong
-->

---
clicks: 1
---

<div class="kicker">2. Build the in-between</div>

<h1>You Already Wrote the Scenario</h1>

<div class="doc">
  <div class="doc-head">
    <span class="doc-kind" v-if="$clicks < 1">Postmortem</span>
    <span class="doc-kind kind-new" v-else>Training scenario</span>
    <span class="doc-date">2026-04-12</span>
  </div>
  <div class="doc-title">Checkout got slower after it scaled up</div>
  <div class="doc-line"><b>09:14</b> traffic up. autoscaler takes checkout 4 to 12</div>
  <div class="doc-line"><b>09:21</b> latency climbing. cpu and memory normal</div>
  <div class="doc-line"><b>09:26</b> errors: "too many clients already"</div>
  <div class="doc-line"><b>09:41 </b>
    <span :class="{ redacted: $clicks >= 1 }">each replica opens 10 db connections. postgres allows 100</span>
  </div>
  <div class="doc-action">
    <span class="doc-action-label">action</span>
    <span :class="{ redacted: $clicks >= 1 }">pool size is derived from max replicas instead of hardcoded</span>
  </div>
</div>

<div class="attrib">
  <div>
    <div class="attrib-who">Ready-made ones</div>
    <a class="attrib-what" href="http://offon.dev/adventures" target="_blank">offon.dev/adventures</a>
  </div>
  <img class="attrib-qr" src="/qr-challenges.svg" alt="QR to the challenges" />
</div>

<style>
.doc {
  width: 40rem;
  margin: 1.5rem auto 0;
  border: 2px solid rgba(255, 255, 255, 0.22);
  border-radius: 0.8rem;
  padding: 1.1rem 1.5rem 1.2rem;
  background: rgba(255, 255, 255, 0.04);
}
.doc-head {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-bottom: 0.7rem;
}
.doc-kind {
  font-size: 0.8rem;
  font-weight: 700;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  padding: 0.2rem 0.65rem;
  border-radius: 9999px;
  color: #fca5a5;
  background: rgba(252, 165, 165, 0.12);
  border: 1px solid rgba(252, 165, 165, 0.35);
}
.doc-kind.kind-new {
  color: var(--slidev-theme-color-primary);
  background: rgba(234, 88, 12, 0.16);
  border-color: rgba(234, 88, 12, 0.55);
}
.doc-date {
  font-family: ui-monospace, SFMono-Regular, Menlo, monospace;
  font-size: 0.85rem;
  opacity: 0.5;
}
.doc-title {
  font-size: 1.25rem;
  font-weight: 700;
  margin-bottom: 0.8rem;
}
.doc-line {
  font-family: ui-monospace, SFMono-Regular, Menlo, monospace;
  font-size: 0.95rem;
  line-height: 1.7;
  opacity: 0.85;
}
.doc-line b {
  opacity: 0.55;
  font-weight: 400;
  margin-right: 0.7rem;
}
/* the answer still exists. They just don't get it. */
.redacted {
  color: transparent;
  background: rgba(255, 255, 255, 0.16);
  border-radius: 3px;
}
.doc-action {
  display: flex;
  gap: 0.9rem;
  margin-top: 0.7rem;
  padding-top: 0.7rem;
  border-top: 1px dashed rgba(255, 255, 255, 0.14);
  font-size: 0.9rem;
  line-height: 1.5;
}
.doc-action-label {
  flex: 0 0 3.6rem;
  font-size: 0.68rem;
  font-weight: 700;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  opacity: 0.45;
  padding-top: 0.15rem;
}
</style>

<!--
- Everybody has a drawer full of these
- Already a learning environment: real, a signal that lied, a decision point
- **[1]** Diagnosis + action item are the exercise 
- Then ask them the question out loud
- Dev containers make it cheap.
- killercoda / kubebyexample / K8s the Hard Way. offon.dev
- Only the one YOU build teaches YOUR platform
- **MONDAY:** turn your last incident into something somebody can fail in
- → learning is social
-->

---

<div class="kicker">3. Learn out loud</div>

<h1>Ideate Out Loud</h1>

<div class="chat">
  <div class="turn them">
    <span class="who">them</span>
    <span class="said">"It's slow under load. I'd just bump the replicas."</span>
  </div>
  <div class="turn you">
    <span class="who">you</span>
    <span class="said">"Say more about why that would help."</span>
  </div>
  <div class="turn them">
    <span class="who">them</span>
    <span class="said">"...more pods, more requests handled in parallel?"</span>
  </div>
  <div class="turn you">
    <span class="who">you</span>
    <span class="said">"And what does every new pod open when it starts?"</span>
  </div>
</div>

<style>
.chat {
  width: 42rem;
  margin: 1.8rem auto 0;
  display: flex;
  flex-direction: column;
  gap: 0.9rem;
}
.turn {
  display: flex;
  align-items: baseline;
  gap: 1rem;
  border-radius: 0.7rem;
  padding: 0.85rem 1.1rem;
  border: 1px solid rgba(255, 255, 255, 0.14);
  background: rgba(255, 255, 255, 0.03);
}
.turn.you {
  border-color: rgba(234, 88, 12, 0.5);
  background: rgba(234, 88, 12, 0.09);
  margin-left: 3.5rem;
}
.turn.them {
  margin-right: 3.5rem;
}
.turn .who {
  flex: 0 0 3rem;
  font-size: 0.7rem;
  font-weight: 700;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  opacity: 0.45;
}
.turn .said {
  font-size: 1.1rem;
  line-height: 1.4;
}
</style>

<!--
- We built understanding after something existed. Now it needs to get built more and more before that.
- Humans move left, but these conversations are still important
- Give juniors a voice
- Be wrong in public. Seniors go first.
- → same move, at the agent
-->

---
clicks: 2
---

<div class="kicker">3. Learn out loud</div>

<h1>Ask Why, Not What</h1>

<div class="prompts">
  <div class="prompt" v-click="1">
    <div class="prompt-who">produce</div>
    <div class="prompt-text">"Write me the AnalysisTemplate for this rollout."</div>
  </div>
  <div class="prompt good" v-click="2">
    <div class="prompt-who">explain</div>
    <div class="prompt-text">"Why does this rollout query Prometheus instead of checking the pods directly?"</div>
  </div>
</div>

<style>
.prompts {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 1.6rem;
  align-items: start;
  margin-top: 1.8rem;
}
.prompt {
  border-radius: 0.9rem;
  padding: 1.4rem 1.5rem;
  border: 2px solid rgba(255, 255, 255, 0.18);
  background: rgba(255, 255, 255, 0.03);
}
.prompt-who {
  font-size: 0.8rem;
  font-weight: 700;
  letter-spacing: 0.12em;
  text-transform: uppercase;
  opacity: 0.55;
  margin-bottom: 0.7rem;
}
.prompt-text {
  font-size: 1.25rem;
  line-height: 1.45;
}
.prompt.good {
  border-color: var(--slidev-theme-color-primary);
  background: rgba(234, 88, 12, 0.1);
}
</style>

<!--
- Nobody can hand you their schema. you need to build it yourself
- Ask why. Ask it to interrogate you.
- Story: Flos home lab
- Like pair programming
- **THE ONE YOU CAN START ALONE.** Nobody's permission. Take this one home.
- → Crossplane AI policy
-->

---
layout: center
---

<div class="kicker">3. Learn out loud</div>

<blockquote class="rule">
  "If you cannot explain the purpose and impact of every change
  <em>without the assistance of an agent</em>, it's not ready for submission."
</blockquote>

<div class="attrib">
  <div>
    <div class="attrib-who">Crossplane</div>
    <a class="attrib-what" href="https://github.com/crossplane/crossplane/blob/main/AI_POLICY.md" target="_blank">AI_POLICY.md</a>
  </div>
  <img class="attrib-qr" src="/qr-crossplane.svg" alt="QR to the Crossplane AI policy" />
</div>

<style>
.rule {
  max-width: 46rem;
  margin: 2rem auto 0;
  font-size: 30px;
  line-height: 1.45;
  font-weight: 700;
  border-left: 4px solid var(--slidev-theme-color-primary);
  padding-left: 1.6rem;
  text-align: left;
}
.rule em {
  font-style: normal;
  color: var(--slidev-theme-color-primary);
}
</style>

<!--
- Real CNCF project, in their contributing guide
- They SUPPORT AI, assume it, no disclaimers. Not a ban.
- Line is where we've drawn it all talk: use the tool, hold the understanding
- Second rule: don't blame your agent. "My agent wrote that" is not an answer to a review.
- → back to the bar
-->


---
clicks: 2
---

# Let's Turn Learning the Right Side Up

<div class="mt-8 px-8">
<LoadBar
  :intrinsic="20"
  :extraneous="$clicks >= 1 ? 22 : 28"
  :germane="$clicks >= 1 ? 38 : 6"
/>
</div>

<div class="closing-foot" v-click="2">
  <div class="cf-qr">
    <img src="/qr-slides.svg" alt="QR code to these slides" />
    <a href="https://slides.ksick.dev/20260905/DevOpsDaysGraz" target="_blank">slides.ksick.dev</a>
  </div>
  <div class="cf-ask">Questions?</div>
</div>

<style>
.closing-foot {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 3rem;
  /* pulls up into the caption slot the bar reserves but no longer uses */
  margin-top: -1.5rem;
}
.cf-qr {
  text-align: center;
}
.cf-qr img {
  width: 6.4rem;
  height: 6.4rem;
  background: #fff;
  padding: 0.28rem;
  border-radius: 0.45rem;
  display: block;
}
.cf-qr a {
  display: block;
  margin-top: 0.4rem;
  font-size: 0.75rem;
  opacity: 0.6;
  border-bottom: none !important;
}
.cf-ask {
  font-size: 30px;
  font-weight: 700;
  opacity: 0.8;
}
</style>

<!--
- Bar is where AI left it.
- Intrinsic has been the same since the beginning and it won't change, Extraneous dropped on purpose, Germane needs to grow
- Productivity vs learning
- **Let's turn the upside down right side up. Not by making platforms simpler but by building proper paths**
- AI is changing our jobs and I strongly believe that understanding and especially shared understanding becomes more and 
more important. 
- I don't know how we'll work in the future so I made some assumptions. I'd love to hear yours as well
-->


---
layout: center
---

# Sources

<div class="src">
  <div class="src-col">
    <div class="src-h">Research</div>
    <div class="src-i">Perkins &amp; Salomon, <em>Transfer of Learning</em> (1992)</div>
    <div class="src-i">Sweller, <em>Cognitive Load During Problem Solving</em> (1988)</div>
    <div class="src-i">Cowan, <em>The Magical Number 4 in Short-Term Memory</em> (2001)</div>
    <div class="src-i">Sweller, Ayres &amp; Kalyuga, <em>Cognitive Load Theory</em> (2011)</div>
  </div>
  <div class="src-col">
    <div class="src-h">People &amp; projects</div>
    <div class="src-i"><a href="https://geekingoutpodcast.substack.com/p/the-one-where-we-geek-out-on-linux" target="_blank">Justin Garrison on <em>Geeking Out</em> by Adriana Villela</a></div>
    <div class="src-i"><a href="https://leftoftheloop.dev" target="_blank">Simon Schrottner, leftoftheloop.dev</a></div>
    <div class="src-i"><a href="https://github.com/crossplane/crossplane/blob/main/AI_POLICY.md" target="_blank">Crossplane, AI_POLICY.md</a></div>
    <div class="src-i"><a href="https://www.karriere.at" target="_blank">karriere.at</a> &middot; <a href="https://reddit.com/r/devops" target="_blank">r/devops</a></div>
  </div>
  <div class="src-col">
    <div class="src-h">Places to practise</div>
    <div class="src-i"><a href="http://offon.dev/adventures" target="_blank">offon.dev/adventures</a></div>
    <div class="src-i"><a href="https://killercoda.com" target="_blank">killercoda.com</a></div>
    <div class="src-i"><a href="https://kubebyexample.com" target="_blank">kubebyexample.com</a></div>
    <div class="src-i"><a href="https://github.com/kelseyhightower/kubernetes-the-hard-way" target="_blank">Kubernetes the Hard Way</a></div>
  </div>
</div>

<style>
.src {
  display: grid;
  grid-template-columns: 1.2fr 1.15fr 0.85fr;
  gap: 2rem;
  margin-top: 2.4rem;
  text-align: left;
}
.src-h {
  font-size: 0.78rem;
  font-weight: 700;
  letter-spacing: 0.12em;
  text-transform: uppercase;
  opacity: 0.45;
  margin-bottom: 0.8rem;
}
.src-i {
  font-size: 0.92rem;
  line-height: 1.45;
  margin-bottom: 0.7rem;
  opacity: 0.88;
}
.src-i em {
  font-style: italic;
  opacity: 0.8;
}
.src-qr {
  margin-top: 1.2rem;
}
.src-qr img {
  width: 7rem;
  height: 7rem;
  background: #fff;
  padding: 0.35rem;
  border-radius: 0.5rem;
  display: block;
}
.src-qr span {
  display: block;
  margin-top: 0.5rem;
  font-size: 0.78rem;
  opacity: 0.55;
}
</style>
