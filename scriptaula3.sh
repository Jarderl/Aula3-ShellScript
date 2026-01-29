#!/bin/bash
resultado=$(ls)
echo "Conteudo do diretorio: $resultado"

#!/bin/bash
opcao=${1}
case $opcao in
    "a")
        echo "Opcao A escolhida"
        ;;
    "b")
        echo "Opcao B escolhida"
        ;;
    "c")
        echo "Opcao C escolhida"
        ;;
    "d")
        echo "Opcao D escolhida"
        ;;
    *)
       echo "Opcao invalida"
       ;;
esac


#!/bin/bash
contador=0
while [ $contador -lt 5 ]; do
    echo "Contagem: $contador"
    ((contador++))
done


#!/bin/bash
echo "Digite seu nome:"
read nome
echo "Olá, $nome!"

#!/bin/bash
idade="$1"
if [ $idade -eq 18 ]; then
    echo "Você atingiu a maioridade!"
elif [ $idade -lt 18 ]; then
    echo "Você é menor de idade!"
else
    echo "Você é maior de idade"
fi

if [ condição1 ]
then
  # Comandos a serem executados se condição1 for verdadeira
elif [ condição2 ]
then
  # Comandos a serem executados se condição2 for verdadeira
else
  # Comandos a serem executados se nenhuma das condições for verdadeira
fi


if [ "$a" -eq "$b" ]; then echo "a é igual a b"; fi # Verifica se a é igual a b

if [ "$a" -ne "$b" ]; then echo "a não é igual a b"; fi # Verifica se a é diferente de b

if [ "$a" -gt "$b" ]; then echo "a é maior que b"; fi # Verifica se a é maior que b

if [ "$a" -ge "$b" ]; then echo "a é maior ou igual a b"; fi # Verifica se a é maior ou igual a b

if [ "$a" -lt "$b" ]; then echo "a é menor que b"; fi # Verifica se a é menor que b

if [ "$a" -le "$b" ]; then echo "a é menor ou igual a b"; fi # Verifica se a é menor ou igual a b

#!/bin/bash

arquivo="seu_arquivo.txt"

if [ -s "$arquivo" ]; then
    echo "O arquivo $arquivo contém caracteres."
else
    echo "O arquivo $arquivo está vazio."
fi