---
theme: ksick-dynatrace
title: >-
  Closing the Loop: Applying Least Privilege and Ensuring We Did It Well
defaults:
  speaker: Katharina Sick & Thomas Labarussias
  eventName: KCD Istanbul
  eventDate: May 16, 2025
download: true

---

# Closing the Loop

Applying Least Privilege and Ensuring We Did It Well

<!--
Deployment back in the days -> K8s

K8s: buzzword -> backbone

K8s has evolved: app hub -> ⏭️ main platform for everything
-->

---
layout: image-full
image: platform.webp
---

<!--
infrastructure, cloud-services, observability configuration,....

we have to be on our toes about security
-->

---
clicks: 1
preload: false
---

<style>
.listItem {
  font-size: 18px;
}

.listItem2 {
  font-size: 20px;
}

.grey {
  color: grey;
}

.owaspHighlighted{}

.owaspHighlighted:after {
  content: '\00A0\00A0👈';
}
</style>

# OWASP Kubernetes Top 10 (2022)

<ol style="margin-top: 32px">
<li :class="{ owaspHighlighted: $slidev.nav.clicks === 1, listItem: true }">Insecure Workload Configurations</li>
<li :class="{ grey: $slidev.nav.clicks === 1, listItem: true }">Supply Chain Vulnerabilities</li>
<li :class="{ owaspHighlighted: $slidev.nav.clicks === 1, listItem: true }">Overly Permissive RBAC Configurations</li>
<li :class="{ grey: $slidev.nav.clicks === 1, listItem: true }">Lack of Centralized Policy Enforcement</li>
<li :class="{ grey: $slidev.nav.clicks === 1, listItem: true }">Inadequate Logging and Monitoring</li>
<li :class="{ grey: $slidev.nav.clicks === 1, listItem: true }">Broken Authentication Mechanisms</li>
<li :class="{ grey: $slidev.nav.clicks === 1, listItem: true }">Missing Network Segmentation Controls</li>
<li :class="{ grey: $slidev.nav.clicks === 1, listItem: true }">Secrets Management Failures</li>
<li :class="{ grey: $slidev.nav.clicks === 1, listItem: true }">Misconfigured Cluster Components</li>
<li :class="{ grey: $slidev.nav.clicks === 1, listItem: true }">Outdated and Vulnerable Kubernetes Components</li>
</ol>

<!--
PoLP can help solve parts of those problems

K8s, ArgoCD, Crossplane
-->

---
layout: two-speakers
speaker1: Katharina Sick
image1: kathi.png
description1: Senior Software Engineer @Dynatrace
website1: ksick.dev
speaker2: Thomas Labarussias
image2: thomas.png
description2: Senior Developer Advocate @Sysdig
website2: thomas.labarussias.fr
transparentImages: true
---



<!--

-->

---
layout: image-full
image: storytime.webp
---


<!--
Story Time: How we broke our CI
-->

---
layout: center
---

<h1 class="gradient">Every program and every privileged user of the system should operate using the least amount of privilege necessary to complete the job.</h1>

<span style="font-size: 16px" v-click>Jerome Saltzer, Communications of the ACM (1974)</span>

<div style="display: flex; flex-direction: row; gap: 48px">
<div style="width: 120px; display: flex; flex-direction: column; justify-content: center" v-click>
<span style="font-size: 48px">🔒</span>
Overall<br/>Security
</div>
<div style="width: 120px; display: flex; flex-direction: column; justify-content: center" v-click>
<span style="font-size: 48px">🛡</span>
Less Attack Surface
</div>
<div style="width: 120px; display: flex; flex-direction: column; justify-content: center" v-click>
<span style="font-size: 48px">🚧</span>
Less Malware Propagation
</div>
<div style="width: 120px; display: flex; flex-direction: column; justify-content: center" v-click>
<span style="font-size: 48px">🏋️</span>
Stability
</div>
<div style="width: 120px; display: flex; flex-direction: column; justify-content: center" v-click>
<span style="font-size: 48px">🤝</span>
Compliance
</div>
</div>

---
layout: center
---

Zero Trust

<h1 class="gradient" style="margin-bottom: 36px">No entity, whether inside or outside an organization's network, should be trusted by default.</h1>

