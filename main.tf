resource "aws_instance" "myfirstinstance" {
        count = 2
        ami = var.ami_id
        instance_type = var.instance_type
        tags = {
                Name = var.tag_name
                }
}
                                           
