package com.example.demoapp

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import androidx.appcompat.app.AppCompatActivity

class SecondActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_second)
        val btn = Button(this)
        btn.text = "Go to Third Page"
        btn.setOnClickListener {
            startActivity(Intent(this, ThirdActivity::class.java))
        }
        (findViewById<androidx.constraintlayout.widget.ConstraintLayout>(R.id.secondText).parent as? androidx.constraintlayout.widget.ConstraintLayout)?.addView(btn)
    }
} 