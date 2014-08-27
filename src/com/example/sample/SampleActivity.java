package com.example.sample;

import com.example.sample.R.id;
import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class SampleActivity extends Activity
{
    static TextView tv;

    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        tv = (TextView) findViewById(id.tv_main);
        sample();
        sample2();
    }

    public static void sample()
    {
        tv.setText("Hello, World!\n");
    }

    public static void sample2()
    {
        Object[] a = new Object[10];

        for (int i=0; i<10; i++){
            a[i] = new Integer(i);
        }

        sample3(a);
    }

    public static void sample3(Object[] a)
    {
        foo:
        for (int i=0; i<100; i++){
            if (i == 8){ break foo; }

            Integer o = (Integer) a[i];
            int n = o.intValue();
            print("" + n + "\n");
        }
    }

    public static void print(String s)
    {
        tv.append(s);
    }
}
