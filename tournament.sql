-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Drop database name 'tournament' if it exists
DROP DATABASE IF EXISTS tournament;

-- Create a database named 'Tournament'
CREATE DATABASE tournament; 

-- Connect to the tournament database
\c tournament

-- Drop all tables and views if they exist
DROP TABLE IF EXISTS Players CASCADE;
DROP tABLE IF EXISTS Matches CASCADE;
DROP VIEW IF EXISTS standings CASCADE;


-- Create a table named 'Players'
CREATE TABLE Players(
id serial primary key,
name varchar);

-- Create a table named 'Matches'
CREATE TABLE Matches(
winner serial references Players (id),
loser serial references Players (id),
result int);

-- Create a view named 'standings' - this will return a list of the players and their win records, sorted by wins
CREATE VIEW standings as
select players.id, players.name, coalesce(sum(matches.result),0) as wins, count(matches.result) as games from players left join matches on players.id=matches.winner group by players.id order by wins desc;