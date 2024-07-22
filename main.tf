
resource "aws_instance" "web" {
  ami           = "ami-0b72821e2f351e396"
  instance_type = "t2.micro"

  tags = {
    Name = "tf-cicd-${random_pet.randy.id}"
  }
}

resource "random_pet" "randy" {
  length = "1"
}
