readonly servers_ns1=(
    {{0..3},mia}.ns1.grapheneos.org
)

readonly servers=(
    "${servers_ns1[@]}"
    {brn,las,nyc}.ns2.grapheneos.org
)

declare -Ar threads=(
    [0.ns1.grapheneos.org]=2
    [1.ns1.grapheneos.org]=2
    [2.ns1.grapheneos.org]=2
    [3.ns1.grapheneos.org]=2
)

declare -Ar addresses=(
    [ns1.staging.grapheneos.org]="198.98.56.238 2605:6400:10:c41:de92:c534:326a:711a"
    [0.ns1.grapheneos.org]="51.161.34.158 185.187.152.9 2607:5300:205:200::eaa 2a05:b0c4:1::8"
    [1.ns1.grapheneos.org]="15.204.8.153 185.187.152.9 2604:2dc0:202:300::23a6 2a05:b0c4:1::8"
    [2.ns1.grapheneos.org]="57.129.65.223 185.187.152.9 2001:41d0:701:1100::245b 2a05:b0c4:1::8"
    [3.ns1.grapheneos.org]="15.235.197.61 185.187.152.9 2402:1f00:8000:800::3966 2a05:b0c4:1::8"
    [mia.ns1.grapheneos.org]="45.32.173.220 185.187.152.9 2001:19f0:9002:2981:5400:05ff:fec1:65c4 2a05:b0c4:1::8"
    [brn.ns2.grapheneos.org]="107.189.3.168 198.251.90.93 2605:6400:30:ec25:102c:af6d:5be:1eb8"
    [las.ns2.grapheneos.org]="205.185.124.155 198.251.90.93 2605:6400:20:1c8f:a0c9:372d:482e:945b"
    [nyc.ns2.grapheneos.org]="198.98.53.141 198.251.90.93 2605:6400:10:102e:95bc:89ef:2e7f:49bb"
)

declare -Ar continents=(
    [ns1.staging.grapheneos.org]=na
    [0.ns1.grapheneos.org]=na
    [1.ns1.grapheneos.org]=na
    [2.ns1.grapheneos.org]=eu
    [3.ns1.grapheneos.org]=as
    [mia.ns1.grapheneos.org]=na
    [brn.ns2.grapheneos.org]=eu
    [las.ns2.grapheneos.org]=na
    [nyc.ns2.grapheneos.org]=na
)

declare -Ar countries=(
    [ns1.staging.grapheneos.org]=us
    [0.ns1.grapheneos.org]=us
    [1.ns1.grapheneos.org]=us
    [2.ns1.grapheneos.org]=de
    [3.ns1.grapheneos.org]=sg
    [mia.ns1.grapheneos.org]=us
    [brn.ns2.grapheneos.org]=ch
    [las.ns2.grapheneos.org]=us
    [nyc.ns2.grapheneos.org]=us
)

declare -Ar regions=(
    [ns1.staging.grapheneos.org]=ny
    [0.ns1.grapheneos.org]=ny
    [1.ns1.grapheneos.org]=wa
    [2.ns1.grapheneos.org]=he
    [3.ns1.grapheneos.org]=--
    [mia.ns1.grapheneos.org]=fl
    [brn.ns2.grapheneos.org]=be
    [las.ns2.grapheneos.org]=ca
    [nyc.ns2.grapheneos.org]=ny
)
