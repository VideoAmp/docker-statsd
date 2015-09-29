# Docker statsd

This is a simple example of running statsd in docker.

Statsd listens on 8125 by default, to use it outside you'll need to expose it
to the outside world.

Example to run the docker instance:

    docker run -e GRAPHITE_HOST=172.31.35.204 --net=host -d videoamp/statsd

Environment variables that can be used to set options:

    GRAPHITE_PORT (default: 2003)
    GRAPHITE_HOST (default: localhost)
    STATSD_PORT   (default: 8125)
    STATSD_DEBUG  (default: false)

The [statsd admin interface](https://github.com/etsy/statsd/blob/master/docs/admin_interface.md)
can be accessed through `8126/tcp`.
