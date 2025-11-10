-- Create users table
create table if not exists users (
    id serial primary key,
    email varchar(255) unique not null,
    username varchar(100) unique not null,
    role varchar(255) not null,
    password varchar(255) not null,
    created_at timestamp with time zone default current_timestamp,
    updated_at timestamp with time zone default current_timestamp
);

CREATE TABLE IF NOT EXISTS world_chat_messages (
    id          BIGSERIAL PRIMARY KEY,
    user_id     BIGINT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    content     TEXT NOT NULL,
    created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    deleted_at  TIMESTAMPTZ
);