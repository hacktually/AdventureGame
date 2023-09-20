package com.levelup.forestsandmonsters;

public class Character {
    static String DEFAULT_CHARACTER_NAME = "Default";
    String name;

    Character() {}

    Character(String name) {
        setName(name);
    }

    String getName(){
        return this.name;
    }
    void setName(String name) {
        this.name = name;
    }

    void enterMap (GameMap map) {
        //TODO
    }

    Position getPosition() {}

    void move(Direction dir){}
}
