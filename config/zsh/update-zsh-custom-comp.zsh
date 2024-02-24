comp_path="${ANTIDOTE_HOME}/mattmc3/zephyr/plugins/completion/external/src"

if hash kubectl 2>/dev/null; then
    kubectl completion zsh > "${comp_path}/_kubectl"
fi

if hash kustomize 2>/dev/null; then
    kustomize completion zsh > "${comp_path}/_kustomize"
fi