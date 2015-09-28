# ngsap-playbook
This repository is an ansible playbook for installing NGSAP Galaxy Instance. It is inspired from the galaxyproject ansible repositories and tailored to meet the requirement of NGSAP Galaxy instance installation.


It follows the following steps.

1. Prepare the OS
2. Install Galaxy Application
3. Install Galaxy NGSAP tools


## prerequisites:

1. Ansible must be installed prior to run this playbook.

2. How to install ansible
	
	http://docs.ansible.com/ansible/intro_installation.html#installation 

3. An easy way to install ansible

	1. sudo easy_install pip
	2. sudo pip install ansible 


## Installation Options:

The following options are provided to install NGSAP Galaxy Instance.  

### I. Install the NGSAP Galaxy instance in a virtualbox virutal machine using vagrant.

This option is good for testing purposes. The step is fully automated and thus easy to install. 
It installs the Galaxy instance and NGSAP tools in a virtual environment (sandbox) which minimizes 
any confict with the other existing galaxy instance installation and configurations.  


*Installation Steps:-*


1. Clone the repository:  

	`git clone https://github.com/LynnLab-JNU/ngsap-playbook.git`

2. Go to ngsap-playboook directory:

	`cd ngsap-playbook`

3. Start Installation

	`make install`



*Note:-*

    - This step assumes the virtualization is supported and enabled on the chosen hardware.
    - It requires suoder priviledges to install vagrant, virtualbox and other required packages.
    - It updates the packages in the host machine.
    - It assumes that port '8085' is available.
    - After installation the selinux and firewall must be customized accordingly.
     

### II. Install the NGSAP Galaxy instance to a local server.

This option installs the Galaxy instance and NGSAP tools to a local server. Although the step is fully automated, 
it may confict with any other existing galaxy instance installation and configurations. It is thus adviced to go 
through the *Note* section provided below before running this step.
 

*Installation Steps:-*


1. Clone the repository: 

	`git clone https://github.com/LynnLab-JNU/ngsap-playbook.git`

2. Go to ngsap-playboook directory:

	`cd ngsap-playbook`

3. Start Installation

	`make install_local`



*Note:-*

    - Currenlty support centos 7/ ubuntu trusty OS based servers.
    - It requires sudoer priviledges on the local server to install the Galaxy instance.
    - It assumes that system user 'galaxy' does not exists and uid '1001' is available.
    - It assumes that port '8080' is available.
    - After installation the selinux and firewall must be customized accordingly.



### III. Install the NGSAP Galaxy instance to one or more remote servers.

This option installs the Galaxy instance and NGSAP tools to one or more remote servers. This step is also automated,
but it may confict with any other existing galaxy instance installation and configurations on those remote servers.
It is thus adviced to through the *Note* section provided below before running this step.


*Installation Steps:-*
	
	
1. Clone the repository: 

	`git clone https://github.com/LynnLab-JNU/ngsap-playbook.git`

2. Go to ngsap-playboook directory:

	`cd ngsap-playbook`

3. Edit provisioning/inventory/remote-hosts file 

    - `Add an IP address of destined Galaxy instance host machine,`

    - `Alternatively you can add mutiple IP addresses for multiple Galaxy instances one per line.`
        
        
4. Start Installation

	`make install_remote`



*Note:-*
	
    - Currenlty support centos 7/ ubuntu trusty OS based servers.
    - This step assumes that the ssh-key based login is configured on the remote servers.
    - It requires sudoer priviledges on the remote server to install the Galaxy instance. 
    - It assumes that system user 'galaxy' does not exists and uid '1001' is available on the remote servers.
    - It assumes that port '8080' is available on the remote servers.
    - After installation the selinux and firewall must be customized accordingly on the remote servers.

