var colors = [color(255, 105, 140), color(250, 196, 102), color(255, 244, 179), color(169, 232, 205), color(67, 165, 250), color(255)]

setup = function() {

  size(400, 400); 
  background(255);

  var y = 40; //line background
  stroke(0, 0, 230);
  strokeWeight(1);
  

  //WHILE LOOP
  while (y < 400) { 
    line(0, y, 400, y);
    y+=40;
  }

  noStroke(); //color palette
  fill(255, 217, 227);
  rect(0, 0, 75, 400);

  //FOR LOOP
  var index = 0;
  for(var i = 50; i < 400; i += 60){
    fill(colors[index]);
    index++;
    ellipse(37, i, 30, 30);
  }

}

draw = function(){

  if(mousePressed){
    if(mouseX > 75){
      ellipse(mouseX, mouseY, 15, 15);
    }
  }

  mouseClicked = function(){
    if(mouseX < 75){
      let d1 = dist(mouseX, mouseY, 37, 50);
      if (d1 < 40){
        fill(colors[0]);
      }

      let d2 = dist(mouseX, mouseY, 37, 110);
      if (d2 < 40){
        fill(colors[1]);
      }

      let d3 = dist(mouseX, mouseY, 37, 170);
      if (d3 < 40){
        fill(colors[2]);
      }

      let d4 = dist(mouseX, mouseY, 37, 220);
      if (d4 < 40){
        fill(colors[3]);
      }

      let d5 = dist(mouseX, mouseY, 37, 280);
      if (d5 < 40){
        fill(colors[4]);
      }

      let d6 = dist(mouseX, mouseY, 37, 340);
      if (d6 < 40){
        fill(colors[5]);


        //i could probably figure out how to use a loop instead but
        //i dontfeel like it rn :broken_heart:
        //ily ms hall if u r reading this have an amazingful day !!!!!!!!!!!
      }

    }
  }

}