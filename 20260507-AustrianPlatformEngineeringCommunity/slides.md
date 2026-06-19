---
theme: underglow
title: 'Your Backstage, Your Problems, Your Metrics'
event:
  name: Austrian Plattform Engineering Community 2026
  date: May 07, 2026
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

---
layout: two-cols
---

# Overkill?

<img src="/robot-thinking.jpeg" style="position: absolute; inset: 0; width: 100%; height: 100%; object-fit: cover; opacity: 0.3; z-index: -1;" />

<div style="position: relative; z-index: 1; background: #121212; border-radius: 8px; padding: 0.25rem;">



<Box accent="#7D1CFE">It introduces a new piece of software to maintain</Box>

<Box accent="#01D393">Platform People need react Know-How</Box>

<Box accent="#176AFA">The IDP also changes the way things work</Box>

</div>

---
layout: quote
quote: A Few Days Later ...
background: robot-chilling.jpeg
---

---

# SPACE and DevEx Frameworks

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem; align-items: start; margin-top: 1.5rem;">
  <BulletBox accent="#01D393" title="SPACE" :bullets="['Satisfaction', 'Performance', 'Activity', 'Communication', 'Efficiency']"></BulletBox>

<BulletBox accent="#176AFA" title="DevEx Framework" :bullets="['Flow State', 'Feedback Loops', 'Cognitive Load']"></BulletBox>
</div>

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

# Day One Friction

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
    <Chip v-click><Icon name="waves" style="color: #176AFA;" /> Flow State</Chip>
    <Chip v-click><Icon name="scaffolder" style="color: #01D393;" /> Software Templates</Chip>
</div>


<div style="position: relative; width: 70%; margin: auto;">
  <img v-click="[3, 4]" src="/bad-template.png" alt="Template with too many input fields" style="width: 100%; border-radius: 8px;" />
  <img v-click="4" src="/good-template.png" alt="Good, opinionated template" style="position: absolute; top: 0; left: 0; width: 90%; border-radius: 8px;" />
</div>

<LifecycleFlow :highlight="['Bootstrap', 'Develop', 'Deploy']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

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

---

# Connecting the Dots

<div style="display: flex; gap: 0.75rem; margin-bottom: 1rem;">
    <Chip><Icon name="waves" style="color: #176AFA;" /> Flow State</Chip>
    <Chip><Icon name="scaffolder" style="color: #01D393;" /> Software Templates</Chip>
</div>

