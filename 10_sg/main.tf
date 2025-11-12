# module "catalogue" {
#   source = "git::https://github.com/daws-86s/terraform-aws-sg.git?ref=main"
  
#     name = "${local.common_name}-catalogue"
#     description = "security group catalogue by custom port "
#     vpc_id = data.aws_ssm_parameter.vpc_id.value 
# }
#module "sg" {
#     #source = "../terraform-aws-vpc" not in local  as it as frequent changes so we go with git
#     source = "git::https://github.com/daws-86s/terraform-aws-vpc.git?ref"
#     count = length (var.sg_name)
#     project_name = var.project_name
#     environment = var.environment
#     sg_name = var.sg_name[count.index]
#     vpc_id = local.vpc_id
# }

module "sg" {
  count = length(var.sg_name)
  source = "git::https://github.com/daws-86s/terraform-aws-sg.git?ref=main"
  project_name = var.project_name
  environment = var.environment
  sg_name = var.sg_name[count.index]
  sg_description = "Created for ${var.sg_name[count.index]}"
  vpc_id =  local.vpc_id
}
