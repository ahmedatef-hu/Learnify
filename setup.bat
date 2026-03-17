@echo off
echo 🎓 Learnify Initial Setup
echo ========================

:: Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js is not installed. Please install Node.js 16+ first.
    echo 💡 Download from: https://nodejs.org/
    pause
    exit /b 1
)

echo ✅ Node.js found
node --version

:: Setup backend
echo.
echo 🔧 Setting up backend...
cd backend

echo 📦 Installing backend dependencies...
call npm install
if %errorlevel% neq 0 (
    echo ❌ Failed to install backend dependencies
    pause
    exit /b 1
)

echo ⚙️ Creating backend .env file...
if not exist ".env" (
    copy .env.example .env
    echo ✅ Backend .env created
) else (
    echo ℹ️ Backend .env already exists
)

cd ..

:: Setup frontend
echo.
echo 🔧 Setting up frontend...
cd learnify-react

echo 📦 Installing frontend dependencies...
call npm install
if %errorlevel% neq 0 (
    echo ❌ Failed to install frontend dependencies
    pause
    exit /b 1
)

echo ⚙️ Creating frontend .env file...
if not exist ".env" (
    echo REACT_APP_API_URL=http://localhost:5000/api > .env
    echo ✅ Frontend .env created
) else (
    echo ℹ️ Frontend .env already exists
)

cd ..

echo.
echo 🎉 Setup completed successfully!
echo.
echo 📚 Next steps:
echo    1. Run 'start.bat' to start both servers
echo    2. Open http://localhost:5173 in your browser
echo    3. Go to Study Planner and try the revision chat
echo    4. Generate a quiz and see automatic planner updates
echo.
echo 📖 Documentation:
echo    • README.md - Complete project overview
echo    • QUICK_START.md - Quick start guide
echo    • INTEGRATION_GUIDE.md - Detailed integration guide
echo    • BACKEND_API_SPEC.md - API documentation
echo.
pause