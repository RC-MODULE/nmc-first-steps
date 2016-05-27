# nmc-first-steps

Данное руководство описывает шаг за шагом основные принципы
создания программ на языке ассемблера, показывает, как
разработать программу, задействуя все основные узлы процессора
NMC, в том числе, векторный процессор, и затем, вызвать её из
программы на Си++.
Кроме того, приводятся основные принципы оптимизации программ
с учётом архитектуры процессора, структуры и состава окружающей
его периферии.


Проект является автономным и не требует предустановленного SDK.
В целях демонстрации и упрощения настройки всё необходимое ПО загружается в локальную папку */deps* в процессе установки.
Для полноценной работы с NMSDK необходимо произвести установку согласно требованиям пункта "1.3 Переменная окружения NEURO" руководства пользователя  "ug_nmsdk_ru.pdf"


## Установка Make for Windows
Для корректного исполнения сборочных Makefile-скриптов под Windows необходимо, чтобы был установлен
**Make for Windows 3.81**. [Скачать инсталлятор](http://gnuwin32.sourceforge.net/downlinks/make.php). Домашняя страница: http://gnuwin32.sourceforge.net/packages/make.htm  
Необходимо, чтобы путь к установленному **make.exe** был прописан в переменной окружения **PATH**




##  Установка NMSDK и ПО поддержки плат
Данный проект <nmc-first-steps> имеет несколько зависимостей от системного ПО:
- nmsdk (SDK для сборки программ под NMC)
- mc5103sdk (ПО поддержки для платы МЦ5103)
- mc7601sdk (ПО поддержки для платы МЦ7601)
- mb7707sdk (ПО поддержки для платы МВ77.07)

Скачать и установить в папку /deps/ все необходимые компоненты можно выполнив команду из папки deps:
```bat
make install-nmc 
```
Данная команда скачает загрузчик [dev-pack](https://github.com/RC-MODULE/dev-pack), который в свою очередь скачает и локально установит все необходимые nmc-пакеты. 


Примечание 1:  
> Не смотря, на то что NMSDK и ПО поддержки плат может быть изначально установлено, для 
> упрощения настройки связей все зависимые компоненты в том числе NMSDK подгружаются через интернет с сайта разработчика в локальную папку
> */deps/dev-pack* и дальше вызываются оттуда. При этом никаких изменений переменных окружения в системе не требуется и не производится.
> Локальное переопределение переменных производится в файле */global.mk*

Примечание 2:  
> Для скачивания и распаковки архивов под Windows используется встроенные средства PowerShell, а также  [7-zip](http://www.7-zip.org) и [wget for Windows](http://gnuwin32.sourceforge.net/packages/wget.htm)
> В случае отсутствия они скачаются автоматически. Если выход в интернет осуществляется через покси сервер то необходимо создать файл /deps/proxy.mk  и указать в нем настройки прокси сервера

 
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
 make 
```

Запуск приложения осуществляется командой:
```mak
 make run
```

## Документация 
Описания шагов находится в папке */doc*  

Документация по архитектуре NeuroMatrix и программированию находится в папке */deps/nmsdk/doc*