<div style="display: flex; flex-direction: row; gap: 48px">
<div style="width: 120px; display: flex; flex-direction: column; justify-content: center" v-click>
<span style="font-size: 48px">🔍</span>
Never Trust, Always Verify
</div>
<div style="width: 120px; display: flex; flex-direction: column; justify-content: center" v-click>
<span style="font-size: 48px">🔐</span>
Least Privilege
</div>
<div style="width: 120px; display: flex; flex-direction: column; justify-content: center" v-click>
<span style="font-size: 48px">⚔️</span>
Assume Breach
</div>
</div>

---
preload: false
---

<style>
.subject {
  position: absolute;
  width: 70px;
  height: 70px;
  font-size: 64px;
  text-align: center;
  line-height: 1;
}

.background {
  opacity: 0.2;
}

.disabled {
  opacity: 0.2;
}
</style>

<img src="/galaxy.webp" alt="Galaxy" :class="{ background: $slidev.nav.clicks > 0 }" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0" />

<logos-kubernetes style="position: absolute; width: 150px; height: 150px; left: 440px; top: 185px" />

<span v-click class="subject" style="left: 480px; top: 60px">👩‍💻</span>
<span v-click class="subject" style="left: 625px; top: 150px">🤖</span>
<span v-click class="subject" style="left: 625px; top: 300px">📦</span>
<span v-click class="subject" style="left: 480px; top: 400px">🚢</span>
<span v-click class="subject" style="left: 325px; top: 300px">🌐️</span>
<span v-click class="subject" style="left: 325px; top: 150px">🧩️</span>

---
preload: false
clicks: 2
---

# Wiz Kubernetes Security Report (2023)

<img src="/galaxy.webp" alt="Galaxy" class="background" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0"  />

<span class="subject" style="left: 50px; top: 120px; font-size: 36px" v-motion :initial="{x: 430, y: -30, scale: 2}" :enter="{x: 0, y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 750 }}">
👩‍💻</span>
<span class="subject" style="left: 50px; top: 186px; font-size: 36px" v-motion :initial="{x: 575, y: -6, scale: 2}" :enter="{x: 0, y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 750 }}">
🤖</span>
<span :class="{ disabled: $slidev.nav.clicks > 1, subject: true }" style="left: 50px; top: 252px; font-size: 36px" v-motion :initial="{x: 575, y: 78, scale: 2}" :enter="{x: 0, y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 750 }}">
📦</span>
<span :class="{ disabled: $slidev.nav.clicks > 1, subject: true }" style="left: 50px; top: 318px; font-size: 36px" v-motion :initial="{x: 430, y: 112, scale: 2}" :enter="{x: 0, y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 750 }}">
🚢</span>
<span :class="{ disabled: $slidev.nav.clicks > 1, subject: true }" style="left: 50px; top: 384px; font-size: 36px" v-motion :initial="{x: 275, y: -54, scale: 2}" :enter="{x: 0, y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 750 }}">
🌐️</span>
<span :class="{ disabled: $slidev.nav.clicks > 1, subject: true }" style="left: 50px; top: 450px; font-size: 36px" v-motion :initial="{x: 275, y: -270, scale: 2}" :enter="{x: 0, y: 0, scale: 1, transition: { type: 'keyframes', ease: 'linear', duration: 750 }}">
🧩️️</span>

<ul v-click style="position:absolute; top: 130px; left: 150px">
<li style="list-style-type: none">&lt;1% of clusters allow anonymous API access</li>
<li style="list-style-type: none">8% of pods have elevated RBAC privileges</li>
<li :class="{ disabled: $slidev.nav.clicks > 1 }" style="list-style-type: none">16% of pods have risky system capabilities</li>
<li :class="{ disabled: $slidev.nav.clicks > 1 }" style="list-style-type: none">18% of pods mount sensitive host paths</li>
<li :class="{ disabled: $slidev.nav.clicks > 1 }" style="list-style-type: none">18% of pods run as root</li>
<li :class="{ disabled: $slidev.nav.clicks > 1 }" style="list-style-type: none">91% of namespaces don't have network policies</li>
</ul> 

---
layout: two-cols-header
clicks: 4
---

# Role-Based Access Control (RBAC)

::left::

<v-click at="1">

```yaml
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  namespace: default
  name: pod-reader
rules:
  - apiGroups: [""]
    resources: ["pods"]
    verbs: ["get", "watch", "list"]
```

