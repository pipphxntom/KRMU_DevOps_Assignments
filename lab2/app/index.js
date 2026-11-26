const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('Hello from DevOps Lab 2 - Containerized App - Shwetank Pandey');
});

app.get('/health', (req, res) => {
  res.json({ status: 'ok', version: process.env.APP_VERSION || '1.0' });
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
