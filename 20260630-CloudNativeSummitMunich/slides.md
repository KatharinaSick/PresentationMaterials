---
theme: underglow
title: 'Your Backstage, Your Problems, Your Metrics'
event:
  name: Cloud Native Summit Munich 2026
  date: June 30, 2026
speakers:
  - name: Katharina Sick
  - name: Thomas Schuetz
logo: 'https://raw.githubusercontent.com/KatharinaSick/PresentationMaterials/refs/heads/main/Shared/Logos/dynatrace-tsclabs-white.png'
themeConfig:
  color-primary: '#7D1CFE'
  color-middle: '#176AFA'
  color-accent: '#01D393'

layout: cover
---

# Your Backstage, Your Problems, Your Metrics

---

# Intro

<div style="display: flex; justify-content: center; margin-top: 1.0rem;">
  <img src="/discussion.png" alt="Discussion" style="max-height: 360px; border-radius: 12px;" />
</div>

---

# Who Are We?

<div style="display: flex; gap: 2em; justify-content: center; align-items: stretch; padding: 1em;">
  <SpeakerCard name="Katharina Sick" company="Dynatrace" role="Open Source Program Office" accent="#7D1CFE" image="me.jpeg"></SpeakerCard>
  <SpeakerCard name="Thomas Schuetz" company="TSC Labs" role="Cloud Native Trainer & Architect" accent="#2b6b78" image="tscweb.jpeg"></SpeakerCard>
</div>

---
layout: four-columns
disabled: true
---

# Wait, What's Backstage?

<span>An open source framework for building developer portals.</span>

::col1::

<div class="text-center" style="margin-top: -4rem;">
  <div style="font-size: 4rem; margin-bottom: 1rem; color: #7D1CFE;"><Icon name="catalog" size="4rem" /></div>
  <h2>Catalog</h2>
</div>

::col2::

<div class="text-center" style="margin-top: -4rem;">
  <div style="font-size: 4rem; margin-bottom: 1rem; color: #01D393;"><Icon name="scaffolder" size="4rem" /></div>
  <h2>Scaffolder</h2>
</div>

::col3::

<div class="text-center" style="margin-top: -4rem;">
  <div style="font-size: 4rem; margin-bottom: 1rem; color: #176AFA;"><Icon name="docs" size="4rem" /></div>
  <h2>Docs</h2>
</div>

::col4::

<div class="text-center" style="margin-top: -4rem;">
  <div style="font-size: 4rem; margin-bottom: 1rem; color: #FF8C42;"><Icon name="plugins" size="4rem" /></div>
  <h2>Plugins</h2>
</div>

---

# Hold On...

<img src="/robot-thinking.jpeg" style="position: absolute; inset: 0; width: 100%; height: 100%; object-fit: cover; opacity: 0.2; z-index: -1;" />

<span><Icon name="settings" style="color: #7D1CFE;" />&numsp;Backstage adds a new piece of software to maintain.</span>

<span><Icon name="brain" style="color: #176AFA;" />&numsp;Platform people need React know-how.</span>

<span><Icon name="waves" style="color: #01D393;" />&numsp;The IDP also changes the way things work.</span>

---
layout: quote
quote: A Few Days Later ...
background: robot-chilling.jpeg
---

---
layout: three-columns
---

# DevEx Framework

::left::

<div class="text-center" style="margin-top: -4rem;">
  <div style="font-size: 4rem; margin-bottom: 1rem; color: #7D1CFE;"><Icon name="waves" size="4rem" /></div>
  <h2>Flow State</h2>
</div>

::middle::

<div class="text-center" style="margin-top: -4rem;">
  <div style="font-size: 4rem; margin-bottom: 1rem; color: #176AFA;"><Icon name="target" size="4rem" /></div>
  <h2>Feedback Loops</h2>
</div>

::right::

<div class="text-center" style="margin-top: -4rem;">
  <div style="font-size: 4rem; margin-bottom: 1rem; color: #01D393;"><Icon name="brain" size="4rem" /></div>
  <h2>Cognitive Load</h2>
</div>

---

# Asking the Right Questions

