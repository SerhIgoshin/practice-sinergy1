def star_display_date(day, month, year):
    # Словарь для отображения цифр в формате звёздочек
    digit_to_stars = {
        '0': [' ***** ', '*     *', '*     *', '*     *', ' ***** '],
        '1': ['    *  ', '    *  ', '    *  ', '    *  ', '    *  '],
        '2': [' ***** ', '     * ', ' ***** ', '*     ', ' ***** '],
        '3': [' ***** ', '     * ', ' ***** ', '     * ', ' ***** '],
        '4': ['*     *', '*     *', ' ***** ', '     * ', '     * '],
        '5': [' ***** ', '*     ', ' ***** ', '     * ', ' ***** '],
        '6': [' ***** ', '*     ', ' ***** ', '*     *', ' ***** '],
        '7': [' ***** ', '     * ', '    *  ', '   *   ', '  *    '],
        '8': [' ***** ', '*     *', ' ***** ', '*     *', ' ***** '],
        '9': [' ***** ', '*     *', ' ***** ', '     * ', ' ***** ']
    }

    # Преобразуем дату в строку
    date_str = f"{day:02}{month:02}{year}"

    # Создаём строки для отображения
    output_lines = ['' for _ in range(5)]

    # Добавляем звёздочки для каждой цифры
    for digit in date_str:
        stars = digit_to_stars[digit]
        for i in range(5):
            output_lines[i] += stars[i] + '  '  # Добавляем пробел между цифрами

    # Выводим результат
    for line in output_lines:
        print(line)
