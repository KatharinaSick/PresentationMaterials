---
theme: underglow
title: 'Your Backstage, Your Problems, Your Metrics'
event:
  name: Austrian Plattform Engineering Community 2026
  date: May 07, 2026
speaker: Katharina Sick
logo: 'https://raw.githubusercontent.com/KatharinaSick/PresentationMaterials/refs/heads/main/Shared/Logos/dynatrace-tsclabs-white.png'
themeConfig:
  color-primary: '#7D1CFE'
  color-middle: '#176AFA'
  color-accent: '#01D393'

layout: cover
---

# Your Backstage, Your Problems, Your Metrics

Thomas Schuetz, TSC Labs<br/>Katharina Sick, Dynatrace

---

# Intro

<div style="display: flex; justify-content: center; margin-top: 1.0rem;">
  <img src="./discussion.png" alt="Discussion" style="max-height: 360px; border-radius: 12px;" />
</div>


<!--
Conversation between us:

K: Hey, I just discovered Backstage. It's so cool! It can do this, this and this and will solve all our problems! I think I'll deploy it :D

T: pushes back, does this even make sense for us? 

K: But we need better developer experience. Everyon talks about taht right now

T: Ok, but how do you know that our developer experience is actually bad at the moment? And how can you be sure, that Backstage will improve it and is not just another tool causing toil and cogntivie load?

K: Fair point. Let's fidn out. But before that: who are you actually to push me back all the time? 
-->

---

# Who are we?

<div style="display: flex; gap: 2em; justify-content: center; align-items: stretch; padding: 1em;">
  <SpeakerCard name="Katharina Sick" company="Dynatrace" role="Open Source Program Office" accent="#7D1CFE" image="/me.jpeg"></SpeakerCard>
  <SpeakerCard name="Thomas Schuetz" company="TSC Labs" role="Cloud Native Trainer & Architect" accent="#2b6b78" image="/tscweb.jpeg"></SpeakerCard>
</div>

<!--
Before begin with our Backstage Journey, let's introduce ourselves ...

Quick intros about us & what we're passionate about...

T: Kathi, You caught me off guard with that topic and I always hear about Backstage somewhere, so what is it about and where can it help us?

-->

---
layout: four-columns
---

# Wait, what's Backstage?

<span v-click>An open source framework for building developer portals.</span>

::col1::

<div class="text-center" v-click>
  <div style="font-size: 4rem; margin-bottom: 1rem;">📦</div>
  <h2>Catalog</h2>
</div>

::col2::

<div class="text-center" v-click>
  <div style="font-size: 4rem; margin-bottom: 1rem;">🏗️</div>
  <h2>Scaffolder</h2>
</div>

::col3::

<div class="text-center" v-click>
  <div style="font-size: 4rem; margin-bottom: 1rem;">📖</div>
  <h2>Docs</h2>
</div>

::col4::

<div class="text-center" v-click>
  <div style="font-size: 4rem; margin-bottom: 1rem;">🔌</div>
  <h2>Plugins</h2>
</div>

<!--
leute abholen, die backstage nicht kennen. die meisten kennens

- K: Describes Backstage — open source framework by Spotify for building developer portals
- K: Walk through the four core features: catalog, templates, docs, plugins
- K: Describes where it can improve DevEx — one place for everything, less context switching

- K: Thomas, what do you think about it?
-->

---
layout: two-cols
---

# Overkill?

<Box accent="#01D393">Backstage is a Framework to create IDPs -> react know-how/maintenance</Box>

<Box accent="#7D1CFE">It introduces a new component to maintain</Box>

<Box accent="#176AFA">The IDP also changes the way things work</Box>

<!--
T: Sees the problems and overhead coming with Backstage

K: Talks about the documentation, ecosystem and wide adoption

T: Asks himself how the outcome of the implementation could be measured 
-->

---
layout: quote
quote: A few days later ...
---

---

# SPACE and DX Core 4 Frameworks

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem; align-items: start; margin-top: 1.5rem;">
  <BulletBox accent="#01D393" title="SPACE" :bullets="['Satisfaction', 'Performance', 'Activity', 'Communication', 'Efficiency']"></BulletBox>

<BulletBox accent="#176AFA" title="DX Core 4" :bullets="['Flow State', 'Feedback Loops', 'Cognitive Load', 'Developer Value']"></BulletBox>
</div>

<!--
T: Did some research on Frameworks on how to measure Developer Experience and Productivity and fell across SPACE and DX Core

K: Very hyped around the DX things

T: Wants to get features and products shipped faster. So what do we need to measure to know if we are actually faster?
-->

---

# Asking the right questions

<Cloud top="5rem" right="2rem" width="320px" height="150px">
  How often is a template used?
</Cloud>

