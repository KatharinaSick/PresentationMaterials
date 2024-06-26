---
theme: ksick-dynatrace
title: To Containers and Beyond - Kubernetes as a Universal Control Plane
defaults:
  speaker: Katharina Sick
  image: me.webp
  website: ksick.dev
  description: Senior Software Engineer
  eventName: Global Azure Austria
  eventDate: April 20, 2024
download: true

---

<style>
.kube {
  background: #326CE5;
  border: 2px solid white;
  width: 100px;
  height: 100px; 
  border-radius: 50px; 
  display: flex; 
  justify-content: center; 
  align-items: center
}

.blue {
  background: #326CE5;
}
</style>

# To Containers and Beyond

Kubernetes as a Universal Control Plane

---

<logos-kubernetes style="position: absolute; width: 200px; height: 200px; left: 390px; top: 176px" />

<h1 v-click style="position: absolute; width: 300px; text-align: center; left: 120px; top: 180px">Containers</h1>
<h1 v-click style="position: absolute; width: 300px; text-align: center; left: 530px; top: 260px">YAML</h1>
<h1 v-click style="position: absolute; width: 300px; text-align: center; left: 340px; top: 400px">✨ Magic ✨</h1>

---
layout: speaker
---

---
layout: center
---

<div style="position: absolute; display: flex; width: 500px; height: 100px; left: 240px; top: 160px; align-items: center; justify-content: center">
  <h1 style="font-size: 40px; padding: 0; margin: 0; color: #7a7a7a">Kubernetes</h1>
</div>
<div style="position: absolute; display: flex; width: 500px; height: 100px; left: 240px; top: 226px; align-items: center; justify-content: center">
  <h1 style="font-size: 64px; padding: 0; margin: 0">κυβερνήτης</h1>
</div>
<div style="position: absolute; display: flex; width: 500px; height: 100px; left: 240px; top: 300px; align-items: center; justify-content: center">
  <h1 style="font-size: 40px; padding: 0; margin: 0; color: #7a7a7a">Helmsman, Pilot</h1>
</div>

---
layout: center
clicks: 5
---

# Kubernetes is a <span :class="{ gradient: $slidev.nav.clicks === 1 }">portable</span>, <span :class="{ gradient: $slidev.nav.clicks === 2 }">extensible</span>, <span :class="{ gradient: $slidev.nav.clicks === 3 }">open</span> <span :class="{ gradient: $slidev.nav.clicks === 3 }">source</span> platform for managing <span :class="{ gradient: $slidev.nav.clicks === 4 }">containerized</span> <span :class="{ gradient: $slidev.nav.clicks === 4 }">workloads and services</span>, that facilitates both <span :class="{ gradient: $slidev.nav.clicks === 5 }">declarative configuration</span> and automation.

<a style="font-size: 16px" href="https://kubernetes.io/docs/concepts/overview/">https://kubernetes.io/docs/concepts/overview</a>

<!--
### Portable
- can run anywhere, no matter if cloud, on-premise or hybrid
### Extensible
- designed to be easily extensible
- not many use cases to touch the core of Kubernetes
### Open Source
- open sourced by Google in 2014
- large, rapidly growing ecosystem
### Containers
- we all know and love containers by now
### Declarative configuration
- this is where all the YAML comes from
- you just describe the desired state
### Summary
- Framework to run distributed systems in a reliable manner
-->

---
layout: center
clicks: 11
---

<!-- Border -->
<div style="position: absolute; border: 3px solid white; width: 780px; height: 400px; border-radius: 32px" />
<logos-kubernetes style="position: absolute; width: 90px; height: 90px; left: 440px; top: 25px" />

<!-- Node 1 -->
<div v-click="1" style="position: absolute; border: 3px solid #326CE5; border-radius: 24px; width: 240px; height: 170px; left: 580px; top: 100px">
    <p style="font-size: 24px; padding: 0; margin: 8px; color: white">Node</p>
    <div style="display: flex; flex-direction: row; justify-content: space-around; padding: 0 12px">
        <span v-click="3" style="background: #326CE5; border-radius: 100%; border: 2px solid white; width: 70px; height: 70px; display: flex; align-items: center; justify-content: center">
            <strong style="font-size: 12px; color: white">Runtime</strong>
        </span>
        <span v-click="4" style="background: #326CE5; border-radius: 100%; border: 2px solid white; width: 70px; height: 70px; margin-top: 40px; display: flex; align-items: center; justify-content: center">
            <strong style="font-size: 12px; color: white">kubelet</strong>
        </span>
        <span v-click="5" style="background: #326CE5; border-radius: 100%; border: 2px solid white; width: 70px; height: 70px; display: flex; align-items: center; justify-content: center">
            <strong style="font-size: 12px; color: white">kube-proxy</strong>
        </span>
    </div>
