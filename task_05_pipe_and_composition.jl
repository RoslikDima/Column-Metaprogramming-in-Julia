# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль 1. Функции и метапрограммирование в Julia
# Задача 5: Конвейерный оператор (|>) и композиция функций (∘)
# Стандарт: julia-analytics (pure functions, left-to-right pipe |>, right-to-left composition ∘)
# ==============================================================================

# Авторское решение (Dima Roslik):
apply_discount(x::Float64) = x * 0.90
deduct_fee(x::Float64) = x * 0.95
round_val(x::Float64) = round(x, digits = 2)

# Вариант А: конвейер |> (слева направо от данных)
net_pipe = 1000.0 |>
           apply_discount |>
           deduct_fee |>
           round_val

# Вариант Б: композиция ∘ (справа налево, создание новой функции)
calc_net_order = round_val ∘ deduct_fee ∘ apply_discount
net_comp = calc_net_order(1000.0)

println("Через конвейер |> : ", net_pipe)
println("Через композицию ∘ : ", net_comp)