<div style="font-size: 0.62em; font-family: monospace; margin-top: 0.25rem;">
  <div style="display: flex; opacity: 0.4; font-size: 0.85em; margin-bottom: 0.4rem;">
    <div style="width: 44%;">span</div>
    <div style="width: 56%; display: flex; justify-content: space-between;"><span>0 s</span><span>~ 5 min</span></div>
  </div>

  <div style="display: flex; align-items: center; margin-bottom: 0.22rem; height: 1.3em;">
    <div style="width: 44%; color: #7D1CFE; font-weight: bold;">backstage: template run</div>
    <div style="width: 56%; position: relative; height: 1em;"><div style="position: absolute; left: 0%; width: 100%; height: 100%; background: #7D1CFE; border-radius: 2px;"></div></div>
  </div>

  <div style="display: flex; align-items: center; margin-bottom: 0.22rem; height: 1.3em;">
    <div style="width: 44%; color: #7D1CFE; padding-left: 1em;">↳ fill template</div>
    <div style="width: 56%; position: relative; height: 1em;"><div style="position: absolute; left: 0%; width: 15%; height: 100%; background: #7D1CFE; border-radius: 2px; opacity: 0.6;"></div></div>
  </div>

  <div style="display: flex; align-items: center; margin-bottom: 0.22rem; height: 1.3em;">
    <div style="width: 44%; color: #7D1CFE; padding-left: 1em;">↳ click create</div>
    <div style="width: 56%; position: relative; height: 1em;"><div style="position: absolute; left: 15%; width: 3%; height: 100%; background: #7D1CFE; border-radius: 2px; opacity: 0.6;"></div></div>
  </div>

  <div style="display: flex; align-items: center; margin-bottom: 0.22rem; height: 1.3em;">
    <div style="width: 44%; color: #7D1CFE; padding-left: 1em;">↳ create repositories</div>
    <div style="width: 56%; position: relative; height: 1em;"><div style="position: absolute; left: 18%; width: 9%; height: 100%; background: #7D1CFE; border-radius: 2px; opacity: 0.6;"></div></div>
  </div>

  <div style="display: flex; align-items: center; margin-bottom: 0.22rem; height: 1.3em;">
    <div style="width: 44%; color: #aaaaaa; padding-left: 1.8em;">↳ create app repo</div>
    <div style="width: 56%; position: relative; height: 1em;"><div style="position: absolute; left: 18%; width: 9%; height: 100%; background: #aaaaaa; border-radius: 2px; opacity: 0.7;"></div></div>
  </div>

  <div style="display: flex; align-items: center; margin-bottom: 0.22rem; height: 1.3em;">
    <div style="width: 44%; color: #aaaaaa; padding-left: 1.8em;">↳ create deployment repo</div>
    <div style="width: 56%; position: relative; height: 1em;"><div style="position: absolute; left: 18%; width: 9%; height: 100%; background: #aaaaaa; border-radius: 2px; opacity: 0.7;"></div></div>
  </div>

  <div style="display: flex; align-items: center; margin-bottom: 0.22rem; height: 1.3em;">
    <div style="width: 44%; color: #FF8C42; padding-left: 1em;">↳ argo-events: trigger</div>
    <div style="width: 56%; position: relative; height: 1em;"><div style="position: absolute; left: 27%; width: 3%; height: 100%; background: #FF8C42; border-radius: 2px;"></div></div>
  </div>

  <div style="display: flex; align-items: center; margin-bottom: 0.22rem; height: 1.3em;">
    <div style="width: 44%; color: #176AFA; padding-left: 1em;">↳ argo-workflows: build & update</div>
    <div style="width: 56%; position: relative; height: 1em;"><div style="position: absolute; left: 30%; width: 53%; height: 100%; background: #176AFA; border-radius: 2px;"></div></div>
  </div>

  <div style="display: flex; align-items: center; margin-bottom: 0.22rem; height: 1.3em;">
    <div style="width: 44%; color: #176AFA; padding-left: 1.8em;">↳ build image</div>
    <div style="width: 56%; position: relative; height: 1em;"><div style="position: absolute; left: 30%; width: 43%; height: 100%; background: #176AFA; border-radius: 2px; opacity: 0.55;"></div></div>
  </div>

  <div style="display: flex; align-items: center; margin-bottom: 0.22rem; height: 1.3em;">
    <div style="width: 44%; color: #176AFA; padding-left: 1.8em;">↳ update deployment repo</div>
    <div style="width: 56%; position: relative; height: 1em;"><div style="position: absolute; left: 73%; width: 10%; height: 100%; background: #176AFA; border-radius: 2px; opacity: 0.55;"></div></div>
  </div>

  <div style="display: flex; align-items: center; margin-bottom: 0.22rem; height: 1.3em;">
    <div style="width: 44%; color: #01D393; padding-left: 1em;">↳ argocd: sync</div>
    <div style="width: 56%; position: relative; height: 1em;"><div style="position: absolute; left: 83%; width: 12%; height: 100%; background: #01D393; border-radius: 2px;"></div></div>
  </div>

  <div style="display: flex; align-items: center; height: 1.3em;">
    <div style="width: 44%; color: #01D393; padding-left: 1em;">↳ app: healthy ✓</div>
    <div style="width: 56%; position: relative; height: 1em;"><div style="position: absolute; left: 95%; width: 5%; height: 100%; background: #01D393; border-radius: 2px; opacity: 0.7;"></div></div>
  </div>
</div>

<LifecycleFlow :highlight="['Bootstrap', 'Develop', 'Deploy']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

