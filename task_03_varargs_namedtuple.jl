# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль 1. Функции и метапрограммирование в Julia
# Задача 3: Переменное число аргументов (varargs ...) и возврат NamedTuple
# Стандарт: julia-analytics (slurp operator ..., NamedTuple return, keyword defaults)
# ==============================================================================

# Авторское решение (Dima Roslik):
function summarize_weekly_sales(
    weeks::Float64...;
    digits::Int = 2
)
    total = round(sum(weeks), digits = digits)
    avg = round(sum(weeks) / length(weeks), digits = digits)
    weeks_cnt = length(weeks)
    return (total = total, avg = avg, weeks_cnt = weeks_cnt)
end

report = summarize_weekly_sales(120.5, 145.0, 134.5)
println("Сводка за период: ", report)
println("Общая выручка: ", report.total)
