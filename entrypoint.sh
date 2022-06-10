#!/bin/sh
set -eu

# Create the cluster from the settings.cluster_name in the .drone.yml file
k3d cluster create "${PLUGIN_CLUSTER_NAME}"

# Set cluster context for kubectl
k3d kubeconfig merge "${PLUGIN_CLUSTER_NAME}" --kubeconfig-switch-context

# Run settings.command from .drone.yml file
/bin/sh -c "${PLUGIN_COMMAND}"

