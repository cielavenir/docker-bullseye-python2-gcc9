dir="$(dirname $(realpath $0))"
cd "$dir"
docker build -t debian:bullseye-python2-gcc9 build
