# [nmc-first-steps](https://github.com/RC-MODULE/nmc-first-steps)

Данное руководство пошагово описывает основные принципы
создания программ на языке ассемблера и C для процессоров семейства NeuroMatrix.
Показывается как разработать программу, задействуя скалярный и векторный процессор.
Приводятся основные принципы оптимизации программ
с учётом архитектуры процессора, структуры и состава окружающей
его периферии.

Каждый шаг представляет собой проект с исходными текстами и сопровождается подробным описаннием.
Проекты располагаются в папке */Tutorial* и могут быть собраны и запущены как на отладочной плате, так и на эмуляторе под ОС Windows.   

В текстовом руководстве рассматриваются примеры, сконфигурированные под эмулятор процессора NM6405,
также дополнительно приводятся сборочные конфигурации и для других платформ:

- make_emu6405  - эмулятор nm6405(1879ВМ4) и nm6406(1879ВМ5Я)
- make_mc5103   - плата МЦ 51.03 (1879ВМ5Я)
- make_mc7601   - плата МЦ 76.01 (К1879ХК1Я)
- make_mb7707   - плата МВ 77.07 (К1879ХБ1Я)
- make_mb12101   - плата МC 121.01 (1879ВЯ6Я) 

Для платы МC 121.01 доступны доп. конфигуриации:  
- make_mc12101_nmpu1-gcc-cfg - ядро 1(int core) сборка nm-gcc + cfg-файл конфиграции
- make_mc12101_nmpu1-gcc-ld  - ядро 1(int core) сборка nm-gcc + lds-файл конфиграции  
- make_mc12101_nmpu1-legacy  - ядро 1(int core) сборка старым SDK 

## Требования системного ПО (Для ОС Windows)

Для работы с эмулятором достаточно установленного Neuro Matrix SDK (Legacy), входящего в состав дистрибутива [nmkit](https://www.module.ru/mb7707/NeuroMatrix/nmkit.exe) .

Сборка осуществляется с помощью bat-файлов, которые также продублированы сборочными скриптами Makefile. 
Для сборки и запуска проектов рекомендуется использовать [make v3.81](http://gnuwin32.sourceforge.net/packages/make.htm).
> make и комплект GnuWin32 утилит также входит в соств [nmkit](https://www.module.ru/mb7707/NeuroMatrix/nmkit.exe) .





## Сборка и запуск
Сборка проекта осуществляется командой из соответствующей папки с примером:
```mak
\nmc-first-steps\Tutorial\Step01\make_emu6405> make 
```
либо 
```mak
\nmc-first-steps\Tutorial\Step01\make_emu6405> build.bat
```

Запуск приложения осуществляется командой:
```mak
\nmc-first-steps\Tutorial\Step01\make_emu6405> make run
```
либо 
```mak
\nmc-first-steps\Tutorial\Step01\make_emu6405> emurun main.abs
```
> emurun выводит  на консоль только отличные от нуля коды возврата main().

## Отладка 

Имеется возможность пошаговой отладки программ в режиме эмуляции процессора NM6405 с помощью отладчика emudbg из состава старого NMSDK (legacy).  

1. Собрать пример 
```mak
\nmc-first-steps\Tutorial\Step01\make_emu6405> build.bat
```
2. Подключить dll - эмулятора nm6405 к emudbg :
- Запустить emudbg ("c:\Program Files\Module\nmkit\nmsdk\bin\emudbg.exe")
- Открыть "Edit\Preference"
- во вкладке "General" установить галочку "Preserve workspace"
- во вкладке "Target libraries" добавить nm6405emu.dll ("c:\Program Files\Module\nmkit\nmsdk\bin\nm6405emu.dll")
3. в отладчике "Target\Connect to..." выбрать "NM6405 эмулятор инструкций" , затем "Connect"
4. Загрузить в отладчикe "Target\Load Program..." исполняемый abs-файл (".\nmc-first-steps\Tutorial\Step01\make_emu6405\main.abs")  
5. Настроить окна 
![Emudbg](/doc/emudbg.png?raw=true)





## Документация 
Описания шагов находится в папке */doc*  

Для упрощения освоения архитектуры NeuroMatrix, а также для облегчения конфигурирования процессора рекомендуются использовать специальный nmcalculator из дистрибутива [nmkit](https://www.module.ru/mb7707/NeuroMatrix/nmkit.exe)
![nmcalculator](/doc/nmcalc.png?raw=true)
<!-- Документация по архитектуре NeuroMatrix и программированию находится в папке */deps/dev-pack-master/nmsdk/doc* -->