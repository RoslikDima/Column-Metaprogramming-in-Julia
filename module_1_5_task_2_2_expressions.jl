# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль 1.5 | Тема 2, Задача 2.2
# Формула как заготовка кода (AST): тип Expr :(...), поле .args и проверка @assert
# ==============================================================================

profit_expr = :(revenue - cogs)

println("Формула: ", profit_expr, " | Тип: ", typeof(profit_expr))
println("Части формулы: ", profit_expr.args)

@assert typeof(profit_expr) == Expr "Ожидался тип Expr!"
