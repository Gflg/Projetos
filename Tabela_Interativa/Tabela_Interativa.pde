PImage bg;
int cond=2, value=0;

class Elemento
{
  String nome;
  int familia;
  int periodo;
  int tipo;
  int x;
  int y;
  
  public Elemento(String nome, int familia, int periodo, int tipo)
  {
      this.nome = nome;
      this.familia = familia;
      this.periodo = periodo;
      this.tipo = tipo;
      this.x = (familia-1)*67;
      this.y = (periodo-1)*67;
      
  }
}


color[] cores = new color[] {

  /* 0 */ color(245,185,100),
  /* 1 */ color(255,100,100),
  /* 2 */ color(255,255,0),
  /* 3 */ color(150,100,200),
  /* 4 */ color(180,195,250),
  /* 5 */ color(85,250,0),
  /* 6 */ color(221,52,65),
};

Elemento[] tabela = new Elemento[]
{
  new Elemento("H"  , 1,  1,  0 ), 
  new Elemento("He" , 18,  1,  1 ), 
  new Elemento("Li",  1,  2,  2 ),
  new Elemento("Be", 2, 2, 2 ),
  new Elemento("B", 13, 2, 4),
  new Elemento("C", 14, 2, 3),
  new Elemento("N", 15, 2, 3),
  new Elemento("O", 16, 2, 3),
  new Elemento("F", 17, 2, 3),
  new Elemento("Ne", 18, 2, 1),
  new Elemento("Na", 1, 3, 2),
  new Elemento("Mg", 2, 3, 2),
  new Elemento("Al", 13, 3, 2),
  new Elemento("Si", 14, 3, 4),
  new Elemento("P", 15, 3, 3),
  new Elemento("S", 16, 3, 3),
  new Elemento("Cl", 17, 3, 3),
  new Elemento("Ar", 18, 3, 1),
  new Elemento("K", 1, 4, 2),
  new Elemento("Ca", 2, 4, 2),
  new Elemento("Sc", 3, 4, 2),
  new Elemento("Ti", 4, 4, 2),
  new Elemento("V", 5, 4, 2),
  new Elemento("Cr", 6, 4, 2),
  new Elemento("Mn", 7, 4, 2),
  new Elemento("Fe", 8, 4, 2),
  new Elemento("Co", 9, 4, 2),
  new Elemento("Ni", 10, 4, 2),
  new Elemento("Cu", 11, 4, 2),
  new Elemento("Zn", 12, 4, 2),
  new Elemento("Ga", 13, 4, 2),
  new Elemento("Ge", 14, 4, 4),
  new Elemento("As", 15, 4, 4),
  new Elemento("Se", 16, 4, 3),
  new Elemento("Br", 17, 4, 3),
  new Elemento("Kr", 18, 4, 1),
  new Elemento("Rb", 1, 5, 2),
  new Elemento("Sr", 2, 5, 2),
  new Elemento("Y", 3, 5, 2),
  new Elemento("Zr", 4, 5, 2),
  new Elemento("Nb", 5, 5, 2),
  new Elemento("Mo", 6, 5, 2),
  new Elemento("Tc", 7, 5, 2),
  new Elemento("Ru", 8, 5, 2),
  new Elemento("Rh", 9, 5, 2),
  new Elemento("Pd", 10, 5, 2),
  new Elemento("Ag", 11, 5, 2),
  new Elemento("Cd", 12, 5, 2),
  new Elemento("In", 13, 5, 2),
  new Elemento("Sn", 14, 5, 2),
  new Elemento("Sb", 15, 5, 4),
  new Elemento("Te", 16, 5, 4),
  new Elemento("I", 17, 5, 3),
  new Elemento("Xe", 18, 5, 1),
  new Elemento("Cs", 1, 6, 2),
  new Elemento("Ba", 2, 6, 2),
  new Elemento("*", 3, 6, 2),
  new Elemento("Hf", 4, 6, 2),
  new Elemento("Ta", 5, 6, 2),
  new Elemento("W", 6, 6, 2),
  new Elemento("Re", 7, 6, 2),
  new Elemento("Os", 8, 6, 2),
  new Elemento("Ir", 9, 6, 2),
  new Elemento("Pt", 10, 6, 2),
  new Elemento("Au", 11, 6, 2),
  new Elemento("Hg", 12, 6, 2),
  new Elemento("Ti", 13, 6, 2),
  new Elemento("Pb", 14, 6, 2),
  new Elemento("Bi", 15, 6, 2),
  new Elemento("Po", 16, 6, 4),
  new Elemento("At", 17, 6, 3),
  new Elemento("Rn", 18, 6, 1),
  new Elemento("Fr", 1, 7, 2),
  new Elemento("Ra", 2, 7, 2),
  new Elemento("**", 3, 7, 2),
  new Elemento("Rf", 4, 7, 2),
  new Elemento("Db", 5, 7, 2),
  new Elemento("Sg", 6, 7, 2),
  new Elemento("Bh", 7, 7, 2),
  new Elemento("Mt", 9, 7, 2),
  new Elemento("Ds", 10, 7, 2),
  new Elemento("Rg", 11, 7, 2),
  new Elemento("Cn", 12, 7, 2),
  new Elemento("Uut", 13, 7, 2),
  new Elemento("Uuq", 14, 7, 2),
  new Elemento("Uup", 15, 7, 2),
  new Elemento("Uuh", 16, 7, 2),
  new Elemento("Uus", 17, 7, 3),
  new Elemento("Uuo", 18, 7, 1),
  new Elemento("Hs", 8, 7, 2),
  new Elemento("La", 4, 9, 5),
  new Elemento("Ce", 5, 9, 5),
  new Elemento("Pr", 6, 9, 5),
  new Elemento("Nd", 7, 9, 5),
  new Elemento("Pm", 8, 9, 5),
  new Elemento("Sm", 9, 9, 5),
  new Elemento("Eu", 10, 9, 5),
  new Elemento("Gd", 11, 9, 5),
  new Elemento("Tb", 12, 9, 5),
  new Elemento("Dy", 13, 9, 5),
  new Elemento("Ho", 14, 9, 5),
  new Elemento("Er", 15, 9, 5),
  new Elemento("Tm", 16, 9, 5),
  new Elemento("Yb", 17, 9, 5),
  new Elemento("Lu", 18, 9, 5),
  new Elemento("Ac", 4, 10, 6),
  new Elemento("Th", 5, 10, 6),
  new Elemento("Pa", 6, 10, 6),
  new Elemento("U", 7, 10, 6),
  new Elemento("Np", 8, 10, 6),
  new Elemento("Pu", 9, 10, 6),
  new Elemento("Am", 10, 10, 6),
  new Elemento("Cm", 11, 10, 6),
  new Elemento("Bk", 12, 10, 6),
  new Elemento("Cf", 13, 10, 6),
  new Elemento("Es", 14, 10, 6),
  new Elemento("Fm", 15, 10, 6),
  new Elemento("Md", 16, 10, 6),
  new Elemento("No", 17, 10, 6),
  new Elemento("Lr", 18, 10, 6),
};

void setup(){
size(1350,700);
background(255);
bg = loadImage("tabela.png");
if(cond==0){
fill(245,185,100);
rect(198,115,20,20);
fill(255,100,100);
rect(320,115,20,20);
fill(255,255,0);
rect(460,115,20,20);
fill(150,100,200);
rect(550,115,20,20);
fill(180,195,250);
rect(675,115,20,20);
fill(85,250,0);
rect(320,150,20,20);
fill(221,52,65);
rect(460,150,20,20);
textSize(16);
fill(0);
text("Hidrogênio", 223, 130); 
text("Gases nobres", 345, 130);
text("Metais", 485, 130);
text("Não-metais", 575, 130);
text("Semi-metais", 700, 130);
text("Lantanídios", 345, 165);
text("Actinídios", 485, 165);
textSize(32);
text("*", 185, 600);
text("**", 180, 670); 
textSize(48);
text("Tabela Periódica interativa",200,50);
fill(255);
}
else
if(cond==2){
    background(bg);
    fill(0);
    textSize(60);
    text("Seja bem-vindo à Tabela Periódica Interativa",30,225);
    text("Dê um clique para começar",200,400);
  }
}

