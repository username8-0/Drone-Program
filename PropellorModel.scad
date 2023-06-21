module pBlade(){
    translate([0,-2.5,-1])
    rotate([30,0,0])
    resize([20,5,2])
        intersection(){
            sphere(10);
            translate([0,10,0])
                sphere(10);
}
}

module propellor(){
    difference(){
        cylinder(h=2, r=3, center = true);
        cylinder(h=2.001, r=2, center = true);
    }  

    for(rz=[0:120:240]){
        rotate([0,0,rz])
        translate([12,0,0])
            pBlade();
    }
}

color("black"){
    propellor();
}