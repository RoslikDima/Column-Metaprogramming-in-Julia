# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль «Основы Julia»
# Задача 1: Векторы и поэлементный бродкастинг (.*, .>)
# Стандарт: julia-analytics (vectorized operations, boolean mask filtering)
# ==============================================================================

# Авторское решение (Dima Roslik):
prices = [450.0, 1200.0, 320.0, 2500.0, 800.0]
packs  = [100,   60,     80,    30,     50]

revenues = prices .* packs
top_revenues = revenues[revenues .> 50_000.0]

println("Выручка по всем позициям: ", revenues)
println("Крупные позиции (> 50 000): ", top_revenues)
println("Сумма крупных позиций: ", sum(top_revenues))
