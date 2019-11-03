package com.example.ccc.connectedcarcompany;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;

/**
 * Created by willm on 10/18/2019.
 */

public class AdminActivity extends AppCompatActivity{

    private TextView mTextMessage;

    private int userID;
    private String userToken;
    private String[] userRoles;

    private String message = "";
    private BottomNavigationView.OnNavigationItemSelectedListener mOnNavigationItemSelectedListener
            = new BottomNavigationView.OnNavigationItemSelectedListener() {

        @Override
        public boolean onNavigationItemSelected(@NonNull MenuItem item) {
            switch (item.getItemId()) {
                case R.id.navigation_home:
                    Intent i = new Intent(getApplicationContext(), ShopActivity.class);
                    i.putExtra("user_token", userToken);
                    i.putExtra("user_roles", userRoles);
                    i.putExtra("user_id", userID);
                    startActivity(i);
                    return true;
                case R.id.navigation_dashboard:
                    return true;
                case R.id.navigation_notifications:
                    return false;
            }
            return false;
        }
    };


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_admin);
        mTextMessage = findViewById(R.id.message);
        Intent i = getIntent();
        userID = i.getIntExtra("user_id", -1);
        userToken = i.getStringExtra("user_token");
        userRoles = i.getStringArrayExtra("user_roles");

        GetProjects getProjects = new GetProjects();
        getProjects.execute();
        mTextMessage.setText(message);

        BottomNavigationView navigation = findViewById(R.id.navigation);
        navigation.setOnNavigationItemSelectedListener(mOnNavigationItemSelectedListener);
    }

    public class GetProjects extends AsyncTask<Void, Void, Boolean> {
        @Override
        protected Boolean doInBackground(Void... params) {
            try {
                StringBuilder roles = new StringBuilder();
                for (String role : userRoles) {
                    roles.append("&roles[]=").append(role);
                }
                String url = "https://c3.metacorp.us/androidapp/api/active_experiments.php?token=" + userToken + roles.toString();
                InputStream in = new URL(url).openConnection().getInputStream();
                BufferedReader read = new BufferedReader(new InputStreamReader(in));
                StringBuilder str = new StringBuilder("");
                read.lines().forEach(str::append);
                JSONObject reader = new JSONObject(str.toString());
                int status = reader.getInt("status");
                if(status == 201){
                    JSONObject experiments = reader.getJSONObject("experiments");
                    StringBuilder exp = new StringBuilder("");
                    for (int i = 1; i <= experiments.length(); i++) {
                        JSONObject experiment = experiments.getJSONObject(i + "");
                        exp.append(experiment.getString("description")).append("\n");
                    }
                    message = exp.toString();
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
            if(success) mTextMessage.setText(message);
        }

        @Override
        protected void onCancelled() {
        }
    }
}
