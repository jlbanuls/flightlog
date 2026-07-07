# 📱 GUÍA DE SINCRONIZACIÓN - FlightLog

## 3 FORMAS DE EJECUTAR Y SINCRONIZAR

---

## ✅ **OPCIÓN 1: SERVIDOR LOCAL (Recomendado para empezar)**

### Ventajas:
- ✅ Gratis y fácil de configurar
- ✅ Funciona sin internet
- ✅ Acceso desde PC y móvil en la misma red

### Desventajas:
- ❌ NO sincroniza automáticamente entre dispositivos
- ❌ Cada dispositivo tiene sus propios datos

### Cómo hacerlo:

**Paso 1: Instalar Python (si no lo tienes)**
```
https://www.python.org/downloads/
```

**Paso 2: Abrir Terminal/PowerShell en la carpeta del proyecto**
```
cd C:\Users\jlban\Documents\Cloude\Aplicacion\ de\ vuelos
```

**Paso 3: Ejecutar el servidor**
```
python -m http.server 8080
```

**Paso 4: Acceder**
- **Desde PC**: `http://localhost:8080`
- **Desde móvil**: `http://192.168.1.X:8080`
  
  (Reemplaza X con tu IP de PC. Para encontrarla: `ipconfig` en PowerShell)

---

## 🔥 **OPCIÓN 2: FIREBASE (Sincronización en Tiempo Real) ⭐⭐⭐**

### Ventajas:
- ✅ Sincroniza automáticamente entre todos los dispositivos
- ✅ Funciona desde cualquier lugar (internet)
- ✅ Gratis hasta 100 dispositivos simultáneos
- ✅ Base de datos en la nube

### Desventajas:
- ⚠️ Requiere configuración inicial
- ⚠️ Necesita internet para funcionar

### Cómo hacerlo:

**Paso 1: Crear proyecto Firebase**

1. Ve a: https://console.firebase.google.com
2. Haz clic en "Crear un proyecto"
3. Nombre: `FlightLog`
4. Continúa aceptando todo (sin Google Analytics)
5. Espera a que cree el proyecto

**Paso 2: Obtener credenciales**

1. En la consola, haz clic en el engranaje (Configuración del proyecto)
2. Pestaña: "Mi aplicaciones"
3. Haz clic en "Añadir app" → "Web"
4. Nombre: `FlightLog Web`
5. Haz clic en "Registrar app"
6. Verás un código como este:
```javascript
const firebaseConfig = {
  apiKey: "AIzaSyD...",
  authDomain: "flightlog-xxxxx.firebaseapp.com",
  databaseURL: "https://flightlog-xxxxx.firebaseio.com",
  projectId: "flightlog-xxxxx",
  storageBucket: "flightlog-xxxxx.appspot.com",
  messagingSenderId: "123456789",
  appId: "1:123456789:web:abcdef..."
};
```

**COPIA ESTE CÓDIGO Y GUÁRDALO EN UN LUGAR SEGURO**

**Paso 3: Configurar la Base de Datos**

1. En la consola de Firebase, ve a "Realtime Database"
2. Haz clic en "Crear base de datos"
3. Selecciona: Ubicación: "europe-west1"
4. Modo seguridad: "Comenzar en modo prueba"
5. Haz clic en "Habilitado"

**Paso 4: Configurar Reglas de Seguridad**

Ve a "Reglas" y reemplaza el contenido con:
```json
{
  "rules": {
    ".read": true,
    ".write": true
  }
}
```

Publica los cambios.

**Paso 5: Integrar en tu app**

Abre `index.html` y busca esta línea (cerca del final):
```javascript
const app = new FlightManager();
```

Reemplázala con:
```javascript
// Configurar Firebase
const firebaseConfig = {
  apiKey: "TU_API_KEY",
  authDomain: "tu-proyecto.firebaseapp.com",
  databaseURL: "https://tu-proyecto.firebaseio.com",
  projectId: "tu-proyecto",
  storageBucket: "tu-proyecto.appspot.com",
  messagingSenderId: "TU_SENDER_ID",
  appId: "TU_APP_ID"
};

firebase.initializeApp(firebaseConfig);
const db = firebase.database();

// Crear instancia de FlightManager con Firebase
const app = new FlightManager(true, db);
```

---

## ☁️ **OPCIÓN 3: DESPLEGAR EN VERCEL O NETLIFY (Hosting Gratuito)**

### Ventajas:
- ✅ URL accesible desde cualquier lugar
- ✅ Sincroniza con Firebase
- ✅ Gratis

### Pasos:

1. Crea cuenta en https://vercel.com o https://netlify.com
2. Conecta tu repositorio GitHub
3. Despliega la carpeta del proyecto
4. Obtén una URL como: `https://flightlog.vercel.app`

---

## 📊 **COMPARATIVA RÁPIDA**

| Característica | Local | Firebase | Vercel+Firebase |
|---|---|---|---|
| **Sincronización** | ❌ No | ✅ Sí | ✅ Sí |
| **Múltiples dispositivos** | ❌ Datos separados | ✅ Datos compartidos | ✅ Datos compartidos |
| **Funciona sin internet** | ✅ Sí | ❌ No | ❌ No |
| **Gratis** | ✅ Sí | ✅ Sí | ✅ Sí |
| **Fácil de configurar** | ✅ Muy fácil | ⚠️ Medio | ⚠️ Medio |
| **Acceso desde cualquier lugar** | ❌ Solo red local | ✅ Sí | ✅ Sí |

---

## 🚀 **RECOMENDACIÓN**

1. **Empezar**: Usa **Opción 1 (Local)** para probar
2. **Desarrollo**: Usa **Opción 2 (Firebase)** para sincronizar entre dispositivos
3. **Producción**: Usa **Opción 3 (Vercel + Firebase)** para acceso desde cualquier lugar

---

## 🔗 **LINKS ÚTILES**

- Firebase: https://firebase.google.com
- Vercel: https://vercel.com
- Netlify: https://netlify.com
- Documentación Firebase: https://firebase.google.com/docs/database

---

## ❓ **PREGUNTAS FRECUENTES**

**P: ¿Cuál elegir si quiero sincronizar entre móvil y PC?**
R: Firebase (Opción 2). Es la más simple para sincronización.

**P: ¿Funciona sin internet?**
R: Solo la Opción 1. Las otras necesitan internet.

**P: ¿Cuál es la más segura?**
R: Vercel + Firebase (Opción 3), porque está en servidores profesionales.

**P: ¿Puedo cambiar de opción después?**
R: Sí, sin problemas. Los datos se guardan igual.

---

**¿Necesitas ayuda con alguna opción? Avísame y te guío paso a paso.**
