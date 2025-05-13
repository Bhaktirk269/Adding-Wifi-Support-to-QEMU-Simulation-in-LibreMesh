function load_virtual_wifi_module(count): 
 modprobe mac80211_hwsim radios=count
 function verify_radios_created(): 
 iw dev # interfaces
 main():
 load_virtual_wifi_module(4) # creates 4 virtual radios 
 verify_radios_created()
 