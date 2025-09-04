resource "aws_eks_node_group" "eks-node-fiap" {
  cluster_name    = aws_eks_cluster.cluster-fiap.name
  node_group_name = "node-g-${var.project_name}"
  node_role_arn   = var.LabRole
  subnet_ids      = aws_subnet.subnet_main[*].id
  disk_size       = 50
  instance_types  = var.instance_types

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 2
  }

  update_config {
    max_unavailable = 1
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  # depends_on = [
  #   aws_iam_role_policy_attachment.node-AmazonEKSWorkerNodePolicy,
  #   aws_iam_role_policy_attachment.node-AmazonEKS_CNI_Policy,
  #   aws_iam_role_policy_attachment.node-AmazonEC2ContainerRegistryReadOnly,
  # ]
}