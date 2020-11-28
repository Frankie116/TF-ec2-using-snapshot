# ---------------------------------------------------------------------------------------------------
# Library: /mygit/frankie116/library/v1.3
# Create a new route53 record in an existing route53 hosted zone
# ---------------------------------------------------------------------------------------------------

# req:
# 3a-eip.tf           - [data.aws_eip.my-eip.public_ip]
# variables.tf        - var.my-existing-r53-zone                # this variable should point to an exiting r53 hosted zone
# variables.tf        - var.my-servername


data "aws_route53_zone" "my-r53zone" {
  name                       = var.my-existing-r53-zone
}


resource "aws_route53_record" "my-r53-record" {
  zone_id                    = data.aws_route53_zone.my-r53zone.zone_id
  name                       = "${var.my-servername}.${data.aws_route53_zone.my-r53zone.name}"
  type                       = "A"

  alias {
      zone_id                = var.my-elb-hosted-zone        # https://docs.aws.amazon.com/general/latest/gr/elb.html
      name                   = aws_lb.my-alb.dns_name
      evaluate_target_health = false
    }
}



# use config below to point to an eip ----------------------------------------------------------------

# resource "aws_route53_record" "my-r53-record" {
#   zone_id                  = data.aws_route53_zone.my-r53zone.zone_id
#   name                     = "${var.my-servername}.${data.aws_route53_zone.my-r53zone.name}"
#   type                     = "A"
#   ttl                      = "300"
#   records                  = [data.aws_eip.my-eip.public_ip]
# }



