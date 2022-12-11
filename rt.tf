#Create the Route Table 
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    #gateway_id = aws_internet_gateway.gw.id
  }
   
  #Added Second Route after the change to 
   route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }


#Checking Squash Merge. Commiting Feature Branch
  tags = {
    Name = "public"
    Owner = "Paka"
  }


}
#Second Time