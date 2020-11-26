//セットアップ

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import ddf.minim.*;
Minim minim; 
AudioPlayer bgm_touch;//suicaタッチ音
AudioPlayer bgm_botton;//購入ボタン音
AudioPlayer bgm_get;//商品排出音
AudioPlayer bgm_coin;//硬貨投入音

//変数定義
int [][] price = new int [6][3];
boolean [][] available = new boolean [6][3];
boolean [][] light = new boolean [6][3];
int [] r = new int [4];
int eprice = 0;
int inprice = 0;
int startFrame = 0;
int currentFrame = 0;
int lasti = 0;
int lastj = 0;
boolean kuji = false;
boolean oturi = false;
boolean suica = false;
boolean touch = false;
boolean buy = false;
boolean win = false;
boolean ten = false;
boolean hundred = false;
boolean fifty = false;
int urawaza = 0;

void setup()
{
  frameRate(60);
  size(800, 700);
  textAlign(CENTER, CENTER);

  //bgmインストール
  minim = new Minim(this); 
  bgm_touch = minim.loadFile("touch.mp3");
  bgm_botton = minim.loadFile("botton.mp3");
  bgm_get = minim.loadFile("get.mp3");
  bgm_coin = minim.loadFile("coin.mp3");

  //初期化
  for (int i=0; i<6; i++)
  {
    for (int j=0; j<3; j++)
    {
      available[i][j] = false;
      light[i][j] = false;
    }
  }
  
  //値段定義
  for (int i=0; i<3; i++)
  {
    price[i][0] = 160;
  }
  price[3][0] = 110;
  price[4][0] = 100;
  price[5][0] = 100;
  for (int i=0; i<6; i++)
  {
    for (int j=1; j<2; j++)
    {
      price[i][j] = 130;
    }
  }
  for (int i=0; i<6; i++)
  {
    for (int j=2; j<3; j++)
    {
      price[i][j] = 100;
    }
  }
}

void stop()
{
  bgm_touch.close();
  bgm_get.close();
  bgm_botton.close();
  bgm_coin.close();
  minim.stop();
  super.stop();
}
