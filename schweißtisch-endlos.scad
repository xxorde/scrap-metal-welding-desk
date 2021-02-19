// Schweißtisch geschlossen

p_h=4;
p_l=567;
p_b=329;

vkr_h=40;
vkr_l=380;
vkr_b=60;

vkrs_h=40;
vkrs_l=325; // <p_b 
vkrs_b=60;

overlap=50;
clear=1;
dist=30;

module mod() {
    // 1. bar
    translate([-(vkr_b/2)+clear,(p_l-vkr_l)/2,0]) {
        color( "Yellow", 1.0 ) {
            cube([vkr_b,vkr_l,vkr_h], 0);
        };
    };
    
    // 2. bar
    translate([p_b-(1.5*vkr_b),(p_l-vkr_l)/2,0]) {
        color( "Lime", 1.0 ) {
            cube([vkr_b,vkr_l,vkr_h], 0);
        };
    };

    // 3. bar
    translate([overlap,p_l-vkrs_b,0]) {
        color( "ForestGreen", 1.0 ) {
            cube([vkrs_l,vkrs_b,vkrs_h], 0);
        };
    };
    
    // 4. bar
    translate([overlap,0,0]) {
        color( "Olive", 1.0 ) {
            cube([vkrs_l,vkrs_b,vkrs_h], 0);
        };
    };

    // Plate
    translate([0,0,-p_h]) {
        cube([p_b,p_l,p_h], 0);
    };
};

mod();

translate([p_b+dist,0,0]) {
    mod();
    
    translate([p_b+dist,0,0]) {
        mod();
    };
};