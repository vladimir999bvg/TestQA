﻿#language: ru
Функционал: расчет суммы документа Заказ

Как Менеджер по продажам я хочу
изменить количество и цена 
чтобы проверить расчет суммы документа Заказ   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
Сценарий: изменить количество и цена документа Заказ
* создание документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказ'
	Тогда открылось окно 'Заказ (создание)'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Мосхлеб ОАО'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Сапоги'
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '2 000,00'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '4'
	И в таблице "Товары" я завершаю редактирование строки
* проверка табличной части
	Тогда таблица "Товары" стала равной:
		| 'Товар'  | 'Цена'     | 'Количество' | 'Сумма'    |
		| 'Сапоги' | '2 000,00' | '4'          | '8 000,00' |
* изменение количества и цены
	Когда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '2 356,00'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки
* проверка расчета суммы после изменения
	Тогда таблица "Товары" стала равной:
		| 'Товар'  | 'Цена'     | 'Количество' | 'Сумма'    |
		| 'Сапоги' | '2 356,00' | '2'          | '4 712,00' |				