Auto miAuto;
Auto miAuto2;

void setup()  {    
size(600,300);        // color, x , y,velocidad
miAuto = new Auto(color(255,0,0),0,100,2); 
miAuto2 = new Auto(color(0,0,255),200,200,4); //AZUL + velocidad
}    

void draw()  {       //METODOS
background(206);  
line(0, 30, 600, 30);
line(0, 250, 600, 250);

miAuto.direccionDer();   
miAuto.dibujarAuto();  
miAuto2.direccionDer();
miAuto2.dibujarAuto();

} 
