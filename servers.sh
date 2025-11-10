readonly servers_ns1=(
    {lax,mia,nyc,sea}.ns1.grapheneos.org
)

readonly servers=(
    "${servers_ns1[@]}"
    {2,3}.ns1.grapheneos.org
    {brn,las,nyc}.ns2.grapheneos.org
)

declare -Ar threads=(
    [2.ns1.grapheneos.org]=2
    [3.ns1.grapheneos.org]=2
)

declare -Ar addresses=(
    [ns1.staging.grapheneos.org]="198.98.56.238 2605:6400:10:c41:de92:c534:326a:711a"
    [2.ns1.grapheneos.org]="57.129.65.223 185.187.152.9 2001:41d0:701:1100::245b 2a05:b0c4:1::8"
    [3.ns1.grapheneos.org]="15.235.197.61 185.187.152.9 2402:1f00:8000:800::3966 2a05:b0c4:1::8"
    [lax.ns1.grapheneos.org]="140.82.23.46 185.187.152.9 2001:19f0:6000:2dcd:5400:05ff:fec1:97db 2a05:b0c4:1::8"
    [mia.ns1.grapheneos.org]="45.32.173.220 185.187.152.9 2001:19f0:9002:2981:5400:05ff:fec1:65c4 2a05:b0c4:1::8"
    [nyc.ns1.grapheneos.org]="66.135.8.22 185.187.152.9 2001:19f0:1000:c0d4:5400:05ff:fec1:7c21 2a05:b0c4:1::8"
    [sea.ns1.grapheneos.org]="66.42.74.68 185.187.152.9 2001:19f0:8001:0438:5400:05ff:fec1:9dbd 2a05:b0c4:1::8"
    [brn.ns2.grapheneos.org]="107.189.3.168 198.251.90.93 2605:6400:30:ec25:102c:af6d:5be:1eb8"
    [las.ns2.grapheneos.org]="205.185.124.155 198.251.90.93 2605:6400:20:1c8f:a0c9:372d:482e:945b"
    [nyc.ns2.grapheneos.org]="198.98.53.141 198.251.90.93 2605:6400:10:102e:95bc:89ef:2e7f:49bb"
)

declare -Ar continents=(
    [ns1.staging.grapheneos.org]=na
    [2.ns1.grapheneos.org]=eu
    [3.ns1.grapheneos.org]=as
    [lax.ns1.grapheneos.org]=na
    [mia.ns1.grapheneos.org]=na
    [nyc.ns1.grapheneos.org]=na
    [sea.ns1.grapheneos.org]=na
    [brn.ns2.grapheneos.org]=eu
    [las.ns2.grapheneos.org]=na
    [nyc.ns2.grapheneos.org]=na
)

declare -Ar countries=(
    [ns1.staging.grapheneos.org]=us
    [2.ns1.grapheneos.org]=de
    [3.ns1.grapheneos.org]=sg
    [lax.ns1.grapheneos.org]=us
    [mia.ns1.grapheneos.org]=us
    [nyc.ns1.grapheneos.org]=us
    [sea.ns1.grapheneos.org]=us
    [brn.ns2.grapheneos.org]=ch
    [las.ns2.grapheneos.org]=us
    [nyc.ns2.grapheneos.org]=us
)

declare -Ar regions=(
    [ns1.staging.grapheneos.org]=ny
    [2.ns1.grapheneos.org]=he
    [3.ns1.grapheneos.org]=--
    [lax.ns1.grapheneos.org]=ca
    [mia.ns1.grapheneos.org]=fl
    [nyc.ns1.grapheneos.org]=ny
    [sea.ns1.grapheneos.org]=wa
    [brn.ns2.grapheneos.org]=be
    [las.ns2.grapheneos.org]=ca
    [nyc.ns2.grapheneos.org]=ny
)
