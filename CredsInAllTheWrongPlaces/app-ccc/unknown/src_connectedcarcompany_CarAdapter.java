package com.example.ccc.connectedcarcompany;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;


import java.net.URL;
import java.util.ArrayList;

public class CarAdapter extends BaseAdapter {
    private Context mContext;
    private LayoutInflater mInflater;
    private ArrayList<ArrayList<Car>> mDataSource;
    private ShopActivity sActivity;
    private View.OnTouchListener mTouchListener;

    public CarAdapter(Context context, ArrayList<ArrayList<Car>> items, ShopActivity activity, View.OnTouchListener tl){
        mContext = context;
        mDataSource = items;
        mInflater = (LayoutInflater) mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        sActivity = activity;
        mTouchListener = tl;
    }


    public void notifyNewData(){
        final CarAdapter adapter = this;
        adapter.notifyDataSetChanged();
    }
    //1
    @Override
    public int getCount() {
        return mDataSource.size();
    }

    //2
    @Override
    public Object getItem(int position) {
        return mDataSource.get(position);
    }

    //3
    @Override
    public long getItemId(int position) {
        return position;
    }

    //4
    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        final CarAdapter adapter = this;
        // Get view for row item
        View rowView;
        rowView = mInflater.inflate(R.layout.car_item, parent, false);
        //Get the displays for the list
        //Fill 3 columns
        if(mDataSource.get(position).size() > 0) {
            TextView carName1 = rowView.findViewById(R.id.car_name1);
            carName1.setText(adapter.mDataSource.get(position).get(0).getName());
            ImageView image1 = rowView.findViewById(R.id.car_image1);
            image1.setImageBitmap(mDataSource.get(position).get(0).getImage());
            if (mDataSource.get(position).size() > 1) {
                TextView carName2 = rowView.findViewById(R.id.car_name2);
                carName2.setText(adapter.mDataSource.get(position).get(1).getName());
                ImageView image2 = rowView.findViewById(R.id.car_image2);
                image2.setImageBitmap(mDataSource.get(position).get(1).getImage());
                if (mDataSource.get(position).size() > 2) {
                    TextView carName3 = rowView.findViewById(R.id.car_name3);
                    carName3.setText(adapter.mDataSource.get(position).get(2).getName());
                    ImageView image3 = rowView.findViewById(R.id.car_image3);
                    image3.setImageBitmap(mDataSource.get(position).get(2).getImage());
                }
            }
        }
        return rowView;
    }
}
