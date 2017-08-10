function multigit { find .. -maxdepth 2 -mindepth 2 -type d -name ".git"  -exec dirname {} \; | while read repodir; do echo "-- REPO: $repodir"; git -C $repodir $*; done; }
