﻿# language: ru

@IgnoreOnCIMainBuild
@Тест

Функциональность: ФичаДляПроверкиПодключенияЗапущенногоTestClient
 

Сценарий: Для ФичаДляПроверкиПодключенияЗапущенногоTestClient
	Затем Я подключаю уже запущенный клиент тестирования "ПроверкаШагаЯПодключаюУжеЗапущенныйКлиентТестированияСПараметрами"
	И я закрываю сеанс TESTCLIENT	