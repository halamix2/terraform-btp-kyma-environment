output "custom_service_manager_credentials" {
  value = var.BTP_PROVIDER_SUBACCOUNT_ID == null ? null : jsondecode(one(data.btp_subaccount_service_binding.provider_sm).credentials)
}

output "kubeconfig" {
  value = yamlencode(jsondecode(data.jq_query.kubeconfig.result) )
}

output "subaccount_id" {
  value = local.subaccount_id
}
