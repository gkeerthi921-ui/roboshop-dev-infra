module "vpc" {
    source = "git::https://github.com/daws-86s/terraform-aws-vpc.git?ref=main"
    # VPC
    vpc_cidr = var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags
   

    # public subnets
    public_subnet_cidrs = var.public_cidr

    # private subnets
    private_subnet_cidrs = var.private_cidr

    # database subnets
    database_subnet_cidrs = var.database_cidr

    is_peering_required = true
}