resource "local_file" "inventory_prod" {
  content = templatefile("templates/inventory.yml.tpl",
    {
       app =  yandex_compute_instance.app.*.network_interface.0.nat_ip_address
    }
  )
  filename = "../ansible/inventory.yml"
}
