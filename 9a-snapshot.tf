# ---------------------------------------------------------------------------------------------------
# Library: /mygit/frankie116/library/
# use an existing snapshot named 
# ---------------------------------------------------------------------------------------------------

# req:
# An existing snapshot named "my-snapshot-latest" needs to be found in local region.


data "aws_ebs_snapshot" "my-existing-snapshot" {
  most_recent           = true
  owners                = ["self"]
  filter {
    name                = "tag:Name"
    values              = ["my-snapshot-latest"]
  }
}