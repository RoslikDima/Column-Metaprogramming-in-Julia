# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль 1.5 | Тема 3, Задача 3.2
# Разморозка и выполнение чертежа кода: eval(expr), векторизация и проверки @assert
# ==============================================================================

gross_sales   = [10_000.0, 25_000.0, 40_000.0]
discount_rate = 0.15

metric_col  = :gross_sales
net_formula = :($metric_col .* (1 - $discount_rate))

net_sales = eval(net_formula)
println("Чистая выручка по заказам: ", net_sales)

@assert length(net_sales) == 3 "Ожидалось 3 значения в результате!"
@assert net_sales[1] == 8500.0 "Неверный расчёт первого заказа!"
