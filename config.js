(function() {
    return {
        debug: Boolean(process.env.STATSD_DEBUG) || false,
        graphitePort: parseInt(process.env.GRAPHITE_PORT) || 2003,
        graphiteHost: process.env.GRAPHITE_HOST || "localhost",
        port: parseInt(process.env.STATSD_PORT) || 8125
    };
})()
