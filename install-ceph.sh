helm repo add rook-release https://charts.rook.io/release
helm install --create-namespace --namespace rook-ceph rook-ceph rook-release/rook-ceph -f https://raw.githubusercontent.com/fleissnerb/suse-virt/refs/heads/main/rook-ceph.yaml
helm install --namespace rook-ceph rook-ceph-cluster --set operatorNamespace=rook-ceph rook-release/rook-ceph-cluster -f https://raw.githubusercontent.com/fleissnerb/suse-virt/refs/heads/main/rook-ceph-cluster.yaml
