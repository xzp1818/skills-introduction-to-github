PImage Tree1,Tree2;
final float TAU=6.2831855;
GridSystem gs;
void setup(){
  size(1237, 694,P3D);
  colorMode(HSB, 100);
  //三个参数分别是格子的行数、列数以及边框的宽度。
  Tree1=loadImage("Tree1.jpg");
  Tree2=loadImage("Tree2.jpg");
  gs = new GridSystem(10, 10, 10, 50); 
}
void draw(){
  if (mouseX<600)
    background(Tree1);//16
  else
    background(Tree2);
    // 后面3个参数分别是指定光在x、y、z方向的发射方向
  //directionalLight(255, 0, 0, -1, 0, 0); // 设置一束从右边射过来的红色的定向光
  //ambientLight(255, 0, 0, 0, width / 2, 0); // 设置一束从(0, width / 2, 0)发射而来红色的环境光
  pointLight(255, 0, 0, 35, 40, 0);// 设置一束从(35, 40, 0)发射而来红色的点光
  translate(width / 2, height / 2);
  // 根据鼠标位置设置旋转的角度
  float thetaX = map(mouseY, 0, width, -PI, PI);
  float thetaY = map(mouseX, 0, width, -PI, PI); 
  rotateX(thetaX); // 围绕X轴旋转角度参数指定的量
  rotateY(thetaY); // 围绕Y轴旋转角度参数指定的量
  scale(0.5);
//  sphere(100); // 绘制一个半径为100的球体
  gs.run();
}
void keyPressed(){
  gs.changeRenderMode();
}
