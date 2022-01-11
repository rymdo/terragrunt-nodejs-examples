inputs = {
  data = jsondecode(run_cmd("--terragrunt-quiet", "/bin/bash", "-c" , "node script.js"))
}
