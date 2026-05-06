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

# Who Are We?

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

# Wait, What's Backstage?

<span v-click>An open source framework for building developer portals.</span>

::col1::

<div class="text-center" v-click>
  <div style="font-size: 4rem; margin-bottom: 1rem; color: #7D1CFE;"><Icon name="catalog" size="4rem" /></div>
  <h2>Catalog</h2>
</div>

::col2::

<div class="text-center" v-click>
  <div style="font-size: 4rem; margin-bottom: 1rem; color: #01D393;"><Icon name="scaffolder" size="4rem" /></div>
  <h2>Scaffolder</h2>
</div>

::col3::

<div class="text-center" v-click>
  <div style="font-size: 4rem; margin-bottom: 1rem; color: #176AFA;"><Icon name="docs" size="4rem" /></div>
  <h2>Docs</h2>
</div>

::col4::

<div class="text-center" v-click>
  <div style="font-size: 4rem; margin-bottom: 1rem; color: #FF8C42;"><Icon name="plugins" size="4rem" /></div>
  <h2>Plugins</h2>
</div>

<!--
leute abholen, die backstage nicht kennen. die meisten kennens

- K: Describes Backstage, an open source framework by Spotify for building developer portals
- K: Walk through the four core features: catalog, templates, docs, plugins
- K: Describes where it can improve DevEx: one place for everything, less context switching

- K: Thomas, what do you think about it?
-->

---
layout: two-cols
---

# Overkill?

<img src="./robot-thinking.jpeg" style="position: absolute; inset: 0; width: 100%; height: 100%; object-fit: cover; opacity: 0.3; z-index: -1;" />

<div style="position: relative; z-index: 1; background: #121212; border-radius: 8px; padding: 0.25rem;">

<Box accent="#01D393">Backstage is a Framework to create IDPs -> react know-how/maintenance</Box>

<Box accent="#7D1CFE">It introduces a new component to maintain</Box>

<Box accent="#176AFA">The IDP also changes the way things work</Box>

</div>

<!--
T: Sees the problems and overhead coming with Backstage

K: Talks about the documentation, ecosystem and wide adoption

T: Asks himself how the outcome of the implementation could be measured 
-->

---
layout: quote
quote: A few days later ...
background: robot-chilling.jpeg
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

# Asking the Right Questions

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
background: robot-working.jpeg
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

<Todo>Screenshot of a Backstage dashboard</Todo>

<!--
K: Look, setting up observability for Backstage is actually pretty straightforward. [walk through bullets] And here's what it looks like in Dynatrace: traces, metrics, you get a decent picture of what's happening.

T: Ok, that's nice. But what does this actually tell you about whether Backstage is helping our developers?

K: I knew you'd say that. I prepared something.
-->

---

# Your Problems, Your Metrics

<span v-click><Icon name="puzzle" style="color: #7D1CFE;" />&numsp;Backstage needs to take the shape of YOUR platform.</span>

<span v-click><Icon name="target" style="color: #176AFA;" />&numsp;Your portal is unique. Your metrics should be too.</span>

<span v-click><Icon name="idea" style="color: #01D393;" />&numsp;Start with the problem. The metric follows.</span>

<!--
T: Right. The instrumentation is there. But just because we CAN measure everything doesn't mean we should. What are you actually measuring and why?

K: Exactly. Our platforms aren't one-size-fits-all, and Backstage isn't either. The plugins, the templates, the catalog, they're different for everyone. So the metrics have to be too. Let me show you three concrete problems we mapped to Backstage features and how we observe them.
-->

---
layout: center
---

# Life of an App

<div style="display: flex; align-items: center; justify-content: center; height: 72%;">
  <LifecycleFlow />
</div>

---

# Day One Friction

<span v-click><Icon name="unknown" style="color: #7D1CFE;" />&numsp;Ask three people, get three different answers.</span>

<span v-click><Icon name="settings" style="color: #176AFA;" />&numsp;CI/CD copy-pasted and half broken.</span>

<span v-click><Icon name="hourglass" style="color: #01D393;" />&numsp;Days between idea and first code commit.</span>

