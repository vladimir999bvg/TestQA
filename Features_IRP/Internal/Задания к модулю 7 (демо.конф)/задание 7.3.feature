﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
Сценарий: подготовительный
	Когда загрузка документа продажи

Сценарий: проведение
Дано Я открываю навигационную ссылку "e1cib/list/Документ.РасходТовара"
И я выполняю код встроенного языка на сервере
	|'Документы.РасходТовара.НайтиПоНомеру("000001106").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
И я закрываю все окна клиентского приложения

Сценарий: движение по регистру "Регистр взаиморасчетов с контрагентами"
Дано Я открываю навигационную ссылку "e1cib/data/Документ.РасходТовара?ref=a00598e74309d84811efbadb7609c43b"
И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр взаиморасчетов с контрагентами'
Тогда таблица "Список" содержит строки:
	| 'Период'              | 'Регистратор'                              | 'Номер строки' | 'Контрагент'                | 'Сумма'    | 'Валюта' |
	| '15.12.2024 14:55:22' | 'Продажа 000001106 от 15.12.2024 14:55:22' | '1'            | 'Магазин "Бытовая техника"' | '7 500,00' | 'Рубли'  |
И я закрываю все окна клиентского приложения

Сценарий: движение по регистру 
Дано Я открываю навигационную ссылку "e1cib/data/Документ.РасходТовара?ref=a00598e74309d84811efbadb7609c43b"
И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр продаж'
Тогда таблица "Список" содержит строки:
	| 'Период'              | 'Регистратор'                              | 'Номер строки' | 'Покупатель'                | 'Товар'    | 'Количество' | 'Сумма'    |
	| '15.12.2024 14:55:22' | 'Продажа 000001106 от 15.12.2024 14:55:22' | '1'            | 'Магазин "Бытовая техника"' | 'VekoNT02' | '1,00'       | '7 500,00' |
И я закрываю все окна клиентского приложения

Сценарий: движение по регистру 
Дано Я открываю навигационную ссылку "e1cib/data/Документ.РасходТовара?ref=a00598e74309d84811efbadb7609c43b"
И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр товарных запасов'
Тогда таблица "Список" содержит строки:
	| 'Период'              | 'Регистратор'                              | 'Номер строки' | 'Товар'    | 'Склад'               | 'Количество' |
	| '15.12.2024 14:55:22' | 'Продажа 000001106 от 15.12.2024 14:55:22' | '1'            | 'VekoNT02' | 'Склад отдела продаж' | '1,00'       |
И я закрываю все окна клиентского приложения

Сценарий: тестирование печатной формы
Дано Я открываю навигационную ссылку "e1cib/data/Документ.РасходТовара?ref=a00598e74309d84811efbadb7609c43b"
И я нажимаю на кнопку с именем 'ФормаДокументРасходТовараПечатьРасходнойНакладной'
Дано Табличный документ "SpreadsheetDocument" равен макету "Макет7.3" по шаблону