void draw(){
  if(cond==2){
    fill(0);
    textSize(60);
    text("Seja bem-vindo à Tabela Periódica Interativa",30,225);
    text("Dê um clique para começar",200,400);
  }
  else
  if(mousePressed){
    if(value==0){
    background(255);
    if(((mouseX >= 40) && (mouseX <= 105)) && ((mouseY >= 30)&&(mouseY <= 95))){
    textSize(40);
    fill(0);
    text("Elemento: Hidrogênio",300,60);
    text("Número atômico: 1", 300, 110);
    text("Massa atômica: 1 u", 300, 160);
    text("Família: 1A ou Hidrogênio", 300, 210);
    text("Período: 1", 300, 260);
    text("Configuração eletrônica: 1s¹", 300, 310);
    text("Número de elétrons: 1", 300, 360);
    text("Ponto de fusão: -259 °C", 300, 410);
    text("Ponto de ebulição: -253 °C", 300, 460);
    text("Estado físico natural: gasoso", 300, 510);
    text("Eletronegatividade: 2,2", 300, 560);
    text("Calor específico: 3,4 cal/g.°C", 300, 610);
    }
    else
       if(((mouseX >= 40) && (mouseX <= 105)) && ((mouseY >= 97)&&(mouseY <= 162))){
          textSize(40);
          fill(0);
          text("Elemento: Lítio",300,60);
          text("Número atômico: 3", 300, 110);
          text("Massa atômica: 7 u", 300, 160);
          text("Família: 1A ou Metais Alcalinos", 300, 210);
          text("Período: 2", 300, 260);
          text("Configuração eletrônica: 1s² 2s¹", 300, 310);
          text("Número de elétrons: 2, 1", 300, 360);
          text("Ponto de fusão: 180 °C", 300, 410);
          text("Ponto de ebulição: 1342 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 0,98", 300, 560);
          text("Calor específico: 3573 J/kg.°C", 300, 610);
      }
      else
       if(((mouseX >= 40) && (mouseX <= 105)) && ((mouseY >= 164)&&(mouseY <= 229))){
          textSize(40);
          fill(0);
          text("Elemento: Sódio",300,60);
          text("Número atômico: 11", 300, 110);
          text("Massa atômica: 23 u", 300, 160);
          text("Família: 1A ou Metais Alcalinos", 300, 210);
          text("Período: 3", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p² 3s¹", 300, 310);
          text("Número de elétrons: 2, 8, 1", 300, 360);
          text("Ponto de fusão: 98 °C", 300, 410);
          text("Ponto de ebulição: 883 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 0,93", 300, 560);
          text("Calor específico: 1227 J/kg.°C", 300, 610);
      }
      else
       if(((mouseX >= 40) && (mouseX <= 105)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Potássio",300,60);
          text("Número atômico: 19", 300, 110);
          text("Massa atômica: 39 u", 300, 160);
          text("Família: 1A ou Metais Alcalinos", 300, 210);
          text("Período: 4", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  4s¹", 300, 310);
          textSize(22);
          text("6                    6", 990, 297);
          textSize(40);
          text("Número de elétrons: 2, 8, 8, 1", 300, 360);
          text("Ponto de fusão: 64 °C", 300, 410);
          text("Ponto de ebulição: 760 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 0,82", 300, 560);
          text("Calor específico: 757 J/kg.°C", 300, 610);
      }
      else
       if(((mouseX >= 40) && (mouseX <= 105)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Rubídio",300,60);
          text("Número atômico: 37", 300, 110);
          text("Massa atômica: 85 u", 300, 160);
          text("Família: 1A ou Metais Alcalinos", 300, 210);
          text("Período: 5", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  4s² 4p  5s¹", 100, 310);
          textSize(22);
          text("6                    6                    6", 790, 297);
          textSize(40);
          text("Número de elétrons: 2, 8, 8, 8, 1", 300, 360);
          text("Ponto de fusão: 39 °C", 300, 410);
          text("Ponto de ebulição: 688 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 0,82", 300, 560);
          text("Calor específico: 364 J/kg.°C", 300, 610);
      }
      else
       if(((mouseX >= 40) && (mouseX <= 105)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Elemento: Césio",300,40);
          text("Número atômico: 55", 300, 90);
          text("Massa atômica: 133 u", 300, 140);
          text("Família: 1A ou Metais Alcalinos", 300, 190);
          text("Período: 6", 300, 240);
          textSize(22);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   5s² 5p  6s¹", 300, 290);
          textSize(12);
          text("6                    6         10                    6        10                    6", 680, 283);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 18, 8, 1", 300, 340);
          text("Ponto de fusão: 28 °C", 300, 390);
          text("Ponto de ebulição: 671 °C", 300, 440);
          text("Estado físico natural: sólido", 300, 490);
          text("Eletronegatividade: 0,79", 300, 540);
          text("Calor específico: 242 J/kg.°C", 300, 590);
      }
      else
       if(((mouseX >= 40) && (mouseX <= 105)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Elemento: Frâncio",300,40);
          text("Número atômico: 87", 300, 90);
          text("Massa atômica: 223 u", 300, 140);
          text("Família: 1A ou Metais Alcalinos", 300, 190);
          text("Período: 7", 300, 240);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   5s² 5p  6s² 6p  7s¹", 50, 290);
          textSize(14);
          text("6                    6         10                    6         10                    6                    6", 500, 281);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 18, 8, 1", 300, 340);
          text("Ponto de fusão: 27 °C", 300, 390);
          text("Ponto de ebulição: 677 °C", 300, 440);
          text("Estado físico natural: sólido", 300, 490);
          text("Eletronegatividade: 0,7", 300, 540);
          text("Calor específico: Desconhecido", 300, 590);
      }
       else
       if(((mouseX >= 107) && (mouseX <= 172)) && ((mouseY >= 97)&&(mouseY <= 162))){
          textSize(40);
          fill(0);
          text("Elemento: Berílio",300,60);
          text("Número atômico: 4", 300, 110);
          text("Massa atômica: 9 u", 300, 160);
          text("Família: 2A ou Metais Alcalinos-Terrosos", 300, 210);
          text("Período: 2", 300, 260);
          text("Configuração eletrônica: 1s² 2s²", 300, 310);
          text("Número de elétrons: 2, 2", 300, 360);
          text("Ponto de fusão: 1287 °C", 300, 410);
          text("Ponto de ebulição: 2469 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,57", 300, 560);
          text("Calor específico: 1825 J/kg.°C", 300, 610);
      }
      else
       if(((mouseX >= 107) && (mouseX <= 172)) && ((mouseY >= 164)&&(mouseY <= 229))){
          textSize(40);
          fill(0);
          text("Elemento: Magnésio",300,60);
          text("Número atômico: 12", 300, 110);
          text("Massa atômica: 24 u", 300, 160);
          text("Família: 2A ou Metais Alcalinos-Terrosos", 300, 210);
          text("Período: 3", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s²", 300, 310);
          textSize(20);
          text("6", 990, 295);
          textSize(40);
          text("Número de elétrons: 2, 8, 2", 300, 360);
          text("Ponto de fusão: 650 °C", 300, 410);
          text("Ponto de ebulição: 1090 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,31", 300, 560);
          text("Calor específico: 1024 J/kg.°C", 300, 610);
      }
      else
       if(((mouseX >= 107) && (mouseX <= 172)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Cálcio",300,60);
          text("Número atômico: 20", 300, 110);
          text("Massa atômica: 40 u", 300, 160);
          text("Família: 2A ou Metais Alcalinos-Terrosos", 300, 210);
          text("Período: 4", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  4s²", 300, 310);
          textSize(22);
          text("6                    6", 990, 297);
          textSize(40);
          text("Número de elétrons: 2, 8, 8, 2", 300, 360);
          text("Ponto de fusão: 840 °C", 300, 410);
          text("Ponto de ebulição: 1484 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,0", 300, 560);
          text("Calor específico: 631 J/kg.°C", 300, 610);
      }
      else
       if(((mouseX >= 107) && (mouseX <= 172)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Estrôncio",300,60);
          text("Número atômico: 38", 300, 110);
          text("Massa atômica: 88 u", 300, 160);
          text("Família: 2A ou Metais Alcalinos-Terrosos", 300, 210);
          text("Período: 5", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  5s²", 20, 310);
          textSize(22);
          text(" 6                    6         10                   6", 700, 297);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 8, 2", 300, 360);
          text("Ponto de fusão: 777 °C", 300, 410);
          text("Ponto de ebulição: 1382 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 0,95", 300, 560);
          text("Calor específico: 296 J/kg.°C", 300, 610);
      }
      else
       if(((mouseX >= 107) && (mouseX <= 172)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Elemento: Bário",300,60);
          text("Número atômico: 56", 300, 110);
          text("Massa atômica: 137 u", 300, 160);
          text("Família: 2A ou Metais Alcalinos-Terrosos", 300, 210);
          text("Período: 6", 300, 260);
          textSize(22);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   5s² 5p  6s²", 300, 300);
          textSize(12);
          text("6                    6         10                    6        10                    6", 680, 293);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 18, 8, 2", 300, 360);
          text("Ponto de fusão: 727 °C", 300, 410);
          text("Ponto de ebulição: 1870 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 0,89", 300, 560);
          text("Calor específico: 205 J/kg.°C", 300, 610);
      }
      else
       if(((mouseX >= 107) && (mouseX <= 172)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Elemento: Rádio",300,60);
          text("Número atômico: 88", 300, 110);
          text("Massa atômica: 226 u", 300, 160);
          text("Família: 2A ou Metais Alcalinos-Terrosos", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   5s² 5p  6s² 6p  7s²", 50, 300);
          textSize(14);
          text("6                    6         10                    6         10                    6                    6", 500, 291);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 18, 8, 2", 300, 360);
          text("Ponto de fusão: 727 °C", 300, 410);
          text("Ponto de ebulição: 1870 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 0,89", 300, 560);
          text("Calor específico: 205 J/kg.°C", 300, 610);
      }
      else
       if(((mouseX >= 174) && (mouseX <= 239)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Escândio",300,60);
          text("Número atômico: 21", 300, 110);
          text("Massa atômica: 45 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 4", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d¹ 4s²", 150, 310);
          textSize(22);
          text("6                    6", 840, 297);
          textSize(40);
          text("Número de elétrons: 2, 8, 9, 2", 300, 360);
          text("Ponto de fusão: 1541 °C", 300, 410);
          text("Ponto de ebulição: 2830 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,36", 300, 560);
          text("Calor específico: 568 J/kg.°C", 300, 610);
      }
      else
       if(((mouseX >= 174) && (mouseX <= 239)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Ítrio",300,60);
          text("Número atômico: 39", 300, 110);
          text("Massa atômica: 89 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 5", 300, 260);
          textSize(33);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d¹ 5s²", 50, 310);
          textSize(18);
          text("6                    6         10                   6", 620, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 9, 2", 300, 360);
          text("Ponto de fusão: 1526 °C", 300, 410);
          text("Ponto de ebulição: 3336 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,22", 300, 560);
          text("Calor específico: 298 J/kg.°C", 300, 610);
      }
      else
       if(((mouseX >= 174) && (mouseX <= 239)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Clique em algum elemento de cor verde (Lantanídios)",150,300);
      }
      else
       if(((mouseX >= 174) && (mouseX <= 239)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Clique em algum elemento de cor vermelho-escuro (Actinídios)",100,300);
      }
      else
       if(((mouseX >= 241) && (mouseX <= 306)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Titânio",300,60);
          text("Número atômico: 22", 300, 110);
          text("Massa atômica: 48 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 4", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d² 4s²", 150, 310);
          textSize(22);
          text("6                    6", 840, 297);
          textSize(40);
          text("Número de elétrons: 2, 8, 10, 2", 300, 360);
          text("Ponto de fusão: 1668 °C", 300, 410);
          text("Ponto de ebulição: 3287 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,54", 300, 560);
          text("Calor específico: 523 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 241) && (mouseX <= 306)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Zircônio",300,60);
          text("Número atômico: 40", 300, 110);
          text("Massa atômica: 91 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 5", 300, 260);
          textSize(36);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d² 5s²", 50, 310);
          textSize(20);
          text("6                   6         10                   6", 670, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 10, 2", 300, 360);
          text("Ponto de fusão: 1885 °C", 300, 410);
          text("Ponto de ebulição: 4409 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,33", 300, 560);
          text("Calor específico: 278 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 241) && (mouseX <= 306)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Elemento: Háfnio",300,60);
          text("Número atômico: 72", 300, 110);
          text("Massa atômica: 178,5 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d² 6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6", 502, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 10, 2", 300, 360);
          text("Ponto de fusão: 2233 °C", 300, 410);
          text("Ponto de ebulição: 4602 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,3", 300, 560);
          text("Calor específico: 144 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 241) && (mouseX <= 306)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Elemento: Rutherfórdio",300,60);
          text("Número atômico: 104", 300, 110);
          text("Massa atômica: 261 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f    5s² 5p  5d   5f   6s² 6p  6d² 7s²", 50, 300);
          textSize(14);
          text("6                    6         10                    6         10         14                    6         10         14                    6", 500, 291);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 32, 10, 2", 300, 360);
          text("Ponto de fusão: Desconhecido", 300, 410);
          text("Ponto de ebulição: Desconhecido", 300, 460);
          text("Estado físico natural: sólido (presumido)", 300, 510);
          text("Eletronegatividade: Desconhecida", 300, 560);
          text("Calor específico: Desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 308) && (mouseX <= 373)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Vanádio",300,60);
          text("Número atômico: 23", 300, 110);
          text("Massa atômica: 51 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 4", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d³ 4s²", 150, 310);
          textSize(22);
          text("6                    6", 840, 297);
          textSize(40);
          text("Número de elétrons: 2, 8, 11, 2", 300, 360);
          text("Ponto de fusão: 1910 °C", 300, 410);
          text("Ponto de ebulição: 3407 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,63", 300, 560);
          text("Calor específico: 489 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 308) && (mouseX <= 373)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Nióbio",300,60);
          text("Número atômico: 41", 300, 110);
          text("Massa atômica: 93 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 5", 300, 260);
          textSize(36);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d  5s¹", 50, 310);
          textSize(20);
          text("6                   6         10                   6         4", 670, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 12, 1", 300, 360);
          text("Ponto de fusão: 2477 °C", 300, 410);
          text("Ponto de ebulição: 4742 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,6", 300, 560);
          text("Calor específico: 265 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 308) && (mouseX <= 373)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Elemento: Tântalo",300,60);
          text("Número atômico: 73", 300, 110);
          text("Massa atômica: 181 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d³ 6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6", 502, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 11, 2", 300, 360);
          text("Ponto de fusão: 3017 °C", 300, 410);
          text("Ponto de ebulição: 5458 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,5", 300, 560);
          text("Calor específico: 140 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 308) && (mouseX <= 373)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Elemento: Dúbnio",300,60);
          text("Número atômico: 105", 300, 110);
          text("Massa atômica: 262 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f    5s² 5p  5d   5f   6s² 6p  6d³ 7s²", 50, 300);
          textSize(14);
          text("6                    6         10                    6         10         14                    6         10         14                    6", 500, 291);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 32, 11, 2", 300, 360);
          text("Ponto de fusão: Desconhecido", 300, 410);
          text("Ponto de ebulição: Desconhecido", 300, 460);
          text("Estado físico natural: sólido (presumido)", 300, 510);
          text("Eletronegatividade: Desconhecida", 300, 560);
          text("Calor específico: Desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 375) && (mouseX <= 440)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Cromo",300,60);
          text("Número atômico: 24", 300, 110);
          text("Massa atômica: 52 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 4", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d  4s²", 150, 310);
          textSize(22);
          text("6                    6         5", 840, 297);
          textSize(40);
          text("Número de elétrons: 2, 8, 13, 1", 300, 360);
          text("Ponto de fusão: 1907 °C", 300, 410);
          text("Ponto de ebulição: 2671 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,66", 300, 560);
          text("Calor específico: 448 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 375) && (mouseX <= 440)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Molibdênio",300,60);
          text("Número atômico: 42", 300, 110);
          text("Massa atômica: 96 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 5", 300, 260);
          textSize(36);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d  5s¹", 50, 310);
          textSize(20);
          text("6                   6         10                   6         5", 670, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 13, 1", 300, 360);
          text("Ponto de fusão: 2623 °C", 300, 410);
          text("Ponto de ebulição: 4639 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,16", 300, 560);
          text("Calor específico: 251 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 375) && (mouseX <= 440)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Elemento: Tungstênio",300,60);
          text("Número atômico: 74", 300, 110);
          text("Massa atômica: 184 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d  6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6        4", 502, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 12, 2", 300, 360);
          text("Ponto de fusão: 3422 °C", 300, 410);
          text("Ponto de ebulição: 5555 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,36", 300, 560);
          text("Calor específico: 132 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 375) && (mouseX <= 440)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Elemento: Seabórgio",300,60);
          text("Número atômico: 106", 300, 110);
          text("Massa atômica: 266 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f    5s² 5p  5d   5f   6s² 6p  6d  7s²", 50, 300);
          textSize(14);
          text("6                    6         10                    6         10         14                    6         10         14                   6         4", 500, 291);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 32, 12, 2", 300, 360);
          text("Ponto de fusão: Desconhecido", 300, 410);
          text("Ponto de ebulição: Desconhecido", 300, 460);
          text("Estado físico natural: sólido (presumido)", 300, 510);
          text("Eletronegatividade: Desconhecida", 300, 560);
          text("Calor específico: Desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 442) && (mouseX <= 507)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Manganês",300,60);
          text("Número atômico: 25", 300, 110);
          text("Massa atômica: 55 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 4", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d  4s²", 150, 310);
          textSize(22);
          text("6                    6         5", 840, 297);
          textSize(40);
          text("Número de elétrons: 2, 8, 13, 2", 300, 360);
          text("Ponto de fusão: 1246 °C", 300, 410);
          text("Ponto de ebulição: 2061 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,55", 300, 560);
          text("Calor específico: 479 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 442) && (mouseX <= 507)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Tecnécio",300,60);
          text("Número atômico: 43", 300, 110);
          text("Massa atômica: 98 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 5", 300, 260);
          textSize(36);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d  5s²", 50, 310);
          textSize(20);
          text("6                   6         10                   6         5", 670, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 13, 2", 300, 360);
          text("Ponto de fusão: 2157 °C", 300, 410);
          text("Ponto de ebulição: 4265 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,9", 300, 560);
          text("Calor específico: 210 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 442) && (mouseX <= 507)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Elemento: Rênio",300,60);
          text("Número atômico: 75", 300, 110);
          text("Massa atômica: 186 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d  6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6        5", 502, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 13, 2", 300, 360);
          text("Ponto de fusão: 3186 °C", 300, 410);
          text("Ponto de ebulição: 5596 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,9", 300, 560);
          text("Calor específico: 137 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 442) && (mouseX <= 507)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Elemento: Bóhrio",300,60);
          text("Número atômico: 107", 300, 110);
          text("Massa atômica: 264 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f    5s² 5p  5d   5f   6s² 6p  6d  7s²", 50, 300);
          textSize(14);
          text("6                    6         10                    6         10         14                    6         10         14                   6         5", 500, 291);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 32, 13, 2", 300, 360);
          text("Ponto de fusão: Desconhecido", 300, 410);
          text("Ponto de ebulição: Desconhecido", 300, 460);
          text("Estado físico natural: sólido (presumido)", 300, 510);
          text("Eletronegatividade: Desconhecida", 300, 560);
          text("Calor específico: Desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 509) && (mouseX <= 574)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Ferro",300,60);
          text("Número atômico: 26", 300, 110);
          text("Massa atômica: 56 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 4", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d  4s²", 150, 310);
          textSize(22);
          text("6                    6         6", 840, 297);
          textSize(40);
          text("Número de elétrons: 2, 8, 14, 2", 300, 360);
          text("Ponto de fusão: 1538 °C", 300, 410);
          text("Ponto de ebulição: 2831 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,83", 300, 560);
          text("Calor específico: 449 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 509) && (mouseX <= 574)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Rutênio",300,60);
          text("Número atômico: 44", 300, 110);
          text("Massa atômica: 101 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 5", 300, 260);
          textSize(36);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d  5s²", 50, 310);
          textSize(20);
          text("6                   6         10                   6         6", 670, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 14, 2", 300, 360);
          text("Ponto de fusão: 2334 °C", 300, 410);
          text("Ponto de ebulição: 4150 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,2", 300, 560);
          text("Calor específico: 238 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 509) && (mouseX <= 574)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Elemento: Ósmio",300,60);
          text("Número atômico: 76", 300, 110);
          text("Massa atômica: 190 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d  6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6        6", 502, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 14, 2", 300, 360);
          text("Ponto de fusão: 3033 °C", 300, 410);
          text("Ponto de ebulição: 5012 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,2", 300, 560);
          text("Calor específico: 131 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 509) && (mouseX <= 574)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Elemento: Hássio",300,60);
          text("Número atômico: 108", 300, 110);
          text("Massa atômica: 269 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f    5s² 5p  5d   5f   6s² 6p  6d  7s²", 50, 300);
          textSize(14);
          text("6                    6         10                    6         10         14                    6         10         14                   6         6", 500, 291);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 32, 14, 2", 300, 360);
          text("Ponto de fusão: Desconhecido", 300, 410);
          text("Ponto de ebulição: Desconhecido", 300, 460);
          text("Estado físico natural: sólido (presumido)", 300, 510);
          text("Eletronegatividade: Desconhecida", 300, 560);
          text("Calor específico: Desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 576) && (mouseX <= 641)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Cobalto",300,60);
          text("Número atômico: 27", 300, 110);
          text("Massa atômica: 59 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 4", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d  4s²", 150, 310);
          textSize(22);
          text("6                    6         7", 840, 297);
          textSize(40);
          text("Número de elétrons: 2, 8, 15, 2", 300, 360);
          text("Ponto de fusão: 1495 °C", 300, 410);
          text("Ponto de ebulição: 2927 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,88", 300, 560);
          text("Calor específico: 420 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 576) && (mouseX <= 641)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Ródio",300,60);
          text("Número atômico: 45", 300, 110);
          text("Massa atômica: 103 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 5", 300, 260);
          textSize(36);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d  5s²", 50, 310);
          textSize(20);
          text("6                   6         10                   6         7", 670, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 15, 2", 300, 360);
          text("Ponto de fusão: 1964 °C", 300, 410);
          text("Ponto de ebulição: 3695 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,28", 300, 560);
          text("Calor específico: 243 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 576) && (mouseX <= 641)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Elemento: Irídio",300,60);
          text("Número atômico: 77", 300, 110);
          text("Massa atômica: 192 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d  6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6        7", 502, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 15, 2", 300, 360);
          text("Ponto de fusão: 2466 °C", 300, 410);
          text("Ponto de ebulição: 4428 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,2", 300, 560);
          text("Calor específico: 130 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 576) && (mouseX <= 641)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Elemento: Meitnério",300,60);
          text("Número atômico: 109", 300, 110);
          text("Massa atômica: 268 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f    5s² 5p  5d   5f   6s² 6p  6d  7s²", 50, 300);
          textSize(14);
          text("6                    6         10                    6         10         14                    6         10         14                   6         7", 500, 291);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 32, 15, 2", 300, 360);
          text("Ponto de fusão: Desconhecido", 300, 410);
          text("Ponto de ebulição: Desconhecido", 300, 460);
          text("Estado físico natural: sólido (presumido)", 300, 510);
          text("Eletronegatividade: Desconhecida", 300, 560);
          text("Calor específico: Desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 643) && (mouseX <= 708)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Níquel",300,60);
          text("Número atômico: 28", 300, 110);
          text("Massa atômica: 58 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 4", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d  4s²", 150, 310);
          textSize(22);
          text("6                    6         8", 840, 297);
          textSize(40);
          text("Número de elétrons: 2, 8, 16, 2", 300, 360);
          text("Ponto de fusão: 1455 °C", 300, 410);
          text("Ponto de ebulição: 2913 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,91", 300, 560);
          text("Calor específico: 444 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 643) && (mouseX <= 708)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Paládio",300,60);
          text("Número atômico: 46", 300, 110);
          text("Massa atômica: 106 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 5", 300, 260);
          textSize(36);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d  5s²", 50, 310);
          textSize(20);
          text("6                   6         10                   6         8", 670, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 16, 2", 300, 360);
          text("Ponto de fusão: 1555 °C", 300, 410);
          text("Ponto de ebulição: 2963 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,2", 300, 560);
          text("Calor específico: 244 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 643) && (mouseX <= 708)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Elemento: Platina",300,60);
          text("Número atômico: 78", 300, 110);
          text("Massa atômica: 195 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d  6s¹", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6        9", 502, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 17, 1", 300, 360);
          text("Ponto de fusão: 1768 °C", 300, 410);
          text("Ponto de ebulição: 3825 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,28", 300, 560);
          text("Calor específico: 133 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 643) && (mouseX <= 708)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Elemento: Darmstácio",300,60);
          text("Número atômico: 110", 300, 110);
          text("Massa atômica: 281 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f    5s² 5p  5d   5f   6s² 6p  6d  7s¹", 50, 300);
          textSize(14);
          text("6                    6         10                    6         10         14                    6         10         14                   6         9", 500, 291);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 32, 17, 1", 300, 360);
          text("Ponto de fusão: Desconhecido", 300, 410);
          text("Ponto de ebulição: Desconhecido", 300, 460);
          text("Estado físico natural: sólido (presumido)", 300, 510);
          text("Eletronegatividade: Desconhecida", 300, 560);
          text("Calor específico: Desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 710) && (mouseX <= 775)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Cobre",300,60);
          text("Número atômico: 29", 300, 110);
          text("Massa atômica: 64 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 4", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s²", 150, 310);
          textSize(22);
          text("6                    6        10", 840, 297);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 2", 300, 360);
          text("Ponto de fusão: 1085 °C", 300, 410);
          text("Ponto de ebulição: 2927 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,67", 300, 560);
          text("Calor específico: 385 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 710) && (mouseX <= 775)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Prata",300,60);
          text("Número atômico: 47", 300, 110);
          text("Massa atômica: 108 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 5", 300, 260);
          textSize(36);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d  5s¹", 50, 310);
          textSize(20);
          text("6                   6         10                   6         10", 670, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 18, 1", 300, 360);
          text("Ponto de fusão: 962 °C", 300, 410);
          text("Ponto de ebulição: 2162 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,93", 300, 560);
          text("Calor específico: 235 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 710) && (mouseX <= 775)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Elemento: Ouro",300,60);
          text("Número atômico: 79", 300, 110);
          text("Massa atômica: 197 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d  6s¹", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6        10", 502, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 18, 1", 300, 360);
          text("Ponto de fusão: 1064 °C", 300, 410);
          text("Ponto de ebulição: 2856 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,54", 300, 560);
          text("Calor específico: 129 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 710) && (mouseX <= 775)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Elemento: Roentgênio",300,60);
          text("Número atômico: 111", 300, 110);
          text("Massa atômica: 281 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f    5s² 5p  5d   5f   6s² 6p  6d   7s¹", 50, 300);
          textSize(14);
          text("6                    6         10                    6         10         14                    6         10         14                   6         10", 500, 291);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 32, 18, 1", 300, 360);
          text("Ponto de fusão: Desconhecido", 300, 410);
          text("Ponto de ebulição: Desconhecido", 300, 460);
          text("Estado físico natural: sólido (presumido)", 300, 510);
          text("Eletronegatividade: Desconhecida", 300, 560);
          text("Calor específico: Desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 777) && (mouseX <= 842)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Zinco",300,60);
          text("Número atômico: 30", 300, 110);
          text("Massa atômica: 65 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 4", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s²", 150, 310);
          textSize(22);
          text("6                    6        10", 840, 297);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 2", 300, 360);
          text("Ponto de fusão: 419,5 °C", 300, 410);
          text("Ponto de ebulição: 907 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,65", 300, 560);
          text("Calor específico: 388 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 777) && (mouseX <= 842)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Cádmio",300,60);
          text("Número atômico: 48", 300, 110);
          text("Massa atômica: 112 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 5", 300, 260);
          textSize(36);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d  5s²", 50, 310);
          textSize(20);
          text("6                   6         10                   6         10", 670, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 18, 2", 300, 360);
          text("Ponto de fusão: 321 °C", 300, 410);
          text("Ponto de ebulição: 767 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,69", 300, 560);
          text("Calor específico: 231 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 777) && (mouseX <= 842)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Elemento: Ouro",300,60);
          text("Número atômico: 80", 300, 110);
          text("Massa atômica: 201 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d  6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6        10", 502, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 18, 2", 300, 360);
          text("Ponto de fusão: -39 °C", 300, 410);
          text("Ponto de ebulição: 357 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,0", 300, 560);
          text("Calor específico: 239 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 777) && (mouseX <= 842)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Elemento: Copernício",300,60);
          text("Número atômico: 112", 300, 110);
          text("Massa atômica: 285 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f    5s² 5p  5d   5f   6s² 6p  6d   7s²", 50, 300);
          textSize(14);
          text("6                    6         10                    6         10         14                    6         10         14                   6         10", 500, 291);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 32, 18, 2", 300, 360);
          text("Ponto de fusão: Desconhecido", 300, 410);
          text("Ponto de ebulição: Desconhecido", 300, 460);
          text("Estado físico natural: sólido (presumido)", 300, 510);
          text("Eletronegatividade: Desconhecida", 300, 560);
          text("Calor específico: Desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 844) && (mouseX <= 909)) && ((mouseY >= 97)&&(mouseY <= 162))){
          textSize(40);
          fill(0);
          text("Elemento: Boro",300,60);
          text("Número atômico: 5", 300, 110);
          text("Massa atômica: 11 u", 300, 160);
          text("Família: 3A ou Boro", 300, 210);
          text("Período: 2", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p¹", 300, 310);
          text("Número de elétrons: 2, 3", 300, 360);
          text("Ponto de fusão: 2075 °C", 300, 410);
          text("Ponto de ebulição: 4000 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,04", 300, 560);
          text("Calor específico: 1026 J/(kg·K)", 300, 610);
      }
      else
       if(((mouseX >= 844) && (mouseX <= 909)) && ((mouseY >= 164)&&(mouseY <= 229))){
          textSize(40);
          fill(0);
          text("Elemento: Alumínio",300,60);
          text("Número atômico: 13", 300, 110);
          text("Massa atômica: 27 u", 300, 160);
          text("Família: 3A ou Boro", 300, 210);
          text("Período: 3", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p¹", 300, 310);
          textSize(20);
          text("6", 990, 295);
          textSize(40);
          text("Número de elétrons: 2, 8, 3", 300, 360);
          text("Ponto de fusão: 660 °C", 300, 410);
          text("Ponto de ebulição: 2519 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,61", 300, 560);
          text("Calor específico: 900 J/(kg·K)", 300, 610);
      }
       else
       if(((mouseX >= 844) && (mouseX <= 909)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Gálio",300,60);
          text("Número atômico: 31", 300, 110);
          text("Massa atômica: 70 u", 300, 160);
          text("Família: 3A ou Boro", 300, 210);
          text("Período: 4", 300, 260);
          textSize(36);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p¹", 150, 310);
          textSize(20);
          text("6                    6        10", 770, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 3", 300, 360);
          text("Ponto de fusão: 30 °C", 300, 410);
          text("Ponto de ebulição: 2204 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,81", 300, 560);
          text("Calor específico: 371 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 844) && (mouseX <= 909)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Índio",300,60);
          text("Número atômico: 49", 300, 110);
          text("Massa atômica: 115 u", 300, 160);
          text("Família: 3A ou Boro", 300, 210);
          text("Período: 5", 300, 260);
          textSize(32);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   5s² 5p¹", 50, 310);
          textSize(18);
          text("6                    6        10                   6         10", 600, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 18, 3", 300, 360);
          text("Ponto de fusão: 157 °C", 300, 410);
          text("Ponto de ebulição: 2072 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,78", 300, 560);
          text("Calor específico: 232 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 844) && (mouseX <= 909)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Elemento: Tálio",300,60);
          text("Número atômico: 81", 300, 110);
          text("Massa atômica: 204 u", 300, 160);
          text("Família: 3A ou Boro", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d  6s² 6p¹", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6        10", 502, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 18, 3", 300, 360);
          text("Ponto de fusão: 303,5 °C", 300, 410);
          text("Ponto de ebulição: 1473 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,62", 300, 560);
          text("Calor específico: 129 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 844) && (mouseX <= 909)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Elemento: Unúntrio",300,60);
          text("Número atômico: 113", 300, 110);
          text("Massa atômica: 286 u", 300, 160);
          text("Família: 3A ou Boro", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f    5s² 5p  5d   5f   6s² 6p  6d   7s² 7p¹", 50, 300);
          textSize(14);
          text("6                    6         10                    6         10         14                    6         10         14                   6         10", 500, 291);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 32, 18, 3", 300, 360);
          text("Ponto de fusão: Desconhecido", 300, 410);
          text("Ponto de ebulição: Desconhecido", 300, 460);
          text("Estado físico natural: sólido (presumido)", 300, 510);
          text("Eletronegatividade: Desconhecida", 300, 560);
          text("Calor específico: Desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 911) && (mouseX <= 976)) && ((mouseY >= 97)&&(mouseY <= 162))){
          textSize(40);
          fill(0);
          text("Elemento: Carbono",300,60);
          text("Número atômico: 6", 300, 110);
          text("Massa atômica: 12 u", 300, 160);
          text("Família: 4A ou Carbono", 300, 210);
          text("Período: 2", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p²", 300, 310);
          text("Número de elétrons: 2, 4", 300, 360);
          text("Ponto de fusão: 3527 °C", 300, 410);
          text("Ponto de ebulição: 4027 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,55", 300, 560);
          text("Calor específico: 710 J/(kg°C)", 300, 610);
      }
      else
       if(((mouseX >= 911) && (mouseX <= 976)) && ((mouseY >= 164)&&(mouseY <= 229))){
          textSize(40);
          fill(0);
          text("Elemento: Silício",300,60);
          text("Número atômico: 14", 300, 110);
          text("Massa atômica: 28 u", 300, 160);
          text("Família: 4A ou Carbono", 300, 210);
          text("Período: 3", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p²", 300, 310);
          textSize(20);
          text("6", 990, 295);
          textSize(40);
          text("Número de elétrons: 2, 8, 4", 300, 360);
          text("Ponto de fusão: 1414 °C", 300, 410);
          text("Ponto de ebulição: 2900 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,9", 300, 560);
          text("Calor específico: 712 J/(kg·K)", 300, 610);
      }
       else
       if(((mouseX >= 911) && (mouseX <= 976)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Germânio",300,60);
          text("Número atômico: 32", 300, 110);
          text("Massa atômica: 73 u", 300, 160);
          text("Família: 4A ou Carbono", 300, 210);
          text("Período: 4", 300, 260);
          textSize(36);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p²", 150, 310);
          textSize(20);
          text("6                    6        10", 770, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 4", 300, 360);
          text("Ponto de fusão: 938 °C", 300, 410);
          text("Ponto de ebulição: 2820 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,01", 300, 560);
          text("Calor específico: 320 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 911) && (mouseX <= 976)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Estanho",300,60);
          text("Número atômico: 50", 300, 110);
          text("Massa atômica: 119 u", 300, 160);
          text("Família: 4A ou Carbono", 300, 210);
          text("Período: 5", 300, 260);
          textSize(32);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   5s² 5p²", 50, 310);
          textSize(18);
          text("6                    6        10                   6         10", 600, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 18, 4", 300, 360);
          text("Ponto de fusão: 232 °C", 300, 410);
          text("Ponto de ebulição: 2602 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,96", 300, 560);
          text("Calor específico: 227 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 911) && (mouseX <= 976)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Elemento: Chumbo",300,60);
          text("Número atômico: 82", 300, 110);
          text("Massa atômica: 207 u", 300, 160);
          text("Família: 4A ou Carbono", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   6s² 6p²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6        10", 502, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 18, 4", 300, 360);
          text("Ponto de fusão: 327,5 °C", 300, 410);
          text("Ponto de ebulição: 1749 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,33", 300, 560);
          text("Calor específico: 127 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 911) && (mouseX <= 976)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Elemento: Unilquádio",300,60);
          text("Número atômico: 114", 300, 110);
          text("Massa atômica: 289 u", 300, 160);
          text("Família: 4A ou Carbono", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f    5s² 5p  5d   5f   6s² 6p  6d   7s² 7p²", 50, 300);
          textSize(14);
          text("6                    6         10                    6         10         14                    6         10         14                   6         10", 500, 291);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 32, 18, 4", 300, 360);
          text("Ponto de fusão: Desconhecido", 300, 410);
          text("Ponto de ebulição: Desconhecido", 300, 460);
          text("Estado físico natural: sólido (presumido)", 300, 510);
          text("Eletronegatividade: Desconhecida", 300, 560);
          text("Calor específico: Desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 978) && (mouseX <= 1043)) && ((mouseY >= 97)&&(mouseY <= 162))){
          textSize(40);
          fill(0);
          text("Elemento: Nitrogênio",300,60);
          text("Número atômico: 7", 300, 110);
          text("Massa atômica: 14 u", 300, 160);
          text("Família: 5A ou Nitrogênio", 300, 210);
          text("Período: 2", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p³", 300, 310);
          text("Número de elétrons: 2, 5", 300, 360);
          text("Ponto de fusão: -210 °C", 300, 410);
          text("Ponto de ebulição: -196 °C", 300, 460);
          text("Estado físico natural: gasoso", 300, 510);
          text("Eletronegatividade: 3,04", 300, 560);
          text("Calor específico: 1040 J/(kg·K)", 300, 610);
      }
      else
       if(((mouseX >= 978) && (mouseX <= 1043)) && ((mouseY >= 164)&&(mouseY <= 229))){
          textSize(40);
          fill(0);
          text("Elemento: Fósforo",300,60);
          text("Número atômico: 15", 300, 110);
          text("Massa atômica: 31 u", 300, 160);
          text("Família: 5A ou Nitrogênio", 300, 210);
          text("Período: 3", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p³", 300, 310);
          textSize(20);
          text("6", 990, 295);
          textSize(40);
          text("Número de elétrons: 2, 8, 5", 300, 360);
          text("Ponto de fusão: 44 °C", 300, 410);
          text("Ponto de ebulição: 277 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,19", 300, 560);
          text("Calor específico: 770 J/(kg·K)", 300, 610);
      }
       else
       if(((mouseX >= 978) && (mouseX <= 1043)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Arsênio",300,60);
          text("Número atômico: 33", 300, 110);
          text("Massa atômica: 75 u", 300, 160);
          text("Família: 5A ou Nitrogênio", 300, 210);
          text("Período: 4", 300, 260);
          textSize(36);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p³", 150, 310);
          textSize(20);
          text("6                    6        10", 770, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 5", 300, 360);
          text("Ponto de fusão: 817 °C (28 atm)", 300, 410);
          text("Ponto de ebulição: 614 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,18", 300, 560);
          text("Calor específico: 328 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 978) && (mouseX <= 1043)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Antimônio",300,60);
          text("Número atômico: 51", 300, 110);
          text("Massa atômica: 122 u", 300, 160);
          text("Família: 5A ou Nitrogênio", 300, 210);
          text("Período: 5", 300, 260);
          textSize(32);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   5s² 5p³", 50, 310);
          textSize(18);
          text("6                    6        10                   6         10", 600, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 18, 5", 300, 360);
          text("Ponto de fusão: 631 °C", 300, 410);
          text("Ponto de ebulição: 1587 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,05", 300, 560);
          text("Calor específico: 207 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 978) && (mouseX <= 1043)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Elemento: Bismuto",300,60);
          text("Número atômico: 83", 300, 110);
          text("Massa atômica: 209 u", 300, 160);
          text("Família: 5A ou Nitrogênio", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   6s² 6p³", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6        10", 502, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 18, 5", 300, 360);
          text("Ponto de fusão: 271 °C", 300, 410);
          text("Ponto de ebulição: 1564 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,02", 300, 560);
          text("Calor específico: 122 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 978) && (mouseX <= 1043)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Elemento: Ununpêntio",300,60);
          text("Número atômico: 115", 300, 110);
          text("Massa atômica: 288 u", 300, 160);
          text("Família: 5A ou Nitrogênio", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f    5s² 5p  5d   5f   6s² 6p  6d   7s² 7p³", 50, 300);
          textSize(14);
          text("6                    6         10                    6         10         14                    6         10         14                   6         10", 500, 291);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 32, 18, 5", 300, 360);
          text("Ponto de fusão: Desconhecido", 300, 410);
          text("Ponto de ebulição: Desconhecido", 300, 460);
          text("Estado físico natural: sólido (presumido)", 300, 510);
          text("Eletronegatividade: Desconhecida", 300, 560);
          text("Calor específico: Desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 1045) && (mouseX <= 1110)) && ((mouseY >= 97)&&(mouseY <= 162))){
          textSize(40);
          fill(0);
          text("Elemento: Oxigênio",300,60);
          text("Número atômico: 8", 300, 110);
          text("Massa atômica: 16 u", 300, 160);
          text("Família: 6A ou Calcogênios", 300, 210);
          text("Período: 2", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p^4", 300, 310);
          text("Número de elétrons: 2, 6", 300, 360);
          text("Ponto de fusão: -210 °C", 300, 410);
          text("Ponto de ebulição: -196 °C", 300, 460);
          text("Estado físico natural: gasoso", 300, 510);
          text("Eletronegatividade: 3,04", 300, 560);
          text("Calor específico: 1040 J/(kg·K)", 300, 610);
      }
      else
       if(((mouseX >= 1045) && (mouseX <= 1110)) && ((mouseY >= 164)&&(mouseY <= 229))){
          textSize(40);
          fill(0);
          text("Elemento: Enxofre",300,60);
          text("Número atômico: 16", 300, 110);
          text("Massa atômica: 32 u", 300, 160);
          text("Família: 6A ou Calcogênios", 300, 210);
          text("Período: 3", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p", 300, 310);
          textSize(20);
          text("6                      4", 990, 295);
          textSize(40);
          text("Número de elétrons: 2, 8, 6", 300, 360);
          text("Ponto de fusão: 115 °C", 300, 410);
          text("Ponto de ebulição: 445 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,58", 300, 560);
          text("Calor específico: 705 J/(kg·°C)", 300, 610);
      }
       else
       if(((mouseX >= 1045) && (mouseX <= 1110)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Selênio",300,60);
          text("Número atômico: 34", 300, 110);
          text("Massa atômica: 79 u", 300, 160);
          text("Família: 6A ou Calcogênios", 300, 210);
          text("Período: 4", 300, 260);
          textSize(34);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p", 150, 310);
          textSize(20);
          text("6                  6        10                   4", 735, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 6", 300, 360);
          text("Ponto de fusão: 221 °C", 300, 410);
          text("Ponto de ebulição: 685 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,55", 300, 560);
          text("Calor específico: 321 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 1045) && (mouseX <= 1110)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Telúrio",300,60);
          text("Número atômico: 52", 300, 110);
          text("Massa atômica: 128 u", 300, 160);
          text("Família: 6A ou Calcogênios", 300, 210);
          text("Período: 5", 300, 260);
          textSize(32);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   5s² 5p", 50, 310);
          textSize(18);
          text("6                    6        10                   6         10                   4", 600, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 18, 6", 300, 360);
          text("Ponto de fusão: 449 °C", 300, 410);
          text("Ponto de ebulição: 989 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,1", 300, 560);
          text("Calor específico: 201 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 1045) && (mouseX <= 1110)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Elemento: Polônio",300,60);
          text("Número atômico: 84", 300, 110);
          text("Massa atômica: 209 u", 300, 160);
          text("Família: 6A ou Calcogênios", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   6s² 6p", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6        10                   4", 502, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 18, 6", 300, 360);
          text("Ponto de fusão: 254 °C", 300, 410);
          text("Ponto de ebulição: 962 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,0", 300, 560);
          text("Calor específico: 120 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 1045) && (mouseX <= 1110)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Elemento: Ununóctio",300,60);
          text("Número atômico: 116", 300, 110);
          text("Massa atômica: 292 u", 300, 160);
          text("Família: 6A ou Calcogênios", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f    5s² 5p  5d   5f   6s² 6p  6d   7s² 7p", 50, 300);
          textSize(14);
          text("6                    6         10                    6         10         14                    6         10         14                   6         10                    4", 500, 291);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 32, 18, 6", 300, 360);
          text("Ponto de fusão: Desconhecido", 300, 410);
          text("Ponto de ebulição: Desconhecido", 300, 460);
          text("Estado físico natural: gasoso (presumido)", 300, 510);
          text("Eletronegatividade: Desconhecida", 300, 560);
          text("Calor específico: Desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 1112) && (mouseX <= 1177)) && ((mouseY >= 97)&&(mouseY <= 162))){
          textSize(40);
          fill(0);
          text("Elemento: Flúor",300,60);
          text("Número atômico: 9", 300, 110);
          text("Massa atômica: 19 u", 300, 160);
          text("Família: 7A ou Halogênios", 300, 210);
          text("Período: 2", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p^5", 300, 310);
          text("Número de elétrons: 2, 7", 300, 360);
          text("Ponto de fusão: -220 °C", 300, 410);
          text("Ponto de ebulição: -188 °C", 300, 460);
          text("Estado físico natural: gasoso", 300, 510);
          text("Eletronegatividade: 3,98", 300, 560);
          text("Calor específico: 824 J/(kg·K)", 300, 610);
      }
      else
       if(((mouseX >= 1112) && (mouseX <= 1177)) && ((mouseY >= 164)&&(mouseY <= 229))){
          textSize(40);
          fill(0);
          text("Elemento: Cloro",300,60);
          text("Número atômico: 17", 300, 110);
          text("Massa atômica: 35 u", 300, 160);
          text("Família: 7A ou Halogênios", 300, 210);
          text("Período: 3", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p", 300, 310);
          textSize(20);
          text("6                      5", 990, 295);
          textSize(40);
          text("Número de elétrons: 2, 8, 7", 300, 360);
          text("Ponto de fusão: -101,5 °C", 300, 410);
          text("Ponto de ebulição: -34 °C", 300, 460);
          text("Estado físico natural: gasoso", 300, 510);
          text("Eletronegatividade: 3,16", 300, 560);
          text("Calor específico: 824 J/(kg·K)", 300, 610);
      }
       else
       if(((mouseX >= 1112) && (mouseX <= 1177)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Bromo",300,60);
          text("Número atômico: 35", 300, 110);
          text("Massa atômica: 80 u", 300, 160);
          text("Família: 7A ou Halogênios", 300, 210);
          text("Período: 4", 300, 260);
          textSize(34);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p", 150, 310);
          textSize(20);
          text("6                  6        10                   5", 735, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 7", 300, 360);
          text("Ponto de fusão: -7 °C", 300, 410);
          text("Ponto de ebulição: 59 °C", 300, 460);
          text("Estado físico natural: líquido", 300, 510);
          text("Eletronegatividade: 2,96", 300, 560);
          text("Calor específico: 480 J/(kg·K)", 300, 610);
       }
       else
       if(((mouseX >= 1112) && (mouseX <= 1177)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Iodo",300,60);
          text("Número atômico: 53", 300, 110);
          text("Massa atômica: 127 u", 300, 160);
          text("Família: 7A ou Halogênios", 300, 210);
          text("Período: 5", 300, 260);
          textSize(32);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   5s² 5p", 50, 310);
          textSize(18);
          text("6                    6        10                   6         10                   5", 600, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 18, 7", 300, 360);
          text("Ponto de fusão: 114 °C", 300, 410);
          text("Ponto de ebulição: 184 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,66", 300, 560);
          text("Calor específico: 214 J/kg.°C", 300, 610);
       }
       else
       if(((mouseX >= 1112) && (mouseX <= 1177)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Elemento: Astatínio",300,60);
          text("Número atômico: 85", 300, 110);
          text("Massa atômica: 210 u", 300, 160);
          text("Família: 7A ou Halogênios", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   6s² 6p", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6        10                   5", 502, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 18, 7", 300, 360);
          text("Ponto de fusão: 302 °C", 300, 410);
          text("Ponto de ebulição: desconhecido", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 2,2", 300, 560);
          text("Calor específico: desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 1112) && (mouseX <= 1177)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Elemento: Ununséptio",300,60);
          text("Número atômico: 117", 300, 110);
          text("Massa atômica: 291 u", 300, 160);
          text("Família: 7A ou Halogênios", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f    5s² 5p  5d   5f   6s² 6p  6d   7s² 7p", 50, 300);
          textSize(14);
          text("6                    6         10                    6         10         14                    6         10         14                   6         10                    5", 500, 291);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 32, 18, 7", 300, 360);
          text("Ponto de fusão: Desconhecido", 300, 410);
          text("Ponto de ebulição: Desconhecido", 300, 460);
          text("Estado físico natural: sólido (presumido)", 300, 510);
          text("Eletronegatividade: Desconhecida", 300, 560);
          text("Calor específico: Desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 1179) && (mouseX <= 1244)) && ((mouseY >= 30)&&(mouseY <= 95))){
          textSize(40);
          fill(0);
          text("Elemento: Hélio",300,60);
          text("Número atômico: 2", 300, 110);
          text("Massa atômica: 4 u", 300, 160);
          text("Família: 8A ou Gases Nobres", 300, 210);
          text("Período: 1", 300, 260);
          text("Configuração eletrônica: 1s²", 300, 310);
          text("Número de elétrons: 2", 300, 360);
          text("Ponto de fusão: −272 °C (26 atm)", 300, 410);
          text("Ponto de ebulição: -269 °C", 300, 460);
          text("Estado físico natural: gasoso", 300, 510);
          text("Eletronegatividade: desconhecida", 300, 560);
          text("Calor específico: 5193 J/(kg·K)", 300, 610);
       }
       else
       if(((mouseX >= 1179) && (mouseX <= 1244)) && ((mouseY >= 97)&&(mouseY <= 162))){
          textSize(40);
          fill(0);
          text("Elemento: Neônio",300,60);
          text("Número atômico: 10", 300, 110);
          text("Massa atômica: 20 u", 300, 160);
          text("Família: 8A ou Gases Nobres", 300, 210);
          text("Período: 2", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p", 300, 310);
          textSize(20);
          text("6", 990, 295);
          textSize(40);
          text("Número de elétrons: 2, 8", 300, 360);
          text("Ponto de fusão: -249 °C", 300, 410);
          text("Ponto de ebulição: -246 °C", 300, 460);
          text("Estado físico natural: gasoso", 300, 510);
          text("Eletronegatividade: desconhecida", 300, 560);
          text("Calor específico: 103 J/(kg·K)", 300, 610);
      }
      else
       if(((mouseX >= 1179) && (mouseX <= 1244)) && ((mouseY >= 164)&&(mouseY <= 229))){
          textSize(40);
          fill(0);
          text("Elemento: Argônio",300,60);
          text("Número atômico: 18", 300, 110);
          text("Massa atômica: 40 u", 300, 160);
          text("Família: 8A ou Gases Nobres", 300, 210);
          text("Período: 3", 300, 260);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p", 300, 310);
          textSize(20);
          text("6                      6", 990, 295);
          textSize(40);
          text("Número de elétrons: 2, 8, 8", 300, 360);
          text("Ponto de fusão: -189 °C", 300, 410);
          text("Ponto de ebulição: -186 °C", 300, 460);
          text("Estado físico natural: gasoso", 300, 510);
          text("Eletronegatividade: desconhecida", 300, 560);
          text("Calor específico: 520 J/(kg·K)", 300, 610);
      }
       else
       if(((mouseX >= 1179) && (mouseX <= 1244)) && ((mouseY >= 231)&&(mouseY <= 296))){
          textSize(40);
          fill(0);
          text("Elemento: Criptônio",300,60);
          text("Número atômico: 36", 300, 110);
          text("Massa atômica: 84 u", 300, 160);
          text("Família: 8A ou Gases Nobres", 300, 210);
          text("Período: 4", 300, 260);
          textSize(34);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p", 150, 310);
          textSize(20);
          text("6                  6        10                   6", 735, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 8", 300, 360);
          text("Ponto de fusão: -157 °C", 300, 410);
          text("Ponto de ebulição: -153 °C", 300, 460);
          text("Estado físico natural: gasoso", 300, 510);
          text("Eletronegatividade: 3,0", 300, 560);
          text("Calor específico: 248 J/(kg·K)", 300, 610);
       }
       else
       if(((mouseX >= 1179) && (mouseX <= 1244)) && ((mouseY >= 298)&&(mouseY <= 363))){
          textSize(40);
          fill(0);
          text("Elemento: Xenônio",300,60);
          text("Número atômico: 54", 300, 110);
          text("Massa atômica: 131 u", 300, 160);
          text("Família: 8A ou Gases Nobres", 300, 210);
          text("Período: 5", 300, 260);
          textSize(32);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   5s² 5p", 50, 310);
          textSize(18);
          text("6                    6        10                   6         10                   6", 600, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 18, 8", 300, 360);
          text("Ponto de fusão: -112 °C", 300, 410);
          text("Ponto de ebulição: -108 °C", 300, 460);
          text("Estado físico natural: gasoso", 300, 510);
          text("Eletronegatividade: 2,6", 300, 560);
          text("Calor específico: 158 J/(kg·K)", 300, 610);
       }
       else
       if(((mouseX >= 1179) && (mouseX <= 1244)) && ((mouseY >= 365)&&(mouseY <= 430))){
          textSize(40);
          fill(0);
          text("Elemento: Radônio",300,60);
          text("Número atômico: 86", 300, 110);
          text("Massa atômica: 222 u", 300, 160);
          text("Família: 8A ou Gases Nobres", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   6s² 6p", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6        10                   6", 502, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 18, 8", 300, 360);
          text("Ponto de fusão: −71 °C", 300, 410);
          text("Ponto de ebulição: -62", 300, 460);
          text("Estado físico natural: gasoso", 300, 510);
          text("Eletronegatividade: desconhecida", 300, 560);
          text("Calor específico: 94 J/(kg·K)", 300, 610);
       }
       else
       if(((mouseX >= 1179) && (mouseX <= 1244)) && ((mouseY >= 432)&&(mouseY <= 497))){
          textSize(40);
          fill(0);
          text("Elemento: Ununóctio",300,60);
          text("Número atômico: 118", 300, 110);
          text("Massa atômica: 294 u", 300, 160);
          text("Família: 8A ou Gases Nobres", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f    5s² 5p  5d   5f   6s² 6p  6d   7s² 7p", 50, 300);
          textSize(14);
          text("6                    6         10                    6         10         14                    6         10         14                   6         10                    6", 500, 291);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 32, 18, 8", 300, 360);
          text("Ponto de fusão: Desconhecido", 300, 410);
          text("Ponto de ebulição: Desconhecido", 300, 460);
          text("Estado físico natural: gasoso (presumido)", 300, 510);
          text("Eletronegatividade: Desconhecida", 300, 560);
          text("Calor específico: Desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 241) && (mouseX <= 306)) && ((mouseY >= 566)&&(mouseY <= 631))){
          textSize(40);
          fill(0);
          text("Elemento: Lantânio",300,60);
          text("Número atômico: 57", 300, 110);
          text("Massa atômica: 139 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d¹ 6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6", 502, 300);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 18, 9, 2", 300, 360);
          text("Ponto de fusão: 918 °C", 300, 410);
          text("Ponto de ebulição: 3464 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,1", 300, 560);
          text("Calor específico: 195 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 308) && (mouseX <= 373)) && ((mouseY >= 566)&&(mouseY <= 631))){
          textSize(40);
          fill(0);
          text("Elemento: Cério",300,60);
          text("Número atômico: 58", 300, 110);
          text("Massa atômica: 140 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f¹ 5s² 5p  5d¹ 6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10                             6", 505, 301);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 19, 9, 2", 300, 360);
          text("Ponto de fusão: 795 °C", 300, 410);
          text("Ponto de ebulição: 3360 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,12", 300, 560);
          text("Calor específico: 192 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 375) && (mouseX <= 440)) && ((mouseY >= 566)&&(mouseY <= 631))){
          textSize(40);
          fill(0);
          text("Elemento: Praseodímio",300,60);
          text("Número atômico: 59", 300, 110);
          text("Massa atômica: 141 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f³ 5s² 5p  6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10                             6", 505, 301);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 21, 8, 2", 300, 360);
          text("Ponto de fusão: 935 °C", 300, 410);
          text("Ponto de ebulição: 3290 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,13", 300, 560);
          text("Calor específico: 193 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 442) && (mouseX <= 507)) && ((mouseY >= 566)&&(mouseY <= 631))){
          textSize(40);
          fill(0);
          text("Elemento: Neodímio",300,60);
          text("Número atômico: 60", 300, 110);
          text("Massa atômica: 144 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f  5s² 5p  6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        4                  6", 505, 301);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 22, 8, 2", 300, 360);
          text("Ponto de fusão: 1024 °C", 300, 410);
          text("Ponto de ebulição: 3100 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,14", 300, 560);
          text("Calor específico: 190 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 509) && (mouseX <= 574)) && ((mouseY >= 566)&&(mouseY <= 631))){
          textSize(40);
          fill(0);
          text("Elemento: Promécio",300,60);
          text("Número atômico: 61", 300, 110);
          text("Massa atômica: 145 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f  5s² 5p  6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        5                  6", 505, 301);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 23, 8, 2", 300, 360);
          text("Ponto de fusão: 1100 °C", 300, 410);
          text("Ponto de ebulição: 3000 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,13", 300, 560);
          text("Calor específico: 167 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 576) && (mouseX <= 641)) && ((mouseY >= 566)&&(mouseY <= 631))){
          textSize(40);
          fill(0);
          text("Elemento: Samário",300,60);
          text("Número atômico: 62", 300, 110);
          text("Massa atômica: 150 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f  5s² 5p  6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        6                  6", 505, 301);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 24, 8, 2", 300, 360);
          text("Ponto de fusão: 1072 °C", 300, 410);
          text("Ponto de ebulição: 1803 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,17", 300, 560);
          text("Calor específico: 196 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 643) && (mouseX <= 708)) && ((mouseY >= 566)&&(mouseY <= 631))){
          textSize(40);
          fill(0);
          text("Elemento: Európio",300,60);
          text("Número atômico: 63", 300, 110);
          text("Massa atômica: 152 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f  5s² 5p  6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        7                  6", 505, 301);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 25, 8, 2", 300, 360);
          text("Ponto de fusão: 826 °C", 300, 410);
          text("Ponto de ebulição: 1527 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,2", 300, 560);
          text("Calor específico: 182 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 710) && (mouseX <= 775)) && ((mouseY >= 566)&&(mouseY <= 631))){
          textSize(40);
          fill(0);
          text("Elemento: Gadolínio",300,60);
          text("Número atômico: 64", 300, 110);
          text("Massa atômica: 157 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f  5s² 5p  5d¹ 6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        7                  6", 505, 301);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 25, 9, 2", 300, 360);
          text("Ponto de fusão: 1312 °C", 300, 410);
          text("Ponto de ebulição: 3250 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,2", 300, 560);
          text("Calor específico: 235 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 777) && (mouseX <= 842)) && ((mouseY >= 566)&&(mouseY <= 631))){
          textSize(40);
          fill(0);
          text("Elemento: Térbio",300,60);
          text("Número atômico: 65", 300, 110);
          text("Massa atômica: 159 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f  5s² 5p  6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        9                  6", 505, 301);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 27, 8, 2", 300, 360);
          text("Ponto de fusão: 1356 °C", 300, 410);
          text("Ponto de ebulição: 3230 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,2", 300, 560);
          text("Calor específico: 182 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 844) && (mouseX <= 909)) && ((mouseY >= 566)&&(mouseY <= 631))){
          textSize(40);
          fill(0);
          text("Elemento: Disprósio",300,60);
          text("Número atômico: 66", 300, 110);
          text("Massa atômica: 162,5 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        10                  6", 505, 301);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 28, 8, 2", 300, 360);
          text("Ponto de fusão: 1407 °C", 300, 410);
          text("Ponto de ebulição: 2567 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,22", 300, 560);
          text("Calor específico: 167 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 911) && (mouseX <= 976)) && ((mouseY >= 566)&&(mouseY <= 631))){
          textSize(40);
          fill(0);
          text("Elemento: Hólmio",300,60);
          text("Número atômico: 67", 300, 110);
          text("Massa atômica: 165 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        11                  6", 505, 301);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 29, 8, 2", 300, 360);
          text("Ponto de fusão: 1461 °C", 300, 410);
          text("Ponto de ebulição: 2720 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,23", 300, 560);
          text("Calor específico: 165 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 978) && (mouseX <= 1043)) && ((mouseY >= 566)&&(mouseY <= 631))){
          textSize(40);
          fill(0);
          text("Elemento: Érbio",300,60);
          text("Número atômico: 68", 300, 110);
          text("Massa atômica: 167 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        12                  6", 505, 301);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 30, 8, 2", 300, 360);
          text("Ponto de fusão: 1497 °C", 300, 410);
          text("Ponto de ebulição: 2868 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,24", 300, 560);
          text("Calor específico: 168 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 1045) && (mouseX <= 1110)) && ((mouseY >= 566)&&(mouseY <= 631))){
          textSize(40);
          fill(0);
          text("Elemento: Túlio",300,60);
          text("Número atômico: 69", 300, 110);
          text("Massa atômica: 169 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        13                  6", 505, 301);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 31, 8, 2", 300, 360);
          text("Ponto de fusão: 1545 °C", 300, 410);
          text("Ponto de ebulição: 1950 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,25", 300, 560);
          text("Calor específico: 160 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 1112) && (mouseX <= 1177)) && ((mouseY >= 566)&&(mouseY <= 631))){
          textSize(40);
          fill(0);
          text("Elemento: Itérbio",300,60);
          text("Número atômico: 70", 300, 110);
          text("Massa atômica: 173 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6", 505, 301);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 8, 2", 300, 360);
          text("Ponto de fusão: 824 °C", 300, 410);
          text("Ponto de ebulição: 1196 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,1", 300, 560);
          text("Calor específico: 150 J/(kg.K)", 300, 610);
       }
       else
       if(((mouseX >= 1179) && (mouseX <= 1244)) && ((mouseY >= 566)&&(mouseY <= 631))){
          textSize(40);
          fill(0);
          text("Elemento: Lutécio",300,60);
          text("Número atômico: 71", 300, 110);
          text("Massa atômica: 175 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 6", 300, 260);
          textSize(28);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d¹ 6s²", 20, 310);
          textSize(16);
          text("6                   6        10                   6        10        14                  6", 505, 301);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 9, 2", 300, 360);
          text("Ponto de fusão: 1663 °C", 300, 410);
          text("Ponto de ebulição: 3402 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,27", 300, 560);
          text("Calor específico: 150 J/(kg.K)", 300, 610);
       }
       else
       if(((mouseX >= 241) && (mouseX <= 306)) && ((mouseY >= 633)&&(mouseY <= 698))){
          textSize(40);
          fill(0);
          text("Elemento: Actínio",300,60);
          text("Número atômico: 89", 300, 110);
          text("Massa atômica: 227 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   6s² 6p  6d¹ 7s²", 20, 310);
          textSize(16);
          text("6                 6        10                 6       10       14                6        10                 6", 470, 302);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 18, 9, 2", 300, 360);
          text("Ponto de fusão: 1050 °C", 300, 410);
          text("Ponto de ebulição: 3300 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,1", 300, 560);
          text("Calor específico: 120 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 308) && (mouseX <= 373)) && ((mouseY >= 633)&&(mouseY <= 698))){
          textSize(40);
          fill(0);
          text("Elemento: Tório",300,60);
          text("Número atômico: 90", 300, 110);
          text("Massa atômica: 232 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   6s² 6p  6d² 7s²", 20, 310);
          textSize(16);
          text("6                 6        10                 6       10       14                6        10                 6", 470, 302);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 18, 10, 2", 300, 360);
          text("Ponto de fusão: 1842 °C", 300, 410);
          text("Ponto de ebulição: 4820 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,3", 300, 560);
          text("Calor específico: 117 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 375) && (mouseX <= 440)) && ((mouseY >= 633)&&(mouseY <= 698))){
          textSize(40);
          fill(0);
          text("Elemento: Protactínio",300,60);
          text("Número atômico: 91", 300, 110);
          text("Massa atômica: 231 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   5f²  6s² 6p  6d¹ 7s²", 20, 310);
          textSize(16);
          text("6                 6        10                 6       10       14                6        10                            6", 470, 302);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 20, 9, 2", 300, 360);
          text("Ponto de fusão: 1568 °C", 300, 410);
          text("Ponto de ebulição: 4027 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,5", 300, 560);
          text("Calor específico: 120 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 442) && (mouseX <= 507)) && ((mouseY >= 633)&&(mouseY <= 698))){
          textSize(40);
          fill(0);
          text("Elemento: Urânio",300,60);
          text("Número atômico: 92", 300, 110);
          text("Massa atômica: 238 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   5f³  6s² 6p  6d¹ 7s²", 20, 310);
          textSize(16);
          text("6                 6        10                 6       10       14                6        10                            6", 470, 302);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 21, 9, 2", 300, 360);
          text("Ponto de fusão: 1132 °C", 300, 410);
          text("Ponto de ebulição: 3927 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,38", 300, 560);
          text("Calor específico: 116 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 509) && (mouseX <= 574)) && ((mouseY >= 633)&&(mouseY <= 698))){
          textSize(40);
          fill(0);
          text("Elemento: Netúnio",300,60);
          text("Número atômico: 93", 300, 110);
          text("Massa atômica: 237 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   5f   6s² 6p  6d¹ 7s²", 20, 310);
          textSize(16);
          text("6                 6        10                 6       10       14                6        10       4                   6", 470, 302);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 22, 9, 2", 300, 360);
          text("Ponto de fusão: 637 °C", 300, 410);
          text("Ponto de ebulição: 3902 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,36", 300, 560);
          text("Calor específico: 120 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 576) && (mouseX <= 641)) && ((mouseY >= 633)&&(mouseY <= 698))){
          textSize(40);
          fill(0);
          text("Elemento: Plutônio",300,60);
          text("Número atômico: 94", 300, 110);
          text("Massa atômica: 244 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   5f   6s² 6p  7s²", 20, 310);
          textSize(16);
          text("6                 6        10                 6       10       14                6        10       6                   6", 470, 302);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 24, 8, 2", 300, 360);
          text("Ponto de fusão: 639 °C", 300, 410);
          text("Ponto de ebulição: 3230 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,28", 300, 560);
          text("Calor específico: 130 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 643) && (mouseX <= 708)) && ((mouseY >= 633)&&(mouseY <= 698))){
          textSize(40);
          fill(0);
          text("Elemento: Amerício",300,60);
          text("Número atômico: 95", 300, 110);
          text("Massa atômica: 243 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   5f   6s² 6p  7s²", 20, 310);
          textSize(16);
          text("6                 6        10                 6       10       14                6        10       7                   6", 470, 302);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 25, 8, 2", 300, 360);
          text("Ponto de fusão: 1176 °C", 300, 410);
          text("Ponto de ebulição: 2607 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,3", 300, 560);
          text("Calor específico: 110 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 710) && (mouseX <= 775)) && ((mouseY >= 633)&&(mouseY <= 698))){
          textSize(40);
          fill(0);
          text("Elemento: Cúrio",300,60);
          text("Número atômico: 96", 300, 110);
          text("Massa atômica: 247 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   5f   6s² 6p  6d¹ 7s²", 20, 310);
          textSize(16);
          text("6                 6        10                 6       10       14                6        10       7                   6", 470, 302);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 25, 9, 2", 300, 360);
          text("Ponto de fusão: 1340 °C", 300, 410);
          text("Ponto de ebulição: 3110 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,3", 300, 560);
          text("Calor específico: desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 777) && (mouseX <= 842)) && ((mouseY >= 633)&&(mouseY <= 698))){
          textSize(40);
          fill(0);
          text("Elemento: Berquélio",300,60);
          text("Número atômico: 97", 300, 110);
          text("Massa atômica: 247 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   5f   6s² 6p  7s²", 20, 310);
          textSize(16);
          text("6                 6        10                 6       10       14                6        10       9                   6", 470, 302);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 27, 8, 2", 300, 360);
          text("Ponto de fusão: 986 °C", 300, 410);
          text("Ponto de ebulição: desconhecido", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,3", 300, 560);
          text("Calor específico: desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 844) && (mouseX <= 909)) && ((mouseY >= 633)&&(mouseY <= 698))){
          textSize(40);
          fill(0);
          text("Elemento: Califórnio",300,60);
          text("Número atômico: 98", 300, 110);
          text("Massa atômica: 251 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   5f   6s² 6p  7s²", 20, 310);
          textSize(16);
          text("6                 6        10                 6       10       14                6        10       10                 6", 470, 302);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 28, 8, 2", 300, 360);
          text("Ponto de fusão: 900 °C", 300, 410);
          text("Ponto de ebulição: desconhecido", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,3", 300, 560);
          text("Calor específico: desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 911) && (mouseX <= 976)) && ((mouseY >= 633)&&(mouseY <= 698))){
          textSize(40);
          fill(0);
          text("Elemento: Einstéinio",300,60);
          text("Número atômico: 99", 300, 110);
          text("Massa atômica: 252 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   5f   6s² 6p  7s²", 20, 310);
          textSize(16);
          text("6                 6        10                 6       10       14                6        10       11                 6", 470, 302);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 29, 8, 2", 300, 360);
          text("Ponto de fusão: 860 °C", 300, 410);
          text("Ponto de ebulição: 2720 °C", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,3", 300, 560);
          text("Calor específico: 165 J/(kg°C)", 300, 610);
       }
       else
       if(((mouseX >= 978) && (mouseX <= 1043)) && ((mouseY >= 633)&&(mouseY <= 698))){
          textSize(40);
          fill(0);
          text("Elemento: Férmio",300,60);
          text("Número atômico: 100", 300, 110);
          text("Massa atômica: 257 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   5f   6s² 6p  7s²", 20, 310);
          textSize(16);
          text("6                 6        10                 6       10       14                6        10       12                 6", 470, 302);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 30, 8, 2", 300, 360);
          text("Ponto de fusão: 1527 °C", 300, 410);
          text("Ponto de ebulição: desconhecido", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,3", 300, 560);
          text("Calor específico: desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 1045) && (mouseX <= 1110)) && ((mouseY >= 633)&&(mouseY <= 698))){
          textSize(40);
          fill(0);
          text("Elemento: Mendelévio",300,60);
          text("Número atômico: 101", 300, 110);
          text("Massa atômica: 258 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   5f   6s² 6p  7s²", 20, 310);
          textSize(16);
          text("6                 6        10                 6       10       14                6        10       13                 6", 470, 302);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 31, 8, 2", 300, 360);
          text("Ponto de fusão: 827 °C", 300, 410);
          text("Ponto de ebulição: desconhecido", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,3", 300, 560);
          text("Calor específico: desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 1112) && (mouseX <= 1177)) && ((mouseY >= 633)&&(mouseY <= 698))){
          textSize(40);
          fill(0);
          text("Elemento: Nobélio",300,60);
          text("Número atômico: 102", 300, 110);
          text("Massa atômica: 259 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   5f   6s² 6p  7s²", 20, 310);
          textSize(16);
          text("6                 6        10                 6       10       14                6        10       14                 6", 470, 302);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 32, 8, 2", 300, 360);
          text("Ponto de fusão: 827 °C", 300, 410);
          text("Ponto de ebulição: desconhecido", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: 1,3 (previsto)", 300, 560);
          text("Calor específico: desconhecido", 300, 610);
       }
       else
       if(((mouseX >= 1179) && (mouseX <= 1244)) && ((mouseY >= 633)&&(mouseY <= 698))){
          textSize(40);
          fill(0);
          text("Elemento: Laurêncio",300,60);
          text("Número atômico: 103", 300, 110);
          text("Massa atômi8ca: 262 u", 300, 160);
          text("Família: B ou Metais de Transição", 300, 210);
          text("Período: 7", 300, 260);
          textSize(26);
          text("Configuração eletrônica: 1s² 2s² 2p  3s² 3p  3d   4s² 4p  4d   4f   5s² 5p  5d   5f   6s² 6p  6d¹ 7s²", 20, 310);
          textSize(16);
          text("6                 6        10                 6       10       14                6        10       14                 6", 470, 302);
          textSize(40);
          text("Número de elétrons: 2, 8, 18, 32, 32, 9, 2", 300, 360);
          text("Ponto de fusão: 1627 °C", 300, 410);
          text("Ponto de ebulição: desconhecido", 300, 460);
          text("Estado físico natural: sólido", 300, 510);
          text("Eletronegatividade: desconhecida", 300, 560);
          text("Calor específico: desconhecido", 300, 610);
       }
       else{
          textSize(60);
          fill(0);
          text("Clique em algum elemento da tabela", 100, 335);
       }
    }
    value=1;
  }
  else
  if(cond%2==1){
  background(255);
  value=0;
  for(int i=0; i<tabela.length; i++){
    Elemento e = tabela[i];
    fill(cores[e.tipo]);
    rect(40+e.x,30+e.y,65,65);
    fill(color(0));
    textSize(28);
    text(e.nome,40+e.x+12,30+e.y+45);
    textSize(6);
  }
  fill(245,185,100);
  rect(198,115,20,20);
  fill(255,100,100);
  rect(320,115,20,20);
  fill(255,255,0);
  rect(460,115,20,20);
  fill(150,100,200);
  rect(550,115,20,20);
  fill(180,195,250);
  rect(675,115,20,20);
  fill(85,250,0);
  rect(320,150,20,20);
  fill(221,52,65);
  rect(460,150,20,20);
  textSize(16);
  fill(0);
  text("IA", 60, 25); 
  text("IIA", 130, 90); 
  text("IIIB", 195, 220); 
  text("IVB", 260, 220);
  text("VB", 330, 220);
  text("VIB", 395, 220);
  text("VIIB", 460, 220);
  text("VIIIB", 530, 220);
  text("VIIIB", 595, 220);
  text("VIIIB", 660, 220);
  text("IB", 730, 220);
  text("IIB", 795, 220);
  text("IIIA", 865, 90);
  text("IVA", 930, 90);
  text("VA", 1000, 90);
  text("VIA", 1065, 90);
  text("VIIA", 1130, 90);
  text("VIIIA", 1195, 25);
  text("Hidrogênio", 223, 130); 
  text("Gases nobres", 345, 130);
  text("Metais", 485, 130);
  text("Não-metais", 575, 130);
  text("Semi-metais", 700, 130);
  text("Lantanídios", 345, 165);
  text("Actinídios", 485, 165);
  textSize(32);
  text("*", 185, 600);
  text("**", 180, 670); 
  textSize(48);
  text("Tabela Periódica interativa",200,50);
  fill(255);
  cond=1;
  }
}

void mouseClicked(){
  if (cond % 2 == 1){
  cond=0; 
  }
  else
  if(cond==2){
  cond=1;
  value=1;
  }
  else
  if(cond==0){
  background(255);
  value=0;
  fill(245,185,100);
  rect(198,115,20,20);
  fill(255,100,100);
  rect(320,115,20,20);
  fill(255,255,0);
  rect(460,115,20,20);
  fill(150,100,200);
  rect(550,115,20,20);
  fill(180,195,250);
  rect(675,115,20,20);
  fill(85,250,0);
  rect(320,150,20,20);
  fill(221,52,65);
  rect(460,150,20,20);
  textSize(16);
  fill(0);
  text("IA", 60, 25); 
  text("IIA", 130, 90); 
  text("IIIB", 195, 220); 
  text("IVB", 260, 220);
  text("VB", 330, 220);
  text("VIB", 395, 220);
  text("VIIB", 460, 220);
  text("VIIIB", 530, 220);
  text("VIIIB", 595, 220);
  text("VIIIB", 660, 220);
  text("IB", 730, 220);
  text("IIB", 795, 220);
  text("IIIA", 865, 90);
  text("IVA", 930, 90);
  text("VA", 1000, 90);
  text("VIA", 1065, 90);
  text("VIIA", 1130, 90);
  text("VIIIA", 1195, 25);
  text("Hidrogênio", 223, 130); 
  text("Gases nobres", 345, 130);
  text("Metais", 485, 130);
  text("Não-metais", 575, 130);
  text("Semi-metais", 700, 130);
  text("Lantanídios", 345, 165);
  text("Actinídios", 485, 165);
  textSize(32);
  text("*", 185, 600);
  text("**", 180, 670); 
  textSize(48);
  text("Tabela Periódica interativa",200,50);
  fill(255);
  cond=1;
  }
}
