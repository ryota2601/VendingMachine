//ペットボトル描画
void pet()
{
  for (int i=0; i<6; i++)
  {
    //キャップ
    if(i==0 || i==1)
    {
      fill(100);
    }else if(i==2)
    {
      fill(30, 144, 255);
    }else if(i==3)
    {
      fill(124, 252, 0);
    }else
    {
      fill(255);
    }
    rect(60*i+100+10+8, 165-60-10-7, 14, 7);
    
    //本体
    if(i==0 || i==1)
    {
      fill(0);
    }else if(i==2)
    {
      fill(230);
    }else if(i==3)
    {
      fill(255);
    }else 
    {
      fill(154, 205, 50);
    }
      
    beginShape();
    vertex(60*i+100+10, 165);
    vertex(60*i+100+10, 165-60);
    vertex(60*i+100+10+10, 165-60-10);
    vertex(60*i+100+10+30-10, 165-60-10);
    vertex(60*i+100+10+30, 165-60);
    vertex(60*i+100+10+30, 165);
    endShape(CLOSE);
    
    //ラベル
    if(i==0)
    {
      fill(255, 0, 0);
    }else if(i==1)
    {
      fill(100);
    }else if(i==2)
    {
      fill(30, 144, 255);
    }else if(i==3)
    {
      fill(124, 252, 0);
    }else 
    {
      fill(255);
    }
    rect(60*i+100+10, 165-60+5, 30, 20);
  }
}
    
