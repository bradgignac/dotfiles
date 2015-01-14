work() {
  cd $(find ~/work -maxdepth 2 -type d | selecta)
}

search() {
  less $(ag $1 -l | selecta)
}
