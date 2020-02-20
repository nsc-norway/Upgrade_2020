Use docker save and load / export and import as a pair when creating a tar file and moving them to the server.

```bash
$ docker save -o <name.tar> <image:version>
$ rsync <name.tar> <server>:/data/common/docker/
$ ssh <server>
$ docker load -i <name.tar>
```

Now `<image:version> is available in the server
