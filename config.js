(function() {
    return {
        backends: [ './node_modules/statsd-elasticsearch-backend' ],
        debug: Boolean(process.env.STATSD_DEBUG) || false,
        port: parseInt(process.env.STATSD_PORT) || 8125,
        elasticsearch: {
            port:          9200,
            host:          "es.prod.use1",
            path:          "/",
            indexPrefix:   "statsd",
            indexTimestamp: "day",
            countType:     "counter",
            timerType:     "timer",
            timerDataType: "timer_data",
            gaugeDataType: "gauge",
            formatter:     "default_format"
        }
    };
})()
