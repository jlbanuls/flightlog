# ✈️ FlightLog - Gestor de Vuelos

Una aplicación web responsiva para registrar y consultar vuelos con sincronización entre dispositivos.

---

## 🚀 **INICIO RÁPIDO**

### Opción 1️⃣: Ejecutar localmente (Recomendado para empezar)

```bash
cd C:\Users\jlban\Documents\Cloude\Aplicacion\ de\ vuelos
python -m http.server 8080
```

Luego abre en tu navegador:
- **PC**: http://localhost:8080
- **Móvil**: http://[tu-ip-pc]:8080

---

## 📱 **SINCRONIZAR ENTRE DISPOSITIVOS**

### ¿Quieres que tus datos se sincronicen entre PC y móvil?

Lee el archivo **`SINCRONIZACION.md`** para ver 3 opciones:

1. **Servidor Local** (Gratis, sin sincronización)
2. **Firebase** (Sincronización en tiempo real) ⭐
3. **Vercel + Firebase** (Para acceso global)

---

## ✨ **CARACTERÍSTICAS**

✅ Registra vuelos con todos los detalles  
✅ Gestión de pasajeros (hasta 10+)  
✅ Filtros por pasajero, destino y fechas  
✅ Vistas de próximos vuelos e historial  
✅ Diseño responsivo (móvil y desktop)  
✅ Datos persistentes en localStorage  
✅ Hora de salida/llegada en incrementos de 5 minutos  
✅ Compañía aérea con autocompletado  

---

## 📁 **ARCHIVOS IMPORTANTES**

```
├── index.html              # Aplicación principal
├── SINCRONIZACION.md       # Guía de sincronización
├── firebase-config-example.js  # Ejemplo de config Firebase
└── README.md               # Este archivo
```

---

## 🔧 **TECNOLOGÍAS**

- HTML5
- CSS3
- JavaScript (Vanilla)
- Font Awesome (Iconos)
- Firebase (Opcional para sincronización)

---

## 🌐 **REQUISITOS**

- Navegador web moderno (Chrome, Firefox, Safari, Edge)
- Python 3.x (para servidor local)
- Internet (si usas Firebase)

---

## 📖 **DOCUMENTACIÓN**

Para más detalles sobre sincronización y configuración, lee:
- **`SINCRONIZACION.md`** - Guía completa de opciones de sincronización

---

## 💡 **TIPS**

- Los datos se guardan automáticamente en localStorage
- Puedes editar los nombres de los pasajeros haciendo clic en el icono de lápiz
- Usa los filtros para buscar vuelos rápidamente
- Los horarios aceptan minutos en incrementos de 5 (00, 05, 10, 15, etc.)

---

## 🆘 **NECESITAS AYUDA?**

1. ¿Cómo ejecutar? → Lee las instrucciones de "Inicio Rápido"
2. ¿Cómo sincronizar? → Abre `SINCRONIZACION.md`
3. ¿Cómo personalizar? → Edita `index.html` directamente

---

## 📄 **LICENCIA**

Proyecto personal - Libre para usar y modificar

---

**¿Listo para empezar? Ejecuta el servidor local y accede a http://localhost:8080** 🚀
