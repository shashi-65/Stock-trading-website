-- SQLite
CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, username TEXT NOT NULL, hash TEXT NOT NULL, cash NUMERIC NOT NULL DEFAULT 10000.00);
CREATE TABLE sequence(name,seq);
CREATE unique INDEX username on users(username);
CREATE TABLE transactions(
id INTEGER,
user_id INTEGER,
transacted DEFAULT CURRENT_TIMESTAMP NOT NULL,
company TEXT NOT NULL,
symbol TEXT NOT NULL,
shares NUMERIC NOT NULL,
price NUMERIC NOT NULL,
PRIMARY KEY (id),
Foreign key (user_id) references users(id) );