#The configuration for the `remote` backend.
     terraform {
       backend "remote" {
          #The name of your Terraform Cloud organization.
		 hostname = "app.terraform.io"
         organization = "self-learning2405"
 
          #The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
           name = "GitTerraformOktaPOC1"
         }
       }
     }

      #  in the test example resource that does nothing.
     resource "null_resource" "example" {
       triggers = {
         value = "A example resource that does nothing!"
       }
     }
