const inputs = JSON.parse(process.env['INPUTS']);

data = {
  hello: inputs.var1,
};

process.stdout.write(JSON.stringify(data));
