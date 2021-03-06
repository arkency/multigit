function multigit    { find .. -maxdepth 2 -mindepth 2 -type d -name ".git"  -exec dirname {} \; | while read repodir; do mg_printrepo $repodir; cd $repodir; $*; cd - >/dev/null; done; }
function multigitbox { find .. -maxdepth 2 -mindepth 2 -type d -name ".git"  -exec dirname {} \; | while read repodir; do mg_printbox  $repodir; cd $repodir; $*; cd - >/dev/null; done; }

function mg_printline {
  echo '---------------------------------------------'
}

function mg_printpad {
  line='----------------------------------------'
  PROC_NAME="$*"
  PROC_NAME="${PROC_NAME/$'\n'}"
  printf "%s %s %s\n" "---" $PROC_NAME "${line:${#PROC_NAME}}"
}

function mg_printbox {
  mg_printline
  mg_printline
  mg_printpad "$*"
  mg_printline
  mg_printline
}

function mg_printrepo {
  echo "-- REPO: $*"
}
