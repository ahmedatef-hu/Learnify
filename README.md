# 🎓 Learnify - AI-Powered Learning Platform

A comprehensive educational platform that combines student skill exchange with AI-powered study assistance.

## ✨ Features

### 🤖 AI Study Assistant
- **Smart Exam Generation**: AI creates custom exams from your study materials
- **PDF Text Extraction**: Upload PDFs and automatically extract content for AI processing
- **Intelligent Chat Bot**: Get personalized help and explanations
- **Multiple Question Types**: Fill-in-the-blank, multiple choice, and comprehension questions

### 📚 Study Management
- **Material Upload**: Support for PDF, Word, PowerPoint, and text files
- **Study Planner**: Organize subjects and track progress
- **Progress Tracking**: Monitor your learning journey
- **Revision Tools**: Interactive revision sessions with AI assistance

### 👥 Student Network
- **Skill Exchange**: Connect students who want to learn with those who can teach
- **Profile Management**: Showcase your skills and learning goals
- **Student Directory**: Find study partners and mentors

## 🚀 Tech Stack

### Frontend
- **React 19** with Vite
- **Tailwind CSS** for styling
- **React Router** for navigation
- **PDF.js** for PDF processing
- **AOS** for animations

### Backend
- **Node.js** with Express
- **Google Gemini AI** for intelligent question generation
- **CORS** enabled for cross-origin requests
- **Vercel** deployment ready

## 🛠️ Installation & Setup

### Prerequisites
- Node.js 18+ 
- npm or yarn

### Local Development

1. **Clone the repository**
```bash
git clone <repository-url>
cd learnify
```

2. **Install Frontend Dependencies**
```bash
cd learnify-react
npm install
```

3. **Install Backend Dependencies**
```bash
cd ../backend
npm install
```

4. **Environment Setup**

Frontend (.env in learnify-react/):
```env
VITE_API_URL=http://localhost:5000/api
```

Backend (.env in backend/):
```env
PORT=5000
NODE_ENV=development
GEMINI_API_KEY=your_gemini_api_key_here
```

5. **Start Development Servers**

Backend:
```bash
cd backend
npm start
```

Frontend:
```bash
cd learnify-react
npm run dev
```

## 🌐 Deployment

### Frontend (Netlify)
- Automatically deploys from main branch
- Build command: `npm ci && npm run build`
- Publish directory: `learnify-react/dist`

### Backend (Vercel)
- Deployed at: https://learnify-back-end.vercel.app
- Serverless functions with Node.js runtime

## 📁 Project Structure

```
learnify/
├── learnify-react/          # Frontend React application
│   ├── src/
│   │   ├── components/      # Reusable UI components
│   │   ├── pages/          # Page components
│   │   ├── services/       # API client services
│   │   ├── utils/          # Utility functions
│   │   └── assets/         # Static assets
│   ├── public/             # Public assets
│   └── dist/               # Build output
├── backend/                # Backend API server
│   ├── server.js           # Main server file
│   ├── package.json        # Backend dependencies
│   └── vercel.json         # Vercel deployment config
├── netlify.toml            # Netlify deployment config
└── README.md               # Project documentation
```

## 🔧 Key Features Implementation

### AI Exam Generation
- Uses Google Gemini AI to analyze study materials
- Generates contextual questions based on uploaded content
- Supports multiple file formats (PDF, Word, PowerPoint, Text)
- Randomized question selection for varied practice

### PDF Processing
- Client-side PDF text extraction using PDF.js
- Automatic content parsing for AI processing
- Support for multi-page documents
- Fallback handling for protected or image-based PDFs

### Study Material Management
- Local storage for offline access
- File upload with type detection
- Content validation and error handling
- Progress tracking and analytics

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Google Gemini AI for intelligent content generation
- PDF.js for client-side PDF processing
- Tailwind CSS for beautiful UI components
- Vercel and Netlify for seamless deployment

## 📞 Support

For support, email [your-email] or create an issue in this repository.

---

Made with ❤️ for students, by students