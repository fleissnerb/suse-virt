helm repo add rook-release https://charts.rook.io/release
helm install --create-namespace --namespace rook-ceph rook-ceph rook-release/rook-ceph -f https://raw.githubusercontent.com/fleissnerb/suse-virt/refs/heads/main/rook-ceph.yaml?token=GHSAT0AAAAAADVNHGGRVDEGXNOLWF5EEWGW2MOFX5Q
helm install --namespace rook-ceph rook-ceph-cluster --set operatorNamespace=rook-ceph rook-release/rook-ceph-cluster -f https://raw.githubusercontent.com/fleissnerb/suse-virt/refs/heads/main/rook-ceph-cluster.yaml?token=GHSAT0AAAAAADVNHGGRUTE2PQNPCXVQSBNG2MOFYVA
