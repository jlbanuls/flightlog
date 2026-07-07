# ========================================
# SCRIPT DE CONFIGURACIÓN AUTOMÁTICA DE GIT
# ========================================
#
# INSTRUCCIONES:
# 1. Abre PowerShell como Administrador
# 2. Navega a tu carpeta del proyecto
# 3. Ejecuta: powershell -ExecutionPolicy Bypass -File setup-git.ps1
#

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "CONFIGURACIÓN AUTOMÁTICA - FLIGHTLOG" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Verificar si Git está instalado
Write-Host "Verificando Git..." -ForegroundColor Yellow
$gitCheck = git --version 2>$null
if ($gitCheck) {
    Write-Host "✅ Git está instalado: $gitCheck" -ForegroundColor Green
} else {
    Write-Host "❌ Git no está instalado. Instálalo desde: https://git-scm.com/download/win" -ForegroundColor Red
    exit
}

Write-Host ""

# Solicitar información
Write-Host "Ingresa tu nombre para Git:" -ForegroundColor Yellow
$gitName = Read-Host "Nombre"

Write-Host "Ingresa tu email para Git:" -ForegroundColor Yellow
$gitEmail = Read-Host "Email"

Write-Host "Ingresa tu usuario de GitHub:" -ForegroundColor Yellow
$githubUser = Read-Host "Usuario GitHub"

Write-Host ""
Write-Host "Configurando Git..." -ForegroundColor Yellow

# Configurar Git globalmente
git config --global user.name "$gitName"
git config --global user.email "$gitEmail"

Write-Host "✅ Git configurado con:" -ForegroundColor Green
Write-Host "   Nombre: $gitName"
Write-Host "   Email: $gitEmail"

Write-Host ""
Write-Host "Inicializando repositorio local..." -ForegroundColor Yellow

# Crear .gitignore
@"
node_modules/
.env
.DS_Store
*.log
.firebase/
.vercel/
"@ | Out-File -Encoding UTF8 ".gitignore"

# Inicializar git
git init
git add .
git commit -m "Initial commit: FlightLog application"

Write-Host "✅ Repositorio local creado" -ForegroundColor Green

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "PRÓXIMOS PASOS" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "1️⃣  Ve a https://github.com/new" -ForegroundColor Cyan
Write-Host "   Crea un repositorio llamado 'flightlog'" -ForegroundColor Cyan
Write-Host ""
Write-Host "2️⃣  Una vez creado, ejecuta:" -ForegroundColor Cyan
Write-Host "   git remote add origin https://github.com/$githubUser/flightlog.git" -ForegroundColor Yellow
Write-Host "   git branch -M main" -ForegroundColor Yellow
Write-Host "   git push -u origin main" -ForegroundColor Yellow
Write-Host ""
Write-Host "3️⃣  Luego sigue el archivo:" -ForegroundColor Cyan
Write-Host "   VERCEL-FIREBASE-SETUP.md" -ForegroundColor Green
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan

Read-Host "Presiona Enter para terminar"
