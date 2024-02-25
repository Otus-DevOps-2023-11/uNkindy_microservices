---
all:
  vars:
%{ for k, ip in app ~}
    docker_node_${k}: ${ip}
%{ endfor ~}

  hosts:
%{ for k, ip in app ~}
    docker_node_${k}:
      ansible_host: ${ip}
%{ endfor ~}


