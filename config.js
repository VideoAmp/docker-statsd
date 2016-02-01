(function() {
  return {
    backends: [ "./node_modules/statsd-kafka-es-backend" ],
    debug: Boolean(process.env.STATSD_DEBUG) || false,
    port: parseInt(process.env.STATSD_PORT) || 8125,
    kafkaES: {
      conn:          process.env.KAFKA_CONNECTION || "localhost:2181/",
      topic:         process.env.KAFKA_TOPIC || "stats",
      countType:     "counter",
      timerType:     "timer",
      timerDataType: "timer_data",
      gaugeDataType: "gauge"
    }
  };
})();
