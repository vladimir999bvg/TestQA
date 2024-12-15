﻿#language: ru

@tree

Функционал: заполнение полей и блокировка поля

Как тестировщик я хочу
заполнить поля Партнёр, Соглашение
чтобы проверить видимость и блокировку полей   

Контекст:
Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: заполнение поля Партнер
Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
И я нажимаю на кнопку с именем 'FormCreate'
И я нажимаю кнопку выбора у поля с именем "Partner"
Тогда открылось окно 'Партнеры'
И в таблице "List" я активизирую поле с именем "Description"
И в таблице "List" я перехожу к строке
    | 'Код' | 'Наименование'            |
	| '1'   | 'Клиент 1 (1 соглашение)' |
И в таблице "List" я выбираю текущую строку
Тогда элемент формы с именем "Partner" стал равен 'Клиент 1 (1 соглашение)'
И я нажимаю на кнопку 'Провести и закрыть'
И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
Тогда открылось окно 'Заказы покупателей'
И в таблице "List" я перехожу к строке
    	| 'Партнер'                 |
    	| 'Клиент 1 (1 соглашение)' |
И в таблице "List" я выбираю текущую строку
Тогда открылось окно 'Заказ покупателя * от *'
Тогда элемент формы с именем "Partner" стал равен 'Клиент 1 (1 соглашение)'

Сценарий: заполнение поля Соглашение
Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
И я нажимаю на кнопку с именем 'FormCreate'
Тогда открылось окно 'Заказ покупателя (создание)'
И я нажимаю кнопку выбора у поля с именем "Agreement"
Тогда открылось окно 'Соглашения'
И в таблице "List" я перехожу к строке:
	| 'Вид'     | 'Вид взаиморасчетов'         | 'Код' | 'Наименование'                                         |
	| 'Обычное' | 'По стандартным соглашениям' | '5'   | 'Общее соглашение (расчет по стандартным соглашениям)' |
И в таблице "List" я выбираю текущую строку
Тогда открылось окно 'Заказ покупателя (создание) *'
И я нажимаю на кнопку с именем 'FormWrite'
И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
Тогда открылось окно 'Заказы покупателей'
И в таблице "List" я перехожу к строке
	| 'Партнер' |
	| ''        |
И в таблице "List" я выбираю текущую строку
Тогда открылось окно 'Заказ покупателя * от *'
Тогда элемент формы с именем "Agreement" стал равен 'Общее соглашение (расчет по стандартным соглашениям)'

Сценарий: блокировка поля Контрагент, если не выбран Партнер
Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
И я нажимаю на кнопку с именем 'FormCreate'
И элемент формы "Контрагент" присутствует на форме
Когда Проверяю шаги на Исключение:
	|'И я нажимаю кнопку выбора у поля с именем "Контрагент"'|