<div style="max-width: 72%; margin: 2rem auto 0;">

  <div style="display: flex; align-items: center; gap: 1rem; background: rgba(20,20,28,0.85); border: 1px solid rgba(255,255,255,0.18); border-radius: 16px; padding: 1.1rem 1.5rem; box-shadow: 0 16px 40px rgba(0,0,0,0.45); font-size: 1.6rem;">
    <Icon name="search" size="1.6rem" style="color: #7D1CFE; flex-shrink: 0;" />
    <span style="color: #fff;">how satisfied are developers?</span>
    <span style="display: inline-block; width: 2px; height: 1.6rem; background: #7D1CFE; margin-left: -0.4rem;"></span>
  </div>

  <div style="margin-top: 0.6rem; background: rgba(18,18,24,0.55); border: 1px solid rgba(255,255,255,0.08); border-radius: 14px; padding: 0.4rem; font-size: 1.3rem;">
    <div style="display: flex; align-items: center; gap: 0.9rem; padding: 0.6rem 1rem; border-radius: 10px; color: rgba(255,255,255,0.82);"><Icon name="cloud" style="color: #176AFA; flex-shrink: 0;" />How often is a template used?</div>
    <div style="display: flex; align-items: center; gap: 0.9rem; padding: 0.6rem 1rem; border-radius: 10px; color: rgba(255,255,255,0.82);"><Icon name="cloud" style="color: #01D393; flex-shrink: 0;" />What features are missing?</div>
    <div style="display: flex; align-items: center; gap: 0.9rem; padding: 0.6rem 1rem; border-radius: 10px; color: rgba(255,255,255,0.82);"><Icon name="cloud" style="color: #176AFA; flex-shrink: 0;" />How convenient is the bootstrapping process?</div>
    <div style="display: flex; align-items: center; gap: 0.9rem; padding: 0.6rem 1rem; border-radius: 10px; color: rgba(255,255,255,0.82);"><Icon name="cloud" style="color: #7D1CFE; flex-shrink: 0;" />How often do developers switch between tools?</div>
  </div>

</div>

---
layout: quote
quote: Shipping without a baseline is hoping, not engineering
subtitle: Data beats gut feeling. Always.
background: robot-working.jpeg
---

---

# A Few Days Later (Again)

<img v-click src="/standard-instrumentation.png" alt="Backstage instrumentation dashboard" style="width: 98%; border-radius: 8px; display: block; margin: auto;" />

---
layout: three-columns
---

# Metrics You Get Out of the Box

::left::
<div style="font-size: 0.6em;">
  <BulletBox accent="#7D1CFE" title="Catalog" :bullets="['<code>entities_count</code>', '<code>registered_locations_count</code>', '<code>relations_count</code>', '<code>processed.entities.count</code>', '<code>processing.duration</code>', '<code>processors.duration</code>', '<code>processing.queue.delay</code>', '<code>stitched.entities.count</code>', '<code>stitching.duration</code>', '<code>stitching.queue.length</code>', '<code>stitching.queue.delay</code>']" />
</div>

::middle::
<div style="font-size: 0.6em;">
  <BulletBox accent="#01D393" title="Scaffolder" :bullets="['<code>task.count</code>', '<code>task.duration</code>', '<code>step.count</code>', '<code>step.duration</code>']" />
</div>

::right::
<div style="font-size: 0.6em;">
  <BulletBox accent="#176AFA" title="Backend Tasks" :bullets="['<code>task.runs.count</code>', '<code>task.runs.duration</code>']" />
</div>


---

# Your Problems, Your Metrics

<span v-click><Icon name="puzzle" style="color: #7D1CFE;" />&numsp;Backstage needs to take the shape of YOUR platform.</span>

<span v-click><Icon name="target" style="color: #176AFA;" />&numsp;Your portal is unique. Your metrics should be too.</span>

<span v-click><Icon name="idea" style="color: #01D393;" />&numsp;Start with the problem. The metric follows.</span>

---
layout: center
---

# Life of an App

<div style="display: flex; align-items: center; justify-content: center; height: 72%;">
  <LifecycleFlow />
</div>

---

# Day 0 Friction

<span v-click><Icon name="unknown" style="color: #7D1CFE;" />&numsp;Ask three people, get three different answers.</span>

<span v-click><Icon name="settings" style="color: #176AFA;" />&numsp;CI/CD copy-pasted and half broken.</span>

<span v-click><Icon name="hourglass" style="color: #01D393;" />&numsp;Days between idea and first code commit.</span>

<LifecycleFlow :highlight="['Bootstrap', 'Develop', 'Deploy']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

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
    <Chip><Icon name="waves" style="color: #7D1CFE;" /> Flow State</Chip>
    <Chip><Icon name="scaffolder" style="color: #01D393;" /> Software Templates</Chip>
</div>

<div style="position: relative; width: 70%; margin: auto;">
  <img v-click.hide="1" src="/bad-template.png" alt="Template with too many input fields" style="width: 100%; border-radius: 8px;" />
  <img v-click="1" src="/good-template.png" alt="Good, opinionated template" style="position: absolute; top: 0; left: 50%; transform: translateX(-50%); width: 90%; border-radius: 8px;" />
