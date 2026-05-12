# SpendPilot AI — AI Spend Audit Platform

SpendPilot AI is a production-grade SaaS platform designed to audit and optimize AI infrastructure spend for startups and engineering teams.

## 🚀 Features

- **Cinematic Audit Flow**: A multi-stage analysis experience with an animated "Analysis Orb" and terminal logs.
- **Rule-Based Audit Engine**: Sophisticated logic that detects redundant subscriptions and suggests plan optimizations.
- **Interactive Results Dashboard**: Efficiency gauges, spend charts, and prioritized recommendations.
- **Public Report Sharing**: Shareable, privacy-aware reports for stakeholders.
- **Lead Capture**: Integrated strategy roadmap requests.

## 🛠️ Tech Stack

- **Framework**: Next.js 15 (App Router)
- **Language**: TypeScript
- **Styling**: Tailwind CSS + Shadcn/UI
- **Animations**: Framer Motion
- **Charts**: Recharts
- **Icons**: Lucide React
- **Database**: Supabase (Integration ready)

## 📦 Getting Started

### 1. Install Dependencies
```bash
npm install
```

### 2. Environment Setup
Create a `.env.local` file based on `.env.example`:
```env
NEXT_PUBLIC_SUPABASE_URL=your_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_key
```

### 3. Run Development Server
```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) to view the application.

## 🏗️ Project Structure

- `src/app`: Pages and API routes.
- `src/components`: UI components (layout, landing, audit, results).
- `src/lib`: Core logic (audit engine, constants).
- `src/hooks`: Custom React hooks.
- `src/types`: TypeScript definitions.

## 📄 License
Built by Credex. All rights reserved.
