# Ansible Kubernetes Playbook

This is an Ansible playbook that deploys a Kubernetes cluster using *kubeadm*.

## Configurations

You will need update the `kitchen-hosts` and set IP Addresses or FQDN's accordingly. You can define a __kubernetes master__ (k8smaster) or a __kubernete node__ (k8snodes)

Also you will need to install the ruby dependencies from Gemfile by running:

~~~~
bundle install
~~~~

## How to use

Thanks to __Test kitchen__ framework you will easily get running a Kubernetes cluster.

### Token generation
In order to get running Kubernetes master and get nodes joined into the master you will need a __token__ in this playbook you can generate a token by your own by running _generate_token.sh_ shell script:

~~~~
$ ./generate_token.sh
~~~~

### Running tests

This playbook is using __Test Kitchen__ framework for automation testing, you can run either:

~~~~
kitchen test
~~~~

or

~~~~
kitchen create
kitchen converge
kitchen verify
~~~~

### Running using ansible-playbook command line
You can also run this playbook directly on the servers by using __ansible__ command line commands.

There is a `ansible.cfg` file already pointing to `kitchen-hosts` as Inventory, all you need to run is:

~~~~
ansible-playbook master.yml
ansible-playbook node.yml
~~~~

## TODO

- Run Docker under docker group for security purposes