</div>

<!-- Node 2 -->
<div v-click="2" style="position: absolute; border: 3px dashed #326CE5; border-radius: 24px; width: 240px; height: 170px; left: 580px; top: 280px">
    <p style="font-size: 24px; padding: 0; margin: 8px; color: white">Node</p>
    <div style="display: flex; flex-direction: row; justify-content: space-around; padding: 0 12px">
        <span v-click="3" style="border-radius: 100%; border: 2px dashed white; width: 70px; height: 70px; display: flex; align-items: center; justify-content: center">
            <strong style="font-size: 12px; color: white">Runtime</strong>
        </span>
        <span v-click="4" style="border-radius: 100%; border: 2px dashed white; width: 70px; height: 70px; margin-top: 40px; display: flex; align-items: center; justify-content: center">
            <strong style="font-size: 12px; color: white">kubelet</strong>
        </span>
        <span v-click="5" style="border-radius: 100%; border: 2px dashed white; width: 70px; height: 70px; display: flex; align-items: center; justify-content: center">
            <strong style="font-size: 12px; color: white">kube-proxy</strong>
        </span>
    </div>
</div>

<!-- Control Plane -->
<div v-click="6" style="position: absolute; border: 3px solid #326CE5; border-radius: 24px; width: 320px; height: 350px; left: 130px; top: 100px">
    <p style="font-size: 24px; padding: 0; margin: 8px; color: white">Control Plane</p>
    <span v-click="7" style="position: absolute; left: 105px; top: 135px; background: #326CE5; border-radius: 100%; border: 2px solid white; width: 100px; height: 100px; display: flex; align-items: center; justify-content: center">
        <strong style="font-size: 12px; color: white">kube-<br/>apiserver</strong>
    </span>
    <span v-click="10" style="position: absolute; left: 20px; top: 55px; background: #326CE5; border-radius: 100%; border: 2px solid white; width: 100px; height: 100px; display: flex; align-items: center; justify-content: center">
        <strong style="font-size: 12px; color: white">kube-controller-manager</strong>
    </span>
    <span v-click="9" style="position: absolute; left: 195px; top: 55px; background: #326CE5; border-radius: 100%; border: 2px solid white; width: 100px; height: 100px; display: flex; align-items: center; justify-content: center">
        <strong style="font-size: 12px; color: white">kube-scheduler</strong>
    </span>
    <span v-click="8" style="position: absolute; left: 195px; top: 215px; background: #326CE5; border-radius: 100%; border: 2px solid white; width: 100px; height: 100px; display: flex; align-items: center; justify-content: center">
        <strong style="font-size: 12px; color: white">etcd</strong>
    </span>
    <span v-click="11" style="position: absolute; left: 20px; top: 215px; border-radius: 100%; border: 2px dashed white; width: 100px; height: 100px; display: flex; align-items: center; justify-content: center">
        <strong style="font-size: 12px; color: white">cloud-controller-manager</strong>
    </span>
</div>

<!-- 
### Node
- At least one node (worker machine) where your workloads actually run on
- Can be physical or virtual
- You can have as many of them as you want, but as said at least one
### Runtime
- Actually runs containers (execution & lifecycle)
- Needs to run on each node so that pods can be spawned there
- containerd, cri-o, Docker Engine (cri-dockerd adapter), Mirantis 
### kubelet
- "Node Agent", registers nodes at the control plane
- Makes sure that containers are running & healthy
- Only takes care of containers created by Kubernetes
### kube-proxy
- Allows network communication between pods
### control-plane
- Only exists once per cluster
- Makes global decisions about the cluster
- Detects and responds to cluster events
- Components can run on any node/machine in the cluster
### api-server
- Exposes the Kubernetes API
- Tools like `kubectl` interact with this API
### etcd
- Key value store
- Contains all cluster data
### kube-scheduler
- Selects the nodes for pods to run on
### controller-manager
- Runs controllers to watch cluster internals like
  - nodes
  - jobs
  - endpointslices (to provide links between services & pods)
  - service accounts
### cloud-controller-manager
- optional
- cloud specific control logic -> interacts with your cloud provider if your Kubernetes cluster is running in the cloud
-->

