terraform {
  backend "s3" {
    bucket    = "mymodule"
    key       = "modulepro"
    region    = "eu-central-1"
    profile   = "admin"
  }
}
      
