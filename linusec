#block udp with a 0-byte payload
iptables -A INPUT -p udp -m u32 --u32 "22&0xFFFF=0x0008" -j DROP

#block all packets from ips ending in .255.255
iptables -A INPUT -m u32 --u32 "12&0xFFFF=0xFFFF" -j DROP

#block common Camfrog-specific attacks
iptables -A INPUT -m u32 --u32 "28&0x00000FF0=0xFEDFFFFF" -j DROP

#block udp containing "farewall"
iptables -A INPUT -m string --algo bm --from 28 --to 29 --string "farewell" -j DROP

#block udp starting with alternating spaces
iptables -A INPUT -p udp -m u32 --u32 "28 & 0x00FF00FF = 0x00200020 && 32 & 0x00FF00FF = 0x00200020 && 36 & 0x00FF00FF = 0x00200020 && 40 & 0x00FF00FF = 0x00200020" -j DROP

#block tcp ack 0 of length 40
iptables -I INPUT -p tcp -m tcp -m string --hex-string "|000000005010|" --algo kmp --from 28 --to 29 -m length --length 40 -j DROP

#block udp containing "SAMP"
iptables -I INPUT -p udp -m udp -m string --hex-string "|53414d50|" --algo kmp --from 28 --to 29 -j DROP

#block udp starting with "std" and 00s
iptables -I INPUT -p udp -m udp -m string --hex-string "|7374640000000000|" --algo kmp --from 28 --to 29 -j DROP

#block udp containing 16 null (00) chars
iptables -I INPUT -p udp -m udp -m string --hex-string "|00000000000000000000000000000000|" --algo kmp --from 32 --to 33 -j DROP

#block udp containing "AAAAAAAAAAAAAAAA"
iptables -A INPUT -p udp -m udp -m string --algo bm --from 32 --to 33 --string "AAAAAAAAAAAAAAAA" -j DROP

#block udp containing "0123456789ABCDE"
iptables -A INPUT -p udp -m udp -m string --algo bm --from 28 --to 29 --string "0123456789ABCDE" -j DROP

#block all packets from ips ending in .0.0
iptables -A INPUT -m u32 --u32 "12&0xFFFF=0" -j DROP

#block Source Split Packets
iptables -A INPUT -p udp -m u32 --u32 "26&0xFFFFFFFF=0xfeff" -j DROP

#block udp containing "0123456789"
iptables -A INPUT -p udp -m udp -m string --algo bm --from 44 --to 45 --string "0123456789" -j DROP

#block udp containing "a cat is fine too"
iptables -A INPUT -p udp -m udp -m string --algo bm --from 28 --to 29 --string "A cat is fine too" -j DROP

#block udp containing "flood"
iptables -A INPUT -p udp -m udp -m string --algo bm --from 28 --to 29 --string "flood" -j DROP

#block udp containing "q00000000000000"
iptables -A INPUT -m string --algo bm --from 32 --to 33 --string "q00000000000000" -j DROP

#block udp containing "statusResponse"
iptables -A INPUT -m string --algo bm --from 32 --to 33 --string "statusResponse" -j DROP

#block icmp
iptables -A INPUT -p icmp -j DROP

#block udp methode "NTP"
iptables -A INPUT -i lo -p udp --destination-port 123 -j DROP
iptables -A INPUT -p udp --source-port 123:123 -m state --state ESTABLISHED -j DROP

#block udp methode "CODE"
iptables -I INPUT -p udp -m udp -m string --hex-string "|ffffffff6765746368616c6c656e676520302022|" --algo kmp -j DROP

#block TCP expect port 80,22
iptables -A INPUT -p tcp -m tcp -m multiport ! --dports 80,22 -j DROP

#block udp methode "SSDP"
iptables -I INPUT -p udp --dport 16000:29000 -m string --to 75 --algo bm --string 'HTTP/1.1 200 OK' -j DROP

#block protocols other than tcp, udp, and icmp [block all traffic]
iptables -A INPUT -p udp -m u32 --u32 "6&0xFF=0,2:5,7:16,18:255" -j DROP
