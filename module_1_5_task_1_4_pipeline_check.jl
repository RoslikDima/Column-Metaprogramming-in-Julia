# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль 1.5 | Тема 1, Задача 1.4 (Финал Темы 1)
# Мини-пайплайн контроля качества и скорости: @assert, @timed, @show, @macroexpand
# ==============================================================================

checks = rand(500_000) .* 5000 .+ 100

@assert length(checks) > 0 "Массив чеков пуст!"

avg_stats = @timed sum(checks) / length(checks)

@show round(avg_stats.value, digits = 2)
expanded_ast = @macroexpand @show round(avg_stats.value, digits = 2)
println("AST вызова @show:\n", expanded_ast)