</div>

<LifecycleFlow :highlight="['Bootstrap', 'Develop', 'Deploy']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

---

# What Backstage Tells You

<div style="display: flex; gap: 0.75rem; margin-bottom: 1rem;">
    <Chip><Icon name="waves" style="color: #7D1CFE;" /> Flow State</Chip>
    <Chip><Icon name="scaffolder" style="color: #01D393;" /> Software Templates</Chip>
</div>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem; margin-top: 1rem;">
  <BulletBox accent="#7D1CFE" title="Adoption" :bullets="['Are templates being used?', 'Which template is most popular?', 'Is adoption growing over time?', 'How often do runs fail?']" />
  <BulletBox v-click accent="#01D393" title="Performance" :bullets="['How long does a run take?', 'Which step is the slowest or most error-prone?', 'Are some users stuck while others are fast?']" />
</div>

<LifecycleFlow :highlight="['Bootstrap', 'Develop', 'Deploy']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

---

# Connecting the Dots

<div style="display: flex; gap: 0.75rem; margin-bottom: 1rem;">
    <Chip><Icon name="waves" style="color: #7D1CFE;" /> Flow State</Chip>
    <Chip><Icon name="scaffolder" style="color: #01D393;" /> Software Templates</Chip>
</div>

<img src="/jaeger-trace.png" alt="Jaeger trace of a template run" style="width: 90%; margin: auto"/>

<div style="position: absolute; top: 1.5rem; right: 2rem; display: flex; flex-direction: column; align-items: center; gap: 0.2rem;">
  <div style="background: #121212; border-radius: 8px; padding: 0.2rem;">
    <img src="/qr-demo.png" alt="QR code to the demo" style="width: 97px; height: 97px; display: block;" />
  </div>
  <span style="font-size: 0.5em; padding: 0">Try it yourself</span>
</div>

<LifecycleFlow :highlight="['Bootstrap', 'Develop', 'Deploy']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

---

# Day 2 Knowledge Gaps

<div style="display: flex; gap: 0.75rem; margin-bottom: 1.25rem;">
    <Chip><Icon name="brain" style="color: #01D393;" /> Cognitive Load</Chip>
    <Chip><Icon name="catalog" style="color: #7D1CFE;" /> Catalog + <Icon name="docs" style="color: #176AFA;" /> TechDocs + <Icon name="search" style="color: #FF8C42;" /> Tech Insights</Chip>
</div>

<p style="margin: 0; padding-bottom: 0.1rem;"><Icon name="timer" style="color: #7D1CFE;" />&numsp;Slow incident resolution.
<span style="display: block; font-size: 0.6em; opacity: 0.55;">E.g. time from alert to mitigation</span></p>
<p style="margin: 0; padding-bottom: 0.1rem;"><Icon name="ticket" style="color: #176AFA;" />&numsp;Quality issues are caught too late.
<span style="display: block; font-size: 0.6em; opacity: 0.55;">E.g. % of issues caught at review vs. in production</span></p>
<p style="margin: 0; padding-bottom: 0;"><Icon name="smile" style="color: #01D393;" />&numsp;Engineers have to rely on tribal knowledge.
<span style="display: block; font-size: 0.6em; opacity: 0.55;">E.g. senior engineer interruptions for service context</span></p>

<span v-click style="display: block; font-size: 0.7em">Same: <span style="color: #01D393">name problem → map to platform → instrument → measure → iterate</span></span>

<LifecycleFlow :highlight="['Develop', 'Maintain']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

---

# Some Metrics That Matter

<img src="/lifecycle.svg" style="width: 97%; height: auto; margin-left: auto; margin-right: auto;" alt="lifecycle" />

---

<img src="/backstage-dashboard.png" alt="Dynatrace dashboard showing Backstage metrics" style="width: 90%; border-radius: 8px; display: block; margin: auto; margin-top: -15px" />

---

# Your Backstage Playbook

<div style="display: flex; flex-direction: column; gap: 0.55rem; margin-top: 1.25rem;">

<div style="display: flex; align-items: flex-start; gap: 1rem; padding: 0.6rem 1rem; border-left: 3px solid #7D1CFE; border-radius: 0 8px 8px 0; background: rgba(125,28,254,0.07);">
  <span style="font-weight: 700; color: #7D1CFE; font-size: 1.1em; min-width: 1.5rem;">1</span>
  <div><strong>Name the problem</strong><span style="opacity: 0.55; font-size: 0.82em; margin-left: 0.5rem;">Which developer pain are you actually targeting?</span></div>
</div>

