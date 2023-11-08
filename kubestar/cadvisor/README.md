<!--- app-name: Kubernetes cAdvisor -->

# Kubernetes cAdvisor packaged by KubeStar

cAdvisor (Container Advisor) is an open-source tool developed by Google that provides container users with an understanding of the resource usage and performance characteristics of their running containers. It is a daemon that collects, aggregates, processes, and exports information about running containers. Specifically, cAdvisor can track resource isolation parameters, historical resource usage, histograms of complete historical resource usage, and network statistics.

This tool is designed to be integrated into larger systems without much difficulty. For instance, it is used in Kubernetes to obtain the metrics it provides about containers. cAdvisor supports a wide variety of container runtimes, including Docker, containerd, rkt, and lxc.

## TL;DR

```console
helm install my-release oci://registry-1.docker.io/kubestar/cadvisor
```
