# ---------------------------------------------------------------------------------------------------
# Library: /mygit/frankie116/library/
# Enables the currently available az to be specified
# ---------------------------------------------------------------------------------------------------

# req:
# none


data "aws_availability_zones" "my-available-azs" {
  state                = "available"
}
