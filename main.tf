#The configuration for the `remote` backend.
     terraform {
	   required_providers {
		okta = {
         source = "okta/okta"
         version = "3.13.11"
		 }
	   }
     }

     provider "okta" {
       # Configuration options
	   org_name  = "dev-28819048"
       base_url  = "okta.com" # your organization url
       api_token = "00PYS6PZoOnXNh0d83MBaGpKMhcLc9caBZJRKuG-wM"
     }
	 resource "okta_group" "example" {
       name        = "Example"
       description = "My Example Group"
     }

      #  in the test example resource that does nothing.
     #resource "null_resource" "example" {
      # triggers = {
       #  value = "A example resource that does nothing!"
       #}
     #}
