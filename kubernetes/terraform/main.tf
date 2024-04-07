resource "yandex_compute_instance" "kuber" {
  name = "kuber-${count.index + 1}"

  count = var.count_vms

  resources {
    cores  = 4
    memory = 4
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size     = var.image_size
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }
}
