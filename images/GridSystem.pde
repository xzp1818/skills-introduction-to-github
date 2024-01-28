class GridSystem{
  ArrayList<Grid> grids;
  float gridSize, border;
  GridSystem(float row, float col, float ver,float _border){
    border = _border;
    //根据容器的宽度和边框宽度计算每一个格子的大小。
    gridSize = (width - border * 2) / col;
    //对每一个格子进行初始化。
    grids = new ArrayList<Grid>();
    for(int i = 0 ; i < row; i++){
      for(int j = 0; j < col; j++){
        for(int k = 0; k < ver; k++){
//三个参数分别是：行号、列号、格子大小。
        grids.add(new Grid(i, j, k, gridSize));
        }
      }
    }
  }
  void run(){
  //改变绘制的坐标原点。
    translate(border, border);
    for(Grid g : grids){
  //更新并绘制每一个格子内的波动图案。
      g.update();
      g.display();
    }
  }
    void changeRenderMode(){
    //改变每一个波动图像的渲染模式
    for(Grid g : grids){
           background(Tree1);//16
      g.changeRenderMode();
    }
  }
}
