float ang,angIncl;
float x;
float incremento;
PImage bg;
boolean movimiento;
ArrayList<Planeta>planetas;
void setup(){
  movimiento=true;
  bg=loadImage("fondo.jpg");
  size(1000,1000,P3D);
  stroke(30);
  ang=360;
  x=10;
  incremento=1;
  angIncl=-45;
  planetas=new ArrayList<Planeta>();
  planetas.add(new Planeta("Sol",50,0.0,0.0,0.1,0.10,0.0));
  planetas.add(new Planeta ("Mercurio",30,90.0,0.10,1.01,100.0,52.0));
  planetas.add(new Planeta ("Venus",50,205.0,0.005,0.10,1.0,177.0));
  planetas.get(2).addLuna(10,60,0.05,0.0,10.0,70.0);
  planetas.get(2).addLuna(5,80,0.05,1.0,10.0,85.0);
  planetas.add(new Planeta("Tierra",20,337.0,0.0,0.20,1.0,307.0));
  planetas.get(3).addLuna(10,40,0.0,0.5,5.0,40.0);
  planetas.add(new Planeta("Marte",30,420.0,0.0,4.20,5.0,390.0));
  planetas.add(new Planeta("Jupiter",70,540.0,1.0,6.0,20.0,500.0));
  for(Planeta planeta: planetas){
    planeta.cambiarColor((int)random(0,255),(int)random(0,255),(int)random(0,255));
  }
}

void draw(){
  background(bg);
  text("Pulsa p para pausar/poner en play",10,10);
  translate(width/2,height/2,0);
  inclinacion();
  imprimirPlanetas();
  
}

void inclinacion(){
  rotateX(radians(angIncl));
}

void imprimirPlanetas(){
  for(Planeta planeta:planetas){
      planeta.printPlaneta();
  }
}

void keyReleased(){
  if(key== 'p'){
     movimiento=!movimiento;
     for(Planeta planeta:planetas){
      planeta.movimientoPlanetas(movimiento);
    }
  }
  
}
