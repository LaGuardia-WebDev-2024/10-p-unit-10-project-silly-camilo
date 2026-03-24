var colors = [color(255, 105, 140), color(250, 196, 102), color(255, 244, 179), color(169, 232, 205), color(67, 165, 250)]

setup = function() {

  size(400, 400); 
  background(255);

  var y = 40; //line background
  stroke(0, 0, 230);
  strokeWeight(1);
  
  while (y < 400) {
    line(0, y, 400, y);
    y+=40;
  }

  noStroke(); //color palette
  fill(255, 217, 227);
  rect(0, 0, 75, 400);

  var index = 0;
  for(var i = 50; i < 400; i += 60){
    fill(colors[index]);
    index++;
    ellipse(37, i, 30, 30);
  }

  let c = get(mouseX, mouseY);

  for(var i = 0; i < colors.length; i++){
    if(arrayEquals(c, colors[i])){
      console.log(colors[i]);
    }
  }

}

draw = function(){   
  if(mousePressed){
    if(mouseX > 75){
      xPositions.push(mouseX);
      yPositions.push(mouseY);
    }

    if(mouseX < 75){

    }
  }
}

function arrayEquals(a, b){
  return Array.isArray(a)&&
  Array.isArray(b)&&
  a.length == b.length &&

  a.every((val.index) => val === b[index]);
} 

drawing = function(){
  ellipse(xPositions, yPositions, 50, 50);
}