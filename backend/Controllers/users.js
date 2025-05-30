import { db } from "../db.js";

export const getUserById = (req, res) => {
  const q = "SELECT * FROM usuarios WHERE id = ?";
  db.query(q, [req.params.id], (err, data) => {
    if (err) return res.status(500).json(err);
    if (data.length === 0) return res.status(404).json({ message: "Usuário não encontrado." });
    return res.status(200).json(data[0]);
  });
};

export const getUsers = (_, res) => {
  const q = "SELECT * FROM usuarios";

  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.status(200).json(data);
  });
};

// Corrigido para insertUser (singular)
export const insertUser = (req, res) => {
  const q = "INSERT INTO usuarios (nome, idade, cpf, email, senha) VALUES (?, ?, ?, ?, ?)";

  db.query(q, [req.body.nome, req.body.idade, req.body.cpf, req.body.email, req.body.senha], (err, _) => {
    if (err) return res.json(err);
    return res.status(200).json({message: "Usuário inserido com sucesso!"});
  });
};

// Corrigido para deleteUser (singular)
export const deleteUser = (req, res) => {
  const q = "DELETE FROM usuarios WHERE id = ?";
  db.query(q, [req.params.id], (err, data) => {
    if (err) return res.json(err);
    return res.status(200).json({message: "Usuário deletado com sucesso!"});
  });
};

// Corrigido para updateUser (singular)
export const updateUser = (req, res) => {
  const q = "UPDATE usuarios SET nome = ?, idade = ?, cpf = ?, email = ?, senha = ? WHERE id = ?";
    
  db.query(q, [req.body.nome, req.body.idade, req.body.cpf, req.body.email, req.body.senha, req.params.id], (err, _) => {
    if (err) return res.json(err);
    return res.status(200).json({message: "Usuário atualizado com sucesso!"});
  });
};