. bgp-password.sh

readonly servers_ns1=(
    {bom,fra,lax,lon,mia,nyc,sea,sin,syd,tyo}.ns1.grapheneos.org
)

readonly servers_ns2=(
    {brn,las,mia,nyc}.ns2.grapheneos.org
)

readonly servers=(
    "${servers_ns1[@]}"
    "${servers_ns2[@]}"
)

declare -Ar threads=(
)

readonly ns1_ipv6=2602:f4d9::1
readonly ns1_rage4_ipv4=185.187.152.9

readonly ns2_ipv4=23.149.124.1
readonly ns2_ipv6=2602:f4d9:1::1
readonly ns2_buyvm_ipv4=198.251.90.93

declare -Ar addresses=(
    [ns1.staging.grapheneos.org]="198.98.56.238 2605:6400:10:c41:de92:c534:326a:711a"
    [bom.ns1.grapheneos.org]="65.20.91.33 $ns1_rage4_ipv4 2401:c080:2400:1814:5400:05ff:fec5:d503 $ns1_ipv6"
    [fra.ns1.grapheneos.org]="80.240.20.200 $ns1_rage4_ipv4 2a05:f480:1800:2acd:5400:05ff:fec2:23a1 $ns1_ipv6"
    [lax.ns1.grapheneos.org]="140.82.23.46 $ns1_rage4_ipv4 2001:19f0:6000:2dcd:5400:05ff:fec1:97db $ns1_ipv6"
    [lon.ns1.grapheneos.org]="192.248.159.52 $ns1_rage4_ipv4 2001:19f0:7400:8669:5400:05ff:fec3:f3f8 $ns1_ipv6"
    [mia.ns1.grapheneos.org]="45.32.173.220 $ns1_rage4_ipv4 2001:19f0:9002:2981:5400:05ff:fec1:65c4 $ns1_ipv6"
    [nyc.ns1.grapheneos.org]="66.135.8.22 $ns1_rage4_ipv4 2001:19f0:1000:c0d4:5400:05ff:fec1:7c21 $ns1_ipv6"
    [sea.ns1.grapheneos.org]="66.42.74.68 $ns1_rage4_ipv4 2001:19f0:8001:0438:5400:05ff:fec1:9dbd $ns1_ipv6"
    [sin.ns1.grapheneos.org]="139.180.154.140 $ns1_rage4_ipv4 2401:c080:1400:4890:5400:05ff:fec2:23b0 $ns1_ipv6"
    [syd.ns1.grapheneos.org]="45.63.28.82 $ns1_rage4_ipv4 2401:c080:1800:141d:5400:05ff:fec5:d41b $ns1_ipv6"
    [tyo.ns1.grapheneos.org]="66.42.42.15 $ns1_rage4_ipv4 2001:19f0:7001:5695:5400:05ff:fec4:e394 $ns1_ipv6"
    [brn.ns2.grapheneos.org]="107.189.3.168 $ns2_ipv4 $ns2_buyvm_ipv4 2605:6400:30:ec25:102c:af6d:5be:1eb8 $ns2_ipv6"
    [las.ns2.grapheneos.org]="205.185.124.155 $ns2_ipv4 $ns2_buyvm_ipv4 2605:6400:20:1c8f:a0c9:372d:482e:945b $ns2_ipv6"
    [mia.ns2.grapheneos.org]="45.61.188.113 $ns2_ipv4 $ns2_buyvm_ipv4 2605:6400:0040:ffbd:14e7:d270:fd75:600c $ns2_ipv6"
    [nyc.ns2.grapheneos.org]="198.98.53.141 $ns2_ipv4 $ns2_buyvm_ipv4 2605:6400:10:102e:95bc:89ef:2e7f:49bb $ns2_ipv6"
)

declare -Ar continents=(
    [ns1.staging.grapheneos.org]=na
    [bom.ns1.grapheneos.org]=as
    [fra.ns1.grapheneos.org]=eu
    [lax.ns1.grapheneos.org]=na
    [lon.ns1.grapheneos.org]=eu
    [mia.ns1.grapheneos.org]=na
    [nyc.ns1.grapheneos.org]=na
    [sea.ns1.grapheneos.org]=na
    [sin.ns1.grapheneos.org]=as
    [syd.ns1.grapheneos.org]=oc
    [tyo.ns1.grapheneos.org]=as
    [brn.ns2.grapheneos.org]=eu
    [las.ns2.grapheneos.org]=na
    [mia.ns2.grapheneos.org]=na
    [nyc.ns2.grapheneos.org]=na
)

declare -Ar countries=(
    [ns1.staging.grapheneos.org]=us
    [bom.ns1.grapheneos.org]=in
    [fra.ns1.grapheneos.org]=de
    [lax.ns1.grapheneos.org]=us
    [lon.ns1.grapheneos.org]=gb
    [mia.ns1.grapheneos.org]=us
    [nyc.ns1.grapheneos.org]=us
    [sea.ns1.grapheneos.org]=us
    [sin.ns1.grapheneos.org]=sg
    [syd.ns1.grapheneos.org]=au
    [tyo.ns1.grapheneos.org]=jp
    [brn.ns2.grapheneos.org]=ch
    [las.ns2.grapheneos.org]=us
    [mia.ns2.grapheneos.org]=us
    [nyc.ns2.grapheneos.org]=us
)

declare -Ar regions=(
    [ns1.staging.grapheneos.org]=ny
    [bom.ns1.grapheneos.org]=mh
    [fra.ns1.grapheneos.org]=he
    [lax.ns1.grapheneos.org]=ca
    [lon.ns1.grapheneos.org]=eng
    [mia.ns1.grapheneos.org]=fl
    [nyc.ns1.grapheneos.org]=ny
    [sea.ns1.grapheneos.org]=wa
    [sin.ns1.grapheneos.org]=--
    [syd.ns1.grapheneos.org]=nsw
    [tyo.ns1.grapheneos.org]=13
    [brn.ns2.grapheneos.org]=be
    [las.ns2.grapheneos.org]=ca
    [mia.ns2.grapheneos.org]=fl
    [nyc.ns2.grapheneos.org]=ny
)
