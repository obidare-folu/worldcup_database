#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

FILE_NAME="games.csv"

# Insert data into teams table
declare -A TEAMS
TEAM_VALUES=""

{
  read HEADER
  while IFS=, read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
  do
    # Insert into teams table FROM WINNER, OPPONENT
    # Check if winner is already in list of teams to add
    if [[ -z ${TEAMS[$WINNER]} ]]
    then
      TEAMS[$WINNER]=1
      TEAM_VALUES="$TEAM_VALUES('$WINNER'),"
    fi
    # Check if opponent is already in list of teams to add
    if [[ -z ${TEAMS[$OPPONENT]} ]]
    then
      TEAMS[$OPPONENT]=1
      TEAM_VALUES="$TEAM_VALUES('$OPPONENT'),"
    fi
  done
} < $FILE_NAME

TEAM_VALUES="${TEAM_VALUES%,}"
TEAM_INSERT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES$TEAM_VALUES")

# Insert data into games table
GAMES_VALUES=""
{
  read HEADER  # This reads and discards the first line
  while IFS=, read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
  do
    # Insert into games values of the form (year, round, winner_id, opponent_id, winner_goals, opponent_goals)
    # Retrieve winner id and opponent id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")

    if [[ -n "$WINNER_ID" && -n "$OPPONENT_ID" ]]
    then
      GAMES_VALUES="$GAMES_VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS),"
    fi
  done
} < $FILE_NAME

GAMES_VALUES="${GAMES_VALUES%,}"
GAMES_INSERT_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES$GAMES_VALUES")

# echo "$TEAM_INSERT_RESULT"
# echo "$GAMES_INSERT_RESULT"

# $PSQL "SELECT * FROM teams"
# $PSQL "SELECT * FROM games"

# $PSQL "TRUNCATE teams, games"
