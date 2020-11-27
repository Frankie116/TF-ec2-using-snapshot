# ---------------------------------------------------------------------------------------------------
# Library: /mygit/frankie116/library/
# use an existing script to boot an ec2 instance. 
# ---------------------------------------------------------------------------------------------------

# req:
# variables.tf - var.my-scriptfile
# A script named in the above variable needs to exist.
# Any variables named under vars (left) need to exist within the script.sh file
# Any variables named under vars (right) need to exist in variables.tf



data "template_file" "my-user-data" {
  template               = file(var.my-scriptfile)
  vars                   = {
    my-scriptfile        = var.my-scriptfile        #pass variables from right (local) into script (left)
  }
}