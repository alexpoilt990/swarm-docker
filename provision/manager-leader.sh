sudo docker swarm init --advertise-addr 192.168.200.120 &&
sudo docker swarm join-token --quiet worker > /vagrant/worker_token &&
sudo docker swarm join-token --quiet manager > /vagrant/manager_token
