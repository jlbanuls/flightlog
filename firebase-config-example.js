// ========================================
// CONFIGURACIÓN DE FIREBASE - EJEMPLO
// ========================================
//
// INSTRUCCIONES:
// 1. Ve a https://console.firebase.google.com
// 2. Crea un nuevo proyecto llamado "FlightLog"
// 3. Ve a "Mi aplicaciones" → "Añadir app" → "Web"
// 4. Copia la configuración que te proporciona Firebase
// 5. Reemplaza los valores de abajo con los tuyos
// 6. Guarda este archivo como "firebase-config.js"
//

// Tu configuración de Firebase (REEMPLAZA ESTOS VALORES)
const firebaseConfig = {
  apiKey: "AIzaSyD...",                           // Tu API Key
  authDomain: "flightlog-xxxxx.firebaseapp.com",  // Tu Auth Domain
  databaseURL: "https://flightlog-xxxxx.firebaseio.com", // Tu Database URL
  projectId: "flightlog-xxxxx",                   // Tu Project ID
  storageBucket: "flightlog-xxxxx.appspot.com",   // Tu Storage Bucket
  messagingSenderId: "123456789",                 // Tu Sender ID
  appId: "1:123456789:web:abcdef..."              // Tu App ID
};

// Inicializar Firebase
firebase.initializeApp(firebaseConfig);
const db = firebase.database();

// ========================================
// CÓMO OBTENER TUS CREDENCIALES:
// ========================================
//
// 1. En Firebase Console → Engranaje (Configuración)
// 2. "Mi aplicaciones" → tu app web
// 3. Copia todo el objeto firebaseConfig
// 4. Pega aquí reemplazando los valores anteriores
//

console.log("Firebase configurado correctamente");
