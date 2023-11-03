# Principle of Least Privilege: How to Secure Kubernetes Without Making Users Hate You

Slides & examples for my talk at [DevOpsDays Warsaw](https://devopsdays.pl/).

Created with [Slidev](https://sli.dev/) & deployed
at [slides.ksick.dev/20231108/DevOpsDaysWarsaw](https://slides.ksick.dev/20231108/DevOpsDaysWarsaw).

## Abstract

According to OWASP, insecure workload configuration is the top security problem in Kubernetes. As modern Kubernetes
clusters evolve from mere container orchestrators to versatile control planes managing various resources, minimizing the
attack surface of these clusters becomes even more critical.

But security shouldn't come at the expense of user experience. This talk will cover the Principle of Least Privilege (
PoLP) and how it can be applied to balance robust security and a good experience for users and administrators. Moreover,
it will extend this principle to ArgoCD and Crossplane and explore the differences between the PoLP and Zero Trust and
how they're complementary.

Join me to discover how the Principle of Least Privilege, applied to Kubernetes, ArgoCD, and Crossplane, empowers you to
safeguard your Kubernetes ecosystem without making yourself and your users suffer.