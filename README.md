# 🏥 CareSync AI - Smart Hospital Monitoring & Command Center

CareSync AI is an enterprise-grade, real-time clinical monitoring platform and AI command center designed for modern hospitals. It integrates live patient telemetry, predictive AI risk analysis, multimodal laboratory report extraction, and automated emergency notification dispatchers.

---

## 🚀 Key Features

### 1. 📊 Telemetry Command HUD
* **Live ECG Waveform Monitor:** Canvas-based interactive electrocardiogram animation simulating real-time heart rate waveforms.
* **Clinical Vitals logs:** Real-time log entries tracking SpO2, blood pressure, temperature, respiration, blood sugar, and platelet counts.
* **Hospital Bed & Ward Mapping:** Digital ward allocation tool tracking occupied beds across ICU, Cardiology, Oncology, and General Medicine wards.

### 2. 🧠 AI Clinical Prediction Engine
* **MEWS Score Deterioration Index:** Evaluates vital logs and outputs a dynamic risk score (0-100%).
* **Predicted Clinical Probabilities:** Computes likelihood statistics for:
  * Patient Deterioration Probability (%)
  * ICU Admission Requirement (%)
  * Emergency Code Blue Probability (%)
* **Tailored AI Recommendations:** Clinical advice based on vital threshold alerts and patient disease records (e.g., Cancer pain indicators, Hypoglycemia alarms).

### 3. 🔬 AI Diagnostic Lab (Multimodal File Uploader)
* **Powered by Gemini 2.5 Flash:** Upload PDF lab results, scan reports, or image charts (PNG, JPG).
* **Automated Data Extraction:** OCR and clinical reasoning scan files to extract vitals, highlight abnormalities, append items to the patient history, and trigger risk score recalculations.

### 4. 🔑 Secure Patient Portal
* **Token-Based Auth:** Instant login utilizing unique, nurse-generated alphanumeric access codes (e.g., `CS-A51165C8`).
* **Medical Timeline:** Complete historical timeline tracking admission events, clinical procedures, and diagnostic upload summaries.
* **Appointments & Pharmacy Planner:** Request appointments and run diagnosis-specific medication analyses.

### 5. 📡 Automated Notification Dispatch (Twilio REST API)
* **SMS & WhatsApp Alerts:** Broadcasts alerts to doctor/nurse devices when critical thresholds are breached (e.g. SpO2 < 92%).
* **Fallback Mock System:** Local development logs notifications to console if credentials are unconfigured.

---

## 🛠️ Technology Stack

| Layer | Technologies |
| :--- | :--- |
| **Frontend** | React, Vite, Lucide Icons, Canvas API |
| **Backend** | Node.js, Express, Socket.io, PDFKit, Docx |
| **Database** | PostgreSQL (Supabase client), Local In-Memory Fallback DB |
| **Integrations** | Google Gemini 2.5 Flash (AI REST API), Twilio REST API (SMS & WhatsApp) |

---

## ⚙️ Environment Variables Configuration

Create a `.env` file inside the `caresync-ai-backend` directory with the following variables:

```env
PORT=5000
NODE_ENV=development

# JWT Configuration
JWT_SECRET=caresync_super_secret_jwt_token_2026
JWT_EXPIRES_IN=24h

# Database Configuration (Falls back to In-Memory DB if offline/unconfigured)
DATABASE_URL=postgresql://postgres:[PASSWORD]@db.xxxx.supabase.co:5432/postgres

# Google Gemini API (Required for Diagnostic Lab OCR analysis)
GEMINI_API_KEY=your_gemini_api_key

# Twilio API (Optional, fallback mock active by default)
TWILIO_ACCOUNT_SID=your_twilio_sid_or_api_key
TWILIO_AUTH_TOKEN=your_twilio_token_or_secret
TWILIO_MAIN_ACCOUNT_SID=your_twilio_ac_sid
TWILIO_PHONE_NUMBER=your_twilio_phone_number
TWILIO_WHATSAPP_NUMBER=your_twilio_whatsapp_number
```

---

## 🚀 Getting Started

### Quick Start with Batch File
Double-click the **`CAreSync bat file.bat`** file in the root of the project. It will automatically spin up:
1. **Frontend Server** at `http://localhost:5173`
2. **Backend Server** at `http://localhost:5000`

### Manual Startup
If starting from terminal consoles, execute these commands:

#### 1. Backend Server
```bash
cd caresync-ai-backend
node src/index.js
```

#### 2. Frontend Development Server
```bash
cd caresync-ai
node node_modules/vite/bin/vite.js
```

---

## 🔑 Default Credentials (Testing)

Use these accounts to sign into the **Trauma Command Center**:

* **Doctor Account:**
  * **Email:** `doctor.jenkins@caresync.ai`
  * **Password:** `password123`
  * **Permissions:** Access patient registry, update clinical notes, prescribe medications, discharge patients.

* **Nurse Account:**
  * **Email:** `nurse.carter@caresync.ai`
  * **Password:** `password123`
  * **Permissions:** Log live vitals telemetry, generate patient portal access tokens.

* **Admin Account:**
  * **Email:** `admin.chief@caresync.ai`
  * **Password:** `password123`
  * **Permissions:** Full system operations, admitting/deleting patients, staff assignments.
