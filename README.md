# nodejs-helm

## Usage

### Install

1. Modify following values in `helm-chart/values.yaml` to the project you are working on
    - replicaCount
    - repository
    - tag
    - service.port
    - ingress.hosts.host
    - imagePullSecrets (Should be 'shultzlab' for my k8 cluster and nexus)
2. `helm install nodejs-helm helm-chart/` (nodejs-helm is the provided name)
3. If Ingress is enabled, make DNS rule

### Upgrade

1. `helm upgrade nodejs-helm helm-chart/` (nodejs-helm is the provided name)