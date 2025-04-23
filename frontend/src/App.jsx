import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import UserForm from "./components/UserForm";
import UserDetails from "./components/UserDetails";
import DataList from "./components/DataList";
import "./index.css";

function App() {
  return (
    <div>
      <Router>
      <Routes>
        <Route path="/" element={<DataList />} />
        <Route path="/adicionar" element={<UserForm mode="add" />} />
        <Route path="/editar/:id" element={<UserForm mode="edit" />} />
        <Route path="/detalhes/:id" element={<UserDetails />} />
      </Routes>
    </Router>
    </div>

  );
}

export default App;