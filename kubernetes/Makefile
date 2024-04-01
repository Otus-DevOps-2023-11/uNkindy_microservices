#Makefile

build_stand:
	cd terraform/ && terraform apply --auto-approve
#	cd ansible/ && ansible-playbook play.yml
build_ansible:
	cd ansible/ && ansible-playbook play.yml

destroy_stand:
	cd terraform/ && terraform destroy --auto-approve
	cd ansible/ && rm -rf inventory.yml
