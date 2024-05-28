variable "project_name"{
    type = string

}

variable "env"{
    type = string
}

variable "sg_name"{
    type = string
}

variable "sg_description"{
    type = string
}

variable "vpc_id"{
    type = string
}

variable "common_tags"{
    type = map
}

variable "sg_tags"{
    type = map 
    default = {}
}

variable "outbound_rules"{
    type = list
    default = [
        {
        from_port = 0
        to_port = 0
        protocol = "-1" # all protocols
        allowed_cidr = ["0.0.0.0/0"]
        }
    ]
}

variable "inbound_rules"{
    type = list
    default = []
}