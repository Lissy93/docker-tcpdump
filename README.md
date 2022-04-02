<h1 align="center">Docker TCPDump</h1>
<p align="center">
  <i>Small Docker container to sniff the traffic of any other Docker container with tcpdump</i>
<br>
<img width="400" src="https://i.ibb.co/CvxTJ4Y/lissy93-docker-tcpdump.png" alt="lissy93/tcpdump" />
<p>
  
---
  
### Usage  
  
```
docker run --rm -v $(pwd):/dump --tty --net=container:<container_name> lissy93/tcpdump tcpdump -i any -w /dump/dump.pcap
```

Where `<container_name>` is the running container you would like to analyze, and `dump.pcap` is the output filename.

Once you've finished captureing traffic, open the pcap file in [Wireshark](https://www.wireshark.org/), or your favorite packet analyzer.

You can also run any other [`tcpdump`](https://www.tcpdump.org/)  commands in a similar way, like `docker run lissy93/tcpdump tcpdump [commands]`.

The container is published on DockerHub under [lissy93/tcpdump](https://hub.docker.com/r/lissy93/tcpdump), but if you prefer you can also build the [Dockerfile](https://github.com/Lissy93/docker-tcpdump/blob/main/Dockerfile) yourself.

---
  
### License

Licensed under [MIT](https://gist.github.com/Lissy93/143d2ee01ccc5c052a17) - © [Alicia Sykes](https://aliciasykes.com) 2022
