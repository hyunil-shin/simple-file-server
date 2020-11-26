# simple-file-server

* Based on halverneus/static-file-server:latest
    * https://github.com/halverneus/static-file-server

* Registry: https://hub.docker.com/r/anyonecantest/simple-file-server/tags?page=1&ordering=last_updated


### How to run file server
```
docker run -d \
    -p 8080:8080 \
    anyonecantest/simple-file-server:latest
```

### How to request
```
curl http://[i]:8080/
```

The output is expected
```
<pre>
<a href="100m.txt">100m.txt</a>
<a href="1g.txt">1g.txt</a>
<a href="200m.txt">200m.txt</a>
<a href="500m.txt">500m.txt</a>
<a href="50m.txt">50m.txt</a>
<a href="5m.txt">5m.txt</a>
</pre>
```

You can download files.
```
wget http://[i]:8080/5m.txt
```
