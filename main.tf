module "vpc" {
  source = "./vpc"
  name   = var.name
  region = var.region
}

module "eks-cluster" {
   source = "./eks-cluster"
   name   = var.name
   region = var.region
   private_subs = "${module.vpc.private_subnets}"
 }

module "eks-app" {
   source = "./eks-app"
   cluster_id = "${module.eks-cluster.cluster_id}"
   region = var.region
 }

module "prometh" {
  source = "./prometh"
  cluster_id = "${module.eks-cluster.cluster_id}"
  region = var.region
}






 
