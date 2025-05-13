function start_vm(name, image_path, port_forward_list):
 qemu-system-x86_64 \
QEMU node 1
(LibreMesh 
VM)
QEMU node 2
(LibreMesh 
VM)
mac80211_hwsim 
 -name n
 -hda image_path \
 -netdev user,id=net0,hostfwd=tcp::port1-:22 \
 -device e1000,netdev=net0 \
 -enable-kvm 
 -nographic \
 main(): 
 start_vm("node1", "./libremesh.img", [22, 8080])
 