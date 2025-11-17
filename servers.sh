readonly servers_ns1=(
    {fra,lax,lon,mia,nyc,sea,sin,tyo}.ns1.grapheneos.org
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

declare -Ar addresses=(
    [ns1.staging.grapheneos.org]="198.98.56.238 2605:6400:10:c41:de92:c534:326a:711a"
    [fra.ns1.grapheneos.org]="80.240.20.200 185.187.152.9 2a05:f480:1800:2acd:5400:05ff:fec2:23a1 2a05:b0c4:1::8 2602:f4d9::1"
    [lax.ns1.grapheneos.org]="140.82.23.46 185.187.152.9 2001:19f0:6000:2dcd:5400:05ff:fec1:97db 2a05:b0c4:1::8 2602:f4d9::1"
    [lon.ns1.grapheneos.org]="192.248.159.52 185.187.152.9 2001:19f0:7400:8669:5400:05ff:fec3:f3f8 2a05:b0c4:1::8 2602:f4d9::1"
    [mia.ns1.grapheneos.org]="45.32.173.220 185.187.152.9 2001:19f0:9002:2981:5400:05ff:fec1:65c4 2a05:b0c4:1::8 2602:f4d9::1"
    [nyc.ns1.grapheneos.org]="66.135.8.22 185.187.152.9 2001:19f0:1000:c0d4:5400:05ff:fec1:7c21 2a05:b0c4:1::8 2602:f4d9::1"
    [sea.ns1.grapheneos.org]="66.42.74.68 185.187.152.9 2001:19f0:8001:0438:5400:05ff:fec1:9dbd 2a05:b0c4:1::8 2602:f4d9::1"
    [sin.ns1.grapheneos.org]="139.180.154.140 185.187.152.9 2401:c080:1400:4890:5400:05ff:fec2:23b0 2a05:b0c4:1::8 2602:f4d9::1"
    [tyo.ns1.grapheneos.org]="66.42.42.15 185.187.152.9 2001:19f0:7001:5695:5400:05ff:fec4:e394 2a05:b0c4:1::8 2602:f4d9::1"
    [brn.ns2.grapheneos.org]="107.189.3.168 23.149.124.1 198.251.90.93 2605:6400:30:ec25:102c:af6d:5be:1eb8 2602:f4d9:1::1"
    [las.ns2.grapheneos.org]="205.185.124.155 23.149.124.1 198.251.90.93 2605:6400:20:1c8f:a0c9:372d:482e:945b 2602:f4d9:1::1"
    [mia.ns2.grapheneos.org]="45.61.188.113 23.149.124.1 198.251.90.93 2605:6400:0040:ffbd:14e7:d270:fd75:600c 2602:f4d9:1::1"
    [nyc.ns2.grapheneos.org]="198.98.53.141 23.149.124.1 198.251.90.93 2605:6400:10:102e:95bc:89ef:2e7f:49bb 2602:f4d9:1::1"
)

declare -Ar continents=(
    [ns1.staging.grapheneos.org]=na
    [fra.ns1.grapheneos.org]=eu
    [lax.ns1.grapheneos.org]=na
    [lon.ns1.grapheneos.org]=eu
    [mia.ns1.grapheneos.org]=na
    [nyc.ns1.grapheneos.org]=na
    [sea.ns1.grapheneos.org]=na
    [sin.ns1.grapheneos.org]=as
    [tyo.ns1.grapheneos.org]=as
    [brn.ns2.grapheneos.org]=eu
    [las.ns2.grapheneos.org]=na
    [mia.ns2.grapheneos.org]=na
    [nyc.ns2.grapheneos.org]=na
)

declare -Ar countries=(
    [ns1.staging.grapheneos.org]=us
    [fra.ns1.grapheneos.org]=de
    [lax.ns1.grapheneos.org]=us
    [lon.ns1.grapheneos.org]=gb
    [mia.ns1.grapheneos.org]=us
    [nyc.ns1.grapheneos.org]=us
    [sea.ns1.grapheneos.org]=us
    [sin.ns1.grapheneos.org]=sg
    [tyo.ns1.grapheneos.org]=jp
    [brn.ns2.grapheneos.org]=ch
    [las.ns2.grapheneos.org]=us
    [mia.ns2.grapheneos.org]=us
    [nyc.ns2.grapheneos.org]=us
)

declare -Ar regions=(
    [ns1.staging.grapheneos.org]=ny
    [fra.ns1.grapheneos.org]=he
    [lax.ns1.grapheneos.org]=ca
    [lon.ns1.grapheneos.org]=eng
    [mia.ns1.grapheneos.org]=fl
    [nyc.ns1.grapheneos.org]=ny
    [sea.ns1.grapheneos.org]=wa
    [sin.ns1.grapheneos.org]=--
    [tyo.ns1.grapheneos.org]=13
    [brn.ns2.grapheneos.org]=be
    [las.ns2.grapheneos.org]=ca
    [mia.ns2.grapheneos.org]=fl
    [nyc.ns2.grapheneos.org]=ny
)
