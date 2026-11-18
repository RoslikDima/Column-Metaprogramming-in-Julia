# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль 1. Функции и метапрограммирование в Julia
# Задача 4: Функции высшего порядка и замыкания (Closures) — make_vat_adder
# Стандарт: julia-analytics (factory function, lexical closure capture, keyword defaults)
# ==============================================================================

# Авторское решение (Dima Roslik):
function make_vat_adder(
    vat_rate::Float64;
    digits::Int = 2
)
    return price -> round(price * (1.0 + vat_rate), digits = digits)
end

add_pharma_vat = make_vat_adder(0.10)

println("Цена 200.0 с фарм-НДС 10%: ", add_pharma_vat(200.0))
println("Цена 500.0 с фарм-НДС 10%: ", add_pharma_vat(500.0))