---
layout: center
---

# Demo Time 🤞

<!--
TODO 
- create a demo that shows how to locally spin up a k8s cluster with kind
- Show the different nodes and the control plane components
- create a deployment and see what's happening (watch pods, containers,...)
-->

---
layout: center
---

<h1 class="gradient">Extending Kubernetes</h1>

---
layout: center
clicks: 4
---

<!-- Border -->
<div style="position: absolute; border: 3px solid white; width: 780px; height: 400px; border-radius: 32px" />
<logos-kubernetes style="position: absolute; width: 90px; height: 90px; left: 440px; top: 25px" />

<!-- Node 1 -->
<div style="position: absolute; border: 3px solid white; border-radius: 24px; width: 240px; height: 170px; left: 580px; top: 100px">
    <p style="font-size: 24px; padding: 0; margin: 8px; color: white">Node</p>
    <div style="display: flex; flex-direction: row; justify-content: space-around; padding: 0 12px">
        <span style="border-radius: 100%; border: 2px solid white; width: 70px; height: 70px; display: flex; align-items: center; justify-content: center">
            <strong style="font-size: 12px; color: white">Runtime</strong>
        </span>
        <span style="border-radius: 100%; border: 2px solid white; width: 70px; height: 70px; margin-top: 40px; display: flex; align-items: center; justify-content: center">
            <strong style="font-size: 12px; color: white">kubelet</strong>
        </span>
        <span style="border-radius: 100%; border: 2px solid white; width: 70px; height: 70px; display: flex; align-items: center; justify-content: center">
            <strong style="font-size: 12px; color: white">kube-proxy</strong>
        </span>
    </div>
</div>

<!-- Node 2 -->
<div style="position: absolute; border: 3px solid white; border-radius: 24px; width: 240px; height: 170px; left: 580px; top: 280px">
    <p style="font-size: 24px; padding: 0; margin: 8px; color: white">Node</p>
    <div style="display: flex; flex-direction: row; justify-content: space-around; padding: 0 12px">
        <span style="border-radius: 100%; border: 2px solid white; width: 70px; height: 70px; display: flex; align-items: center; justify-content: center">
            <strong style="font-size: 12px; color: white">Runtime</strong>
        </span>
        <span style="border-radius: 100%; border: 2px solid white; width: 70px; height: 70px; margin-top: 40px; display: flex; align-items: center; justify-content: center">
            <strong style="font-size: 12px; color: white">kubelet</strong>
        </span>
        <span style="border-radius: 100%; border: 2px solid white; width: 70px; height: 70px; display: flex; align-items: center; justify-content: center">
            <strong style="font-size: 12px; color: white">kube-proxy</strong>
        </span>
    </div>
</div>

<!-- Control Plane -->
<div style="position: absolute; border: 3px solid white; border-radius: 24px; width: 320px; height: 350px; left: 130px; top: 100px">
    <p style="font-size: 24px; padding: 0; margin: 8px; color: white">Control Plane</p>
    <span :class="{ blue: $slidev.nav.clicks >= 3 }"  style="position: absolute; left: 105px; top: 135px; border-radius: 100%; border: 2px solid white; width: 100px; height: 100px; display: flex; align-items: center; justify-content: center">
        <strong style="font-size: 12px; color: white">kube-<br/>apiserver</strong>
    </span>
    <span :class="{ blue: $slidev.nav.clicks === 4 }"  style="position: absolute; left: 20px; top: 55px; border-radius: 100%; border: 2px solid white; width: 100px; height: 100px; display: flex; align-items: center; justify-content: center">
        <strong style="font-size: 12px; color: white">kube-controller-manager</strong>
    </span>
    <span :class="{ blue: $slidev.nav.clicks === 2 }" style="position: absolute; left: 195px; top: 55px; border-radius: 100%; border: 2px solid white; width: 100px; height: 100px; display: flex; align-items: center; justify-content: center"> 
        <strong style="font-size: 12px; color: white">kube-scheduler</strong>
    </span>
    <span style="position: absolute; left: 195px; top: 215px; border-radius: 100%; border: 2px solid white; width: 100px; height: 100px; display: flex; align-items: center; justify-content: center">
        <strong style="font-size: 12px; color: white">etcd</strong>
    </span>
    <span style="position: absolute; left: 20px; top: 215px; border-radius: 100%; border: 2px solid white; width: 100px; height: 100px; display: flex; align-items: center; justify-content: center">
        <strong style="font-size: 12px; color: white">cloud-controller-manager</strong>
    </span>
