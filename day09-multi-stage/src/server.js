const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("🚀 Hello from Multi-stage Node.js Dockerfile!");
});

app.get("/health", (req, res) => {
  res.json({ status: "ok" });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
