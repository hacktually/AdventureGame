package com.levelup.forestsandmonsters;

public class Character 
{
    static String DEFAULT_NAME;
    private String name;
    Position position;

    Character(){}

    Character(String name){}

    public String getName()
    {
        return name;
    }
    public Position getPosition()
    {
        return position;
    }
    public void move(GameController.DIRECTION direction)
    {
    }
    public void enterMap(GameMap map)
    {
    }

}