</v-click>

<div v-click="3" style="display: flex; padding: 36px; width: 100%; align-items: center; justify-content: center">
    <h1 class="gradient">What?</h1>
</div>

::right::

<v-click at="2">
```yaml
apiVersion: rbac.authorization.k8s.io/v1
kind: RoleBinding
metadata:
  name: read-pods
  namespace: default
subjects:
  - kind: User
    name: alex
    apiGroup: rbac.authorization.k8s.io
roleRef:
  kind: Role
  name: pod-reader
  apiGroup: rbac.authorization.k8s.io
```
</v-click>

<div v-click="4" style="display: flex; padding: 36px; width: 100%; align-items: center; justify-content: center">
    <h1 class="gradient">Who?</h1>
</div>

---
layout: center
---

<img src="/maze.webp" alt="Maze" class="background" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0" />

<h1 style="z-index: 2">At its core, RBAC is clear and logical.<br/>In practice, it's a maze of considerations.</h1>

---

# Tooling to the Rescue

<v-clicks>

👀 Visualize current RBAC setup

🪄 Generate Roles & RoleBindings from audit logs

📑 Identify risks and generate reports
</v-clicks>

---
layout: center
preload: false
---

<img src="/gitops.webp" alt="Maze" class="background" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0" />

<h1 style="z-index: 2"> Git Repositories > Humans</h1>

<!--
To make all of this possible we are using ArgoCD. So how do we manage to run GitOps with ArgoCD and Least Privilege? ⏭️
-->

---
  
# Least Privilege with ArgoCD
 
<v-clicks>
 
  🎯 Keep repository configuration on point
 
  ✋ Use ArgoCD projects to provide boundaries
 
  📝 Declare policies to prevent misuse
 
  🎮 Simplify the user interface for clear policies
 
  🌱 Provide development environments

</v-clicks>

---

# What About Blind Spots?

<v-clicks>

⚠️ How to detect suspicious events?

⛔ How to detect non-compliant actions?

</v-clicks>

---

# Falco: The Cloud Native Runtime Security

<img src="/falco-horizontal-color.svg" alt="Falco" :class="{ background: $slidev.nav.clicks > 0 }" style="position:absolute; width: 90%; height: 100%; left: 5%; top: 0; z-index: -1" />

<v-clicks>

🎓 A <b>graduated CNCF</b> project

🐝 Captures <b>syscalls</b> with <b>eBPF</b>

🚢 Monitors <b>containers</b> & <b>hosts</b>

🗂️ Captures <b>k8s audit logs</b> with a dedicated <b>plugin</b>

📋 Has <b>default rules</b> that cover classical exploits

</v-clicks>

---

# Falco: The Cloud Native Runtime Security

<img src="/falco-horizontal-color.svg" alt="Falco"  class="background" style="position:absolute; width: 90%; height: 100%; left: 5%; top: 0; z-index: -1" />
<img style="width:800px; margin-left: auto; margin-right: auto;" src="/falco-architecture.png" />

---

# Goodbye Blind Spots 👋

```json
{
  "hostname": "falco-demo-control-plane",
  "output": "11:07:53.717438949: Notice A shell was spawned in a container with an attached terminal ...",
  "priority": "Notice",
  "rule": "Terminal shell in container",
  "source": "syscall",
  "tags": [
    "T1059",
    "container",
    "maturity_stable",
    "mitre_execution",
    "shell"
  ],
  ...
}
```

---
layout: center
---

<img src="/trust.webp" alt="Platform" class="background" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0" />

<h1 style="font-size: 48px; line-height: 1.2; z-index: 2">
If we trust our platform blindly,<br/>who's truly in control?
</h1>

---
layout: center
---

# Let's Build Trust

<img src="/falco-dashboard.png" alt="Observability Dashboard for Falco" style="width: 90%; height: 80%; object-fit: cover" />

---
layout: center
---

# Thank you ❤️

<div style="display: flex; flex-direction: row; gap: 100px; margin: 32px">
<div>
<img style="width: 200px; height: 200px" src="/qr-linkedin-kathi.svg" />
<strong>Katharina</strong>
</div>
<div>
<img style="width: 200px; height: 200px" src="/qr-linkedin-thomas.svg" />
<strong>Thomas</strong>
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