</div>

<div v-if="$slidev.nav.clicks === 1" style="position: absolute; border: 3px solid #326CE5; width: 780px; height: 400px; border-radius: 32px" />
<logos-kubernetes v-if="$slidev.nav.clicks === 1" style="position: absolute; width: 90px; height: 90px; left: 440px; top: 25px" />
<div v-if="$slidev.nav.clicks === 1" style="position: absolute; border: 3px solid #326CE5; background: white; border-radius: 24px; width: 260px; height: 70px; left: 360px; top: 435px; display: flex; flex-direction: row; gap: 18px; justify-content: center; align-items: center">
    <span style="font-size: 40px">⚙️</span>
    <span style="font-size: 40px">💾</span>
    <span style="font-size: 40px">🔗️</span>
</div>

<!--
### Various extension points

- Device, Storage & Network plugins
- Scheduler 
  - e.g. choose nodes where the image is already present
- API Server
  - Authentication, blocking requests based on e.g. content, rate limiting, edit content, handle deletion,...
  - Custom Resoure Definitions
- Controllers
  - Custom controller to take care of CRD
-->

---
layout: center
preload: false
---

<div style="display: flex; flex-direction: row; align-items: center; gap: 24px">
<div class="kube" v-motion :initial="{ x: 4, y: 11 }" :enter="{ x: 0, y: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }"><strong>CRD</strong></div>
<h1 style="margin: 0; padding: 0">+</h1>
<div class="kube" v-motion :initial="{ x: -256, y: -69 }" :enter="{ x: 0, y: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }"><strong>Controller</strong></div>
<h1 style="margin: 0; padding: 0">=</h1>
<h1 style="margin: 0; padding: 0" class="gradient">Operator</h1>
</div>

<!--
- Use-cases: 
  - Observability
  - Cluster services like service meshes
  - on-demand apps
  - backups
- Would be nice if we have an operator that deploys things outside of our Kubernetes cluster for us - e.g. an AWS Lambda, a Google Cloud Storage Bucket or an Azure SQL Database
- Why?
  - Single entry point for developers and admins
  - Declarative configuration for all your services
  - We can utilize the things Kubernetes does really good like reconciliation for infra
- So if we want that we have to create a custom operator to create infra as well? 
-->

---
preload: false
---

<!-- TODO confetti animation? -->
<img src="/crossplane.svg" style="position: absolute; height: 300px; width: 300px; left: 340px; top: 126px" />

<!--
- Kubernetes operator that allows you to basically create any resource outside of Kubernetes in Kubernetes
- How is it possible that one controller deploys to any target system? Providers?
-->

---
preload: false
---

<img src="/crossplane.svg" style="position: absolute; height: 200px; width: 200px; left: 100px; top: 176px" v-motion :initial="{ scale: 1.5, x: 240, y: 0 }" :enter="{ scale: 1, x: 0, y: 0, transition: { type: 'keyframes', ease: 'linear', duration: 1000 } }"/>

<span v-click>
<Arrow v-bind="{ x1:270, y1:240, x2:430, y2:60 }" />
<skill-icons-gcp-light style="position: absolute; height: 80px; width: 80px; left: 450px; top: 20px" />
</span>
<span v-click>
<Arrow v-bind="{ x1:270, y1:250, x2:430, y2:160 }" />
<skill-icons-azure-light style="position: absolute; height: 80px; width: 80px; left: 450px; top: 120px" />
</span>
<span v-click>
<Arrow v-bind="{ x1:270, y1:260, x2:430, y2:260 }" />
<skill-icons-aws-light style="position: absolute; height: 80px; width: 80px; left: 450px; top: 220px" />
</span>
<span v-click>
<Arrow v-bind="{ x1:270, y1:270, x2:430, y2:360 }" />
<skill-icons-grafana-light style="position: absolute; height: 80px; width: 80px; left: 450px; top: 320px" />
</span>
<span v-click>
<Arrow v-bind="{ x1:270, y1:280, x2:430, y2:460 }" />
<arcticons-anythingtopip style="position: absolute; height: 80px; width: 80px; left: 450px; top: 420px" />
</span>

