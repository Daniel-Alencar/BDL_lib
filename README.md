Este é um repositório com um conjunto de funções que facilitarão o uso da placa BitDogLab e seus periféricos.

## Bibliotecas implementadas
- led_matrix: Possui funções específicas para trabalhar com a matriz de leds da BitDogLab

## Como instalar
Em seu projeto raspberry pi pico, abra o terminal e realize os seguintes comandos:

```bash
git clone <link desse repositório>
```
```bash
cd <nome do novo repositório>
```
No windows
```bash
rmdir /s /q "C:\caminho\para\a\pasta"
```
No linux
```bash
rm -rf .git
```

No arquivo CMakeLists.txt adicione a seguinte linha:

pico_generate_pio_header(pio_matrix ${CMAKE_CURRENT_LIST_DIR}/<nome do novo repositório>/pio_matrix.pio)


## Uso
Para utilizar a biblioteca no código principal, basta importá-la no início do código principal como:
```c
#include "BDL_lib/led_matrix"
```
