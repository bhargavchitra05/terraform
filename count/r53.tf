resource "aws_route53_record" "www" {
  count = 10
  zone_id = var.zone_id
  #interpolation
  name    = "${var.instances[count.index]}.${var.domain_name}" # mongodb.zenvyproducts.online
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[count.index].private_ip]
}

#roboshop.zenvyproducts.online -> public_ip
#as a part functions 
resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  #interpolation
  name    = "roboshop.${var.domain_name}" 
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[index(var.instances, "frontend")].public_ip]
}



