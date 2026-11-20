# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль 2. Метапрограммирование и автоматизация столбцов в Julia
# Задача 2: Генерация семейства скомпилированных функций в цикле через @eval
# Стандарт: julia-analytics (DRY code generation via @eval, dynamic Symbol names)
# ==============================================================================

# Авторское решение (Dima Roslik):
vat_regimes = [
    (:pharma, 0.10),
    (:standard, 0.20),
    (:export, 0.00)
]

for (regime, rate) in vat_regimes
    fn_name = Symbol("calc_vat_", regime)

    @eval function $fn_name(amount::Float64; digits::Int = 2)
        return round(amount * $rate, digits = digits)
    end
end

println("Фарма (10%): ", calc_vat_pharma(500.0))
println("Стандарт (20%): ", calc_vat_standard(500.0))
println("Экспорт (0%): ", calc_vat_export(500.0))
