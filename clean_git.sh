#!/bin/bash

# Сбрасываем все изменения в отслеживаемых файлах
git reset --hard

# Удаляем все неотслеживаемые файлы и директории
git clean -fd

echo "Очистка завершена!"
