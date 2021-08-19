import dotenv from "dotenv";
import express from "express";
import cors from "cors";

dotenv.config();
const PORT = process.env.PORT || 5001;
const SERVER_URL = process.env.SERVER_URL || "http://localhost";

const app = express();
app.use(cors());

app.get("/posts", (req, res) => {
  res.send("Reading Posts.");
});

app.get("/posts/:id", (req, res) => {
  const { id } = req.params;
  res.send(`Read a Post: ${id}.`);
});

app.post("/posts", (req, res) => {
  res.send("Create a Posts.");
});

app.put("/posts/:id", (req, res) => {
  const { id } = req.params;
  res.send("Update a Posts.");
});

app.delete("/posts/:id", (req, res) => {
  const { id } = req.params;
  res.send("Delete a Posts.");
});

app.listen(PORT, () => {
  console.log(`Server brennt unter der Adresse: ${SERVER_URL}:${PORT} ab.`);
});
