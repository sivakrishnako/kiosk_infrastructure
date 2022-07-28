# vpc varibles #
variable "region" {
  type = string
  default = "us-west-1"
}

variable "created_by" {
  type = string
  default = "siva"
}

variable "cidrblock" {
  type = string 
  default="10.1.0.0/16"
}

variable "tenancy" {
  type = string
  default = "default"
}

variable "name" {
  type = string
  default = "kiosk-vpc-Dev"
}

variable "ps_cidr" {
  type = string
  default="10.1.111.0/24"
}



variable "pr_cidr" {
  type = string
  default="10.1.112.0/24"
}



variable "map_public_ip_on_launch" {
  type = string
  default = "true"
}

variable "enable_resource_name_dns_a_record_on_launch" {
  type = string
  default = "true"
}

variable "ps_name" {
  type = string
  default = "public-subnet-1a"
}



variable "igw_name" {
  type = string
  default = "Rtree-igw-Dev-1"
}

variable "publicroute_name" {
  type = string
  default = "public-rt-Dev"
}


variable "pvtsubnet_name" {
  type = string
  default = "private-subnet-1b"
}



variable "ngw_name" {
  type = string
  default = "public-natgw-1a"
}



variable "pvtrt_name" {
  type = string
  default = "private-rt-1b"
}


variable "ps_name_3a" {
  type = string
  default = "public-subnet-3a"
}

variable "pvtsubnet_name_3b" {
  type = string
  default = "private-subnet-3b"
}

variable "pvtrt_name_3b" {
  type = string
  default = "private-rt-3b"
}


variable "ps_cidr_3a" {
  type = string
  default="10.1.113.0/24"
}



variable "pr_cidr_3b" {
  type = string
  default="10.1.114.0/24"
}



variable "ngw_name_3a" {
  type = string
  default = "public-natgw-3a"
}

# s3 varibles #


variable "s3-name" {
  type = string
  default = "rt-s3-raintree-eventdata-sqa-kiosk"
  
}

variable "Environment" {
  type = string
  default = "dev"
  
}

variable "status" {
  type = string
  default = "Enabled"
  
}



# ec2 varibles #


# variable "instance_type" { 
#     description = "instance type for ec2" 
#     default     =  "t2.micro" 
# }


# variable "key_name" { 
#     description = " SSH keys to connect to ec2 instance" 
#     default     =  "myJune2021Key" 
# }

# variable "security_group" { 
#     description = "Name of security group" 
#     default     = "my-jenkins-security-group" 
# }


# variable "tag_name" { 
#     description = "Tag Name of for Ec2 instance" 
#     default     = "my-ec2-instance" 
# } 

# variable "ami_id_slave" { 
#     description = "AMI for Ubuntu Ec2 instance" 
#     default     = "ami-0b9064170e32bde34" 
# }


# variable "instance_type_slave" { 
#     description = "instance type for ec2" 
#     default     =  "t2.micro" 
# }


# variable "key_name_slave" { 
#     description = " SSH keys to connect to ec2 instance" 
#     default     =  "myJune2021Key" 
# }

# variable "security_group_slave" { 
#     description = "Name of security group" 
#     default     = "my-jenkins-security-group" 
# }


# variable "tag_name_slave" { 
#     description = "Tag Name of for Ec2 instance" 
#     default     = "my-ec2-instance" 
# } 



# Eks cluster varibles

variable "cluster-name" {

  type = string
  default =  "kiosk-cluster-tf"
  
}

variable "fargate-profile" {

  type = string
  default =  "kiosk-fargate-tf"
  
}


#sqs queue

variable "sqs-queue" {

  type = string
  default = "rt-dailybatchdata-sqs-sqa-kiosk"
  
}

