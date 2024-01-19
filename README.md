# My first Docker project

This is a simple project that I used to introduce myself to [Docker](https://docker.com). Here I take an elementary [Ruby](https://ruby-lang.org) script and *dockerise* it in a container.

I'm well-aware of how practically pointless this is and that Docker is mostly used for web applications, servers, infrastructure and distributed systems more generally. But this was actually a great way to get started.

I'm already convinced that Docker is seriously awesome and useful!

## How to build

Assuming you have Docker installed, enter this directory and execute the following commands

```
docker build --tag test .
docker run --interactive --tty test /bin/sh
```

This should place you on the command line inside the container. Then run the command `ruby sum.rb`. You can use `Ctrl+D` to exit the container.

To delete the image we built here just run `docker rmi -f test`.

## References

Some good sources for learning the basics of Docker...

- [ you need to learn Docker RIGHT NOW!!](https://www.youtube.com/watch?v=eGz9DS-aIeY)

- [A Docker “hello world” app](https://codewithjason.com/docker-hello-world-app)


- [Docker concepts and terminology](https://codewithjason.com/docker-concepts-terminology)

- [Docker Docs](https://docs.docker.com)
