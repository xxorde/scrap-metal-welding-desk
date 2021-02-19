// Schweißtisch geschlossen

vkr_h=40;
vkr_l=380;
vkr_b=60;

p_h=4;
p_l=567;
p_b=329;

clear=1;
dist=0;

module mod() {
    // 1. bar
    color( "Olive", 1.0 ) {
        translate([0.5*vkr_b-clear,(p_l-vkr_l)/2]) {
            cube([vkr_b,vkr_l,vkr_h], 0);
        };
    };

    // 2. bar
    translate([p_b-1.5*vkr_b-.5*clear,(p_l-vkr_l)/2-vkr_b-clear,0]) {
        color( "Lime", 1.0 ) {
            cube([vkr_b,vkr_l/2,vkr_h], 0);
        };
    };
    
    // 2. bar
    translate([p_b-1.5*vkr_b-.5*clear,(p_l/2)+vkr_b+clear,0]) {
        color( "Lime", 1.0 ) {
            cube([vkr_b,vkr_l/2,vkr_h], 0);
        };
    };

    // 3. bar
    translate([0.5*vkr_b-clear,p_l/2+vkr_l/2+clear,0]) {
        color( "Red", 1.0 ) {
            cube([vkr_l/2,vkr_b,vkr_h], 0);
        };
    };
    
    // 4. bar
    translate([1.5*vkr_b-clear,p_l/2,0]) {
        color( "ForestGreen", 1.0 ) {
            cube([vkr_l,vkr_b,vkr_h], 0);
        };
    };
    
    // 5. bar
    translate([0.5*vkr_b-clear*clear,(p_l-vkr_l)/2-vkr_b-clear,0]) {
        color( "Red", 1.0 ) {
            cube([vkr_l/2,vkr_b,vkr_h], 0);
        };
    };

    // Plate
    translate([0,0,-p_h]) {
        cube([p_b,p_l,p_h], 0);
    };
};


mod();

translate([p_b*2+dist,p_l,0]) {
    rotate(a=180, v=[0,0,1]){
        mod();
    };
};

