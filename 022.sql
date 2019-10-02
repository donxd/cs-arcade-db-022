/*Please add ; after each select statement*/
CREATE PROCEDURE soccerPlayers()
BEGIN
    -- SELECT GROUP_CONCAT(CONCAT(first_name, ' ', surname, ' #', player_number) SEPARATOR ';') FROM soccer_team ORDER BY player_number;
    SELECT 
        GROUP_CONCAT(CONCAT(dataPlayers.first_name, ' ', dataPlayers.surname, ' #', dataPlayers.player_number) ORDER BY player_number SEPARATOR '; ') as players
    FROM (
        SELECT 
            first_name,
            surname,
            player_number
        FROM 
            soccer_team 
    ) as dataPlayers;
END