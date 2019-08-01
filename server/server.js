const Koa = require("koa");

const app = new Koa();
const port = 7101;

app.use(ctx => {
  ctx.body = "Hello world !!!";
});

app.listen(port, error => {
  if (error) {
    console.error(error);
    process.exit(1);
  }

  console.log(`Server listen @${port} http://localhost:${port}`);
});
