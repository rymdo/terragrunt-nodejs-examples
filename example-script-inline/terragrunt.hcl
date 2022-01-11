locals {
  script = <<-EOT
  data = {
    hello: 'world',
  };

  process.stdout.write(JSON.stringify(data));
  EOT
}

inputs = {
  data = jsondecode(run_cmd("--terragrunt-quiet", "/bin/bash", "-c" , "echo \"${local.script}\" | node"))
}
