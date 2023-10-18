---
theme: ksick-dynatrace
title: Securing Kubernetes Clusters - The Principle of Least Privilege with ArgoCD and Crossplane
defaults:
  speaker: Katharina Sick
  image: /me.png
  website: ksick.dev
  jobTitle: Senior Software Engineer
  eventName: KCD Austria Rejects
  eventDate: October 19, 2023
---

<style>
.target {
  position: absolute;
  width: 70px;
  height: 70px;
  font-size: 64px;
  text-align: center;
  line-height: 1;
}
</style>

# Securing Kubernetes Clusters

The Principle of Least Privilege with ArgoCD and Crossplane

<!--
- Deployment back in the days
- Kubernetes is not just a buzzword anymore
-->

---

<logos-kubernetes style="position: absolute; width: 150px; height: 150px; left: 415px; top: 185px" />

<span v-click class="target" style="left: 455px; top: 50px">💻</span>
<span v-click class="target" style="left: 455px; top: 410px">📊</span>
<span v-click class="target" style="left: 250px; top: 241px">🚨</span>
<skill-icons-gcp-light v-click class="target" style="left: 640px; top: 241px" />
<skill-icons-aws-light v-click class="target" style="left: 300px; top: 100px" />
<skill-icons-azure-light v-click class="target" style="left: 600px; top: 100px" />
<skill-icons-github-light v-click class="target" style="left: 310px; top: 360px" />
<arcticons-anythingtopip v-click class="target" style="left: 600px; top: 360px" />

<!--
- Kubernetes has evolved
- Main platform for deploying, running and scaling our applications
- But also
    - observability dashboards
    - alerts
    - cloud services on gcp
    - aws
    - or azure
    - GitHub
    - Any other thing
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

---
layout: about
---

---
layout: center
---

<h1 class="gradient">Every program and every privileged user of the system should operate using the least amount of privilege necessary to complete the job.</h1>

<span style="font-size: 16px">Jerome Saltzer, Communications of the ACM (1974)</span>

---

# Benefits

<v-clicks>

🔒 Better overall security

🛡️ Smaller attack surface

🚧️ Less malware propagation

🏋 Better stability

🤝 Compliance
</v-clicks>

---

# Zero Trust

<v-clicks>

🔍 Never trust, always verify

🔐 Least privilege

⚔️ Assume breach
</v-clicks>

<!--
- Security strategy of not granting implicit trust to a user, device or app by solely just a proxy around them like e.g. network location
- You can't simply buy a product and get it, just like PoLP

- Never trust: each new connection attempty must be authenticated and authorized
- Assume breach: plan for the worst case scenario and then be able to recover quickly
-->

---
clicks: 7
preload: false
---

<style>
.background {
  opacity: 0.1;
}
</style>

<logos-kubernetes style="position: absolute; width: 150px; height: 150px; left: 415px; top: 185px" />

<span v-click class="target" style="left: 455px; top: 60px">👩‍💻</span>
<span v-click class="target" style="left: 600px; top: 150px">🤖</span>
<clarity-node-line v-click :class="{ background: $slidev.nav.clicks > 6, target: true }" style="left: 600px; top:
300px" />
<clarity-nodes-line v-click :class="{ background: $slidev.nav.clicks > 6, target: true }" style="left: 455px; top:
400px" />
<carbon-api-1 v-click :class="{ background: $slidev.nav.clicks > 6, target: true }" style="left: 300px; top: 300px" />
<codicon-extensions v-click :class="{ background: $slidev.nav.clicks > 6, target: true }" style="left: 300px; top:
150px" />

<!--
- Humans
- Service Accounts
- Pods (Pod Security & Network Policies)
- Nodes (kubelet, minimal access to the api server)
- API server (interacts with many cluster internals, extensions!)
- Other extensions like operators
-->

---
layout: two-cols-header
clicks: 4
---

# Role-Based Access Control

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

# At its core, RBAC is clear and logical.<br/>In practice, it's a maze of considerations.

---
layout: center
---

# Git Repository > User

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

# Least Privilege with Crossplane

<v-clicks>

💡 Least privilege not only applies to the user interface

🎼 Favor composite resources over managed resources

🗂️ Use dedicated provider configurations
</v-clicks>

---

# Challenges

<v-clicks>

💥 Handling emergencies

👑 Golden path vs golden cage

💫 Always reiterate

🏁 Least privilege is just the start
</v-clicks>

---
layout: center
---

<div style="display: flex; flex-direction: column; justify-content: end; align-items: center; height: 100%">

# Thank you ❤️

<img style="width: 130px; height: 130px; margin-top: 36px" src="/slides-qr.svg" />

<a href="https://ksick.dev" style="font-size: 18px; margin: 0; padding: 0">ksick.dev</a>
</div>
