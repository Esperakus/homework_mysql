resource "yandex_compute_instance" "mysql" {

  count    = 3
  name     = "mysql-node${count.index}"
  hostname = "mysql-node${count.index}"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet01.id
  }

  metadata = {
    ssh-keys = "cloud-user:${tls_private_key.ssh.public_key_openssh}"
  }
}