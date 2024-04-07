resource "local_file" "inventory" {
  content = templatefile("templates/inventory.yml.tpl",
    {
        kuber_1 =  yandex_compute_instance.kuber[0].network_interface.0.nat_ip_address
        kuber_2 =  yandex_compute_instance.kuber[1].network_interface.0.nat_ip_address
    }
  )
  filename = "../ansible/inventory.yml"
}
