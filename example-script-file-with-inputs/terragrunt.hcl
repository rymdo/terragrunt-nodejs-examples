locals {
  inputs = jsonencode({
    var1 = "data1"
  })
}

inputs = {
  data = jsondecode(run_cmd("--terragrunt-quiet", "/bin/bash", "-c" , "INPUTS='${local.inputs}' node script.js"))
}
