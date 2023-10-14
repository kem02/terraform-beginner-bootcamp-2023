terraform {
  required_providers {
    terratowns = {
      source  = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }


  # backend "remote" {
  #   hostname     = "app.terraform.io"
  #   organization = "kem02"

  #   workspaces {
  #     name = "terra-house-1"
  #   }
  # }

   cloud {
    organization = "kem02"

    workspaces {
      name = "terra-house-1"
    }
  }



}


provider "terratowns" {
  endpoint  = var.terratowns_endpoint
  user_uuid = var.teacherseat_user_uuid
  token     = var.terratowns_access_token
}


# module "home_arcanum_hosting" {
#   source = "./modules/terrahome_aws"
#   user_uuid = var.teacherseat_user_uuid
#   public_path = var.arcanum.public_path
#   content_version = var.arcanum.content_version
# }


# resource "terratowns_home" "home" {
#   name = "How to play Arcanum in 2023!"
#   description = <<DESCRIPTION
# Arcanum is a game from 2001 that shipped with alot of bugs.
# Modders have removed all the originals making this game really fun
# to play (despite that old look graphics). This is my guide that will
# show you how to play arcanum without spoiling the plot.
# DESCRIPTION
#   domain_name = module.home_arcanum_hosting.domain_name
#   town = "missingo"
#   content_version = var.arcanum.content_version
# }

# module "home_payday_hosting" {
#   source = "./modules/terrahome_aws"
#   user_uuid = var.teacherseat_user_uuid
#   public_path = var.payday.public_path
#   content_version = var.payday.content_version
# }

# resource "terratowns_home" "home_payday" {
#   name = "Making your Payday Bar"
#   description = <<DESCRIPTION
# Since I really like Payday candy bars but they cost so much to import
# into Canada, I decided I would see how I could my own Paydays bars,
# and if they are most cost effective..
# DESCRIPTION
#   domain_name = module.home_payday_hosting.domain_name
#   town = "missingo"
#   content_version = var.payday.content_version
# }



module "home_pumpkin_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.pumpkin.public_path
  content_version = var.pumpkin.content_version
  
}

resource "terratowns_home" "home_pumpkin" {
  name = "Making Pumpkin Pie!"
  description = <<DESCRIPTION
Pumpkin pie is like the whimsical finale of autumn, arriving on tables with a flourish of spice-scented magic. 
Its creamy, orange filling is like the essence of fall, captured in a buttery crust. 
With each bite, you’re transported to a world where the leaves are always crisp, and the air is scented with the sweet promise of cinnamon and nutmeg. 
It’s not just a pie, it’s a slice of autumnal charm, an edible ode to the cozy allure of the season.
The ritual of baking a pumpkin pie is like beckoning the spirit of autumn into your kitchen, where it twirls amidst the wafts of nutmeg and ginger, before nestling warmly on your taste buds.
DESCRIPTION
  domain_name = module.home_pumpkin_hosting.domain_name
  town = "cooker-cove"
  content_version = var.pumpkin.content_version
}