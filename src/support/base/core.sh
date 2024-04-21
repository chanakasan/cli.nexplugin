nx_source_folder() {
  local base="$1"
  for f in $base/*.sh; do
    if [ -f "$f" ]; then
      source $f
    fi
  done
}

nx_source_all_folders() {
  local base="$1"
  find "$base" -type f -name "*.sh" | sort -t "/" -k2 | while read -r f; do
    source $f
  done
}
