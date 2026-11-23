# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль 1.5 | Тема 2, Задача 2.3
# Многострочный блок кода как данные: quote ... end, узел :block и проверки @assert
# ==============================================================================

tax_block = quote
    net_sales  = gross_sales - discount
    vat_amount = round(net_sales * 0.20, digits = 2)
end

println("Тип блока: ", typeof(tax_block), " | Узел (head): ", tax_block.head)

@assert typeof(tax_block) == Expr "Блок должен иметь тип Expr!"
@assert tax_block.head == :block "Ожидался узел :block!"
