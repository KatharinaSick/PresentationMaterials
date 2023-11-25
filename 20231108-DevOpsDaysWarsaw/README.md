---
title: 'Principle of Least Privilege: How to Secure Kubernetes Without Making Users Hate You'
summary: According to OWASP, insecure workload configuration is the top security problem in Kubernetes. As modern Kubernetes clusters evolve from mere container orchestrators to versatile control planes managing various resources, minimizing the attack surface of these clusters becomes even more critical.
status: done
event:
  name: DevOpsDays Warsaw
  link: https://community.cncf.io/events/details/cncf-cloud-native-austria-presents-meetup-kcd-2nd-chance-edition-2023/
  date: 2023/11/08
  logo: https://media.licdn.com/dms/image/C560BAQHTGDRAzD32AQ/company-logo_200_200/0/1660814852374/devopsdays_warsaw_logo?e=1709164800&v=beta&t=NSNs1_JxH_uTVSVngF_P5LgiiabegFhGMoCUJft1GBo
images:
  thumbnail: https://raw.githubusercontent.com/KatharinaSick/PresentationMaterials/main/20231108-DevOpsDaysWarsaw/images/thumbnail.jpg
  full: https://raw.githubusercontent.com/KatharinaSick/PresentationMaterials/main/20231108-DevOpsDaysWarsaw/images/full.jpg
slides:
  - type: web
    url: https://slides.ksick.dev/20231108/devopsdayswarsaw
---

# Principle of Least Privilege: How to Secure Kubernetes Without Making Users Hate You

According to OWASP, insecure workload configuration is the top security problem in Kubernetes. As modern Kubernetes
clusters evolve from mere container orchestrators to versatile control planes managing various resources, minimizing the
attack surface of these clusters becomes even more critical.

But security shouldn't come at the expense of user experience. This talk will cover the Principle of Least Privilege (
PoLP) and how it can be applied to balance robust security and a good experience for users and administrators. Moreover,
it will extend this principle to ArgoCD and Crossplane and explore the differences between the PoLP and Zero Trust and
how they're complementary.

Join me to discover how the Principle of Least Privilege, applied to Kubernetes, ArgoCD, and Crossplane, empowers you to
safeguard your Kubernetes ecosystem without making yourself and your users suffer.
