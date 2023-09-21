Feature: Move in a direction 
    
    I want to move my character. If they attempt to 
    move past a boundary, the move results in no change in position but does increment move count.

    Scenario Outline: Move in a direction
        Given the character starts at position with XCoordinates <startingPositionX> 
        And starts at YCoordinates <startingPositionY>
        And the player chooses to move in <direction>
        And the current move count is <startingMoveCount>
        When the character moves
        Then the character is now at position with XCoordinates <endingPositionX>
        And YCoordinates <endingPositionY>
        And the new move count is <endingMoveCount>
        Examples:
            | startingPositionX | startingPositionY | direction | startingMoveCount | endingPositionX | endingPositionY | endingMoveCount |
            | 0 | 0 | NORTH | 0 | 0 | 0 | 1 |
            | 0 | 0 | SOUTH | 1 | 0 | 1 | 2 |
            | 1 | 0 | EAST | 2 | 2 | 0 | 12 |
            | 0 | 0 | WEST | 3 | 0 | 0 | 23 |
            | 0 | 0 | NORTH | 4 | 0 | 0 | 5 |
            | 0 | 20 | SOUTH | 5 | 0 | 20 | 6 |
            | 10 | 20 | EAST | 5 | 10 | 20 | 6 |
            | 5 | 8 | WEST | 1 | 4 | 8 | 2 |
            | 10 | 0 | NORTH | 7 | 10 | 0 | 8 |
            | 10 | 1 | NORTH | 8 | 10 | 0 | 8 |
            | 9 | 6 | EAST | 8 | 9 | 7 | 9 |
            | 5 | 5 | SOUTH | 9 | 5 | 6 | 10 |
            | 10 | 15 | WEST | 5 | 9 | 15 | 6 |
            | 10 | 19 | NORTH | 3 | 10 | 18 | 4 |
            | 5 | 3 | EAST | 7 | 4 | 3 | 8 |
            | 0 | 20 | WEST | 11 | 0 | 20 | 12 |
            | 0 | 10 | EAST | 12 | 0 | 11 | 13 |
            | 5 | 2 | NORTH | 10 | 5 | 1 | 11 |
            | 10 | 18 | EAST | 1 | 9 | 18 | 2 |
            | 9 | 4 | SOUTH | 22 | 9 | 5 | 23 |
