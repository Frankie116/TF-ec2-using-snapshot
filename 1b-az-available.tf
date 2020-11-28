# ---------------------------------------------------------------------------------------------------
# Library: /mygit/frankie116/library/v1.2
# Enables the currently available az to be specified
# ---------------------------------------------------------------------------------------------------

# req:
# none


data "aws_availability_zones" "my-available-azs" {
  state                = "available"
}
