notes() {
  atom $(ls ~/notes | sort | uniq | selecta)
}

work() {
  cd $({ find ~/work -maxdepth 2 -type d ; find ~/work/go/src -maxdepth 3 -type d } | sort | uniq | selecta)
}

search() {
  less $(ag $1 -l | selecta)
}

random() {
  local LEN=${1:=32}
  local BYTES=`cat /dev/urandom | head -c $LEN | od -An -t x1 | tr -d ' ' | tr -d '\n'`
  echo $BYTES | tr -d '\n' | pbcopy
  echo $BYTES
}
