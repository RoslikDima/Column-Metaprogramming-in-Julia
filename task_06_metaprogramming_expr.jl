# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль 1. Функции и метапрограммирование в Julia
# Задача 6: Динамическая генерация Symbol, цитирование Expr, интерполяция $ и eval
# Стандарт: julia-analytics (homoiconicity, Symbol construction, AST quoting & interpolation)
# ==============================================================================

# Авторское решение (Dima Roslik):
year = 2026
metric_col = Symbol("revenue_", year)

pack = 150
price = 320.5
calc_expr = :(round($pack * $price, digits = 2))
revenue_val = eval(calc_expr)

println("Символ колонки: ", metric_col)
println("Выражение (Expr): ", calc_expr)
println("Результат eval: ", revenue_val)
