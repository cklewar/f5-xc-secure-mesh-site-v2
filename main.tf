module "sms" {
  source                      = "./modules/f5xc/secure_mesh_site_v2"
  f5xc_tenant                 = var.f5xc_tenant
  f5xc_api_url                = var.f5xc_api_url
  f5xc_sms_name               = var.f5xc_sms_name
  f5xc_api_token              = var.f5xc_api_token
  f5xc_namespace              = var.f5xc_namespace
  f5xc_sms_provider_name      = var.f5xc_sms_provider_name
  f5xc_sms_master_nodes_count = var.f5xc_sms_master_nodes_count
  providers = {
    restful = restful.default
  }
}

output "sms" {
  value = module.sms.secure_mesh_site
}