# Importing module 
# test
module "vpc_ec2" {
    source = "git@github.com:sagarkites/terraform.git//modules?ref=test"
     region     = "..........."
     access_key = "........................"
     secret_key = "............................................."
}

# uat
module "vpc_ec2" {
    source = "git@github.com:sagarkites/terraform.git//modules?ref=test"
     region     = "..........."
     access_key = "........................"
     secret_key = "............................................."
}

