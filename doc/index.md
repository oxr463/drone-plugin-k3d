# Documentation

## Docker

```
docker run --rm \
  --privileged \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e PLUGIN_CLUSTER_NAME="k3d" \
  -e PLUGIN_COMMAND="kubectl get nodes" \
  ghcr.io/oxr463/drone-plugin-k3d:latest
```