<span v-click>
<Arrow v-bind="{ x1:550, y1:60, x2:650, y2:60 }" />
<ion:ios-more style="position: absolute; height: 50px; width: 50px; left: 670px; top: 35px" />
<Arrow v-bind="{ x1:550, y1:160, x2:650, y2:160 }" />
<ion:ios-more style="position: absolute; height: 50px; width: 50px; left: 670px; top: 135px" />
<Arrow v-bind="{ x1:550, y1:260, x2:650, y2:260 }" />
<ion:ios-more style="position: absolute; height: 50px; width: 50px; left: 670px; top: 235px" />
<Arrow v-bind="{ x1:550, y1:360, x2:650, y2:360 }" />
<ion:ios-more style="position: absolute; height: 50px; width: 50px; left: 670px; top: 335px" />
<Arrow v-bind="{ x1:550, y1:460, x2:650, y2:460 }" />
<ion:ios-more style="position: absolute; height: 50px; width: 50px; left: 670px; top: 435px" />
</span>

---
layout: center
---

# Demo Time 🤞

<!--
TODO 
- install Crossplane in the local k8s cluster
- Install 2 providers
- create 2 resources

We've now reached "Containers and beyond" in Kubernetes. But how can we effectively work with Kubernetes in modern development and/or operation teams?
-->

---
layout: center
---

<h1 class="gradient">Deployment Workflow</h1>

---
layout: two-cols-header
---

# Manual Deployments

::left::
<logos-kubernetes v-click style="position: absolute; width: 100px; height: 100px; left: 380px; top: 226px" />

<span v-click>
  <span style="position: absolute; width: 100px; height: 100px; left: 50px; top: 138px; font-size: 64px">👩🏻‍💻</span>
  <span style="position: absolute; width: 100px; height: 100px; left: 50px; top: 238px; font-size: 64px">🧑🏿‍💻</span>
  <span style="position: absolute; width: 100px; height: 100px; left: 50px; top: 338px; font-size: 64px">👩🏼‍💻</span>
</span>

<span v-click>
  <Arrow v-bind="{ x1:150, y1:176, x2:360, y2:256 }" />
  <Arrow v-bind="{ x1:150, y1:276, x2:360, y2:276 }" />
  <Arrow v-bind="{ x1:150, y1:376, x2:360, y2:296 }" />
</span>

::right::

<v-clicks>

- No version history
- No review
- Rollbacks are hard
- Deployments may collide
- Direct cluster access

</v-clicks>

---
layout: two-cols-header
---

# GitOps Deployments

::left::
<logos-kubernetes v-click style="position: absolute; width: 100px; height: 100px; left: 380px; top: 226px" />

<span v-click>
  <span style="position: absolute; width: 100px; height: 100px; left: 50px; top: 138px; font-size: 64px">👩🏻‍💻</span>
  <span style="position: absolute; width: 100px; height: 100px; left: 50px; top: 238px; font-size: 64px">🧑🏿‍💻</span>
  <span style="position: absolute; width: 100px; height: 100px; left: 50px; top: 338px; font-size: 64px">👩🏼‍💻</span>
</span>

<logos-git-icon v-click style="position: absolute; width: 80px; height: 80px; left: 220px; top: 236px" />

<span v-click>
  <Arrow v-bind="{ x1:150, y1:176, x2:220, y2:246 }" />
  <Arrow v-bind="{ x1:150, y1:276, x2:200, y2:276 }" />
  <Arrow v-bind="{ x1:150, y1:376, x2:220, y2:306 }" />
</span>

<Arrow v-click v-bind="{ x1:365, y1:276, x2:320, y2:276 }" />

::right::

<v-clicks>

- Single source of truth
- Faster deployments
- Faster rollbacks
- Better collaboration
- Security & compliance

</v-clicks>
 
---

# GitOps Principles

<v-clicks>

- Declarative
- Versioned & immutable
- Pulled automatically
- Continuously reconciled

</v-clicks>

---
layout: center
---

# Demo Time 🤞

<!--
TODO 
- create a demo that shows how to install ArgoCD and mention Flux as well
- Create a simple app in ArgoCD
- Deploy something via Git
-->

---
layout: center
---

# Kubernetes + Crossplane + GitOps = ❤️

---
layout: center
---

# Thank you ❤️

<div style="display: flex; flex-direction: row; gap: 100px; margin: 32px">
<div>
<img style="width: 200px; height: 200px" src="/qr-slides.svg" />
<strong>Slides</strong>
</div>
<div>
<img style="width: 200px; height: 200px" src="/qr-demo.svg" />
<strong>Demo</strong>
</div>
<div>
<img style="width: 200px; height: 200px" src="/qr-linkedin.svg" />
<strong>LinkedIn</strong>
</div>
</div>