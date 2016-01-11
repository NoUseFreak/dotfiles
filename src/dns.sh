brew install dnsmasq
cp $(brew list dnsmasq | grep /dnsmasq.conf.example$) /usr/local/etc/dnsmasq.conf
sudo cp $(brew list dnsmasq | grep /homebrew.mxcl.dnsmasq.plist$) /Library/LaunchDaemons/
sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist

echo "" > /usr/local/etc/dnsmasq.conf
echo "address=/.dev/127.0.0.1" >> /usr/local/etc/dnsmasq.conf
echo "address=/.dd/192.168.99.100" >> /usr/local/etc/dnsmasq.conf

sudo mkdir -p /etc/resolver
sudo tee /etc/resolver/dev >/dev/null <<EOF
nameserver 127.0.0.1
EOF
sudo tee /etc/resolver/dd >/dev/null <<EOF
nameserver 127.0.0.1
EOF
