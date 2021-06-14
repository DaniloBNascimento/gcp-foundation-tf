module "network" {
    source  = "./modules/network"
}

module "compute" {
    source  = "./modules/compute"  
    vpc_output = module.network.vpc_output
}