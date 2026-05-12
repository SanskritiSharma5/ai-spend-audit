# SpendPilot AI — AI Prompt Strategy

This document outlines the internal AI prompts used (or planned) for the analysis and summary generation.

## 1. Audit Summary Generation
Used to generate the `aiSummary` field in the audit result.

**System Prompt**:
> You are a senior SaaS Procurement Specialist at a top-tier VC firm. Your goal is to analyze a startup's AI tool spend and provide a punchy, financially intelligent summary. Focus on "Efficiency" and "Redundancy."

**User Prompt**:
> Analyze the following tool stack: {{tools}}. 
> Total Spend: {{spend}}. 
> Potential Savings: {{savings}}. 
> Benchmark Multiplier: {{benchmark}}.
> 
> Provide a 2-sentence summary that sounds professional, authoritative, and growth-focused. Use phrases like "capital reallocation" and "seat optimization."

## 2. Recommendation Logic (Future AI Version)
For moving from rule-based to LLM-based recommendations.

**Prompt**:
> You are provided with a tool name, plan, and seats. Based on market knowledge as of 2024, identify if a better plan exists for a company at {{stage}}. 
> If the user has both ChatGPT and Claude for a team of 10, recommend consolidating to one unless they specify different use cases. 
> Output format: JSON { "recommendedPlan": string, "savings": number, "priority": "high"|"medium"|"low" }

## 3. OG Image Text Generation
Used to create the dynamic copy for social sharing previews.

**Prompt**:
> Create a short, click-worthy headline for a LinkedIn post sharing an AI spend audit result that found {{savings}} in savings. 
> Example: "We found $12k in hidden AI waste." 
> Keep it under 60 characters.
