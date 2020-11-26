//缶描画

void can()
{
  for(int i=0; i<6; i++)
  {
    if (i==0)
    {
      fill(255, 0, 0);
    }else if (i==0 || i==1)
    {
      fill(255, 0, 0);
    }else if (i==2)
    {
      fill(100);
    }else if (i==3)
    {
      fill(240, 100, 80);
    }else if (i==4)
    {
      fill(255, 215, 0);
    }else if (i==5)
    {
      fill(0);
    }  
    rect(60*i+100+12, 345-40, 26, 40); 
  }
}
