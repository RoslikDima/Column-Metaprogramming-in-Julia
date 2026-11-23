# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль 1.5 | Тема 2, Задача 2.1
# Имя колонки как данные: тип Symbol (:col vs Symbol("col")) и проверка @assert
# ==============================================================================

col_price = :unit_price
col_total = Symbol("total_sales")

println("Значение: ", col_price, " | Тип: ", typeof(col_price))
println("Значение: ", col_total, " | Тип: ", typeof(col_total))

@assert typeof(col_price) == Symbol "Ожидался тип Symbol!"
