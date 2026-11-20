# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль «Основы Julia»
# Задача 5: Словари (Dict), добавление ключей и безопасный поиск через get()
# Стандарт: julia-analytics (Symbol-keyed lookup tables, fallback defaults via get)
# ==============================================================================

# Авторское решение (Dima Roslik):
discounts = Dict(
    :hospital => 0.15,
    :pharmacy_chain => 0.10,
    :retail => 0.05
)

discounts[:distributor] = 0.18

hosp_disc = get(discounts, :hospital, 0.0)
online_disc = get(discounts, :online, 0.03)

println("Скидка для госпиталей: ", hosp_disc)
println("Скидка для онлайн-сегмента: ", online_disc)
println("Всего сегментов в справочнике: ", length(discounts))

# Закрепление (справочник региональных коэффициентов):
region_coeffs = Dict(
    :moscow => 1.00,
    :spb => 1.05
)

region_coeffs[:siberia] = 1.15
spb_coeff = get(region_coeffs, :spb, 1.0)
far_east_coeff = get(region_coeffs, :far_east, 1.25)

println("Коэффициент для spb_coeff: ", spb_coeff)
println("Коэффициент для far_east_coeff: ", far_east_coeff)
println("Всего регионов в справочнике: ", length(region_coeffs))
