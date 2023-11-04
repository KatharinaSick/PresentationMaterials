---
theme: ksick-dynatrace
title: >-
  Principle of Least Privilege - How to Secure Kubernetes Without Making Users
  Hate You
defaults:
  speaker: Katharina Sick
  image: me.png
  website: ksick.dev
  jobTitle: Senior Software Engineer
  eventName: KCD Denmark
  eventDate: November 14, 2023
---

# Principle of Least Privilege

How to Secure Kubernetes Without Making Users Hate You

<!--
Deployment back in the days -> K8s

K8s: buzzword -> backbone

K8s has evolved: app hub -> ⏭️ main platform for everything
-->

---
layout: image-full
image: platform.png
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

.grey {
  color: grey;
}

.owaspHighlighted{}

.owaspHighlighted:after {
  content: '\00A0\00A0👈';
}
</style>

# OWASP Kubernetes Top 10

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
layout: about
---



<!--

-->

---
layout: image-full
image: storytime.png
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
clicks: 7
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

<img src="/galaxy.png" alt="Galaxy" :class="{ background: $slidev.nav.clicks > 0 }" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0" />

<logos-kubernetes style="position: absolute; width: 150px; height: 150px; left: 440px; top: 185px" />

<span v-click class="subject" style="left: 480px; top: 60px">👩‍💻</span>
<span v-click class="subject" style="left: 625px; top: 150px">🤖</span>
<span v-click :class="{ disabled: $slidev.nav.clicks > 6, subject: true }" style="left: 625px; top: 300px">📦</span>
<span v-click :class="{ disabled: $slidev.nav.clicks > 6, subject: true }" style="left: 480px; top: 400px">🚢</span>
<span v-click :class="{ disabled: $slidev.nav.clicks > 6, subject: true }" style="left: 325px; top: 300px">🌐️</span>
<span v-click :class="{ disabled: $slidev.nav.clicks > 6, subject: true }" style="left: 325px; top: 150px">🧩️</span>


---
layout: two-cols-header
clicks: 4
---

# Role-Based Access Control (RBAC)

::left::

<v-click at="0">
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

<v-click at="1">
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

<img src="/maze.png" alt="Maze" class="background" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0" />

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
---

<img src="/gitops.png" alt="Maze" class="background" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0" />

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
layout: image-full
image: mindset.png
---

<!-- The tale of lost mindset -->

---

# Least Privilege with Crossplane

<v-clicks>

💡 Least Privilege must be a common mindset

🎼 Composite resources > Managed resources

🗂️ Use dedicated provider configurations
</v-clicks>

---

<img src="/challenges.png" alt="Challenges" class="background" style="position:absolute; width: 100%; height: 100%; left: 0; top: 0; z-index: 0" />

<h1 style="position: relative; opacity: 1">Challenges</h1>

<span style="position: relative; opacity: 1">
<v-clicks>

💥 Handling emergencies

💫 Always reiterate

🧠 Embrace the mindset

🚀 Least Privilege is just the start
</v-clicks>
</span>

---
layout: center
---

# Thank you ❤️

<div style="display: flex; flex-direction: row; gap: 100px; margin-top: 32px">
<div>
<img style="width: 200px; height: 200px" src="/qr-slides.svg" />
<strong>Slides</strong>
</div>
<div>
<img style="width: 200px; height: 200px" src="/qr-feedback.svg" />
<strong>Feedback</strong>
</div>
</div>
