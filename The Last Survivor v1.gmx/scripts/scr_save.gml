var file,inst,num,n0,n1,inst;
file=get_save_filename("*.*","savefile.ini");

if file_exists(file){
    file_delete(file);
}
if file!="" {
ini_open(file);
inst_num = instance_number(obj_save_object)
n0=0;
n1=0;
while inst_num > 0{
    inst = instance_find(obj_save_object,inst_num - 1);
    ini_write_real("save",string(n0) + string(n1),inst.object_index);
    n1+=1;
    ini_write_real("save",string(n0) + string(n1),inst.x);
    n1+=1;
    ini_write_real("save",string(n0) + string(n1),inst.y);
    inst_num-=1;
    n0+=1;
    n1=0;
    ini_write_real("save","gold",global.gold);
    ini_write_real("save","water_element",global.water_element);
    ini_write_real("save","fire_element",global.fire_element);
    ini_write_real("save","earth_element",global.earth_element);
    ini_write_real("save","air_element",global.air_element);
    ini_write_real("save","ammo_poison",global.ammo_poison);
    ini_write_real("save","ammo_ice",global.ammo_ice);
    ini_write_real("save","ammo_electric",global.ammo_electric);
    ini_write_real("save","hppots",global.hppots);
    ini_write_real("save","energypots",global.energypots);
}
ini_close();
if file_exists(file){
    show_message_async("Saved!");
}
}
