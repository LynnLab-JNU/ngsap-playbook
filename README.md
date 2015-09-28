# ngsap-playbook
This repository is an ansible playbook for installing NGSAP Galaxy Instance. It is inspired from the galaxyproject ansible repositories and tailored to meet the requirement of NGSAP Galaxy instance installation.


It follows the following steps.

1. Prepare the OS
2. Install Galaxy Application
3. Install Galaxy NGSAP tools


**prerequisites:**

1. Ansible must be installed prior to run this playbook.

2. How to install ansible
	
	http://docs.ansible.com/ansible/intro_installation.html#installation 

3. An easy way to install ansible
	1. sudo easy_install pip
	2. sudo pip install ansible 


**Installation Options**

There are two options provided to install NGSAP Galaxy Instance. 

1. Install the NGSAP Galaxy instance to an existing server.
	
	**Quick Start:**
	
	1. Clone the repository:
		
		```git clone https://github.com/LynnLab-JNU/ngsap-playbook.git
```

	2. Go to ngsap-playboook directory:

                ```cd ngsap-playbook
```

	3. Edit provisioning/hosts file  [Optional]

                - Add an IP address of destined Galaxy instance host machine,
                - Alternatively you can add mutiple IP addresses for multiple Galaxy instances one per line.

                *Note:*
                - This step assumes that the ssh-key based login is configured prior to adding more hosts.
                - Currenlty support centos 7/ubuntu trusty OS based servers.

	4. Start Installation

                ```make install_ngsap
```


2. Install the NGSAP Galaxy instance in a virtualbox virutal machine using vagrant.  


	**Quick Start:**

	1. Clone the repository:  

		```git clone https://github.com/LynnLab-JNU/ngsap-playbook.git
```

	2. Go to ngsap-playboook directory:

		```cd ngsap-playbook
```

	3. Start Installation

		```make install
```
