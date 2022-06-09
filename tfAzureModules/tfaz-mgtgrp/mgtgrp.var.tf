#================================================================================
#
# MGTGRP.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "mgtgrp_name" {
    type = string
    default = "mgtgrp_name"
}
variable "mgtgrp_display_name" {
    type = string
   default = "mgtgrp_display_name"
}
variable "mgtgrp_parent_id" {
    type = string
    default = "mgtgrp_parent_id"
}