<LifecycleFlow v-click :highlight="['Bootstrap', 'Develop', 'Deploy']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

---

# What Could Better Look Like?

<p v-click style="padding-bottom: 0.6rem;"><Icon name="timer" style="color: #7D1CFE;" />&numsp;Reduce time to first deployment.
<span style="display: block; font-size: 0.6em; opacity: 0.55;">E.g. ticket "In Progress" → first successful CI/CD run</span></p>
<p v-click style="padding-bottom: 0.6rem;"><Icon name="ticket" style="color: #176AFA;" />&numsp;Reduce ops interruptions during app creation.
<span style="display: block; font-size: 0.6em; opacity: 0.55;">E.g. ops tickets tagged "app-setup" per new service</span></p>
<p v-click style="padding-bottom: 0;"><Icon name="smile" style="color: #01D393;" />&numsp;Improve developer satisfaction during app creation.
<span style="display: block; font-size: 0.6em; opacity: 0.55;">E.g. quarterly survey on the app creation process</span></p>

<LifecycleFlow :highlight="['Bootstrap', 'Develop', 'Deploy']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

---

# Reduce Time to First Deployment

<div style="display: flex; gap: 0.75rem; margin-bottom: 1rem;">
    <Chip v-click><Icon name="waves" style="color: #176AFA;" /> Flow State</Chip>
    <Chip v-click><Icon name="scaffolder" style="color: #01D393;" /> Software Templates</Chip>
</div>


<Todo v-click>Screenshot of a template with too many input fields</Todo>

<Todo v-click>Screenshot of a good, opinionated template</Todo>

<LifecycleFlow :highlight="['Bootstrap', 'Develop', 'Deploy']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

<!--
K: Software templates are one of the most powerful Backstage features for this problem: one click and your repo, CI/CD, and docs are all wired up.

T: At least... if they're not built like this. [show bad template: wall of input fields, every possible option exposed]

K: Exactly. A template that asks 30 questions doesn't reduce cognitive load, it adds to it. The magic is in the defaults and the opinions baked in.

T: So what does a good template actually look like?

K: [show good template screenshot]: minimal inputs, sensible defaults, done in under a minute.
-->

---

# What Backstage Tells You

<div style="display: flex; gap: 0.75rem; margin-bottom: 1rem;">
    <Chip><Icon name="waves" style="color: #176AFA;" /> Flow State</Chip>
    <Chip><Icon name="scaffolder" style="color: #01D393;" /> Software Templates</Chip>
</div>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem; margin-top: 1rem;">
  <BulletBox accent="#7D1CFE" title="Adoption" :bullets="['Are templates being used?', 'Which template is most popular?', 'Is adoption growing over time?', 'How often do runs fail?']" />
  <BulletBox v-click accent="#01D393" title="Performance" :bullets="['How long does a run take?', 'Which step is the slowest or most error-prone?', 'Are some users stuck while others are fast?']" />
</div>

<LifecycleFlow :highlight="['Bootstrap', 'Develop', 'Deploy']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

<!--
K: Once you wire up OpenTelemetry, Backstage gives you a solid starting point. You can see whether templates are being used, whether adoption is growing, and where runs fail. On the performance side, you can see how long template execution takes, which step is the bottleneck, and whether some users are consistently getting a much worse experience than others.

T: Ok, that tells me people are using it, and I can see where it breaks. But does it tell me whether we're actually shipping faster now?

K: Not directly. For that, we need to zoom out a bit.
-->

---

# Connecting the Dots

<div style="display: flex; gap: 0.75rem; margin-bottom: 1rem;">
    <Chip><Icon name="waves" style="color: #176AFA;" /> Flow State</Chip>
    <Chip><Icon name="scaffolder" style="color: #01D393;" /> Software Templates</Chip>
</div>

<Todo>Screenshot of the full trace from template trigger to first deploy</Todo>

<LifecycleFlow :highlight="['Bootstrap', 'Develop', 'Deploy']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

