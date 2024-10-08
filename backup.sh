#!/bin/bash

# Переменные для веток
DEV_BRANCH="dev"
PRD_BRANCH="prd"

# Переход на ветку prd
git checkout $PRD_BRANCH

# Обновление ветки prd
git pull origin $PRD_BRANCH

# Мержим изменения из dev в prd
git merge origin/$DEV_BRANCH

# Создаем тэг с текущей датой и временем
TAG_NAME="release-$(date +%Y%m%d-%H%M%S)"
git tag -a $TAG_NAME -m "New release from $DEV_BRANCH"

# Пушим изменения и тэг в удаленный репозиторий
git push origin $PRD_BRANCH
git push origin $TAG_NAME

# Возвращаемся на исходную ветку
git checkout -
