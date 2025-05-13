function attach_interface(vm_name, radio_interface): 
 # use TAP bridge to connect interface to VM 
 ip link set radio_interface u
 brctl addif br0 radio_interface