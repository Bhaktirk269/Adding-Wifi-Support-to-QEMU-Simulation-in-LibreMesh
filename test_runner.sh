function test_connectivity_between_nodes(): 
 ssh node1 ping node2_ip # check ICMP
 ssh node1 bmx6 -c topology # check routing
 main(): 
 run setup_virtual_wifi.sh
 run start_libremesh_vm.sh for node1, node2 
 attach radios using attach_interface_to_vm.sh 
 wait_for_boot()
 test_connectivity_between_nodes()