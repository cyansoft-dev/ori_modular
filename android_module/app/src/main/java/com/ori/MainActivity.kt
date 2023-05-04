package com.ori

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.Button
import androidx.compose.material.Scaffold
import androidx.compose.material.Text
import androidx.compose.material.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.ori.ui.theme.Android_modularTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            Android_modularTheme {
                MainPage()
            }
        }
    }
}


@Composable
fun MainPage(){
    Scaffold(
        topBar = {
            TopAppBar(elevation = 2.dp) {
                Text("Android Modular App")
            }
        }
    ) { it ->
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement =  Arrangement.Center,
            modifier = Modifier
                .fillMaxSize()
                .padding(it)
        ) {
            ButtonComponent("Open Flutter Module")
        }

    }
}

@Composable
fun ButtonComponent(name: String) {
    val  context: Context = LocalContext.current
    Button(
        modifier = Modifier.height(56.dp),
        shape = RoundedCornerShape(50.dp),
        onClick = {
        val intent: Intent = FlutterInitialize.buildCacheEngine(context)
        context.startActivity(intent)
    }) {
        Text(text = name)
    }
}

@Preview(showBackground = true)
@Composable
fun DefaultPreview() {
    Android_modularTheme {
        MainPage()
    }
}