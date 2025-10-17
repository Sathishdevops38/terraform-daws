resource "aws_vpc" "robo_vpc" {
  cidr_block = var.cidr_block
  instance_tenancy = var.instance_tenancy
  tags = merge(
    local.resource_tags,
    var.vpc_tags,
    {
      "Environment" = local.env # Creates a new key-value pair for the environment
    }
  )
}

resource "aws_subnet" "robo_pub" {
  # depends_on = [ aws_vpc.robo_vpc.id ]
  vpc_id = aws_vpc.robo_vpc.id
  cidr_block = var.robo_pub_cidr
  availability_zone = var.availability_zone_pub
   tags = merge(
    local.resource_tags,
    var.sub_tags_pub,
    {
      "Environment" = local.env # Creates a new key-value pair for the environment
    }
  )
}

resource "aws_subnet" "robo_pri" {
  # depends_on = [ aws_vpc.robo_vpc.id ]
  vpc_id = aws_vpc.robo_vpc.id
  cidr_block = var.robo_pri_cidr
  availability_zone = var.availability_zone_pri
  tags = merge(
    local.resource_tags,
    var.sub_tags_pri,
    {
      "Environment" = local.env # Creates a new key-value pair for the environment
    }
  )
}

resource "aws_internet_gateway" "robo_igw" {
  vpc_id = aws_vpc.robo_vpc.id

   tags = merge(
    local.resource_tags,
    var.igw_tags,
    {
      "Environment" = local.env # Creates a new key-value pair for the environment
    }
  )
}

# resource "aws_internet_gateway_attachment" "robo_igw_att" {
#   internet_gateway_id = aws_internet_gateway.robo_igw.id
#   vpc_id              = aws_vpc.robo_vpc.id
# }

resource "aws_route_table" "robo_pub_rt" {
    vpc_id = aws_vpc.robo_vpc.id

    route {
        cidr_block = var.internet_cidr       # Default route for all internet traffic
        gateway_id = aws_internet_gateway.robo_igw.id
    }

    tags = merge(
    local.resource_tags,
    var.robo_pub_rt_tags,
    {
      "Environment" = local.env # Creates a new key-value pair for the environment
    }
  )
}  

resource "aws_route_table_association" "robo_pub_rt_ass" {
    subnet_id      = aws_subnet.robo_pub.id
    route_table_id = aws_route_table.robo_pub_rt.id
}