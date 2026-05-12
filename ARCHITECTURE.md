# SpendPilot AI — System Architecture

This document describes the high-level architecture and technical design decisions behind SpendPilot AI.

## 🏗️ Technical Stack
- **Framework**: Next.js 15 (App Router, React 19)
- **State Management**: React Hooks + LocalStorage (for persistence during the multi-step audit)
- **Styling**: Tailwind CSS 4.0 + Framer Motion (for cinematic animations)
- **Visualization**: Recharts (Customized for premium dark-mode aesthetic)
- **Database**: Supabase (PostgreSQL)
- **Persistence Layer**: Custom API Routes with Supabase JS client integration

## 📂 System Components

### 1. The Audit Engine (`src/lib/auditEngine.ts`)
The core "brain" of the application. It operates on a set of deterministic rules defined in `constants.ts`:
- **Redundancy Detection**: Compares tools within the same category (e.g., Cursor vs. Copilot).
- **Seat Optimization**: Analyzes the ratio of seats to team size and current usage patterns.
- **Plan Benchmarking**: Compares the user's current plan against the "Ideal" plan for their company stage (Seed vs. Series A).

### 2. Multi-Step Audit Form (`src/components/audit/`)
Uses a localized state machine to handle transitions between tool selection and configuration. 
- **Live Feedback**: The `LiveSidebar` component listens to the form state to provide real-time savings previews before the audit is even submitted.

### 3. Cinematic Loading Layer (`src/app/analyzing/`)
A deliberate "speed bump" designed to build trust. It visualizes the compute process using Framer Motion orbs and a terminal-style log system, mimicking a deep AI analysis.

### 4. Results Dashboard (`src/app/results/`)
The primary value-delivery layer. It aggregates the audit results into:
- **Efficiency Score**: A weighted average of spend vs. benchmark.
- **Optimization Roadmap**: A prioritized list of actionable recommendations.
- **Growth Capital Forecast**: Translates raw dollar savings into business runway.

### 5. Backend Persistence (`src/app/api/`)
Handles the transition from client-side data to shared reports:
- `POST /api/audit`: Persists results and returns a UUID/Share Token.
- `GET /api/report/[id]`: Serves data to the Public Report view with dynamic OG metadata generation.

## 🔒 Security & Privacy
- **No-Auth First**: Designed to reduce friction while keeping data anonymous.
- **Differential Privacy**: Conceptually implemented by redacting specific seat IDs and focusing on aggregate spend patterns in shared reports.
- **Row Level Security**: Supabase RLS ensures that public reports are read-only and leads are write-only from the client.
