---
theme: ksick-dynatrace
title: 'Building Better Software Faster: The Role of CI/CD in Development'
defaults:
  speaker: Katharina Sick
  image: me.webp
  website: ksick.dev
  jobTitle: Senior Software Engineer
  eventName: SE24
  eventDate: February 29, 2024
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
</style>

# Building Better Software Faster

The Role of CI/CD in Development

<img src="/title-fix.png" style="position: absolute; width: 200px; left: 355px; top: 283px;">

<!--
What are platforms?<br/>
Main goal: reduce cognitive load, focus on innovation & productivity<br/>

How: Gathering repetitive tasks around building, delivering and observing applications into one central hub.<br/>
**Self-service heaven for developers** <br/>
-->

---
layout: center
preload: false
---

<img src="/platform.webp" alt="Platform" class="background" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0" />

<h1 style="z-index: 2; font-weight: 500; font-size: 48px; line-height: 1.1">Platforms are a means of<br/> <span style="font-weight: 700">centralising expertise</span> whilst <span style="font-weight: 700">decentralising innovation</span> to the customer or
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
layout: about
---

<!--
How do you build such a platform?<br/>
CI/CD alone is a beast<br/>
Self-service without bothering operations or platform team

The catch? Platform Engineers suddenly need UI/UX skills
Because, ultimately ⏭️ every platform offers an interface
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
preload: false
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