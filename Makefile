# Makefile for ngsap-playbook

prerequisites:  
	ansible-playbook  -i "localhost," -c local site.yml

install: install_vagrant_vm

reinstall: clean install

reload: 
	vagrant reload --provision

install_vagrant_vm: prerequisites
	vagrant up	

install_remote: 
	ansible-playbook -i provisioning/inventory/remote-hosts \
	provisioning/ngsap-playbook.yml 

install_local: 
	ansible-playbook -i "localhost," -c local  \
	provisioning/ngsap-playbook.yml
	
clean: destroy_vagrant_vm

destroy_vagrant_vm: 
	vagrant destroy

