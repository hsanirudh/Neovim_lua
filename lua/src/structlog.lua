local log = require("structlog")

log.configure({
  my_logger = {
    pipelines = {
      {
        log.level.INFO,
        {
          log.processors.Timestamper("%H:%M:%S"),
        },
        log.formatters.Format( --
          "%s [%s] %s: %-30s",
          { "timestamp", "level", "logger_name", "msg" }
        ),
        log.sinks.Console(),
      },
    },
  },
})

local logger = log.get_logger("my_logger")
