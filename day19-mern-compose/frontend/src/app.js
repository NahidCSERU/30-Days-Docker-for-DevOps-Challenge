import React, { useState, useEffect } from "react";

function App() {
  const [items, setItems] = useState([]);
  const [name, setName] = useState("");

  useEffect(() => {
    fetch("http://localhost:5000/items")
      .then((res) => res.json())
      .then((data) => setItems(data));
  }, []);

  const addItem = async () => {
    const res = await fetch("http://localhost:5000/items", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ name }),
    });
    const newItem = await res.json();
    setItems([...items, newItem]);
    setName("");
  };

  return (
    <div style={{ padding: "20px" }}>
      <h1>🚀 MERN Stack Demo</h1>
      <input
        value={name}
        onChange={(e) => setName(e.target.value)}
        placeholder="Enter item"
      />
      <button onClick={addItem}>Add</button>
      <ul>
        {items.map((item, i) => (
          <li key={i}>{item.name}</li>
        ))}
      </ul>
    </div>
  );
}

export default App;
