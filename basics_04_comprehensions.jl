# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль «Основы Julia»
# Задача 4: Генераторы массивов (Array Comprehensions) и генерация Symbol
# Стандарт: julia-analytics (single-line comprehensions, range iteration, Symbol generation)
# ==============================================================================

# Авторское решение (Dima Roslik):
orders = [15_000.0, 32_000.0, 8_500.0, 54_000.0, 21_000.0]

bonuses = [round(x * 0.05, digits = 2) for x in orders if x > 20_000.0]
col_symbols = [Symbol("sales_", y) for y in 2024:2026]

println("Бонусы с крупных заказов: ", bonuses)
println("Символы колонок по годам: ", col_symbols)

# Закрепление (квартальные колонки и фильтрация наценок):
q_cols = [Symbol("revenue_q", q) for q in 1:4]
markups = [0.05, 0.12, 0.25, 0.08, 0.30]
high_markups_pct = [round(m * 100, digits = 1) for m in markups if m >= 0.15]

println("Квартальные столбцы: ", q_cols)
println("Высокие наценки (%): ", high_markups_pct)
