resource "aws_eks_cluster" "cluster-fiap" {
  name = "eks-${var.project_name}"

  access_config {
    authentication_mode = "API"
  }

  role_arn = var.LabRole
  version  = "1.31"

  vpc_config {
    subnet_ids = [for subnet in aws_subnet.subnet_main : subnet.id]
  }

  # Ensure that IAM Role permissions are created before and deleted
  # after EKS Cluster handling. Otherwise, EKS will not be able to
  # properly delete EKS managed EC2 infrastructure such as Security Groups.
#   depends_on = [
#     aws_iam_role_policy_attachment.cluster_AmazonEKSClusterPolicy,
#   ]
}