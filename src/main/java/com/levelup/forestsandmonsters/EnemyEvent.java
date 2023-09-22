package com.levelup.forestsandmonsters;
import java.util.Random;
import java.util.Scanner;

public class EnemyEvent{
    int bullets; //number of times the character can atttack
    String enemy;
    String choice = "default";
    String choice2 = "";
    String choice3;
    
    Scanner sc = new Scanner(System.in);

    public EnemyEvent() {
        bullets = 3;
        enemyGenerator();

        System.out.println("You have run into a: " + enemy);

        EventString();
        
        boolean stop = false;
        while (bullets != 1 || stop != true){
            int random = new Random().nextInt(3)+1;
            if (stop != true){
             if (choice.equals("1")) {
                 switch (random) {
                     case (1):
                        System.out.println("The " + enemy + " staggers...direct hit!\n");
                        stop = true;
                        break;
                     case (2): case (3):
                        System.out.println("You missed...the "+ enemy + " advances toward you...\n");
                        bullets--;
                        EventString();
                 }
             } else {
                 System.out.println("You chose to run...saving the fight for another day\n");
                 break;
             }
            } else {
                break;
            }
            if (bullets == 0) {
                System.out.println("You have run out of bullets...the "+enemy+" leaps at you but misses, you live to fight on another day!");
                break;
            }
         }
    }

    void EventString(){
        System.out.println("You have three options:");
        System.out.println("1. Fight the " + enemy);
        System.out.println("2. Run away in fear\n");
        System.out.println("You Choose...");

        while(true) {
            String s = sc.nextLine();
            if (s.equals("1") || s.equals("2")) {
                choice = s;
                break;
            } else {
                EventString();
            }
        }
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
