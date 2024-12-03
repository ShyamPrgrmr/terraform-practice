variable "region" {
  default = "ca-central-1"
}
variable "cloud_users" {
     type = string
     default = "andrew:ken:faraz"
  
}
variable "bucket" {
  default = "sonic-media"
  
}

variable name_1 {
    default = "shyam"
}

variable name_2 {
    default = "pradhan"
}

variable "prizes" {
    type = list(number)
    default = [12,12,13,14,54]
}

variable "prize_1" {
    type = number
    default = 10.0
}

variable "prize_2" {
    type = number
    default = 20.8
}

variable "media" {
  type = set(string)
  default = [ 
    "/media/tails.jpg",
    "/media/eggman.jpg",
    "/media/ultrasonic.jpg",
    "/media/knuckles.jpg",
    "/media/shadow.jpg",
      ]
  
}
variable "sf" {
  type = list
  default = [
    "ryu",
    "ken",
    "akuma",
    "seth",
    "zangief",
    "poison",
    "gen",
    "oni",
    "thawk",
    "fang",
    "rashid",
    "birdie",
    "sagat",
    "bison",
    "cammy",
    "chun-li",
    "balrog",
    "cody",
    "rolento",
    "ibuki"

  ]
}

