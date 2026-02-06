const http = require('http');

const server = http.createServer((req, res) => {
  res.end('Hello from STAGING slot via Terraform + Azure DevOps!');
});

server.listen(process.env.PORT || 3000);
