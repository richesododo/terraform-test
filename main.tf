

resource "aws_iam_role" "frontend_engineer_role" {
  name = var.frontend_name
  description = var.desc

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          AWS = var.frontend_allowed_users
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "allow_role_1" {
  policy_arn = "arn:aws:iam::aws:policy/CloudFrontFullAccess"
  role       = aws_iam_role.frontend_engineer_role.name
}

resource "aws_iam_role" "backend_engineer_role" {
  name = var.backend_name
  description = var.desc

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          AWS = var.backend_allowed_users
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "allow_role_2" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.backend_engineer_role.name
}

resource "aws_iam_role" "data_engineer_role" {
  name = var.data_engineer_name
  description = var.desc

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          AWS = var.data_allowed_users
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "allow_role_3" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRedshiftFullAccess"
  role       = aws_iam_role.data_engineer_role.name
}

resource "aws_iam_role" "site_reliability_engineer_role" {
  name = var.site_reliability_engineer_name
  description = var.desc

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          AWS = var.site_allowed_users
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "allow_assume_role_4" {
  policy_arn = "arn:aws:iam::aws:policy/job-function/SystemAdministrator"
  role       = aws_iam_role.site_reliability_engineer_role.name
}
