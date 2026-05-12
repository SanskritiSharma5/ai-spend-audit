-- SpendPilot AI Supabase Schema

-- 1. Audits Table
create table public.audits (
  id uuid default gen_random_uuid() primary key,
  share_token text not null unique,
  created_at timestamp with time zone default timezone('utc'::text, now()) not null,
  total_spend numeric not null,
  estimated_savings numeric not null,
  annual_savings numeric not null,
  efficiency_score integer not null,
  benchmark_multiplier numeric not null,
  tools_data jsonb not null, -- Stores the ToolEntry[]
  recommendations jsonb not null, -- Stores the Recommendation[]
  spend_by_tool jsonb not null,
  ai_summary text not null
);

-- 2. Leads Table
create table public.leads (
  id uuid default gen_random_uuid() primary key,
  created_at timestamp with time zone default timezone('utc'::text, now()) not null,
  email text not null,
  company_name text,
  audit_id uuid references public.audits(id),
  status text default 'new' -- new, contacted, qualified
);

-- Enable Row Level Security (RLS)
alter table public.audits enable row level security;
alter table public.leads enable row level security;

-- Public read access for audits (using share_token or id)
create policy "Public read audits" 
on public.audits for select 
using (true);

-- Public insert access for audits
create policy "Public insert audits" 
on public.audits for insert 
with check (true);

-- Public insert access for leads
create policy "Public insert leads" 
on public.leads for insert 
with check (true);
