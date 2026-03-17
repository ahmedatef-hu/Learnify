@echo off
echo 🎓 Starting Learnify - AI-Powered Learning Platform
echo ==================================================

:: Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js is not installed. Please install Node.js 16+ first.
    pause
    exit /b 1
)

echo ✅ Node.js found
node --version

:: Start backend
echo 🔧 Setting up backend...
cd backend

:: Install dependencies if node_modules doesn't exist
if not exist "node_modules" (
    echo 📦 Installing backend dependencies...
    call npm install
)

:: Create .env if it doesn't exist
if not exist ".env" (
    echo ⚙️ Creating backend .env file...
    copy .env.example .env
)

echo 🚀 Starting backend server on http://localhost:5000
start "Learnify Backend" cmd /k "npm run dev"

:: Wait a moment for backend to start
timeout /t 3 /nobreak >nul

cd ..

:: Start frontend
echo 🔧 Setting up frontend...
cd learnify-react

:: Install dependencies if node_modules doesn't exist
if not exist "node_modules" (
    echo 📦 Installing frontend dependencies...
    call npm install
)

:: Create .env if it doesn't exist
if not exist ".env" (
    echo ⚙️ Creating frontend .env file...
    echo REACT_APP_API_URL=http://localhost:5000/api > .env
)

echo 🚀 Starting frontend server on http://localhost:5173
start "Learnify Frontend" cmd /k "npm run dev"

cd ..

echo.
echo 🎉 Learnify is starting up!
echo 📱 Frontend: http://localhost:5173
echo 🔧 Backend:  http://localhost:5000
echo.
echo 📚 Features available:
echo    • Smart Study Planner with AI integration
echo    • Revision Chat with AI hints
echo    • Dynamic Quiz Generation
echo    • Automatic planner updates based on scores
echo.
echo 💡 Both servers are running in separate windows
echo 🛑 Close the terminal windows to stop the servers
echo.
pause