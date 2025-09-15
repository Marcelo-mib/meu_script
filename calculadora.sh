  GNU nano 7.2                                         calculadora.sh *echo "Digite o primeiro número: "
read num1
echo "Digite o segundo número: "
read num2

echo "Escolha a operação (+, -, *, /): "
read operacao

case $operacao in
  +) resultado=$(echo "$num1 + $num2" | bc);;
  -) resultado=$(echo "$num1 - $num2" | bc);;
  \*) resultado=$(echo "$num1 * $num2" | bc);;
  /) resultado=$(echo "scale=2; $num1 / $num2" | bc);;
  *) echo "Operação inválida"; exit 1;;
esac

echo "Resultado: $resultado"








^G Help        ^O Write Out   ^W Where Is    ^K Cut         ^T Execute     ^C Location    M-U Undo       M-A Set Mark
^X Exit        ^R Read File   ^\ Replace     ^U Paste       ^J Justify     ^/ Go To Line  M-E Redo       M-6 Copy
