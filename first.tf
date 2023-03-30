resource "local_file" "file_block" {
  filename = "hi.py"
  content  = "${random_id.random_val.dec}"

}
resource "local_file" "file_block1" {
  filename = "hi1.py"
  content  = local.con
}


locals {
  con = "good"
}
resource "random_id" "random_val" {
  

  byte_length = 8
}