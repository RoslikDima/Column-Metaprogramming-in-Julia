# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль «Основы Julia»
# Задача 3: Циклы for, enumerate и накопительное аккумулирование
# Стандарт: julia-analytics (indexed iteration via enumerate, state accumulation)
# ==============================================================================

# Авторское решение (Dima Roslik):
shipments = [18_500.0, 42_000.0, 15_000.0, 64_500.0]
running_total = 0.0

for (i, val) in enumerate(shipments)
    running_total += val
    println("Отгрузка №$i: +$val руб. | Накопительный итог: $running_total руб.")
end

println("Итого за день: ", running_total)

# Закрепление (учет списаний со склада):
stock = 500
outflows = [120, 85, 140]

for (step, qty) in enumerate(outflows)
    stock -= qty
    println("Шаг $step: списано $qty уп. | Остаток: $stock уп.")
end

println("Финальный остаток на конец смены: ", stock)
