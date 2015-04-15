Udacity course ud197 - Intro To Relational Databases
____________________________________________________

Final Project Specification - 'Tournament Results'

Develop a database schema to store details of a games matches between players.
Then write a Python module to rank the players and pair them up in matches in a tournament.

Files:

tournament.sql
Contains the database schema, in the form of SQL create table commands

tournament.py
Contains the code for your tournament module.

tournament_test.py
Contains test functions that will test the functions you’ve written in intournament.py

___________________________________________________


Requirements:
The latest vagrant build for the Udacity tournament project.

-------------->>>Instructions<<<-------------------

*Start Vagrant
*Launch Gitbash or CMD and browse to the vagrant folder
*Type 'vagrant up'
*Once the virtual machine has finished loading 
*Type 'vagrant ssh'
*Change directory by typing 'cd /vagrant/tournament'
*Open 'PSQL' and run the tournament.sql by typing '\i tournament.sql'
*OR
*Copy the contents of tournament.sql and type them into the CMD line
*Type \q to quit out of PSQL
*From the directory '/vagrant/tournament'
*Type 'python tournament_test.py' to test the functions
*See test results and edit functions in 'tournament.py' if needed

If all 8 tests pass you will see..

Success! All tests pass!
vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ python tournament_test.py
1. Old matches can be deleted.
2. Player records can be deleted.
3. After deleting, countPlayers() returns zero.
4. After registering a player, countPlayers() returns 1.
5. Players can be registered and deleted.
6. Newly registered players appear in the standings with no matches.
7. After a match, players have updated standings.
8. After one match, players with one win are paired.
Success! All tests pass!
