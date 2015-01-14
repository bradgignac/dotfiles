work() {
  cd $({ find ~/work -maxdepth 2 -type d ; find ~/work/go/src -maxdepth 3 -type d } | sort | uniq | selecta)
}

search() {
  less $(ag $1 -l | selecta)
}
