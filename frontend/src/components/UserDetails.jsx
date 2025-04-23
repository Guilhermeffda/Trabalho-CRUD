import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { useNavigate } from "react-router-dom";

function UserDetails() {
  const { id } = useParams(); // Obtém o ID da URL
  const navigate = useNavigate(); // Para navegação
  const [user, setUser] = useState(null); // Estado para armazenar os dados do usuário

  useEffect(() => {
    console.log("ID recebido:", id); // Log para verificar o ID
    fetch(`http://localhost:8800/users/${id}`)
      .then((res) => {
        if (!res.ok) {
          throw new Error(`Erro ao buscar usuário: ${res.statusText}`);
        }
        return res.json();
      })
      .then((data) => {
        console.log("Dados recebidos:", data); // Log para verificar os dados recebidos
        setUser(data);
      })
      .catch((error) => {
        console.error("Erro ao buscar usuário:", error);
        setUser({ error: true }); // Define um estado de erro
      });
  }, [id]);

  if (user?.error) {
    return <div>Erro ao carregar os detalhes do usuário.</div>;
  }

  if (!user) {
    return <div>Carregando...</div>;
  }

  return (
    <div className="modal">
      <div className="modal-content">
        <h1>Usuario: {user.id}</h1>
        <p>Nome: {user.nome}</p>
        <p>Idade: {user.idade}</p>
        <p>CPF: {user.cpf}</p>
        <p>Email: {user.email}</p>
        <p>Senha: {user.senha}</p>
        <button onClick={() => navigate(-1)} className="btn-list">Voltar</button>
      </div>
    </div>
  );
}

export default UserDetails;