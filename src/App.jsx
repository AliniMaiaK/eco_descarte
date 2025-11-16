import { useState } from 'react';
import './App.css';

function App() {
  const [formData, setFormData] = useState({
    nome: '',
    tipo: '',
    local: ''
  });

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    alert(`Descarte registrado:\nNome: ${formData.nome}\nTipo: ${formData.tipo}\nLocal: ${formData.local}`);
    setFormData({ nome: '', tipo: '', local: '' });
  };

  return (
    <div className="container">
      <h1>Descarte Consciente</h1>
      <form onSubmit={handleSubmit}>
      
        <label>Nome:</label>
        <input type="text" name="nome" value={formData.nome} onChange={handleChange} required />

        <label>Tipo de resíduo:</label>
        <input type="text" name="tipo" value={formData.tipo} onChange={handleChange} required />

        <label>Local de descarte:</label>
        <input type="text" name="local" value={formData.local} onChange={handleChange} required />

        <button type="submit">Registrar</button>
      </form>
    </div>
  );
}

export default App;