[//]: # (---)

[//]: # ()
[//]: # (# Try It Yourself)

[//]: # ()
[//]: # (<img src="/robot-demo.jpeg" alt="" style="position: absolute; inset: 0; width: 100%; height: 100%; object-fit: cover; opacity: 0.3; z-index: -1;" />)

[//]: # ()
[//]: # (<div style="display: flex; justify-content: center; margin-top: 1rem;">)

[//]: # (  <div style="background: #121212; border-radius: 12px; padding: 1.25rem; display: flex; flex-direction: column; align-items: center; gap: 0.75rem;">)

[//]: # (    <img src="/demo-qr.png" alt="QR code to demo repository" style="width: 180px; height: 180px; border-radius: 8px;" />)

[//]: # (    <a href="https://github.com/KatharinaSick/demos" style="font-size: 0.8em; opacity: 0.7;">github.com/KatharinaSick/demos</a>)

[//]: # (  </div>)

[//]: # (</div>)

[//]: # ()
[//]: # (<p style="position: absolute; bottom: 3rem; left: 2rem; right: 2rem; text-align: center; font-size: 0.8em; margin: 0;">Zero setup. Just bring your own observability backend.</p>)

---

# Day 2 Knowledge Gaps

<span v-click><Icon name="unknown" style="color: #7D1CFE;" />&numsp;Who owns what? No single source of truth.</span>

<span v-click><Icon name="docs" style="color: #176AFA;" />&numsp;How does it work? Docs are scattered or missing.</span>

<span v-click><Icon name="search" style="color: #01D393;" />&numsp;Does it meet our standards? No single answer.</span>

<LifecycleFlow :highlight="['Develop', 'Maintain']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

---

# What Could Better Look Like?

<p v-click style="padding-bottom: 0.6rem;"><Icon name="timer" style="color: #7D1CFE;" />&numsp;Faster incident resolution.
<span style="display: block; font-size: 0.6em; opacity: 0.55;">E.g. time from alert to mitigation</span></p>
<p v-click style="padding-bottom: 0.6rem;"><Icon name="ticket" style="color: #176AFA;" />&numsp;Quality issues caught early, not late.
<span style="display: block; font-size: 0.6em; opacity: 0.55;">E.g. % of issues caught at review vs. in production</span></p>
<p v-click style="padding-bottom: 0;"><Icon name="smile" style="color: #01D393;" />&numsp;Tribal knowledge replaced by catalog data.
<span style="display: block; font-size: 0.6em; opacity: 0.55;">E.g. senior engineer interruptions for service context</span></p>

<LifecycleFlow :highlight="['Develop', 'Maintain']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

---

# From Tribal Knowledge to Catalog Data

<div style="display: flex; gap: 0.75rem; margin-bottom: 1rem;">
    <Chip v-click><Icon name="brain" style="color: #01D393;" /> Cognitive Load</Chip>
    <Chip v-click><Icon name="catalog" style="color: #7D1CFE;" /> Catalog + <Icon name="docs" style="color: #176AFA;" /> TechDocs + <Icon name="search" style="color: #FF8C42;" /> Tech Insights</Chip>
</div>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem; margin-top: 1rem;">
    <BulletBox v-click="3" accent="#7D1CFE" title="Backstage Data*" :bullets="['Catalog completeness score', 'TechDocs coverage', 'Services with a description', 'Dependencies mapped in catalog']" />
    <BulletBox v-click="4" accent="#01D393" title="Connecting the Dots" :bullets="['Ticket picked up', 'Owner &amp; context found in catalog', 'Architecture found in TechDocs', 'PR submitted']" />
</div>

<p v-click="3" style="font-size: 0.8em; margin-top: 0.2rem;">* via Catalog API or Tech Insights, not available as OTel metrics out of the box</p>

<LifecycleFlow :highlight="['Develop', 'Maintain']" compact style="position: absolute; bottom: 3rem; width: 90%;" />

---

# Some Metrics That Matter

<img src="/lifecycle.svg" style="width: 97%; height: auto; margin-left: auto; margin-right: auto;" alt="lifecycle" />

---

<img src="/backstage-dashboard.png" alt="Dynatrace dashboard showing Backstage metrics" style="width: 90%; border-radius: 8px; display: block; margin: auto; margin-top: -15px" />

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

---

# Takeaways

<Box accent="#7D1CFE">IDP done wrong can introduce lots of confusion and extra-work</Box>

<Box accent="#01D393">It has to support your development workflow and enhance DevEx</Box>

<Box accent="#176AFA">Start thinking about what you want to achieve before implementing</Box>

<Box accent="#7D1CFE">Backstage itself exposes OpenTelemetry Metrics and Traces</Box>

<Box accent="#01D393">Done right, it helps you keeping an overview and automate complex tasks</Box>

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
      <img src="/qr-open-ecosystem.png" alt="Open Ecosystem Forum" style="width: 160px; height: 160px; display: block;" />
    </div>
    <span style="font-size: 0.7em;">Join the discussion</span>
  </div>
  <div style="display: flex; flex-direction: column; align-items: center; gap: 0.5rem;">
    <div style="background: #121212; border-radius: 8px; padding: 0.5rem;">
      <img src="/qr-kathi.png" alt="Kathi on LinkedIn" style="width: 160px; height: 160px; display: block;" />
    </div>
    <span style="font-size: 0.7em;">Kathi</span>
  </div>
</div>
