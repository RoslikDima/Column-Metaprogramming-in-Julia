# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль 1.5 | Тема 4, Задача 4.3
# Макрос-обёртка вокруг @timed для замера скорости и валидации расчёта KPI
# ==============================================================================

macro bench_kpi(kpi_name, expr)
    return quote
        st = @timed $expr
        ms = round(st.time * 1000, digits = 3)
        println("KPI ", $kpi_name, " = ", st.value, " (", ms, " мс)")
        st.value
    end
end

sales = fill(250.0, 500_000)
rev_total = @bench_kpi :total_revenue sum(sales)

@assert rev_total == 125_000_000.0 "Неверная сумма выручки!"
println("Тип имени метрики: ", typeof(:total_revenue))
