Feature: Move in a direction

I want to move my character. If they attempt to move past a boundary, the move results in no change in position.
    Scenario Outline: Move in a direction

Scenario Outline: Move in a direction
    Given the character starts at position with XCoordinates <startingPositionX>
    And starts at YCoordinates <startingPositionY>
    And the player chooses to move in <direction>

