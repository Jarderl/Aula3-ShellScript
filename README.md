#!/bin/bash
trap "echo -e '\nInterrompido pelo usuário.'; exit" SIGINT

banner()
{
   echo "Modo de Uso"
   echo "./script.sh opcao"
   echo "./script.sh -a"
   echo ""
   echo " -a - Hping3 - portscan"
   echo " -b - Hping3 - pingsweep"
   echo " -c - nc - portscan"
   echo " -d - nc - pingsweep"
   echo " -e - /dev/tcp/ - pingsweep"
   echo " -f - /dev/tcp/ - portscan"
}

banner2()
{
  echo "Tool-Work  - version 0.1"
  echo "By Bl4dsc4n"
}
banner2

if [ "${1}" = "-a" ]
then
    echo
    echo "Hping3 - portscan"
    echo
    echo "Digite IP - Ex: 192.168.0.1"
    read ip
    echo "Digite a porta inicial Ex: 22"
    read portai
    echo "Digite a porta final Ex: 1000"
    read portaf
    sudo hping3 $ip -S --scan "$portai"-"$portaf"

elif [ "${1}" = "-b" ]
then
    echo
    echo "Hping3 - pingsweep"
    echo
    echo "Digite IP da Rede - Ex: 192.168.0"
    read ip
    for i in $(seq 1 254);do
        if [ -n "$(sudo hping3 -1 -c 1 "$ip.$i" 2>/dev/null | grep 'ttl')" ]; then echo "$ip.$i"; fi
    done

elif [ "${1}" = "-c" ]
then
    echo 
    echo "nc - portscan"
    echo
    echo "Digite o IP - Ex: 192.168.0.1"
    read ip
    echo "Digite a porta inicial - Ex: 1"
    read portai
    echo "Digite a porta inicial - Ex: 6500"
    read portaf
    nc -v -n -z "$ip" "$portai"-"$portaf"

elif [ "${1}" = "-d" ]
then
   echo 
   echo "nc - pingsweep"
   echo "Digite uma Rede/24 - Ex: 192.168.0"
   read ip
   echo "Digite uma porta - Ex: 80"
   read porta
   for i in $(seq 1 254); do
       nc -zvw 1 "$ip"."$i" "$porta" 2>/dev/null && echo "Host $ip.$i - $porta up"
   done

elif [ "${1}" = "-e" ]
then
   echo
   echo "/dev/tcp/ - pingsweep"
   echo
   echo "Digite o IP da Rede - Ex: 192.168.0"
   read ip
   echo "Digite a d pesquisa - Ex: 80"
   read porta
   for i in $(seq 1 254); do timeout 0.5 echo -n 2>/dev/null < "/dev/tcp/$ip.$i/$porta" && echo "Host: $ip.$i ativo"; done

elif [ "${1}" = "-f" ]
then
   echo
   echo "/dev/tcp/ - portscan"
   echo
   echo "Digite o IP - Ex: 192.168.0.1"
   read ip
   echo "Digite a porta inicial - Ex: 1"
   read portai
   echo "Digite a porta inicial - Ex: 6500"
   read portaf
   for i in $(seq $portai $portaf); do timeout 0.5 echo -n 2>/dev/null < "/dev/tcp/$ip/$i" && echo "$i open"; done

else
    banner
fi
