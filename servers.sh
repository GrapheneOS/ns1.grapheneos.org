servers_ns1=(
    {0..3}.ns1.grapheneos.org
)

servers=(
    "${servers_ns1[@]}"
    {0..2}.ns2.grapheneos.org
)

declare -A addresses=(
    [0.ns1.grapheneos.org]="51.161.34.158 185.187.152.9 2607:5300:205:200::eaa 2a05:b0c4:1::8"
    [1.ns1.grapheneos.org]="15.204.8.153 185.187.152.9 2604:2dc0:202:300::23a6 2a05:b0c4:1::8"
    [2.ns1.grapheneos.org]="57.129.65.223 185.187.152.9 2001:41d0:701:1100::245b 2a05:b0c4:1::8"
    [3.ns1.grapheneos.org]="15.235.197.61 185.187.152.9 2402:1f00:8000:800::3966 2a05:b0c4:1::8"
    [0.ns2.grapheneos.org]="198.98.53.141 198.251.90.93 2605:6400:10:102e:95bc:89ef:2e7f:49bb"
    [1.ns2.grapheneos.org]="205.185.124.155 198.251.90.93 2605:6400:20:1c8f:a0c9:372d:482e:945b"
    [2.ns2.grapheneos.org]="107.189.3.168 198.251.90.93 2605:6400:30:ec25:102c:af6d:5be:1eb8"
)

declare -A continents=(
    [0.ns1.grapheneos.org]=na
    [1.ns1.grapheneos.org]=na
    [2.ns1.grapheneos.org]=eu
    [3.ns1.grapheneos.org]=as
    [0.ns2.grapheneos.org]=na
    [1.ns2.grapheneos.org]=na
    [2.ns2.grapheneos.org]=eu
)

declare -A countries=(
    [0.ns1.grapheneos.org]=us
    [1.ns1.grapheneos.org]=us
    [2.ns1.grapheneos.org]=de
    [3.ns1.grapheneos.org]=sg
    [0.ns2.grapheneos.org]=us
    [1.ns2.grapheneos.org]=us
    [2.ns2.grapheneos.org]=lu
)

declare -A regions=(
    [0.ns1.grapheneos.org]=ny
    [1.ns1.grapheneos.org]=wa
    [2.ns1.grapheneos.org]=he
    [3.ns1.grapheneos.org]=--
    [0.ns2.grapheneos.org]=ny
    [1.ns2.grapheneos.org]=ca
    [2.ns2.grapheneos.org]=--
)
