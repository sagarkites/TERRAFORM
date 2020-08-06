
# Terraform
* Downloads the Plugins -  **terraform init**
* Plan(shows things before execute) - **terraform plan**
* Execute - **terraform apply**
* Key_Point - **always run the terraform plan before apply**
* Remove Everything in all .tf files - **terraform destroy**
* Remove only specfic Resource - **terraform destroy -target <resource>**
* All the terraform state will be saved in the terraform.tfstate
* Shows State file - **terraform show**
* Key_point - **Terraform not only Desired State but also Current State**
* Key_point - **To get Current states specefic service present in the resorce in .tf file**
* Workspace - **Useful when working with Multiple Environments**
* List - **terraform workspace list**
* Show current WorkSpace - **terraform workspace show**
* Create WorkSpace - **terraform workspace new <name>**
* Switch worikspace - **terraform workspace select <name>**
* Key_Point - **we acess the same files and folders but attributes and upadtes are diffrent for each workspace**
