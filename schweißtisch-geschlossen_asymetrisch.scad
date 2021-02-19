// Schweißtisch geschlossen
p_h=4;
p_l=567;
p_b=329;

vkr_h=40;
vkr_l=380;
vkr_b=60;

vkrs_h=40;
vkrs_l=p_b-(vkr_l-p_b); // <p_b 
vkrs_b=60;

clear=1;
dist=40;

module mod_a() {
    // 1. bar
    translate([0.5*vkr_b-clear,(p_l-vkr_l)/2,0]) {
        color( "Yellow", 1.0 ) {
            cube([vkr_b,vkr_l,vkr_h], 0);
        };
    };
    
    // 2. bar
    translate([p_b-1.5*vkr_b-0.5*clear,(p_l-vkr_l)/2,0]) {
        color( "Lime", 1.0 ) {
            cube([vkr_b,vkr_l,vkr_h], 0);
        };
    };

    // 3. bar
    translate([-0.5*clear,p_l/2+vkr_l/2+clear,0]) {
        color( "ForestGreen", 1.0 ) {
            cube([vkr_l,vkr_b,vkr_h], 0);
        };
    };
    
    // 4. bar
    translate([-0.5*clear,(p_l-vkr_l)/2-vkr_b-clear,0]) {
        color( "Olive", 1.0 ) {
            cube([vkr_l,vkr_b,vkr_h], 0);
        };
    };

    // Plate
    translate([0,0,-p_h]) {
        cube([p_b,p_l,p_h], 0);
    };
};

module mod_b() {
    // 1. bar
    translate([0.5*vkr_b-clear,(p_l-vkr_l)/2,0]) {
        color( "Yellow", 1.0 ) {
            cube([vkr_b,vkr_l,vkr_h], 0);
        };
    };
    
    // 2. bar
    translate([p_b-0.5*vkr_b-0.5*clear  ,(p_l-vkr_l)/2,0]) {
        color( "Red", 1.0 ) {
            cube([vkr_b,vkr_l,vkr_h], 0);
        };
    };

    // 3. bar
    translate([-0.5*clear,p_l/2+vkr_l/2+clear,0]) {
        color( "ForestGreen", 1.0 ) {
            cube([vkrs_l,vkrs_b,vkrs_h], 0);
        };
    };
    
    // 4. bar
    translate([-0.5*clear,(p_l-vkr_l)/2-vkr_b-clear,0]) {
        color( "Olive", 1.0 ) {
            cube([vkrs_l,vkrs_b,vkrs_h], 0);
        };
    };

    // Plate
    translate([0,0,-p_h]) {
        cube([p_b,p_l,p_h], 0);
    };
};

mod_a();

translate([p_b*2+dist,p_l,0]) {
    rotate(a=180, v=[0,0,1]){
        mod_b();
    };
};

