# ---------------------------------------------------------------------------------------------------
# Library: /mygit/frankie116/library/v1.2
# use an existing snapshot named "my-snapshot-latest"
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