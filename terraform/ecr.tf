resource "aws_ecr_repository" "frontend" {
  count = var.environment == "prod" ? 1 : 0

  name                 = "fullstack-devops-portfolio-frontend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "backend" {
  count = var.environment == "prod" ? 1 : 0

  name                 = "fullstack-devops-portfolio-backend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
