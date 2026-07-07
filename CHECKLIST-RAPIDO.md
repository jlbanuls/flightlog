# ✅ CHECKLIST RÁPIDO - VERCEL + FIREBASE

## 📋 LISTA DE VERIFICACIÓN

Marca cada paso conforme lo completes:

### ANTES DE EMPEZAR

- [ ] He instalado Git: https://git-scm.com/download/win
- [ ] Tengo cuenta GitHub: https://github.com/signup
- [ ] Tengo cuenta Vercel: https://vercel.com/signup
- [ ] Tengo cuenta Firebase: https://firebase.google.com

---

### PASO 1: PREPARAR GIT (10 minutos)

```powershell
cd C:\Users\jlban\Documents\Cloude\Aplicacion\ de\ vuelos
```

**Opción A - Automático (Recomendado):**
```powershell
powershell -ExecutionPolicy Bypass -File setup-git.ps1
```

**Opción B - Manual:**
```powershell
git init
git config user.name "Tu Nombre"
git config user.email "tu@email.com"
git add .
git commit -m "Initial commit: FlightLog application"
```

- [ ] Git inicializado
- [ ] Primer commit hecho

---

### PASO 2: CREAR REPOSITORIO EN GITHUB (5 minutos)

1. Ve a https://github.com/new
2. Nombre: `flightlog`
3. Públic/Private: **Público**
4. Haz clic en "Create repository"

- [ ] Repositorio creado en GitHub

---

### PASO 3: CONECTAR PC CON GITHUB (5 minutos)

```powershell
git remote add origin https://github.com/TU_USUARIO/flightlog.git
git branch -M main
git push -u origin main
```

- [ ] Repositorio conectado
- [ ] Código subido a GitHub

---

### PASO 4: CONFIGURAR FIREBASE (15 minutos)

**Firebase Console: https://console.firebase.google.com**

1. Crear proyecto: `flightlog`
   - [ ] Proyecto creado

2. Crear Realtime Database
   - [ ] Database creada (europe-west1)
   - [ ] Modo prueba activado

3. Obtener credenciales
   - [ ] firebaseConfig copiado
   - [ ] Anotado en algún lugar seguro

4. Configurar reglas (copy-paste):
```json
{
  "rules": {
    ".read": true,
    ".write": true
  }
}
```
   - [ ] Reglas publicadas

---

### PASO 5: ACTUALIZAR index.html (5 minutos)

En `index.html`, busca `const app = new FlightManager();`

Reemplázalo por:
```javascript
const firebaseConfig = {
  apiKey: "AQUI_TU_API_KEY",
  authDomain: "flightlog-xxxxx.firebaseapp.com",
  databaseURL: "https://flightlog-xxxxx.firebaseio.com",
  projectId: "flightlog-xxxxx",
  storageBucket: "flightlog-xxxxx.appspot.com",
  messagingSenderId: "123456789",
  appId: "1:123456789:web:abcdef..."
};

if (!window.firebase) {
  console.error("Firebase no está cargado");
} else {
  firebase.initializeApp(firebaseConfig);
  window.db = firebase.database();
}

const app = new FlightManager();
```

- [ ] index.html actualizado con Firebase
- [ ] firebaseConfig correcto

---

### PASO 6: SUBIR A GITHUB (5 minutos)

```powershell
git add .
git commit -m "Add Firebase configuration"
git push
```

- [ ] Cambios subidos a GitHub

---

### PASO 7: DESPLEGAR EN VERCEL (10 minutos)

1. Ve a https://vercel.com/dashboard
2. Haz clic en "Add New..." → "Project"
3. Selecciona tu repositorio `flightlog`
4. Haz clic en "Deploy"
5. Espera 2-3 minutos

- [ ] Proyecto creado en Vercel
- [ ] Desplegue completado
- [ ] URL obtenido

---

### PASO 8: VERIFICAR (5 minutos)

1. Abre tu URL: `https://flightlog-xxxxx.vercel.app`
2. Crea un vuelo
3. Abre en otro navegador o dispositivo
4. Verifica que se sincroniza

- [ ] App funciona en URL pública
- [ ] Sincronización funciona
- [ ] Los datos aparecen en tiempo real

---

## 📊 RESUMEN

| Paso | Tiempo | Estado |
|------|--------|--------|
| 1. Git | 10 min | ⏳ |
| 2. GitHub | 5 min | ⏳ |
| 3. Conectar | 5 min | ⏳ |
| 4. Firebase | 15 min | ⏳ |
| 5. index.html | 5 min | ⏳ |
| 6. Push | 5 min | ⏳ |
| 7. Vercel | 10 min | ⏳ |
| 8. Verificar | 5 min | ⏳ |
| **TOTAL** | **60 min** | ⏳ |

---

## 🎯 RESULTADO FINAL

Una vez completado tendrás:

✅ **URL pública**: `https://flightlog-xxxxx.vercel.app`
✅ **Sincronización en tiempo real** entre dispositivos
✅ **Datos en la nube** con Firebase
✅ **Acceso desde cualquier lugar** sin servidor local
✅ **Gratis completamente** 🎉

---

## 🆘 AYUDA RÁPIDA

**¿No sé qué poner en firebaseConfig?**
→ Lee `VERCEL-FIREBASE-SETUP.md` paso 4.3

**¿Git me pide contraseña?**
→ Usa token de GitHub en lugar de contraseña
→ Ve a GitHub → Settings → Developer settings → Personal access tokens

**¿Mi URL no funciona?**
→ Verifica que Vercel terminó de desplegar (mostrará "Production")
→ Espera 1-2 minutos más

**¿Los datos no se sincronizan?**
→ Verifica `firebaseConfig` en index.html
→ Verifica que Firebase Database está habilitada
→ Abre consola del navegador (F12) y busca errores

---

## 📞 CONTACTO CON SOPORTE

Si tienes problemas:

- **Vercel Help**: https://vercel.com/docs
- **Firebase Help**: https://firebase.google.com/docs
- **GitHub Help**: https://docs.github.com

---

**¿Listo para empezar? ¡Comienza por el PASO 1!** 🚀
