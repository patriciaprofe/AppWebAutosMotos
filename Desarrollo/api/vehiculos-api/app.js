// app.js
const express = require('express');
const db = require('./db');
const app = express();
const port = 3000;

// Middleware para parsear el cuerpo de las peticiones como JSON
app.use(express.json());

// Ruta para obtener todos los países
app.get('/paises', async (req, res) => {
  try {
    const [rows] = await db.execute('SELECT * FROM paises');
    res.json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Error al obtener los países' });
  }
});

// Ruta para obtener todas las marcas
app.get('/marcas', async (req, res) => {
  try {
    const [rows] = await db.execute('SELECT * FROM marcas');
    res.json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Error al obtener las marcas' });
  }
});

// Ruta para obtener todos los modelos
app.get('/modelos', async (req, res) => {
  try {
    const [rows] = await db.execute('SELECT * FROM modelos');
    res.json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Error al obtener los modelos' });
  }
});

// Ruta para obtener todos los productos
app.get('/productos', async (req, res) => {
  try {
    const [rows] = await db.execute('SELECT * FROM productos');
    res.json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Error al obtener los productos' });
  }
});

// Ruta para insertar un nuevo país
app.post('/paises', async (req, res) => {
  const { nombre } = req.body;
  try {
    const [result] = await db.execute('INSERT INTO paises (nombre) VALUES (?)', [nombre]);
    res.status(201).json({ id_pais: result.insertId, nombre });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Error al insertar el país' });
  }
});

// Ruta para insertar una nueva marca
app.post('/marcas', async (req, res) => {
  const { nombre, id_pais_origen } = req.body;
  try {
    const [result] = await db.execute('INSERT INTO marcas (nombre, id_pais_origen) VALUES (?, ?)', [nombre, id_pais_origen]);
    res.status(201).json({ id_marca: result.insertId, nombre, id_pais_origen });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Error al insertar la marca' });
  }
});

// Ruta para insertar un nuevo producto
app.post('/productos', async (req, res) => {
  const { nombre, id_producto_tipo, id_modelo, id_producto_estado, id_usuario, id_usuario_carga, ubicacion_latitud, ubicacion_longitud } = req.body;
  try {
    const [result] = await db.execute('INSERT INTO productos (nombre, id_producto_tipo, id_modelo, id_producto_estado, id_usuario, id_usuario_carga, ubicacion_latitud, ubicacion_longitud) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', 
      [nombre, id_producto_tipo, id_modelo, id_producto_estado, id_usuario, id_usuario_carga, ubicacion_latitud, ubicacion_longitud]);
    res.status(201).json({ id_producto: result.insertId, nombre });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Error al insertar el producto' });
  }
});

// Ruta para actualizar un producto
app.put('/productos/:id', async (req, res) => {
  const { id } = req.params;
  const { nombre, id_producto_tipo, id_modelo, id_producto_estado, id_usuario, id_usuario_carga, ubicacion_latitud, ubicacion_longitud } = req.body;
  try {
    await db.execute('UPDATE productos SET nombre = ?, id_producto_tipo = ?, id_modelo = ?, id_producto_estado = ?, id_usuario = ?, id_usuario_carga = ?, ubicacion_latitud = ?, ubicacion_longitud = ? WHERE id_producto = ?', 
      [nombre, id_producto_tipo, id_modelo, id_producto_estado, id_usuario, id_usuario_carga, ubicacion_latitud, ubicacion_longitud, id]);
    res.status(200).json({ id_producto: id, nombre });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Error al actualizar el producto' });
  }
});

// Ruta para eliminar un producto
app.delete('/productos/:id', async (req, res) => {
  const { id } = req.params;
  try {
    await db.execute('DELETE FROM productos WHERE id_producto = ?', [id]);
    res.status(200).json({ message: 'Producto eliminado correctamente' });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Error al eliminar el producto' });
  }
});

// Ruta de búsqueda de productos por nombre (búsqueda aproximada)
app.get('/productos/buscar', async (req, res) => {
    const { query } = req.query;  // El término de búsqueda se pasará como parámetro 'query'
  
    if (!query) {
      return res.status(400).json({ error: 'Especifica un término de búsqueda' });
    }
  
    try {
      // Realiza la consulta usando LIKE para búsqueda aproximada
      const [rows] = await db.execute(
        'SELECT * FROM productos WHERE nombre LIKE ?',
        [`%${query}%`] // El % permite que la búsqueda sea aproximada
      );
  
      res.json(rows);
    } catch (err) {
      console.error(err);
      res.status(500).json({ error: 'Error al realizar la búsqueda' });
    }
  });

// Iniciar el servidor
app.listen(port, () => {
  console.log(`API REST en funcionamiento en http://localhost:${port}`);
});
