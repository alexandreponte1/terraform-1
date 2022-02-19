instance_type = "t2.micro"
environment   = "prod"
instance_tags = {
  Name    = "YusuKE"
  Project = "Curso AWS com Terraform"
  Env     = "Prod"
}



#terraform plan -var-file="prod.tfvars"