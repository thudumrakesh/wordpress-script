resource "aws_route_table" "route1" {
  vpc_id = aws_vpc.VPC-1.id

  tags = {
    Name = "routetable"
  }
}
