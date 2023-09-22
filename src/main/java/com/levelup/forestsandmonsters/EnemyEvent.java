package com.levelup.forestsandmonsters;
import java.util.Random;

public class EnemyEvent{
    int bullets; //number of times the character can atttack
    String enemy;

    public EnemyEvent() {
        bullets = 3;

        enemyGenerator();
        EventString();
        System.out.println("You have run into a: " );

        switch(bullets = 0){

        }
            int random = new Random().nextInt(3)+1;
    }

    void EventString(){
        System.out.println("You have three options :");
        System.out.println("1. Fight the " + enemy);
        System.out.println("2. Run away in fear");
    }

    void enemyGenerator(){
        int random = new Random().nextInt(3)+1;

        if (random == 1) {
            this.enemy = "Chicken";
        } 
        else if (random == 2) {
            this.enemy = "Deer";
        }
        else {
            this.enemy = "Panther";
        }
    }
}
