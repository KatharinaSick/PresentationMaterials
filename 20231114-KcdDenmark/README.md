---
title: 'Principle of Least Privilege: How to Secure Kubernetes Without Making Users Hate You'
summary: According to OWASP, insecure workload configuration is the top security problem in Kubernetes. As modern Kubernetes clusters evolve from mere container orchestrators to versatile control planes managing various resources, minimizing the attack surface of these clusters becomes even more critical.
status: done
event:
  name: KCD Denmark
  link: https://kcddenmark.dk/
  date: 2023/11/14
  logo: data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFwAAABcCAMAAADUMSJqAAAAb1BMVEX/KB7/////AAD/JBn/EwD/IBT/HRD/4N//3Nv/Ggv/+fn/7ez/FwX/5eT/9fX/1dT/trT/dHD/i4j/TUf/Rj//o6D/0M//yMb/PTX/npv/lJH/enb/ZF//rav/KiX/XVj/bWj/hYL/VlH/wL//NCxoWwyhAAAEjElEQVRoga3Z6YKCIBAAYOIwDTU7TM3MTN//GRdvhElRd/7sUX0hx3Chg3mUlzj+BCfzDyDjd2YxZggx/E6MeUP8FFqUoCYIpU/+j7ifkJ5ugtKr9084f9IJXYeLUwN+EecFpggIB1/s3XiGIbrh6eu8Ew/AcrfB8DfahZc/S97ytxl+EY9mcdEzcVWuxMu7b1Tylo+zFXggBmM/DJdK3vCUhdCwBXAxzkW3XoPXPHn6mqTipxDVI4asxGveuar8FOdJl0JItRZH9bAtvJ84v1p9px7xhzkueHrxQFyMc3d8yG04Qhb+HHXcduWhSOLDNrzmSxXn08RH7v0bzmtxhPBDwVN38vqI2zO55Uewm4Ir5duFI+xNcPXhyW0PToMJHirEiB834FY6wV/sP/G+r3V4pUyS7LsHRw6XcE1geY97W3AcSXigduax5Jtw9ynhqfO/Je/K1uJ3dV3CXgPugh9fCHoacF8b4iPOrS04Pg+4nrP34jQc8Kf26NZnH94WrsG/TH3RuvS4rzaHURDU4yfN3o0jeuxwIGXvx4MOz/Su3KcegSMjnTDLpXgIitMO/+htNuKn9yJuUUzjPE2C6HzkIjw7Cp5Fh8f6x01xImD2CR8c3CcJnAOzpFMY4IziKg1m9kcIyFoTXMvG/bNhnIfH33CHF2rWmuJAyYkl6qJc3jEisMqRe/2NW5ikkdFeFAFZCw0JWa8WCzsXM7nBwZWmhEsPxoRsUBsSnkCzAYCLvpGX+hp8Hs/1zCJGbzLFRZlf2Tq5xuF+LOF3Vpc5M9zuT/EjuNCU8Irlweoydzi8iW1nkiaiLWXu8AKcaSR8R6AKU4vI1U6YI3Lnj50lGCfPfpRZGCZJmAWRPT4p8h9heiMubZIxpdSq8iJ7GFaF/8iueYzqTE7bEL8471sRNFmnWyv6nn0WYXvGFcyj5FPVFCNqdyNEPDu6lL75GZcUXpDenbo6oebqv8ES3XCl69vhhy64Y6yR7fBVt7+Ruwb3z0kuapitWws8lmFeXr9MwKvcJjBLy9kuIvbs2N0ANyGaFceXpLTlGVz6/QPMgsZ2+wV1D0DV/fb9fm9x9cbjyVW6aSXahrQIJSIYY/WP/8DJG3EH6gD4sR/HEYKPJST8urHOcVLnlgTQ9+P00yauVJ8v8HknzuqTiWaE3rVuTO19OKG8x7mWhyRc3zAZRFutbW7RGpWed+G4nSX7IxFFp8c9OO02PcMx1LRRJRxckc2G1R8zDSn3NmnUPThhXMX96ZWHtx0fu/E4WUwaVcLVE6pFe1zySDORfDsh4cBGci5oeoBwuVE340NjqvjhOyRAi2/DCeG/cD6sbyR87rpFCzyZkqez/3AK4GzDlSWmsrTo96TM34LT4jCHHwq6HbduCqYtitpGlfDlu5wuCJu/szj0RyBkA4619ZW+nKs3SeNlizmOA40C1oqiUWXc8LpFHpkz+OFK0WrcygEIXOV+3ff4hxFOCLSbBHH/Lf3b6LoFg7e68PrcputwoDF/4wfpitMAx1dYWd5ZLF4UMQx0FEMcPhwYg7x+XhT/AfhAPHLnGweFAAAAAElFTkSuQmCC
images:
  thumbnail: https://raw.githubusercontent.com/KatharinaSick/PresentationMaterials/main/20231114-KcdDenmark/images/thumbnail.jpg
  full: https://raw.githubusercontent.com/KatharinaSick/PresentationMaterials/main/20231114-KcdDenmark/images/full.jpg
slides:
  - type: web
    url: https://slides.ksick.dev/20231114/kcddenmark
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