package com.example.ccc.connectedcarcompany;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.support.annotation.NonNull;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.app.LoaderManager.LoaderCallbacks;

import android.content.CursorLoader;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;

import android.os.Build;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.EditorInfo;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import static android.Manifest.permission.READ_CONTACTS;

/**
 * A login screen that offers login via username/password.
 */
public class LoginActivity extends AppCompatActivity{

    private String userToken;
    private int userID;
    private String[] userRoles;
    /**
     * Keep track of the login task to ensure we can cancel it if requested.
     */
    private UserLoginTask mAuthTask = null;

    // UI references.
    private EditText musernameView;
    private EditText mPasswordView;
    private View mProgressView;
    private View mLoginFormView;
    private Button mLoginButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        // Set up the login form.
        musernameView = findViewById(R.id.username);
        mPasswordView = findViewById(R.id.password);
        mProgressView = findViewById(R.id.login_progress);
        mLoginFormView = findViewById(R.id.login_form);
        mLoginButton = findViewById(R.id.username_sign_in_button);

        //Set up on click
        mLoginButton.setOnClickListener(view -> attemptLogin());
    }

    /**
     * Attempts to sign in or register the account specified by the login form.
     * If there are form errors (invalid username, missing fields, etc.), the
     * errors are presented and no actual login attempt is made.
     */
    private void attemptLogin() {
        String username = musernameView.getText().toString();
        String password = mPasswordView.getText().toString();
        if(!isusernameValid(username)){
            musernameView.setError(getString(R.string.error_invalid_username));
        }
        else if(!isPasswordValid(password)){
            mPasswordView.setError(getString(R.string.error_invalid_password));
        }
        else{
            mAuthTask = new UserLoginTask(username, password);
            mAuthTask.execute();
        }
    }

    private boolean isusernameValid(String username) {
        return username.length() > 4;
    }

    private boolean isPasswordValid(String password) {
        return password.length() > 4;
    }

    /**
     * Shows the progress UI and hides the login form.
     */
    @TargetApi(Build.VERSION_CODES.HONEYCOMB_MR2)
    private void showProgress(final boolean show) {
        // On Honeycomb MR2 we have the ViewPropertyAnimator APIs, which allow
        // for very easy animations. If available, use these APIs to fade-in
        // the progress spinner.
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.HONEYCOMB_MR2) {
            int shortAnimTime = getResources().getInteger(android.R.integer.config_shortAnimTime);

            mLoginFormView.setVisibility(show ? View.GONE : View.VISIBLE);
            mLoginFormView.animate().setDuration(shortAnimTime).alpha(
                    show ? 0 : 1).setListener(new AnimatorListenerAdapter() {
                @Override
                public void onAnimationEnd(Animator animation) {
                    mLoginFormView.setVisibility(show ? View.GONE : View.VISIBLE);
                }
            });

            mProgressView.setVisibility(show ? View.VISIBLE : View.GONE);
            mProgressView.animate().setDuration(shortAnimTime).alpha(
                    show ? 1 : 0).setListener(new AnimatorListenerAdapter() {
                @Override
                public void onAnimationEnd(Animator animation) {
                    mProgressView.setVisibility(show ? View.VISIBLE : View.GONE);
                }
            });
        } else {
            // The ViewPropertyAnimator APIs are not available, so simply show
            // and hide the relevant UI components.
            mProgressView.setVisibility(show ? View.VISIBLE : View.GONE);
            mLoginFormView.setVisibility(show ? View.GONE : View.VISIBLE);
        }
    }

    /**
     * Represents an asynchronous login/registration task used to authenticate
     * the user.
     */
    public class UserLoginTask extends AsyncTask<Void, Void, Boolean> {

        private final String musername;
        private final String mPassword;

        UserLoginTask(String username, String password) {
            musername = username;
            mPassword = password;
        }

        @Override
        protected Boolean doInBackground(Void... params) {
            try {
                //String url = "https://c3.metacorp.us/androidapp/api/login.php?username=devguy1&password=Alw@ys_d3lete_d3bug_c0d3!";
                String url = "https://c3.metacorp.us/androidapp/api/login.php?username="+musername+"&password="+mPassword;
                InputStream in = new URL(url).openConnection().getInputStream();
                BufferedReader read = new BufferedReader(new InputStreamReader(in));
                StringBuilder str = new StringBuilder("");
                read.lines().forEach(str::append);
                read.close();
                JSONObject reader = new JSONObject(str.toString());
                System.out.println(str.toString());
                int status = reader.getInt("status");
                if(status == 200){
                    userID = reader.getInt("user_id");
                    JSONArray roles = reader.getJSONArray("roles");
                    userRoles = new String[roles.length()];
                    for (int i = 0; i < roles.length(); i++) {
                        userRoles[i] = roles.getString(i);
                    }
                    userToken = reader.getString("token");
                    return true;
                }
                else{
                    return false;
                }
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }

        @Override
        protected void onPostExecute(final Boolean success) {
            mAuthTask = null;
            showProgress(false);
            System.out.println(success);
            if (success) {
                System.out.println("HERE");
                Intent i = new Intent(getApplicationContext(), ShopActivity.class);
                i.putExtra("user_token", userToken);
                i.putExtra("user_roles", userRoles);
                i.putExtra("user_id", userID);
                startActivity(i);
            } else {
                mPasswordView.setError(getString(R.string.error_incorrect_password));
                mPasswordView.requestFocus();
            }
        }

        @Override
        protected void onCancelled() {
            mAuthTask = null;
            showProgress(false);
        }
    }
}