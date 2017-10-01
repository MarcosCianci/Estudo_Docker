
docker-machine.exe create -d virtualbox --engine-insecure-registry 192.168.56.104:5000 --swarm --swarm-master --swarm-discovery="consul://$IPKEY:8500" --engine-opt="cluster-store=consul://$IPKEY:8500" --engine-opt="cluster-advertise=eth1:2376" swarm-master && docker-machine.exe create -d virtualbox --engine-insecure-registry 192.168.56.104:5000 --swarm --swarm-discovery="consul://$IPKEY:8500" --engine-opt="cluster-store=consul://$IPKEY:8500" --engine-opt="cluster-advertise=eth1:2376" swarm-node01 && docker-machine.exe create -d virtualbox --engine-insecure-registry 192.168.56.104:5000 --swarm --swarm-discovery="consul://$IPKEY:8500" --engine-opt="cluster-store=consul://$IPKEY:8500" --engine-opt="cluster-advertise=eth1:2376" swarm-node02 && docker-machine.exe create -d virtualbox --engine-insecure-registry 192.168.56.104:5000 --swarm --swarm-discovery="consul://$IPKEY:8500" --engine-opt="cluster-store=consul://$IPKEY:8500" --engine-opt="cluster-advertise=eth1:2376" swarm-node03




