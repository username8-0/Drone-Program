totalTheoLength = 15;
topBottomDifference = 1;
totalWidth = 7;
botVSTheoDiff = 5;
height = 3;
terraceHeight = 1;

//bottom
p0 = [0,0,0]; //lowest bottom left corner
p1 = [totalWidth,0,0]; //lowest bottom right corner
p2 = [totalWidth,totalTheoLength - botVSTheoDiff,0]; //lowest top right corner
p3 = [0,totalTheoLength - botVSTheoDiff,0]; //lowest top left corner

//top
p4 = [topBottomDifference,topBottomDifference,height]; //highest bottom left corner
p5 = [totalWidth - topBottomDifference,topBottomDifference,height]; //highest bottom right corner
p6 = [totalWidth - topBottomDifference,totalTheoLength - topBottomDifference,height]; //highest top right corner
p7 = [topBottomDifference,totalTheoLength - topBottomDifference,height]; //highest top left corner
p8 = [topBottomDifference,totalTheoLength - botVSTheoDiff,height]; //highest middle left corner
p9 = [totalWidth - topBottomDifference,totalTheoLength - botVSTheoDiff,height]; //highest middle right corner

//middle
p10 = [topBottomDifference-(terraceHeight/(height/topBottomDifference)),totalTheoLength - botVSTheoDiff,height-terraceHeight]; //middle bottom left corner
p11 = [(totalWidth - topBottomDifference)+(terraceHeight/(height/topBottomDifference)),totalTheoLength - botVSTheoDiff,height-terraceHeight]; //middle bottom right corner
p12 = [(totalWidth - topBottomDifference)+(terraceHeight/(height/topBottomDifference)),(totalTheoLength - topBottomDifference) + (terraceHeight/(height/topBottomDifference)),height-terraceHeight]; //middle top right corner
p13 = [topBottomDifference-(terraceHeight/(height/topBottomDifference)),(totalTheoLength - topBottomDifference) + (terraceHeight/(height/topBottomDifference)),height-terraceHeight]; //middle top left corner

coorPoints = [p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13];

botFace = [0,1,2,3];
topFace = [7,6,5,4];
backFace = [0,4,5,1];
leftFace = [3,8,4,0];
rightFace = [5,9,2,1];
frontFace = [3,2,11,10];
sLeftFace = [13,7,8,10];
sRightFace = [11,9,6,12];
secBotFace = [10,11,12,13];
sFrontFace = [6,7,13,12];

module UpperFrame(){
    difference(){
    polyhedron(coorPoints, [botFace,backFace, leftFace, frontFace, rightFace, topFace, sRightFace, sLeftFace, secBotFace, sFrontFace]);
        translate([0,0,-1])
        scale([1,1.001,1.001])
        polyhedron(coorPoints, [botFace,backFace, leftFace, frontFace, rightFace, topFace, sRightFace, sLeftFace, secBotFace, sFrontFace]);
    }
}
UpperFrame();