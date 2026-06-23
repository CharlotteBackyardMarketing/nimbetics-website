-- Create inquiries table
create table if not exists inquiries (
  id uuid default gen_random_uuid() primary key,
  created_at timestamptz default now() not null,
  name text not null,
  email text not null,
  phone text,
  vertical text,
  message text not null
);

-- Enable Row Level Security
alter table inquiries enable row level security;

-- Public can insert (for form submissions)
create policy "Allow public insert" on inquiries
  for insert to anon with check (true);

-- Authenticated users can read all
create policy "Allow auth read" on inquiries
  for select to authenticated using (true);
