# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль 1.5 | Тема 4, Задача 4.2
# Макрос с двумя аргументами: macro check_kpi(name, expr), внутренняя валидация и возврат значения
# ==============================================================================

macro check_kpi(name, expr)
    return quote
        res = $expr
        println("Метрика ", $name, " посчитана: ", res)
        @assert res >= 0 "Метрика не может быть отрицательной!"
        res
    end
end

net_margin = @check_kpi :net_margin round((850_000 - 510_000) / 850_000, digits = 2)
@assert net_margin == 0.4 "Ожидалась маржа 0.4!"
