# crdb-demo-repro

1. Start containers

```bash
docker-compose up -d --build
```

2. Connect to the client container:

```bash
docker-compose exec client bash
```

3. Check that connection with `cockroach` is posible:

```bash
cockroach sql --url="postgresql://root@cockroach:26257/defaultdb?sslmode=disable"
```

3. Check that connection with `cockroach-demo` isn't possible:

```bash
cockroach sql --url="postgresql://demo:demo1@cockroach-demo:26257/defaultdb?sslmode=require"
```

4. Check that connection with `cockroach-demo-insecure` isn't possible:

```bash
cockroach sql --url="postgresql://root@cockroach-demo-insecure:26257/defaultdb?sslmode=disable"
```