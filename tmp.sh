# find ~/repository/react -regex "\w*in\w*"
# find ~/repository/react -name "*i*g*n*"
# find ~/repository/react -iname "*reactserver*"
# find ~/repository/react \( -iname "*r*eactserver*" -o -name .config \) -prune -false -o -iname "*r*eactserver*"
find . \( -name .git -o -name .config -o -name "" \) -prune -false -o -mindepth 1 -ipath "*thanks*"
# find ~/repository/react -name "*j*s*o*n*"
# find ~/repository/react -path "*j*s*o*n*"
# man find
