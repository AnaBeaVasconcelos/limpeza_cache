echo "Exibindo o consumo da memória RAM"
free -ht
echo "Limpando Cache da Memória RAM"
echo 3 > /proc/sys/vm/drop_caches
sysctl -w vm.drop_caches=3
echo "Limpeza do Cache da Memória RAM efetuada com sucesso"
echo "Exibindo o consumo da memória"
free -ht
echo "Limpando Swap"
echo "Exibindo consumo de Swap"
swapon -v
swapoff -a && swapon -a
echo "Limpeza de Swap efetuada com sucesso"
echo "Exibindo consumo de Swap"
swapon -v