<div style="display: flex; align-items: flex-start; gap: 1rem; padding: 0.6rem 1rem; border-left: 3px solid #176AFA; border-radius: 0 8px 8px 0; background: rgba(23,106,250,0.07);">
  <span style="font-weight: 700; color: #176AFA; font-size: 1.1em; min-width: 1.5rem;">2</span>
  <div><strong>Establish a baseline</strong><span style="opacity: 0.55; font-size: 0.82em; margin-left: 0.5rem;">Measure the current state if you can. It becomes your comparison point later.</span></div>
</div>

<div style="display: flex; align-items: flex-start; gap: 1rem; padding: 0.6rem 1rem; border-left: 3px solid #01D393; border-radius: 0 8px 8px 0; background: rgba(1,211,147,0.07);">
  <span style="font-weight: 700; color: #01D393; font-size: 1.1em; min-width: 1.5rem;">3</span>
  <div><strong>Define success</strong><span style="opacity: 0.55; font-size: 0.82em; margin-left: 0.5rem;">What does "better" look like, in numbers?</span></div>
</div>

<div style="display: flex; align-items: flex-start; gap: 1rem; padding: 0.6rem 1rem; border-left: 3px solid #176AFA; border-radius: 0 8px 8px 0; background: rgba(23,106,250,0.07);">
  <span style="font-weight: 700; color: #176AFA; font-size: 1.1em; min-width: 1.5rem;">4</span>
  <div><strong>Build &amp; instrument</strong><span style="opacity: 0.55; font-size: 0.82em; margin-left: 0.5rem;">Find which feature fits your problem in your platform. Wire up your observability.</span></div>
</div>

<div style="display: flex; align-items: flex-start; gap: 1rem; padding: 0.6rem 1rem; border-left: 3px solid #7D1CFE; border-radius: 0 8px 8px 0; background: rgba(125,28,254,0.07);">
  <span style="font-weight: 700; color: #7D1CFE; font-size: 1.1em; min-width: 1.5rem;">5</span>
  <div><strong>Measure &amp; iterate</strong><span style="opacity: 0.55; font-size: 0.82em; margin-left: 0.5rem;">Did it move the needle? If not, back to step 1.</span></div>
</div>

</div>

---

# Takeaways

<div style="font-size: 1.4em;">
<p style="margin: 0; padding-bottom: 1.2rem; font-size: inherit;"><Icon name="unknown" style="color: #7D1CFE;" />&numsp;IDP done wrong can introduce lots of confusion and extra-work.</p>
<p style="margin: 0; padding-bottom: 1.2rem; font-size: inherit;"><Icon name="smile" style="color: #01D393;" />&numsp;It has to support your development workflow and enhance DevEx.</p>
<p style="margin: 0; padding-bottom: 1.2rem; font-size: inherit;"><Icon name="target" style="color: #176AFA;" />&numsp;Think about what you want to achieve before implementing.</p>
<p style="margin: 0; padding-bottom: 1.2rem; font-size: inherit;"><Icon name="search" style="color: #7D1CFE;" />&numsp;Backstage itself exposes OpenTelemetry Metrics and Traces.</p>
<p style="margin: 0; padding-bottom: 0; font-size: inherit;"><Icon name="scaffolder" style="color: #01D393;" />&numsp;Done right, it helps you keep an overview and automate complex tasks.</p>
</div>

---
layout: center
---

<img src="/robot-chilling.jpeg" style="position: absolute; inset: 0; width: 100%; height: 100%; object-fit: cover; opacity: 0.3; z-index: -1;" />

<h1 style="font-size: 3rem; text-align: center; line-height: 1.2; margin-bottom: 0.5rem;">Your Backstage. Your Problems. Your Metrics.</h1>

<p style="text-align: center; opacity: 0.8; margin-bottom: 2rem; font-size: 0.8rem;">Data beats gut feeling. Always.</p>

<div style="display: flex; gap: 3rem; justify-content: center;">
  <div style="display: flex; flex-direction: column; align-items: center; gap: 0.5rem;">
    <div style="background: #121212; border-radius: 8px; padding: 0.5rem;">
      <img src="/qr-thomas.png" alt="Thomas on LinkedIn" style="width: 160px; height: 160px; display: block;" />
    </div>
    <span style="font-size: 0.7em;">Thomas</span>
  </div>
  <div style="display: flex; flex-direction: column; align-items: center; gap: 0.5rem;">
    <div style="background: #121212; border-radius: 8px; padding: 0.5rem;">
      <img src="/qr-kathi.png" alt="Kathi on LinkedIn" style="width: 160px; height: 160px; display: block;" />
    </div>
    <span style="font-size: 0.7em;">Kathi</span>
  </div>
</div>
