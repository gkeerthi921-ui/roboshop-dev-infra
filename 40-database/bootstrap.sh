 #!/bin/bash

 component=$1
  dnf install ansible -y
  
  ansible-pull -u https://github.com/gkeerthi921-ui/ansible.git -e component=$component main.yaml