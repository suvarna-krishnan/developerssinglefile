terraform {
  required_version = "~> 1.0.9"
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud"
      version = "0.13.2"
      
    }
  }
}

provider "genesyscloud" {
  sdk_debug = true
}


module "classifier_queues" {
  source                   = "./modules/queues"
  
}