<!--
K: I built a small demo for this. We emit an OpenTelemetry trace from the moment the user clicks "Create" in the template, all the way through to when the app is successfully deployed for the first time.

T: So you can actually measure that end-to-end time?

K: Exactly. And you can see where the time goes: is it the repo creation? The CI pipeline? The first rollout? That's where you spot the bottlenecks. And that's what you compare against your baseline.
-->

---

# Try It Yourself

<img src="./robot-demo.jpeg" alt="" style="position: absolute; inset: 0; width: 100%; height: 100%; object-fit: cover; opacity: 0.3; z-index: -1;" />

<div style="display: flex; justify-content: center; margin-top: 1rem;">
  <div style="background: #121212; border-radius: 12px; padding: 1.25rem; display: flex; flex-direction: column; align-items: center; gap: 0.75rem;">
    <img src="/demo-qr.png" alt="QR code to demo repository" style="width: 180px; height: 180px; border-radius: 8px;" />
    <a href="https://github.com/KatharinaSick/demos" style="font-size: 0.8em; opacity: 0.7;">github.com/KatharinaSick/demos</a>
  </div>
</div>

<p style="position: absolute; bottom: 3rem; left: 2rem; right: 2rem; text-align: center; font-size: 0.8em; margin: 0;">Zero setup. Just bring your own observability backend.</p>

---

# Day 2 Knowledge Gaps

<span v-click><Icon name="unknown" style="color: #7D1CFE;" />&numsp;Who owns what? No single source of truth.</span>

<span v-click><Icon name="docs" style="color: #176AFA;" />&numsp;How does it work? Docs are scattered or missing.</span>

<span v-click><Icon name="search" style="color: #01D393;" />&numsp;Does it meet our standards? No single answer.</span>

<LifecycleFlow v-click :highlight="['Develop', 'Maintain']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

<!--
T: After Day 1 you've deployed. Now Day 2 hits: incidents, onboarding, code review. You need to work with services you didn't build, and there's no single place to find what you need.

K: Three questions that should have instant answers. But don't.
-->

---

# What Could Better Look Like?

<p v-click style="padding-bottom: 0.6rem;"><Icon name="timer" style="color: #7D1CFE;" />&numsp;Faster incident resolution.
<span style="display: block; font-size: 0.6em; opacity: 0.55;">E.g. time from alert to mitigation</span></p>
<p v-click style="padding-bottom: 0.6rem;"><Icon name="ticket" style="color: #176AFA;" />&numsp;Quality issues caught early, not late.
<span style="display: block; font-size: 0.6em; opacity: 0.55;">E.g. % of issues caught at review vs. in production</span></p>
<p v-click style="padding-bottom: 0;"><Icon name="smile" style="color: #01D393;" />&numsp;Tribal knowledge replaced by catalog data.
<span style="display: block; font-size: 0.6em; opacity: 0.55;">E.g. senior engineer interruptions for service context</span></p>

<LifecycleFlow :highlight="['Develop', 'Maintain']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

<!--
T: Same question. If we fix this, what actually changes?

K: Incidents resolve faster. Quality issues don't reach production. And new team members stop being blocked on "who do I ask?"
-->

---

# From Tribal Knowledge to Catalog Data

<div style="display: flex; gap: 0.75rem; margin-bottom: 1rem;">
    <Chip v-click><Icon name="brain" style="color: #01D393;" /> Cognitive Load</Chip>
    <Chip v-click><Icon name="catalog" style="color: #7D1CFE;" /> Catalog + <Icon name="docs" style="color: #176AFA;" /> TechDocs + <Icon name="search" style="color: #FF8C42;" /> Tech Insights</Chip>
</div>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem; margin-top: 1rem;">
    <BulletBox v-click accent="#7D1CFE" title="Backstage Data*" :bullets="['Catalog completeness score', 'TechDocs coverage', 'Services with a description', 'Dependencies mapped in catalog']" />
    <BulletBox v-click accent="#01D393" title="Connecting the Dots" :bullets="['Ticket picked up', 'Owner &amp; context found in catalog', 'Architecture found in TechDocs', 'PR submitted']" />
