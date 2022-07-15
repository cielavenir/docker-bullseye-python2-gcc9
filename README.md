## deprecated

https://github.com/cielavenir/docker-bullseye-python2-gcc6 is correct version

## docker-bullseye-python2-gcc9

After running this Dockerfile, the image will equip python2.7 for bullseye **which accepts py-bt** .

### To get deb files

- `docker run -it --rm --name bullseye-python2-gcc9 debian:bullseye-python2-gcc9 bash`
- `docker cp -a bullseye-python2-gcc9:/deb ./`
