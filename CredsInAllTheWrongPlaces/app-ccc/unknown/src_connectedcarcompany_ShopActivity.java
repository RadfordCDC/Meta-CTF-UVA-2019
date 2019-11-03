package com.example.ccc.connectedcarcompany;

import android.app.ListActivity;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;

public class ShopActivity extends AppCompatActivity {

    private BottomNavigationView.OnNavigationItemSelectedListener mOnNavigationItemSelectedListener
            = new BottomNavigationView.OnNavigationItemSelectedListener() {

        @Override
        public boolean onNavigationItemSelected(@NonNull MenuItem item) {
            switch (item.getItemId()) {
                case R.id.navigation_home:
                    return true;
                case R.id.navigation_dashboard:
                    if(arrayContains(userRoles, "admin")){
                        Intent i = new Intent(getApplicationContext(), AdminActivity.class);
                        i.putExtra("user_token", userToken);
                        i.putExtra("user_roles", userRoles);
                        i.putExtra("user_id", userID);
                        startActivity(i);
                        return true;
                    }
                    return false;
                case R.id.navigation_notifications:
                    return false;
            }
            return false;
        }
    };

    public boolean arrayContains(String[] arr, String val){
        for (String s : arr) {
            if(val.equals(s)) return true;
        }
        return false;
    }

    private ArrayList<ArrayList<Car>> cars;
    private ListView carsList;

    private CarAdapter carAdapter;

    private int userID;
    private String userToken;
    private String[] userRoles;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_shop);

        Intent i = getIntent();
        userID = i.getIntExtra("user_id", -1);
        userToken = i.getStringExtra("user_token");
        userRoles = i.getStringArrayExtra("user_roles");

        cars = new ArrayList<>();

        GetCars getCars = new GetCars();
        getCars.execute();

        //Function to fill cars
        carsList = findViewById(R.id.list);
        //carsList.setListAdapter(new ArrayAdapter<>(this, R.layout.car_item, cars));
        BottomNavigationView navigation = findViewById(R.id.navigation);
        navigation.setOnNavigationItemSelectedListener(mOnNavigationItemSelectedListener);
        updateList();
    }

    private void updateList(){
        carAdapter = new CarAdapter(getApplicationContext(), cars, this, null);
        carsList.setAdapter(carAdapter);
    }
    public class GetCars extends AsyncTask<Void, Void, Boolean> {
        @Override
        protected Boolean doInBackground(Void... params) {
            try {
                String url = "https://c3.metacorp.us/androidapp/api/cars.php?token="+userToken;
                InputStream in = new URL(url).openConnection().getInputStream();
                BufferedReader read = new BufferedReader(new InputStreamReader(in));
                StringBuilder str = new StringBuilder("");
                read.lines().forEach(str::append);
                JSONObject reader = new JSONObject(str.toString());
                int status = reader.getInt("status");
                if(status == 201){
                    JSONObject cs = reader.getJSONObject("cars");
                    int z = 0;
                    for (int i = 1; i <= cs.length(); i += 3) {
                        cars.add(new ArrayList<>());
                        for (int j = 0; j < 3; j++) {
                            JSONObject car = cs.getJSONObject((i + j) + "");
                            Car c = (new Car(car.getString("name"), null));
                            GetImage g = new GetImage(car.getString("picture_url"), c, z);
                            g.execute();
                        }
                        z++;
                    }
                    return true;
                }
                else{
                    return false;
                }
            }
            catch(Exception e){
                e.printStackTrace();
                return false;
            }
        }

        @Override
        protected void onPostExecute(final Boolean success) {
        }

        @Override
        protected void onCancelled() {
        }
    }
    public class GetImage extends AsyncTask<Void, Void, Boolean> {

        private final String url;
        private final Car car;
        private final int ind;

        GetImage (String u, Car c, int i) {
            url = u;
            car = c;
            ind = i;
        }

        @Override
        protected Boolean doInBackground(Void... params) {
            try {
                car.setImage(BitmapFactory.decodeStream(new URL(url).openConnection().getInputStream()));
                return true;
            }
            catch(Exception e){
                e.printStackTrace();
                return false;
            }
        }

        @Override
        protected void onPostExecute(final Boolean success) {
            if (success) {
                cars.get(ind).add(car);
                carAdapter.notifyNewData();
            }
        }

        @Override
        protected void onCancelled() {
        }
    }
}
