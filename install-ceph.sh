curl -o rook-ceph.yaml https://raw.githubusercontent.com/fleissnerb/suse-virt/refs/heads/main/rook-ceph.yaml?token=GHSAT0AAAAAADVNHGGRVDEGXNOLWF5EEWGW2MOFX5Q
curl -o rook-ceph-cluster.yaml https://raw.githubusercontent.com/fleissnerb/suse-virt/refs/heads/main/rook-ceph-cluster.yaml?token=GHSAT0AAAAAADVNHGGRUTE2PQNPCXVQSBNG2MOFYVA
helm repo add rook-release https://charts.rook.io/release
helm install --create-namespace --namespace rook-ceph rook-ceph rook-release/rook-ceph -f rook-ceph.yaml
helm install --namespace rook-ceph rook-ceph-cluster --set operatorNamespace=rook-ceph rook-release/rook-ceph-cluster -f rook-ceph-cluster.yaml
