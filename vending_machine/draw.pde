void draw()
{
  //本体
  background(255);
  textSize(20);
  textAlign(CENTER, CENTER);
  stroke(0);
  fill(0, 0, 205);
  strokeWeight(3);
  rect(50, 50, 450, 600);

  //ショーケース
  showcase();

  //広告
  strokeWeight(3);
  fill(255);
  rect(70, 390, 200, 100);
  textSize(50);
  fill(128, 0, 128);
  text("Meiji", 170, 430);

  //取り出し口
  fill(200);
  rect(100, 550, 350, 50);

  //お釣り
  fill(200);
  rect(420, 480, 40, 40);

  //ディスプレイ
  display();

  //コイン投入口
  fill(200);
  ellipse(460, 410, 30, 30);
  strokeWeight(5);
  line(450, 410, 470, 410);

  //レバー
  strokeWeight(3);
  ellipse(420, 420, 50, 50);
  strokeWeight(8);
  stroke(255, 69, 0);
  if (oturi == false)
  {
    line(410, 425, 430, 415);
  } else
  {
    line(410, 425, 433, 425);
  }
  stroke(0);
  fill(255);
  strokeWeight(3);
  ellipse(410, 425, 10, 10);

  //icタッチ
  textAlign(CENTER, CENTER);
  textSize(20);
  strokeWeight(3);
  rect(300, 440, 60, 40);
  fill(218, 165, 32);
  text("i", 326, 458);
  fill(255, 0, 0);
  text("c", 333, 458);

  //coin
  coin();

  //suica
  suica();
}
