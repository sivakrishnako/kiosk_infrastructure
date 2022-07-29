

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


#sqs queue

variable "sqs-queue" {

  type = string
  default = "rt-dailybatchdata-sqs-sqa-kiosk"
  
}
