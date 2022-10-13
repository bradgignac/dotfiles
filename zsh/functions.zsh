note() {
  local name=$1
  local date=$(date '+%Y-%m-%d')
  local filename=~/notes/$date-$name.md
  touch $filename
  code $filename
}

notes() {
  code $(find ~/notes -not -path "*/.git*" | sort | uniq | selecta)
}

work() {
  cd $({ find ~/work -maxdepth 2 -type d } | sort | uniq | selecta)
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
