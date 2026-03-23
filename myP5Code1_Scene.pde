var bakeryLabels = ["Crossiants","Baguettes"];
var xPositions = 32;
var yPositions = ["50, 100, 150, 200, 250"];
var colors = ["rgb(255, 105, 140)", "rgb(250, 196, 102)", "rgb(255, 244, 179)", "rgb(169, 232, 205)", "rgb(67, 165, 250)"]

setup = function() {

  size(400, 400); 
  background(255);

  var crossiantX = 60;
  textSize(30);

  while(crossiantX < 300){
    text("🥐", crossiantX, 85);
    crossiantX += 40;
  }

  text(bakeryLabels[0], 70, 105);
  text(bakeryLabels[1], 70, 185);

  noStroke();
  fill(255, 217, 227);
  rect(0, 0, 75, 400);

  for(var i = 50; i < colors.length; i += 60){
    fill(colors[i]);
    ellipse(37, i, 30, 30);
  }

}

draw = function(){   
  if(mousePressed){
    if(mouseX > 75){
      xPositions.push(mouseX);
      yPositions.push(mouseY);
    }
  }
}


drawing = function(){
  ellipse(xPositions, yPositions, 50, 50);
}



