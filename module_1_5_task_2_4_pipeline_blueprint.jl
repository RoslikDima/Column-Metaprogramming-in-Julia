# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль 1.5 | Тема 2, Задача 2.4 (Финал Темы 2)
# Сборка чертежа пайплайна: Symbol, quote ... end, замер @timed и проверки @assert
# ==============================================================================

target_col = Symbol("revenue_q4")
q4_pipeline = quote
    revenue_q4 = units_q4 * price_q4
    bonus_q4   = round(revenue_q4 * 0.05, digits = 2)
end

check_stats = @timed length(q4_pipeline.args) > 0

@assert typeof(target_col) == Symbol "Имя колонки должно быть Symbol!"
@assert typeof(q4_pipeline) == Expr "Пайплайн должен быть Expr!"
@assert check_stats.value == true "Блок пайплайна не должен быть пустым!"

println("Целевая колонка: ", target_col)
println("Узел блока: ", q4_pipeline.head)
println("Время проверки (мс): ", round(check_stats.time * 1000, digits = 4))
