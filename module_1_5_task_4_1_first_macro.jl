# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль 1.5 | Тема 4, Задача 4.1
# Первый собственный макрос: macro trace_metric(expr), @macroexpand и @assert
# ==============================================================================

macro trace_metric(expr)
    return quote
        println("Расчёт метрики: ", $(string(expr)))
        $expr
    end
end

avg_check = @trace_metric round(45_000 / 120, digits = 2)
println("Итоговое значение: ", avg_check)

expanded = @macroexpand @trace_metric round(45_000 / 120, digits = 2)
println("Развёрнутый код макроса:\n", expanded)

@assert avg_check == 375.0 "Неверный расчёт среднего чека!"
