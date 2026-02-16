. bgp-password.sh

readonly servers_ns1=(
    {bom,ewr,fra,lax,lon,mia,sao,sea,sin,syd,tyo}.ns1.grapheneos.org
)

readonly servers_ns2=(
    {ber,iad,lon,mia,sea,sjc,sin,tyo,yto}.ns2.grapheneos.org
)

readonly servers=(
    "${servers_ns1[@]}"
    "${servers_ns2[@]}"
)

declare -Ar threads=(
)

readonly ns1_ipv4=23.149.124.1
readonly ns1_ipv6='2602:f4d9::1 2602:f4d9:2::1'

readonly ns2_ipv4=23.149.125.1
readonly ns2_ipv6='2602:f4d9:1::1 2602:f4d9:3::1'

declare -Ar addresses=(
    [ns1.staging.grapheneos.org]="198.98.56.238 2605:6400:10:c41:de92:c534:326a:711a 2602:f4d9:4::1"
    [bom.ns1.grapheneos.org]="65.20.91.33 $ns1_ipv4 2401:c080:2400:1814:5400:05ff:fec5:d503 $ns1_ipv6"
    [ewr.ns1.grapheneos.org]="66.135.8.22 $ns1_ipv4 2001:19f0:1000:c0d4:5400:05ff:fec1:7c21 $ns1_ipv6"
    [fra.ns1.grapheneos.org]="80.240.20.200 $ns1_ipv4 2a05:f480:1800:2acd:5400:05ff:fec2:23a1 $ns1_ipv6"
    [lax.ns1.grapheneos.org]="140.82.23.46 $ns1_ipv4 2001:19f0:6000:2dcd:5400:05ff:fec1:97db $ns1_ipv6"
    [lon.ns1.grapheneos.org]="192.248.159.52 $ns1_ipv4 2001:19f0:7400:8669:5400:05ff:fec3:f3f8 $ns1_ipv6"
    [mia.ns1.grapheneos.org]="104.207.147.19 $ns1_ipv4 2001:19f0:9000:2605:5400:05ff:feed:7df5 $ns1_ipv6"
    [sao.ns1.grapheneos.org]="216.238.118.134 $ns1_ipv4 2001:19f0:b800:14a9:5400:05ff:feca:f136 $ns1_ipv6"
    [sea.ns1.grapheneos.org]="66.42.74.68 $ns1_ipv4 2001:19f0:8001:0438:5400:05ff:fec1:9dbd $ns1_ipv6"
    [sin.ns1.grapheneos.org]="139.180.154.140 $ns1_ipv4 2401:c080:1400:4890:5400:05ff:fec2:23b0 $ns1_ipv6"
    [syd.ns1.grapheneos.org]="45.63.28.82 $ns1_ipv4 2401:c080:1800:141d:5400:05ff:fec5:d41b $ns1_ipv6"
    [tyo.ns1.grapheneos.org]="66.42.42.15 $ns1_ipv4 2001:19f0:7001:5695:5400:05ff:fec4:e394 $ns1_ipv6"
    [ber.ns2.grapheneos.org]="194.156.154.116 $ns2_ipv4 2a12:8d02:2100:176:26a3:f0ff:fe49:eda8 $ns2_ipv6"
    [iad.ns2.grapheneos.org]="38.175.99.47 $ns2_ipv4 2a0b:4342:1a32:db:26a3:f0ff:fe47:dfec $ns2_ipv6"
    [lon.ns2.grapheneos.org]="45.142.244.163 $ns2_ipv4 2a0f:3b03:101:2d3:26a3:f0ff:fe4a:594 $ns2_ipv6"
    [mia.ns2.grapheneos.org]="38.175.100.57 $ns2_ipv4 2a0e:6902:5010:d9:26a3:f0ff:fe48:de47 $ns2_ipv6"
    [sea.ns2.grapheneos.org]="38.175.103.38 $ns2_ipv4 2a0e:6901:201:dd:26a3:f0ff:fe48:6091 $ns2_ipv6"
    [sjc.ns2.grapheneos.org]="38.175.105.122 $ns2_ipv4 2a0e:6901:410:ab:26a3:f0ff:fe4a:c8d6 $ns2_ipv6"
    [sin.ns2.grapheneos.org]="194.156.163.89 $ns2_ipv4 2407:b9c0:e002:226:26a3:f0ff:fe47:8f06 $ns2_ipv6"
    [tyo.ns2.grapheneos.org]="103.170.233.149 $ns2_ipv4 2407:b9c0:1:2af:26a3:f0ff:fe46:bede $ns2_ipv6"
    [yto.ns2.grapheneos.org]="91.246.30.3 $ns2_ipv4 2602:f4d9:5:2::1 $ns2_ipv6"
)

