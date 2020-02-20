Use docker save and load OR export and import as a pair when creating a tar file and moving them to the server.
Do not mix match save, load, export and import. This will cause some problems.

```bash
$ docker save -o <name.tar> <image:version>
$ rsync <name.tar> <server>:/data/common/docker/
$ ssh <server>
$ docker load -i <name.tar>
```

Now `<image:version> is available in the server
