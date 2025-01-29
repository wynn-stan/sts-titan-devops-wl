const express = require("express");
const promClient = require("prom-client");

/**
 * Variables
 */
const { collectDefaultMetrics } = promClient;
const app = express();

/**
 * Functions
 */
collectDefaultMetrics();

/**
 * Endpoints
 */
app.get("/metrics", async (req, res) => {
  res.contentType(promClient.register.contentType);
  res.end(await promClient.register.metrics());
});

/**
 * Server setup
 */
app.listen(8001, () => {
  console.log("Listening on port 8001");
});
