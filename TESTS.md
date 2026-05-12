# SpendPilot AI — Testing Documentation

This document outlines the automated testing strategy and instructions for SpendPilot AI, specifically focusing on the core audit engine logic.

## 🧪 Testing Framework
- **Framework**: [Vitest](https://vitest.dev/)
- **Environment**: Node.js
- **Assertion Style**: BDD (describe/it/expect)

## 🚀 Running Tests
To execute the test suite locally:

```bash
npm run test
```

To run tests in watch mode:
```bash
npx vitest
```

## 📊 Test Coverage (auditEngine.ts)
We maintain high test coverage for the core business logic to ensure financial accuracy.

| Test Case | Description | Validated Scenarios |
| :--- | :--- | :--- |
| **Plan Downgrade** | Recommends lower-tier plans for underutilized features. | ChatGPT Team → Plus optimization. |
| **Duplicate Detection** | Identifies overlapping AI IDE subscriptions. | Cursor + GitHub Copilot consolidation. |
| **API Spend Optimization** | Detects inefficiencies in direct API usage. | 20% savings on high OpenAI API spend. |
| **Financial Accuracy** | Ensures all monthly/annual math is correct. | Annual savings calculation logic. |
| **Efficiency Scoring** | Validates the score generation algorithm. | Low score for high savings potential. |

## ⚙️ CI/CD Integration
Automated tests are executed on every push to the `main` branch via GitHub Actions (`.github/workflows/ci.yml`). Merges are blocked if any tests fail.

## 📁 Directory Structure
- `src/lib/auditEngine.ts`: Source logic.
- `src/lib/__tests__/auditEngine.test.ts`: Test implementation.
