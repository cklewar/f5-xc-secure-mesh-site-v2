# SECURE MESH SITE V2

Terraform to create F5XC Secure Mesh Site V2

## Usage

- Clone this repo with `git clone --recurse-submodules https://github.com/cklewar/f5-xc-secure-mesh-site-v2`
- Enter repository directory with `cd secure-mesh-site-v2`
- Obtain F5XC API certificate file from Console and save it to `cert` directory
- Pick and choose from below examples and add mandatory input data and copy data into file `main.tf.example`.
- Rename file __main.tf.example__ to __main.tf__ with `rename main.tf.example main.tf`
- Change backend settings in `versions.tf` file to fit your environment needs
- Initialize with `terraform init`
- Apply with `terraform apply -auto-approve` or destroy with `terraform destroy -auto-approve`

## Secure Mesh Site module usage example

````hcl
module "sms" {
  source                      = "./modules/f5xc/secure_mesh_site_v2"
  f5xc_tenant                 = var.f5xc_tenant
  f5xc_api_url                = var.f5xc_api_url
  f5xc_sms_name               = var.f5xc_sms_name
  f5xc_api_token              = var.f5xc_api_token
  f5xc_namespace              = var.f5xc_namespace
  f5xc_sms_provider_name      = "rseries"
  f5xc_sms_master_nodes_count = var.f5xc_sms_master_nodes_count
  providers = {
    restful = restful.default
  }
}

output "sms" {
  value = module.sms.secure_mesh_site
}
````