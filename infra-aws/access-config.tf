resource "aws_eks_access_entry" "access-entry" {
  cluster_name      = aws_eks_cluster.cluster-fiap.name
  principal_arn     = var.user_arn
  kubernetes_groups = ["fiap-1", "fiap-2"]
  type              = "STANDARD"
}

resource "aws_eks_access_policy_association" "access-entry-association" {
  cluster_name  = aws_eks_cluster.cluster-fiap.name
  policy_arn    = var.policy_associate_arn
  principal_arn = var.user_arn

  access_scope {
    type = "cluster"
  }
}