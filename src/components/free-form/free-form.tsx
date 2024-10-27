"use client";

import React from "react";

function FreeForm() {
  const [counting, setCounting] = React.useState(0);

  const effecting = React.useCallback(() => {
    setCounting((previousCount) => previousCount + 1);
    console.log("🐸🐸🐸 effecting");
  }, []);

  React.useEffect(() => {
    effecting();
  }, [effecting]);

  return (
    <div>
      <p>Free Form {counting}</p>
      <button onClick={effecting}>Increment</button>
    </div>
  );
}

export default FreeForm;
