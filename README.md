# drone-plugin-k3d

Drone plugin for k3d.

## Usage

### Basic

The following snippet should be applied to the `.drone.yml` file:

```
kind: pipeline
name: k3d

steps:
- name: k3d-kubectl-get-nodes
  image: ghcr.io/oxr463/drone-plugin-k3d
  settings:
    command: kubectl get nodes
```

## Reference

- [Drone Documentation: Example Bash Plugin](https://docs.drone.io/plugins/tutorials/bash)

- [k3d README: Usage](https://github.com/k3d-io/k3d#usage)

