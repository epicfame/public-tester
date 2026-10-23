import { useState } from "react";
import "./App.css";

function App() {
  const [count, setCount] = useState(0);

  return (
    <>
    <div className="countControl">
      <button onClick={() => setCount(count - 1)}>- </button>
      <div>{count}</div>
      <button onClick={() => setCount(count + 1)}>+</button>
    </div>
    </>
  );
}

export default App;
