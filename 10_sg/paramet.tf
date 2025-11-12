resource "aws_ssm_parameter" "sg_id" {
    count = length(var.sg_name)
  name  ="/${var.project_name}/${var.environment}/${var.sg_name[count.index]}_sg_id"
  type  = "String"
  value = module.sg[count.index].sg_id
  overwrite   = true 
}
# resource "aws_ssm_parameter" "backend_abl_sg_id" {
#  # count = length(var.sg_name)
#   name  ="/${var.project_name}/${var.environment}/backend_abl_sg_id"
#   type  = "StringList"
#   value = module.sg[count.index].backend_abl_sg_id
# }
# resource "aws_ssm_parameter" "backend_sg_id" {
#   #count = length(var.sg_name)
#   name  ="/${var.project_name}/${var.environment}/backend_sg_id"
#   type  = "StringList"
#   value = module.sg[count.index].backend_sg_id
# }
# resource "aws_ssm_parameter" "bastion_sg_id" {
#   #count = length(var.sg_name)
#   name  ="/${var.project_name}/${var.environment}/bastion_sg_id"
#   type  = "StringList"
#   value =  module.sg[count.index].public_subnet_id
# }