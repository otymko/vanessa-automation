﻿#language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

//Эта возможность появилась только с 8.3.8
@IgnoreOn836
@IgnoreOn837

Функциональность: Запись содержимого макета в файл


Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Запись содержимого макета в файл

	И В командном интерфейсе я выбираю 'Основная' 'Справочник3'
	Тогда открылось окно 'Справочник3'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Справочник3 (создание)'
	И в поле 'Наименование' я ввожу текст '111'
	И я нажимаю на кнопку 'Записать'
	И я активизирую поле с именем "РеквизитТабличныйДокумент"
	И в табличном документе 'РеквизитТабличныйДокумент' я перехожу к ячейке "R1C1"
	Если файл "c:\temp\temp_mxl.mxl" существует тогда
		Тогда я удаляю файл "c:\temp\temp_mxl.mxl"
		И пауза 1
	Если файл "c:\temp\temp_mxl.mxl" существует тогда
		Тогда я вызываю исключение "Временный файл должен был быть удален, но он существует."
		
	И я буду выбирать внешний файл "c:\temp\temp_mxl.mxl"
	И у текущего элемента формы я вызываю запись содержимого в файл
	И пауза 3
	И Файл "c:\temp\temp_mxl.mxl" существует

