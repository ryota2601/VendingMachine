//ショーケース描画
void showcase()
{
  stroke(0);
  fill(255);
  rect(70, 70, 410, 300);
  pet();
  mini_pet();
  can();
  strokeWeight(2);
  fill(0);
  rect(90, 165, 370, 10);
  rect(90, 255, 370, 10);
  rect(90, 345, 370, 10);
  for (int i=0; i<6; i++)
  {
    for (int j=0; j<3; j++)
    {
      if (inprice != 0)//硬貨が投入されているとき
      {
        if (inprice >= price[i][j])//投入金額で購入可能な商品のボタンを発光させる
        {
          fill(225, 255, 0);
          available [i][j] = true;
        }else
        {
          fill(255);
        }
      } else
      {
        if (win == true)
        {
          fill(255, 255, 0);
        } else if (light[i][j] == true)
        {
          fill(225, 255, 0);
        }else
        {
          fill(255);
        }
      }
      rect(60*i+100, 90*j+165, 50, 10);
      fill(30, 144, 255);
      rect(60*i+100+5, 90*j+165-15, 40, 15);
      fill(255);
      textSize(13);
      text(price[i][j], 60*i+100+5+20, 90*j+165-15+6);
    }
  }
}
