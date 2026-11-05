import React, { useState } from "react";
import { Button } from "./components/Button";
import { Game } from "./components/Game";

import "./App.less";

export const App = () => {
  const [date, setDate] = useState<Date>(new Date());

  const handleRestart = () => {
    setDate(new Date());
  };

  return (
    <div className="App">
      <div className="header">
        <div>
          <h1>2048 Game</h1>
        </div>
        <div>
          <Button onClick={handleRestart}>Restart</Button>
        </div>
      </div>

      <Game key={date.toISOString()} />

      <div>
        <p>
          Welcome to the 2048 Game, a React and TypeScript application
          containerized with Docker and designed for deployment on Amazon EKS.
        </p>
        <p>
          This project demonstrates AWS infrastructure automation,
          GitHub Actions CI/CD, and GitOps-based continuous delivery
          using ArgoCD.
        </p>
      </div>
    </div>
  );
};