</div>

<p v-click="3" style="font-size: 0.8em; margin-top: 1rem;">* via Catalog API or Tech Insights, not available as OTel metrics out of the box</p>

<LifecycleFlow :highlight="['Develop', 'Maintain']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

<!--
K: The catalog is your single source of truth for Day 2. Who owns it, how it works, whether it meets your standards: all in one place.

T: Tech Insights pulls in external signals (Snyk, GitHub, CI) and surfaces them as one compliance score. You stop checking five tools.
-->

---

# Your Backstage Playbook

<div style="display: flex; flex-direction: column; gap: 0.55rem; margin-top: 1.25rem;">

<div v-click style="display: flex; align-items: flex-start; gap: 1rem; padding: 0.6rem 1rem; border-left: 3px solid #7D1CFE; border-radius: 0 8px 8px 0; background: rgba(125,28,254,0.07);">
  <span style="font-weight: 700; color: #7D1CFE; font-size: 1.1em; min-width: 1.5rem;">1</span>
  <div><strong>Name the problem</strong><span style="opacity: 0.55; font-size: 0.82em; margin-left: 0.5rem;">Which developer pain are you actually targeting?</span></div>
</div>

<div v-click style="display: flex; align-items: flex-start; gap: 1rem; padding: 0.6rem 1rem; border-left: 3px solid #176AFA; border-radius: 0 8px 8px 0; background: rgba(23,106,250,0.07);">
  <span style="font-weight: 700; color: #176AFA; font-size: 1.1em; min-width: 1.5rem;">2</span>
  <div><strong>Establish a baseline</strong><span style="opacity: 0.55; font-size: 0.82em; margin-left: 0.5rem;">Measure the current state if you can. It becomes your comparison point later.</span></div>
</div>

<div v-click style="display: flex; align-items: flex-start; gap: 1rem; padding: 0.6rem 1rem; border-left: 3px solid #01D393; border-radius: 0 8px 8px 0; background: rgba(1,211,147,0.07);">
  <span style="font-weight: 700; color: #01D393; font-size: 1.1em; min-width: 1.5rem;">3</span>
  <div><strong>Define success</strong><span style="opacity: 0.55; font-size: 0.82em; margin-left: 0.5rem;">What does "better" look like, in numbers?</span></div>
</div>

<div v-click style="display: flex; align-items: flex-start; gap: 1rem; padding: 0.6rem 1rem; border-left: 3px solid #176AFA; border-radius: 0 8px 8px 0; background: rgba(23,106,250,0.07);">
  <span style="font-weight: 700; color: #176AFA; font-size: 1.1em; min-width: 1.5rem;">4</span>
  <div><strong>Build &amp; instrument</strong><span style="opacity: 0.55; font-size: 0.82em; margin-left: 0.5rem;">Find which feature fits your problem in your platform. Wire up your observability.</span></div>
</div>

<div v-click style="display: flex; align-items: flex-start; gap: 1rem; padding: 0.6rem 1rem; border-left: 3px solid #7D1CFE; border-radius: 0 8px 8px 0; background: rgba(125,28,254,0.07);">
  <span style="font-weight: 700; color: #7D1CFE; font-size: 1.1em; min-width: 1.5rem;">5</span>
  <div><strong>Measure &amp; iterate</strong><span style="opacity: 0.55; font-size: 0.82em; margin-left: 0.5rem;">Did it move the needle? If not, back to step 1.</span></div>
</div>

</div>

<!--
K: We just did this twice without naming it. Let's name it.

T: Notice step 5 doesn't end the loop. If Backstage didn't move the needle, that's not a failure. It's new information. You have a better-defined problem now. Back to step 1.

K: And this works whether you're evaluating Backstage, already running it, or deciding which feature to build next.
-->

---
layout: quote
quote: Your Backstage. Your problems. Your metrics.
subtitle: Data beats gut feeling. Always.
background: robot-chilling.jpeg
---

<!--
Intentional callback to the title, lands as a takeaway not a summary.
-->
