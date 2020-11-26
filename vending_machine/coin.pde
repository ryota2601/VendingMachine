//硬貨描画

void coin()
{
  textAlign(CENTER, CENTER);
  noStroke();

  if (ten == false)//１０円玉デフォルト位置
  {
    textSize(18);
    fill(139, 69, 19);
    ellipse(600, 550, 30, 30);
    fill(0);
    text("10", 600, 547);
  } else //１０円玉を持っている状態
  {
    textSize(18);
    fill(139, 69, 19);
    ellipse(mouseX, mouseY, 30, 30);
    fill(0);
    text("10", mouseX, mouseY - 3);
    if (dist(mouseX, mouseY, 460, 410)<=15)//硬貨投入口に持っていくと
    {
      bgm_coin.rewind();
      bgm_coin.play();
      inprice += 10;//現在投入金額に＋１０円
      ten = false;//デフォルト位置に戻る
    }
  }
  
  //以下同様に１００円玉と５０円玉の描画

  if (hundred == false)
  {
    fill(192, 192, 192);
    ellipse(650, 550, 28, 28);
    fill(0);
    textSize(15);
    text("100", 650, 547);
  } else
  {
    fill(192, 192, 192);
    ellipse(mouseX, mouseY, 28, 28);
    fill(0);
    textSize(15);
    text("100", mouseX, mouseY - 3);
    if (dist(mouseX, mouseY, 460, 410)<=15)
    {
      bgm_coin.rewind();
      bgm_coin.play();
      inprice += 100;
      hundred = false;
    }
  }
  
  if (fifty == false)
  {
    fill(210);
    ellipse(700, 550, 28, 28);
    fill(255);
    ellipse(700, 550, 10, 10);
    fill(0);
    textSize(15);
    text("50", 700, 547);
  } else
  {
    fill(210);
    ellipse(mouseX, mouseY, 28, 28);
    fill(255);
    ellipse(mouseX, mouseY, 10, 10);
    fill(0);
    textSize(15);
    text("50", mouseX, mouseY - 3);
    if (dist(mouseX, mouseY, 460, 410)<=15)
    {
      bgm_coin.rewind();
      bgm_coin.play();
      inprice += 50;
      fifty = false;
    }
  } 
}
