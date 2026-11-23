# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль 1.5 | Тема 3, Задача 3.4 (Финал Темы 3)
# Генератор квартальных показателей маржи: Symbol, интерполяция $, @eval, @timed, @assert
# ==============================================================================

rev_base  = [500_000.0, 800_000.0, 1_200_000.0]
cogs_base = [300_000.0, 480_000.0, 720_000.0]

for q in 1:4
    margin_col = Symbol("margin_q", q)
    k = 1.0 + 0.05 * q
    @eval $margin_col = (rev_base .* $k) .- cogs_base
end

q4_stats = @timed sum(margin_q4)

@assert length(margin_q1) == 3 "В margin_q1 должно быть 3 региона!"
@assert q4_stats.value > 0 "Суммарная маржа Q4 должна быть положительной!"

println("Маржа по регионам (Q4): ", margin_q4)
println("Суммарная маржа (Q4): ", q4_stats.value)
