echo "Exibindo o consumo da memória RAM"
free -ht
sleep 1
echo "Limpando Cache da Memória RAM"
echo 3 > /proc/sys/vm/drop_caches
sysctl -w vm.drop_caches=3
sleep 1
echo "Limpeza do Cache da Memória RAM efetuada com sucesso"
sleep 1
echo "Exibindo o consumo da memória"
free -ht
sleep 1
echo "Limpando Swap"
sleep 1
echo "Exibindo consumo de Swap"
swapon -v
swapoff -a && swapon -a
sleep 1
echo "Limpeza de Swap efetuada com sucesso"
sleep 1
echo "Exibindo consumo de Swap"
swapon -v
sleep 1