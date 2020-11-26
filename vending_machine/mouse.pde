void mousePressed()
{
  //レバー
  if (dist(mouseX, mouseY, 420, 420)<=25)//チートモード
  {
    oturi = true;
    urawaza++;
  }

  //suica
  if (mouseX>=600 && mouseY>=600 && mouseX<=650 && mouseY<=630)
  {
    suica = true;
  }
  
  //10
  if (dist(mouseX, mouseY, 600, 550)<=15)
  {
    ten = true;
  }
  
  //100
  if (dist(mouseX, mouseY, 650, 550)<=14)
  {
    hundred = true;
  }
  
  //50
  if (dist(mouseX, mouseY, 700, 550)<=14)
  {
    fifty = true;
  }
 
  //購入ボタン
  for (int i=0; i<6; i++)
  {
    for (int j=0; j<3; j++)
    {
      if (mouseX>=60*i+100 && mouseY>=90*j+165 && mouseY<=90*j+165+10 && mouseX<=60*i+100+50)//購入ボタンを押したとき
      {
        bgm_botton.rewind();//ボタン音再生
        bgm_botton.play();
        if (win == true)//ボーナスで貰える商品を選ぶとき
        {
          bgm_get.rewind();//商品入手音再生
          bgm_get.play();
          win = false;//初期化
          kuji = true;
          startFrame = frameCount;
        } else if (available[i][j]==true)//硬貨で購入するとき、選んだ商品が購入可能なら
        {
          inprice = 0;//投入金額をリセット
          bgm_get.rewind();//商品入手音再生
          bgm_get.play();
          kuji = true;//初期化
          startFrame = frameCount;
          available[i][j] = false;
        }else//suicaで購入するとき
        {  
          eprice = price[i][j];//選択した商品の値段をディスプレイに表示する
          buy = true;
          light[lasti][lastj] = false;//前に選んだ商品のボタンの発光を消す
          light[i][j] = true;//選んだ商品のボタンを発光させる
          lasti = i;//選択したボタンの座標を保存
          lastj = j;
        }
      }
      available[i][j]=false;
    }
  }
}

void mouseReleased()
{
  oturi = false;
  suica = false;
  ten = false;
  hundred = false;
  fifty = false;
}