declare -Ar continents=(
    [ns1.staging.grapheneos.org]=na
    [bom.ns1.grapheneos.org]=as
    [ewr.ns1.grapheneos.org]=na
    [fra.ns1.grapheneos.org]=eu
    [lax.ns1.grapheneos.org]=na
    [lon.ns1.grapheneos.org]=eu
    [mia.ns1.grapheneos.org]=na
    [sao.ns1.grapheneos.org]=sa
    [sea.ns1.grapheneos.org]=na
    [sin.ns1.grapheneos.org]=as
    [syd.ns1.grapheneos.org]=oc
    [tyo.ns1.grapheneos.org]=as
    [ber.ns2.grapheneos.org]=eu
    [iad.ns2.grapheneos.org]=na
    [lon.ns2.grapheneos.org]=eu
    [mia.ns2.grapheneos.org]=na
    [sea.ns2.grapheneos.org]=na
    [sjc.ns2.grapheneos.org]=na
    [sin.ns2.grapheneos.org]=as
    [tyo.ns2.grapheneos.org]=as
    [yto.ns2.grapheneos.org]=na
)

declare -Ar countries=(
    [ns1.staging.grapheneos.org]=us
    [bom.ns1.grapheneos.org]=in
    [ewr.ns1.grapheneos.org]=us
    [fra.ns1.grapheneos.org]=de
    [lax.ns1.grapheneos.org]=us
    [lon.ns1.grapheneos.org]=gb
    [mia.ns1.grapheneos.org]=us
    [sao.ns1.grapheneos.org]=br
    [sea.ns1.grapheneos.org]=us
    [sin.ns1.grapheneos.org]=sg
    [syd.ns1.grapheneos.org]=au
    [tyo.ns1.grapheneos.org]=jp
    [ber.ns2.grapheneos.org]=de
    [iad.ns2.grapheneos.org]=us
    [lon.ns2.grapheneos.org]=gb
    [mia.ns2.grapheneos.org]=us
    [sea.ns2.grapheneos.org]=us
    [sjc.ns2.grapheneos.org]=us
    [sin.ns2.grapheneos.org]=sg
    [tyo.ns2.grapheneos.org]=jp
    [yto.ns2.grapheneos.org]=ca
)

declare -Ar regions=(
    [ns1.staging.grapheneos.org]=ny
    [bom.ns1.grapheneos.org]=mh
    [ewr.ns1.grapheneos.org]=nj
    [fra.ns1.grapheneos.org]=he
    [lax.ns1.grapheneos.org]=ca
    [lon.ns1.grapheneos.org]=eng
    [mia.ns1.grapheneos.org]=fl
    [sao.ns1.grapheneos.org]=sp
    [sea.ns1.grapheneos.org]=wa
    [sin.ns1.grapheneos.org]=--
    [syd.ns1.grapheneos.org]=nsw
    [tyo.ns1.grapheneos.org]=13
    [ber.ns2.grapheneos.org]=be
    [iad.ns2.grapheneos.org]=va
    [lon.ns2.grapheneos.org]=eng
    [mia.ns2.grapheneos.org]=fl
    [sea.ns2.grapheneos.org]=wa
    [sjc.ns2.grapheneos.org]=ca
    [sin.ns2.grapheneos.org]=--
    [tyo.ns2.grapheneos.org]=13
    [yto.ns2.grapheneos.org]=on
)

declare -Ar us_west=(
    [lax.ns1.grapheneos.org]=true
    [sea.ns1.grapheneos.org]=true
    [las.ns2.grapheneos.org]=true
    [sea.ns2.grapheneos.org]=true
    [sjc.ns2.grapheneos.org]=true
)
