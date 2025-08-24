import express from "express";
import cors from "cors";

const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());

// health check
app.get("/health", (_req, res) => {
  res.json({ status: "ok", uptime: process.uptime().toFixed(1) });
});

// root
app.get("/", (_req, res) => {
  res.send("🚀 Day 8: Node.js in Docker — it works!");
});

// echo endpoint (POST)
app.post("/echo", (req, res) => {
  res.json({ you_sent: req.body });
});

// graceful shutdown logs
process.on("SIGTERM", () => {
  console.log("Received SIGTERM, shutting down...");
  process.exit(0);
});

app.listen(PORT, () => {
  console.log(`App listening on http://0.0.0.0:${PORT}`);
});
