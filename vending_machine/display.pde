//ディスプレイ描画

void display()
{
  if (kuji == false)//購入前（ルーレット起動前）
  {
    textSize(20);
    fill(200);
    rect(290, 390, 80, 30);
    fill(255, 0, 0);
    textAlign(RIGHT, TOP);
    if (inprice == 0)//硬貨が投入されていなければ(suicaで購入する場合）
    {
      text(eprice, 365, 394);//選択した商品の値段をディスプレイに表示
    } else//硬貨が投入されれば
    {
      text(inprice, 365, 394);//投入されている合計金額を表示
    }
    textAlign(CENTER, CENTER);
  } else//ルーレット起動後
  {
    textSize(20);
    fill(200);
    rect(290, 390, 80, 30);
    currentFrame = frameCount;//現在のフレームを取得
    if (currentFrame - startFrame <= 60*3)
    {
      for (int i=0; i<4; i++)
      {
        r[i] = (int)random(1, 10);
      }
    } else if (currentFrame - startFrame <= 60*4 && currentFrame - startFrame > 60*3)//３秒経過すると
    {
      r[0] = r[0];//１つ目の数字確定
      for (int i=1; i<4; i++)
      {
        r[i] = (int)random(1, 10);
      }
    } else if (currentFrame - startFrame <= 60*5 && currentFrame - startFrame > 60*4)//４秒経過すると
    {
      r[0] = r[0];
      r[1] = r[0];//２つ目の数字を１つ目の数字と同じにする
      for (int i=2; i<4; i++)
      {
        r[i] = (int)random(1, 10);
      }
    } else if (currentFrame - startFrame <= 60*6 && currentFrame - startFrame > 60*5)//５秒経過すると
    {
      r[0] = r[0];
      r[1] = r[0];
      r[2] = r[0];//3つ目の数字を１つ目と同じにする
      r[3] = (int)random(1, 10);
    } else if (currentFrame - startFrame <= 60*8 && currentFrame - startFrame > 60*6)//６秒経過すると
    {
      r[0] = r[0];
      r[1] = r[0];
      r[2] = r[0];
      if (urawaza % 2 == 1)//チートモード
      {
        r[3] = r[0];
      } else//通常時
      {
        r[3] = r[3];//4つ目の数字確定
      }
      if (r[3] == r[0])//ルーレットが揃うと
      {
        win = true;//ボーナスでもう一本
      }
      touch = false;
    } else if (currentFrame - startFrame > 60*8)//８秒経過すると
    {
      kuji = false;//デフォルト状態に戻す
      eprice = 0;
      buy = false;
      for (int i=0; i<6; i++)
      {
        for (int j=0; j<3; j++)
        {
          light[i][j] = false;
        }
      }
    } else//ルーレット回転時
    {
      for (int i=0; i<4; i++)
      {
        r[i] = (int)random(1, 10);
      }
    }
    for (int i=0; i<4; i++)//数字をディスプレイに表示
    {
      textAlign(RIGHT, TOP);
      fill(255, 0, 0);
      text(r[i], 365-(3-i)*10, 394);
    }
  }
}
