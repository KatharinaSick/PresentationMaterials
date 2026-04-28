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
  <img src="./public/discussion.png" alt="Discussion" style="max-height: 360px; border-radius: 12px;" />
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

<div style="display: flex; gap: 2em; justify-content: center; align-items: stretch; padding: 2em;">

<div style="border: 2px solid #176AFA; padding: 2em; border-radius: 12px; flex: 1; display: flex; flex-direction: column; justify-content: center; align-items: center; text-align: center; gap: 1em; max-width: 300px; min-height: 280px;">

<div style="font-size: 3em;">👤</div>

<h3 style="margin: 0.5em 0; font-size: 1.5em;">Katharina Sick</h3>

<div style="font-weight: bold; color: #176AFA;">Dynatrace</div>

<div style="font-size: 0.9em; opacity: 0.9;">Observability Lead</div>

</div>

<div style="border: 2px solid #7D1CFE; padding: 2em; border-radius: 12px; flex: 1; display: flex; flex-direction: column; justify-content: center; align-items: center; text-align: center; gap: 1em; max-width: 300px; min-height: 280px;">

<div style="font-size: 3em;">👤</div>

<h3 style="margin: 0.5em 0; font-size: 1.5em;">Thomas Schuetz</h3>

<div style="font-weight: bold; color: #7D1CFE;">TSC Labs</div>

<div style="font-size: 0.9em; opacity: 0.9;">Cloud Native Trainer & Architect</div>

</div>

</div>
<!--
Quick intros about us & what we're passionate about
-->

---

# Our fictional company

<div style="display: flex; gap: 1.5rem; align-items: flex-start; margin-top: 2.25rem;">
  <div style="flex: 1.2; display: flex; flex-direction: column; gap: 0.8rem; min-width: 0;">
    <div style="display: flex; flex-direction: column; width: 100%; padding: 0.9rem 1rem; border-radius: 14px; background: rgba(255, 255, 255, 0.04); border-left: 6px solid #01D393; box-sizing: border-box;">
      <div style="font-size: 1rem; font-weight: 700; line-height: 1.25;">ALFIE Corp is a SaaS business based on microservices</div>
    </div>
    <div style="display: flex; flex-direction: column; width: 100%; padding: 0.9rem 1rem; border-radius: 14px; background: rgba(255, 255, 255, 0.04); border-left: 6px solid #176AFA; box-sizing: border-box;">
      <div style="font-size: 1rem; font-weight: 700; line-height: 1.25;">They are operating lots of services in many teams</div>
    </div>
    <div style="display: flex; flex-direction: column; width: 100%; padding: 0.9rem 1rem; border-radius: 14px; background: rgba(255, 255, 255, 0.04); border-left: 6px solid #7D1CFE; box-sizing: border-box;">
      <div style="font-size: 1rem; font-weight: 700; line-height: 1.25;">So they are bootstrapping lots of services</div>
    </div>
    <div style="display: flex; flex-direction: column; width: 100%; padding: 0.9rem 1rem; border-radius: 14px; background: rgba(255, 255, 255, 0.04); border-left: 6px solid #01D393; box-sizing: border-box;">
      <div style="font-size: 1rem; font-weight: 700; line-height: 1.25;">And are using many tools, some of them homegrown, to operate them</div>
    </div>
  </div>

  <div style="flex: 0.85; display: flex; justify-content: flex-end;">
    <div style="width: 100%; max-width: 360px;">
      <img
        src="./public/alfie.png"
        alt="ALFIE Corp"
        style="display: block; width: 100%; max-height: 250px; object-fit: contain;"
      />
    </div>
  </div>
</div>


<!--
But today we're not Kathi & Thomas from Dynatrace & TSC Labs but we both work at Alfi corp (or whatever). 
Quickly introduce the company and our roles.

ALFIE was an chaotic trainee at one of our companies some time ago and founded a company. This company built a SaaS product which really took off. In the meanwhile, they are operating lots of services in many teams, so they are also bootstrapping many services. Besides that, they have got lots of homegrown and operations tooling to operate this.

Kathi, it seems like it's your turn ... Why do you think they would need Backstage?
-->

---

# Why Backstage / The Problem / Current State

<!--
- What's the current state at Alfi corp?
- Where do we see problems?

I think we should keep this slide rather short and then always refer back to it when showing practical examples. Our abstract promises a practical framework, so I'm scared to loose people in the beginning if we have too much theory?
-->

---

# DevEx Framework

<!--
How can we measure if we actually have problems with DevEx?
Apply DevEx Framework to Alfi corp and highlight problems
-->

---

# Create a baseline

<!--
- We can't search for a solution without knowing what's currently going on
- We need to create a baseline so that we have something to compare against later. Otherwise, it will be hard to know if we succeeded
- baseline metrics show we have a problem in alfi corp

This could be a big statement slide like "if you deploy with nothing to compare against, you never know if you succeeded"

Note: we should add a note that if you have backstage already running, you can also create this baseline including backstage.
-->

---

# Apply Baseline to ALFIE Corp

<!--
Briefly discuss the main problems of Alfi corp
-->

---

# So... Backstage?

<!--
K: See! We need Backstage
T: Wait, slow down. Backstage is huge. We should also consider ....

Conclusion: for alfi corp, Backstage makes sense
-->

---

# Yes, Backstage!

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

# Problem N - Overview

<!--
T: Ok, let's take a look at problem X. Here's waht the baseline told us: ...

Problem intro includes:

- problem statement (easy to understand, relatable)
- DevEx dimension(s)
- Baseline metric & target (where we want to get to)
-->

---

# Problem N - Backstage Implementation

<!--
- How to solve this in Backstage, which features/plgins are needed
- Screenshots of the solution
-->

---

# Problem N - Measure if it worked

<!--
- How to get metrics out of that
- Which leading indicators (e.g. usage metrics to see if we're heading into the right direction) and outcomes (e.g. onboarding time, survey, whatever) to show the actual impact

We could also highlight that it takes patience to see outcomes sometimes but leading indicator should rise first

We can repeat those 3 sections for a set of problems to give people 1) an idea of how to approach this, 2) actual insights on how they can really measure this stuff in their platform - that's the walk away with a practical framwork to apply part to me
-->

---

# Wrap Up

<!--
The one big thing we want people to remember :)

Maybe wrapped in a little convo again
-->