<Cloud top="20rem" right="4rem" width="320px" height="150px">
  How satisfied are developers with the IDP?
</Cloud>

<Cloud top="12rem" right="17rem" width="320px" height="150px">
  What features are missing?
</Cloud>

<Cloud top="8rem" right="35rem" width="350px" height="180px">
  How convenient is the bootstrapping process?
</Cloud>

<Cloud top="20rem" right="40rem" width="320px" height="150px">
  How often do developers switch between tools?
</Cloud>

<!--
What do we want to achieve with our IDP and which problems do we want to solve?


-->

---
layout: quote
quote: Shipping without a baseline is hoping, not engineering
subtitle: Data beats gut feeling. Always.
background: robot.jpeg
---

<!--
- We can't search for a solution without knowing what's currently going on
- We need to create a baseline so that we have something to compare against later. Otherwise, it will be hard to know if we succeeded
- baseline metrics show we have a problem in alfi corp

This could be a big statement slide like "if you deploy with nothing to compare against, you never know if you succeeded"

Note: we should add a note that if you have backstage already running, you can also create this baseline including backstage.
-->

---

# Instrumentation Gets You Started

- Report traces & metrics with OpenTelemetry
- Needs minor configuration & code changes
- Basic metrics around catalog, scaffolder and tasks are available out of the box

<div style="display: flex; align-items: center; justify-content: center; height: 100%;">
  <!-- TODO: replace with actual screenshot filename -->
  <img src="./dt-backstage-screenshot.png" alt="Backstage in Dynatrace" style="max-height: 320px; border-radius: 12px;" />
</div>

<!--
K: Look, setting up observability for Backstage is actually pretty straightforward. [walk through bullets] And here's what it looks like in Dynatrace — traces, metrics, you get a decent picture of what's happening.

T: Ok, that's nice. But what does this actually tell you about whether Backstage is helping our developers?

K: I knew you'd say that. I prepared something.
-->

---

# Your Problems, Your Metrics

<span v-click>🧩&numsp;Backstage needs to take the shape of YOUR platform.</span>

<span v-click>🎯&numsp;Your portal is unique. Your metrics should be too.</span>

<span v-click>💡&numsp;Start with the problem. The metric follows.</span>

<!--
T: Right. The instrumentation is there. But just because we CAN measure everything doesn't mean we should. What are you actually measuring and why?

K: Exactly. Our platforms aren't one-size-fits-all — and Backstage isn't either. The plugins, the templates, the catalog — they're different for everyone. So the metrics have to be too. Let me show you three concrete problems we mapped to Backstage features and how we observe them.
-->

---
layout: center
---

# Life of an App

<div style="display: flex; align-items: center; justify-content: center; height: 72%;">
  <LifecycleFlow />
</div>

---

# How do I add a new app?

<span v-click>🤷‍♀️&numsp;Ask three people, get three different answers.</span>

<span v-click>⚙️&numsp;CI/CD copy-pasted and half broken.</span>

<span v-click>⏳&numsp;Days between idea and first code commit.</span>

<LifecycleFlow v-click :highlight="['Bootstrap', 'Develop', 'Deploy']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

---

# What can success look like?

<p v-click style="padding-bottom: 0.6rem;">⏱️&numsp;Reduce time to first deployment.
<span style="display: block; font-size: 0.6em; opacity: 0.55;">E.g. ticket "In Progress" → first successful CI/CD run</span></p>
<p v-click style="padding-bottom: 0.6rem;">🎫&numsp;Reduce ops interruptions during app creation.
<span style="display: block; font-size: 0.6em; opacity: 0.55;">E.g. ops tickets tagged "app-setup" per new service</span></p>
<p v-click style="padding-bottom: 0;">😊&numsp;Improve developer satisfaction during app creation.
<span style="display: block; font-size: 0.6em; opacity: 0.55;">E.g. quarterly survey on the app creation process (1–5)</span></p>

<LifecycleFlow :highlight="['Bootstrap', 'Develop', 'Deploy']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

---

# Reduce time to first deployment

<LifecycleFlow :highlight="['Bootstrap', 'Develop', 'Deploy']" compact style="position: absolute; top: 1rem; left: 2rem; right: 2rem;" />

<span v-click>🏗️&numsp;Software Templates can get you there.</span>

<div v-click style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem; margin-top: 0.5rem;">
  <div style="text-align: center;">
    <div style="font-size: 0.7em; opacity: 0.6; margin-bottom: 0.4rem;">❌ Too many choices</div>
    <img src="./template-bad.png" alt="Template with too many input fields" style="max-height: 220px; border-radius: 8px; border: 1.5px solid rgba(255,80,80,0.5);" />
  </div>
  <div v-click style="text-align: center;">
    <div style="font-size: 0.7em; opacity: 0.6; margin-bottom: 0.4rem;">✅ Opinionated & fast</div>
    <img src="./template-good.png" alt="Good template screenshot" style="max-height: 220px; border-radius: 8px; border: 1.5px solid rgba(1,211,147,0.5);" />
  </div>
