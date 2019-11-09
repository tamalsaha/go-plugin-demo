# KV Example

Source: https://github.com/hashicorp/go-plugin/tree/master/examples/grpc

This example builds a simple key/value store CLI where the mechanism
for storing and retrieving keys is pluggable. To build this example:

```sh
# This builds the main CLI
$ go build -o kv

# This builds the plugin written in Go
$ go build -o kv-go-grpc ./plugin-go-grpc

# This tells the KV binary to use the "kv-go-grpc" binary
$ export KV_PLUGIN="./kv-go-grpc"

# Read and write
$ ./kv put hello world

$ ./kv get hello
world
```

## Updating the Protocol

If you update the protocol buffers file, you can regenerate the file
using the following command from this directory. You do not need to run
this if you're just trying the example.

For Go:

```sh
$ make gen
```
