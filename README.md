# [nmc-first-steps](https://github.com/RC-MODULE/nmc-first-steps)

Данное руководство описывает шаг за шагом основные принципы
создания программ на языке ассемблера и C++, показывает как
разработать программу, задействуя скалярный и векторный процессор.
Приводятся основные принципы оптимизации программ
с учётом архитектуры процессора, структуры и состава окружающей
его периферии.

Примеры сконфигурированы для следующих платформ:
- МЦ 51.03
- МЦ 76.01
- МВ 77.07
- Эмулятор NM6405


Проект является автономным и не требует предустановленного NeuroMatrix SDK.
В целях упрощения настройки всё необходимое ПО загружается в локальную папку */deps* в процессе установки.

>Для дальнейшей работы с NMSDK независимо от nmc-first-steps\deps необходимо самостоятельно произвести установку NMSDK 
<!-- согласно требованиям пункта "1.3 Переменная окружения NEURO" руководства пользователя  "ug_nmsdk_ru.pdf" -->


## Требования системного ПО (Для ОС Windows)
Должны быть установлены и доступны через %PATH%  следующие [GnuWin32](http://gnuwin32.sourceforge.net/) утилиты:
  - make (3.81) 
  - unzip
  - wget 
  - cp


Рекомендуется установить необходимые утилиты с помощью online-инсталлятора [GnuWin32-Lite](https://github.com/RC-MODULE/gnuwin32-lite/archive/master.zip) с сайта https://github.com/RC-MODULE/gnuwin32-lite/
либо произвести полную установку всех GnuWin32 утилит (~600MB) с помощью инсталлятора GetGnuwWin32 c сайта https://sourceforge.net/projects/getgnuwin32/

> После установки рекомендуется удостовериться , что ```make.exe``` вызывается из установленной директории с помощью команды ```where make``` ,
а версия ```make``` соответсвествует 3.81 с помощью команды ```make -ver```


## Установка NMSDK и ПО поддержки плат (Windows/Linux)
Данный проект <nmc-first-steps> имеет несколько зависимостей от SDK:
- nmsdk (SDK для сборки программ под NMC    Windows/Linux)
- mc5103sdk (ПО поддержки для платы МЦ51.03 Windows/Linux)
- mc7601sdk (ПО поддержки для платы МЦ76.01 Windows)
- mb7707sdk (ПО поддержки для платы МВ77.07 Windows/Linux)

Скачать и установить в папку /deps/ все необходимые компоненты можно выполнив команду из папки deps:
```bat
\nmc-first-steps\deps> make download
\nmc-first-steps\deps> make install
```


Примечание 1:  
> Не смотря на то, что NMSDK и ПО поддержки плат может быть изначально установлено, для 
> упрощения настройки связей все зависимые компоненты в том числе NMSDK подгружаются через интернет с сайта разработчика в локальную папку
> */deps/* и дальше вызываются оттуда. При этом никаких изменений переменных окружения в системе не требуется и не производится.
> Локальное переопределение переменных производится в файле */global.mk*
> Если доступ в интернет производится через прокси сервер, то необходимо в файле /deps/proxy.mk  указать параметры прокси сервера
> либо задать их через переменные окружения **http_proxy** и **https_proxy**  

## Конфигурирование для МВ77.07
Для обеспечения запуска программ на МВ77.07 необходимо присвоить переменной MB7707_MAC MAC-адрес сетевой платы в формате MB7707_MAC ?= 1A-2B-3C-4D-5E-6F.
Переменную можно объявить как в **global.mk** так и переменной окружения. Если переменная MB7707_MAC уже объявлена  в системе, то присвоение MB7707_MAC ?= 1A-2B-3C-4D-5E-6F в **global.mk** будет проигнорировано.
Также для работы через сетевой адаптер должен быть установлен [WinPcap](https://www.winpcap.org/install/bin/WinPcap_4_1_3.exe)
 
<!--
## Конфигурирование сборочных проектов
Для генерации сборочных проектов необходимо выполнить команду из корневой директории:
```bat
make configure
```
В результате данной команды для всех примеров будут сгенерированы соответствующие сборочные проекты под каждую плату, определенную в переменной PLATFOTRMS файла *global.mk*.
-->

## Сборка и запуск
Сборка проекта осуществляется командой из соответствующей папки с примером:
```mak
\nmc-first-steps\steps\Step01\make_emu6405> make 
```

Запуск приложения осуществляется командой:
```mak
\nmc-first-steps\steps\Step01\make_emu6405> make run
```

## Документация 
Описания шагов находится в папке */doc*  

<!-- Документация по архитектуре NeuroMatrix и программированию находится в папке */deps/dev-pack-master/nmsdk/doc* -->