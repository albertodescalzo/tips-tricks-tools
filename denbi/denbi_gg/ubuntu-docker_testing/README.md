To run docerk compsoe use:
    `docker compose up -d`      
---> this runs in the background

then: 

`docker exec -it my-ubuntu /bin/bash`

- Install Ansible with:

`python3 -m pip install --user ansible`

NOTE: ansible executables are in `/root/.local/bin` and not in path

- Execute ansible:

`/root/.local/bin/ansible-playbook`

- Clone directory:

`git clone https://github.com/DiltheyLab/graph-genome-workbench.git`

- SSH access:
`vim ~/.ssh/config`. And add the following info:

```
Host fastNewton
    HostName 134.176.27.78
    User ubuntu
    IdentityFile /home/ubuntu/denbikeys/deNBI_key/deNBI_key
    Port 30178
```

Test access to VM: `ssh fastNewton`

- Test ansible connection:

Run the command in the /home/ubuntu/graph-genome-workbench/denbi_gg directory after changing your VM name in inventory
`/root/.local/bin/ansible all -m ping`


/root/.local/bin/ansible --private-key /home/ubuntu/denbikeys/deNBI_key  ubuntu@134.176.27.78 --ssh-extra-args -P 30178 ping

Host fastNewton
    HostName 134.176.27.78
    User ubuntu
    IdentityFile /home/ubuntu/denbikeys/deNBI_key/deNBI_key
    Port 30178

/root/.local/bin/ansible fastNewton -m ping