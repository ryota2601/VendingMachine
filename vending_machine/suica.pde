void suica()
{
if (suica == false)//デフォルト位置
  {
    noStroke();
    fill(0, 200, 0);
    rect(600, 600, 50, 30);
    fill(255);
    textSize(15);
    text("suica", 622, 618);
  } else
  {
    noStroke();
    fill(0, 200, 0);
    rect(mouseX - 25, mouseY - 15, 50, 30);
    fill(255);
    textSize(15);
    text("suica", mouseX - 25 + 22, mouseY - 15 + 18);
    if (buy == true)
    {
      if (touch == false)
      {
        if (mouseX>=300 && mouseY>=440 && mouseX<=360 && mouseY<=480)//suicaをタッチしたら
        {
          bgm_touch.rewind();
          bgm_touch.play();
          bgm_get.rewind();
          bgm_get.play();
          kuji = true;//ルーレット開始
          startFrame = frameCount;//ルーレット開始時のフレームを保存
          touch = true;
          buy = false;
          light[lasti][lastj] = false;//ボタンの発光を消す
        }
      }
    }
  }
}
