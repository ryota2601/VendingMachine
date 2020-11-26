//ミニボトル描画
void mini_pet()
{
  for (int i=0; i<6; i++)
  {
    //キャップ
    if (i==0)
    {
      fill(50);
    } else if (i==1)
    {
      fill(255, 215, 0);
    } else if (i==2 || i==3)
    {
      fill(124, 252, 0);
    } else if (i==4)
    {
      fill(30, 144, 255);
    } else
    {
      fill(255);
    }
    rect(60*i+100+10+8, 255-38-10-7, 14, 7);

    //本体
    if (i==0)
    {
      fill(50);
    } else if (i==1)
    {
      fill(255, 215, 0);
    } else if (i==2 || i==3)
    {
      fill(255);
    } else if (i==4)
    {
      fill(230);
    } else 
    {
      fill(154, 205, 50);
    }
    beginShape();
    vertex(60*i+100+8, 255);
    vertex(60*i+100+8, 255-38);
    vertex(60*i+100+8+12, 255-38-10);
    vertex(60*i+100+8+34-12, 255-38-10);
    vertex(60*i+100+8+34, 255-38);
    vertex(60*i+100+8+34, 255);
    endShape(CLOSE);

    //ラベル
    if (i>=2)
    {
      if(i==2 || i==3)
      {
        fill(124, 252, 0);
      }else if (i==4)
      {
        fill(30, 144, 255);
      }else 
      {
        fill(255);
      }
      rect(60*i+100+8, 255-38+2, 34, 15);
    }
  }
}
