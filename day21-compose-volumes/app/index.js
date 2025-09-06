const express = require("express");
const fs = require("fs");
const app = express();
const PORT = 3000;
const DATA_FILE = "/data/notes.txt";

// Ensure file exists
if (!fs.existsSync(DATA_FILE)) {
  fs.writeFileSync(DATA_FILE, "Initial Note\n");
}

app.get("/", (req, res) => {
  const notes = fs.readFileSync(DATA_FILE, "utf8");
  res.send(`<h1>Persistent Notes</h1><pre>${notes}</pre>`);
});

app.get("/add/:note", (req, res) => {
  const newNote = req.params.note;
  fs.appendFileSync(DATA_FILE, `${newNote}\n`);
  res.send(`✅ Added note: ${newNote}`);
});

app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
});
