# ==============================================================================
# Репозиторий: Column-Metaprogramming-in-Julia
# Модуль 1.5 | Тема 4, Задача 4.4 (Финал Темы 4)
# Макрос-аудитор колонки: @timed, каскад проверок @assert, логирование и @macroexpand
# ==============================================================================

macro audit_vector(vec_expr)
    return quote
        st = @timed $vec_expr
        data = st.value
        @assert length(data) > 0 "Массив данных не должен быть пустым!"
        @assert minimum(data) >= 0 "Обнаружены отрицательные значения!"
        println("Аудит [", $(string(vec_expr)), "] пройден! Строк: ", length(data), " | Сумма: ", sum(data))
        data
    end
end

payments = [1200.0, 3400.0, 500.0, 4900.0]
clean_payments = @audit_vector payments

@assert sum(clean_payments) == 10_000.0 "Неверная контрольная сумма!"
println("Развёрнутый код макроса:\n", @macroexpand @audit_vector payments)
