provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAVMFWVN35PU6A6M4R"
  secret_key = "b+9K9PJWecFw0G3auchRxzjfDJNPc4Z5gfQvZKjw"
}
resource "aws_elasticache_cluster" "example" {
  cluster_id           = "flipkart"
  engine               = "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
}
