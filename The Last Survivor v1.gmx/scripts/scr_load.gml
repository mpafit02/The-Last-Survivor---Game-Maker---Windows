var file,n0,n1,inst,xx,yy;

file=get_open_filename("*.*","savefile.ini");
if file!="" {
ini_open(file);
n0=0;
n1=0;
inst=0;
xx=0;
yy=0;
while ini_key_exists("save",string(n0)+string(n1)){
    inst=ini_read_real("save",string(n0)+string(n1),0);
    n1+=1;
    xx=ini_read_real("save",string(n0)+string(n1),0);
    n1+=1;
    yy=ini_read_real("save",string(n0)+string(n1),0);
    instance_create(xx,yy,inst);
    n0+=1;
    n1=0;
    global.gold=ini_read_real("save","gold",global.gold);
    global.water_element = ini_read_real("save","water_element",global.water_element);
    global.fire_element = ini_read_real("save","fire_element",global.fire_element);
    global.earth_element = ini_read_real("save","earth_element",global.earth_element);
    global.air_element = ini_read_real("save","air_element",global.air_element);
    global.ammo_poison=ini_read_real("save","ammo_poison",global.ammo_poison);
    global.ammo_ice=ini_read_real("save","ammo_ice",global.ammo_ice);
    global.ammo_electric=ini_read_real("save","ammo_electric",global.ammo_electric);
    global.hppots=ini_read_real("save","hppots",global.hppots);
    global.energypots=ini_read_real("save","energypots",global.energypots);
    room_goto(rm_save);
}

ini_close();
}
