@echo off

:: Entrar no diretório
cd BDL_lib

:: Remover o diretório .git
rmdir /s /q .git

:: Adicionar a linha no CMakeLists.txt
echo pico_generate_pio_header(pio_matrix ${CMAKE_CURRENT_LIST_DIR}/BDL_lib/led_matrix.pio) >> CMakeLists.txt

echo Comandos executados com sucesso!
pause
