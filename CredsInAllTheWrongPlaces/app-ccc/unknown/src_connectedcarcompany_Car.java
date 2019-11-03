package com.example.ccc.connectedcarcompany;

import android.graphics.Bitmap;

/**
 * Created by willm on 10/18/2019.
 */

public class Car {
    private String name;
    private Bitmap image;

    public Car(String n, Bitmap p){
        name = n;
        image = p;
    }

    public String getName(){
        return name;
    }

    public Bitmap getImage(){
        return image;
    }

    public void setImage(Bitmap i){
        image = i;
    }
}
