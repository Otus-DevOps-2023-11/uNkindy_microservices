---
all:
  vars:
    master_host: ${kuber_1}

  hosts:
    kuber_1:
        ansible_host: ${kuber_1}

    kuber_2:
        ansible_host: ${kuber_2}
