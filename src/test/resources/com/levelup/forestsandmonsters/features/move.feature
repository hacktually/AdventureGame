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
            | 0 | 0 | NORTH | 4 | 0 | 0 | 23 |
            | 0 | 0 | WEST | 5 | 1 | 0 | 23 |
            | 0 | 0 | WEST | 3 | 2 | 0 | 15 |
            | 0 | 0 | WEST | 1 | 9 | 0 | 11 |
            | 0 | 0 | WEST | 7 | 2 | 0 | 2 |
            | 0 | 0 | WEST | 8 | 3 | 1 | 12 |
            | 0 | 0 | WEST | 1 | 8 | 0 | 3 |
            | 0 | 0 | WEST | 9 | 0 | 0 | 2 |
            | 0 | 0 | WEST | 22 | 0 | 0 | 23 |
            | 0 | 0 | WEST | 22 | 0 | 0 | 23 |
            | 0 | 0 | WEST | 22 | 0 | 0 | 23 |
            | 0 | 0 | WEST | 22 | 0 | 0 | 23 |
            | 0 | 0 | WEST | 22 | 0 | 0 | 23 |
            | 0 | 0 | WEST | 22 | 0 | 0 | 23 |
            | 0 | 0 | WEST | 22 | 0 | 0 | 23 |
            | 0 | 0 | WEST | 22 | 0 | 0 | 23 |
