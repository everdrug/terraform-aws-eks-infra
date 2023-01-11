resource "aws_ecr_repository" "main" {
  name                 = "my-cv-repo"
  image_tag_mutability = "IMMUTABLE"
  force_delete         = true
}
