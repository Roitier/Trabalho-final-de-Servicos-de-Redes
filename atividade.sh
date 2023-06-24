sudo su 
apt update
apt install -y software-properties-common

apt install ansible -y
ansible-playbook -i /vagrant/hosts /vagrant/ansible.yml

apt install net-tools

cd /vagrant

docker-compose up -d
