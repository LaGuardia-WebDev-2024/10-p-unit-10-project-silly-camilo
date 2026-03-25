var colors = [
  color(255, 105, 140), color(250, 196, 102), 
  color(255, 244, 179), color(169, 232, 205), 
  color(176, 243, 255), color(67, 165, 250),  
  color(185, 170, 242), color(255, 227, 245),
  color(255, 237, 224), color(207, 143, 112),
  color(153, 83, 66), color(255)]

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
  for(var i = 17; i < 400; i += 33){
    fill(colors[index]);
    index++;
    ellipse(37, i, 28, 28);
  }

}

draw = function(){

  if(mousePressed){
    if(mouseX > 75){
      ellipse(mouseX, mouseY, 17, 17);
    }
  }

  mouseClicked = function(){
    if(mouseX < 75){
      let d1 = dist(mouseX, mouseY, 37, 17);
      if (d1 < 20){
        fill(colors[0]);
      }

      let d2 = dist(mouseX, mouseY, 37, 50);
      if (d2 < 20){
        fill(colors[1]);
      }

      let d3 = dist(mouseX, mouseY, 37, 82);
      if (d3 < 20){
        fill(colors[2]);
      }

      let d4 = dist(mouseX, mouseY, 37, 114); 
      if (d4 < 20){
        fill(colors[3]);
      }

      let d5 = dist(mouseX, mouseY, 37, 146);
      if (d5 < 20){
        fill(colors[4]);
      }

      let d6 = dist(mouseX, mouseY, 37, 178);
      if (d6 < 20){
        fill(colors[5]);
      }

      let d7 = dist(mouseX, mouseY, 37, 210);
      if (d7 < 20){
        fill(colors[6]);
      }

      let d8 = dist(mouseX, mouseY, 37, 242);
      if (d8 < 20){
        fill(colors[7]);
      }

      let d9 = dist(mouseX, mouseY, 37, 274);
      if (d9 < 20){
        fill(colors[8]);
      }

      let d10 = dist(mouseX, mouseY, 37, 306);
      if (d10 < 20){
        fill(colors[9]);  
      }

      let d11 = dist(mouseX, mouseY, 37, 338);
      if (d11 < 20){
        fill(colors[10]);
      }

      let d12 = dist(mouseX, mouseY, 37, 370);
      if (d12 < 20){
        fill(colors[11]);  
      }

        //i could probably figure out how to use a loop instead but
        //i dontfeel like it rn :broken_heart:
        //ily ms hall if u r reading this have an amazingful day !!!!!!!!!!!
      

    }
  }

}