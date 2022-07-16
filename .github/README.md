<h1 align="center">🐋 Docker TCPDump</h1>
<p align="center">
  <i>Small Docker container to sniff the traffic of any other Docker container with tcpdump</i>
<br>
<img width="250" src="https://i.ibb.co/CvxTJ4Y/lissy93-docker-tcpdump.png" alt="lissy93/tcpdump" />
<p>
  
---
  
### Usage  
  
```
docker run --rm -v $(pwd):/dump --tty --net=container:<container_name> lissy93/tcpdump tcpdump -i any -w /dump/dump.pcap
```

Where `<container_name>` is the running container you would like to analyze, and `dump.pcap` is the output filename.

Once you've finished captureing traffic, open the pcap file in [Wireshark](https://www.wireshark.org/), or your favorite packet analyzer.

You can also append any other [`tcpdump`](https://www.tcpdump.org/) commands with `docker run lissy93/tcpdump tcpdump [commands]`.

The container is published on DockerHub under [lissy93/tcpdump](https://hub.docker.com/r/lissy93/tcpdump), 
or build and run the [Dockerfile](https://github.com/Lissy93/docker-tcpdump/blob/main/Dockerfile) yourself.

---

<p  align="center">
  <i>© <a href="https://aliciasykes.com">Alicia Sykes</a> 2022</i><br>
  <i>Licensed under <a href="https://gist.github.com/Lissy93/143d2ee01ccc5c052a17">MIT</a></i><br>
  <a href="https://github.com/lissy93"><img src="https://i.ibb.co/4KtpYxb/octocat-clean-mini.png" /></a>
</p>
