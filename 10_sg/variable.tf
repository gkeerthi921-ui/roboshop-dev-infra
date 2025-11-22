variable "project_name"{
    default =  "roboshop"
}
variable "environment" {
    default = "dev"  
}
variable "sg_name" {
  default = ["mongodb","cart","mysql","redis","rabbitmq",
  "bastion","loadbalancer","backend_alb","backend"]
}