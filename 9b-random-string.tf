# ---------------------------------------------------------------------------------------------------
# Library: /mygit/frankie116/library/
# Enables a random string to be used.
# ---------------------------------------------------------------------------------------------------

# req:
# none


resource "random_string" "my-random-string" {
  length                = 3
  special               = false
}