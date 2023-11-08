### charts
KubeStar Helm charts

### Step 1: helm package 
```shell
helm package ./cadvisor
```

### Step 2: helm push
```shell
helm push cadvisor-0.0.1.tgz oci://registry-1.docker.io/kubestar
```

### Step 3: wait artifact Hub auto refresh

https://artifacthub.io/control-panel/repositories?page=1


### How to use docker oci as artifact package for windows?
```shell
oras push registry-1.docker.io/kubestar/cadvisor:artifacthub.io --config NUL:application/vnd.cncf.artifacthub.config.v1+yaml artifacthub-repo.yml:application/vnd.cncf.artifacthub.repository-metadata.layer.v1.yaml
```

    