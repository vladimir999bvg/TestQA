﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Основной
И В командном интерфейсе я выбираю 'Продажи' 'Остатки товаров'
И я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
Тогда открылось окно 'Выбор варианта отчета'
И в таблице "СписокНастроек" я перехожу к строке:
	| 'Представление' |
	| 'Основной'      |
И я нажимаю на кнопку с именем 'Загрузить'
Тогда открылось окно 'Остатки товаров'
И я нажимаю на кнопку с именем 'ФормаСформировать'
Дано Табличный документ "Результат" равен макету "Mакет7.2.1" по шаблону
И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение" я выбираю точное значение 'Средний'
И я нажимаю на кнопку с именем 'ФормаСформировать'
Дано Табличный документ "Результат" равен макету "Макет7.2.2" по шаблону




