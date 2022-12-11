resource "aws_security_group" "websg" {
  name        = "websg"
  description = "Allow 443"
  

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = "0.0.0.0/0"
  }
  #Added After Initial Commit
  ingress {
    description      = "SSH Allow"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = "0.0.0.0/0"
  }

    #Added After Unstaged Commit
  ingress {
    description      = "SSH Allow"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = "0.0.0.0/0"
  }


  #Added This Change to Feature Branch to Demonstrate Parallel branch change mering
  ingress {
    description      = "SMTP Allow"
    from_port        = 25
    to_port          = 25
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = "0.0.0.0/0"
  }




  #Added this comment demonstrate go back to earlier version after commit No useful thing added 
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
 



#Second Time Check of Squash merge


# Merge Using Pull rquest
  tags = {
    Name = "websg"
    Owner  = "Puka"
  }
}