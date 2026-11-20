# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль «Основы Julia»
# Задача 2: Условные ветвления (if / elseif / else) и бродкастинг функций
# Стандарт: julia-analytics (conditional branching, vectorized function application)
# ==============================================================================

# Авторское решение (Dima Roslik):
function classify_deal(amount::Float64)
    if amount >= 100_000.0
        return "Крупный тендер"
    elseif amount >= 25_000.0
        return "Средний заказ"
    else
        return "Мелкая розница"
    end
end

function stock_status(qty::Int)
    if qty == 0
        return "Дефицит (0 уп.)"
    elseif qty < 50
        return "Критический остаток"
    else
        return "Норма"
    end
end

deals = [150_000.0, 45_000.0, 12_000.0, 100_000.0]
stocks = [0, 15, 50, 120]

println("Все сделки: ", classify_deal.(deals))
println("Статусы склада: ", stock_status.(stocks))
