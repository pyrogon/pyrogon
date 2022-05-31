#!/bin/bash.sh
echo "Welcome to PyroVPN"
echo "Options"
echo "1) Connect to network"
echo "2) Disconnect from network"
echo "3) View public address"
echo "4) quit"
read -p "Select option: " var1
	if
		[ $var1 == 1 ];
		then
			echo 'Tunneling connection [Iceland]...'
			sudo tailscale up --exit-node 100.85.133.89
			echo 'Connected'
			echo 'You are now in the PyroVPN network and your public address is...'
			curl ifconfig.me
	fi
	if
		[ $var1 == 2 ];
		then
			echo 'Disconnecting from network...'
			sudo tailscale down
			echo "disconnected"
	fi
	if
		[ $var1 == 3 ];
		then
			curl ifconfig.me
	fi

