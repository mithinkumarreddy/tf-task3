provider "aws"{
region = "eu-west-2"
access_key = "AKIAWYJVMLUM2ZFX2C56"
secret_key = "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"
}

resource "aws_iam_user" "key"{
count = length(var.abc)
name = var.abc[count.index]
}

output "print_the_names"{
value = [ for name in var.abc : name ]
}

variable "abc"{
description = "list of user names"
type = list(string)
default = ["aws", "azure", "gcp"]
}
