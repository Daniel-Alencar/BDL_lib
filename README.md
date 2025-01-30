Este é um repositório com um conjunto de funções que facilitarão o uso da placa BitDogLab e seus periféricos.

## Ambiente de execução
Para usar a bibliteca deste repositório, devemos configurar um projeto raspberry pi pico através da extensão do VScode "Raspberry Pi Pico". Após o projeto base estar criado, podemos instalar a biblioteca.

## bibliotecas implementadas
- led_matrix: Possui funções específicas para trabalhar com a matriz de leds da BitDogLab.

## Como instalar

Em seu projeto raspberry pi pico, abra o terminal e realize os seguintes comandos:

```
git clone https://github.com/Daniel-Alencar/BDL_lib BDL_lib
```
```
cd BDL_lib
```
```
rm -rf .git # linux
rmdir /s /q .git # windows
```
No arquivo CMakeLists.txt adicione a seguinte linha:

```c
pico_generate_pio_header(pio_matrix ${CMAKE_CURRENT_LIST_DIR}/BDL_lib/led_matrix.pio)
```
Essa linha deve ser adicionada onde é indicado abaixo:
```c
pico_enable_stdio_uart(...)
pico_enable_stdio_usb(...)

# AQUI

target_sources(...)
```

### Maneira 2

Em seu projeto raspberry pi pico, abra o terminal e realize os seguintes comandos:

```
git clone https://github.com/Daniel-Alencar/BDL_lib BDL_lib
```
```
cd BDL_lib
```
Simplesmente execute o arquivo "setup" no terminal da pasta de seu projeto. Execute "sh setup.sh" no Linux e "setup.bat" no Windows.

## Como usar
Para utilizar a biblioteca no código principal, basta importá-la no início do código principal.

Por exemplo, para importar a biblioteca led_matrix, você poderia fazer assim:
```c
#include "BDL_lib/led_matrix"
```
E pronto! As funções da biblioteca correspondente estão prontas para serem usadas.