</div>

<!--
K: Software templates are one of the most powerful Backstage features for this problem — one click and your repo, CI/CD, and docs are all wired up.

T: At least... if they're not built like this. [show bad template — wall of input fields, every possible option exposed]

K: Exactly. A template that asks 30 questions doesn't reduce cognitive load, it adds to it. The magic is in the defaults and the opinions baked in.

T: So what does a good template actually look like?

K: [show good template screenshot] — minimal inputs, sensible defaults, done in under a minute.
-->

---

# How do we know it's working?

<LifecycleFlow :highlight="['Bootstrap', 'Develop', 'Deploy']" compact style="position: absolute; top: 1rem; left: 2rem; right: 2rem;" />

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem; margin-top: 1rem;">
  <BulletBox accent="#01D393" title="Leading" :bullets="['% services created via templates', 'Template completion rate', 'Time from trigger to first deploy']" />
  <BulletBox accent="#7D1CFE" title="Outcome" :bullets="['Time from impl. start to first deploy ↓', 'Ops interruptions per new service ↓']" />
</div>

---

# Problem 2: Unfamiliar Services

<LifecycleFlow :highlight="['Deploy', 'Maintain']" compact style="position: absolute; top: 1rem; left: 2rem; right: 2rem;" />

<ProblemStatement accent="#7D1CFE">
  During an incident, developers can't find who owns a service, how it works, or what to do when it breaks.
</ProblemStatement>

<div style="display: flex; gap: 0.75rem; margin-bottom: 1.25rem;">
  <Chip>📦 Catalog + 📖 TechDocs</Chip>
  <Chip>🧠 Cognitive Load</Chip>
</div>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem;">
  <BulletBox accent="#7D1CFE" title="Metrics" :bullets="['% services with a defined owner', '% services with TechDocs coverage', 'Doc freshness vs last commit date']" />
  <BulletBox accent="#01D393" title="KPIs" :bullets="['MTTR during incidents', 'Fewer ownership interruptions', 'Developer satisfaction']" />
</div>

<!--
T: Same pattern. Problem: cognitive load during incidents. No single place to find ownership or runbooks.

K: Backstage gives you the catalog and TechDocs. Leading metric: coverage. Outcome: does MTTR actually go down?

T: And you can cross-check catalog ownership against your actual alerting routes. If they don't match, your catalog data isn't trustworthy yet.
-->

---

# Problem 3: Service Quality Visibility

<LifecycleFlow :highlight="['Develop', 'Maintain']" compact style="position: absolute; top: 1rem; left: 2rem; right: 2rem;" />

<ProblemStatement accent="#176AFA">
  There's no way to know if a service — especially AI-generated code — meets quality standards without checking five different places.
</ProblemStatement>

<div style="display: flex; gap: 0.75rem; margin-bottom: 1.25rem;">
  <Chip>🔍 Tech Insights</Chip>
  <Chip>🔄 Feedback Loops</Chip>
</div>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem;">
  <BulletBox accent="#7D1CFE" title="Metrics" :bullets="['% services with a scorecard defined', 'Average compliance score per team']" />
  <BulletBox accent="#01D393" title="KPIs" :bullets="['Reduction in PR rejections', 'Reduction in ownerless service incidents', 'Audit pass rate']" />
</div>

<!--
K: Third problem: quality visibility. Especially relevant now with AI-generated code — how do you know if it's actually good?

T: Tech Insights lets you define scorecards and surface compliance data in one place. Leading metric: do teams even have a scorecard? Outcome: fewer surprises at review time.

K: And you can pull in external signals — Snyk, GitHub, Dynatrace — to validate that scorecard results match what's actually happening in production.
-->

---

# Showcase

<!--
K: See! We need Backstage
T: Wait, slow down. Backstage is huge. We should also consider ....

Conclusion: for alfi corp, Backstage makes sense
-->

---

# What you saw here

<!--
Day 1:
- K: Yeees, let's finally deploy Backstage! 🥳 See, it's running. I told you it's easy to deploy and it looks so cool! Let's start using it right away!
- T: ok it's running, but now what? How do we know if it helps?
- K: Trust me, it's awesome!

Week 2:
- K: Wait.. People actually aren't using Backstage. Why? I thought everyone would love it.
- T: Well, you just deployed it without even asking what people in our company need. We already identified problems but didn't tailor Backstage to solve them. Maybe we should have started with that?
- K: True.. So what can we do about that?
- T: It's not too late. we already did the hard part. We have our baseline, we know our problems. Let's actually use that.
-->

---

# How to approach an IDP project


---

# Wrap Up
