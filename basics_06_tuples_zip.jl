# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль «Основы Julia»
# Задача 6: Кортежи (Tuple), деструктуризация и параллельный обход zip()
# Стандарт: julia-analytics (tuple destructuring, parallel iteration via zip)
# ==============================================================================

# Авторское решение (Dima Roslik):
top_sku = ("Аторвастатин", 680.0, 250)
sku_name, sku_price, sku_qty = top_sku
println("Лидер продаж $sku_name: ", sku_price * sku_qty, " руб.")

skus        = ["Лозартан", "Бисопролол", "Розувастатин"]
unit_prices = [290.0, 340.0, 950.0]
sold_packs  = [150, 200, 80]

total_rev = 0.0

for (name, price, qty) in zip(skus, unit_prices, sold_packs)
    rev = price * qty
    total_rev += rev
    println("$name: $qty уп. x $price руб. = $rev руб.")
end

println("Общая выручка по группе: ", total_rev, " руб.")
