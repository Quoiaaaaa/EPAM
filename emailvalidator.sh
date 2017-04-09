#!/bin/bash

#Создаем переменную regex, которая содержит регулярное выражение для проверки EMAIL по RFC5822
regex="^[A-Za-z0-9!#_%/\"\\\$=@.+ ]*@([A-Za-z0-9]([a-z0-9-]*[a-z0-9])?\.)+[A-Za-z0-9]([a-z0-9-]*[a-z0-9])+$"

#Запрашиваем ввод email
echo "Введите email:"
read email

#Проверка соответствия введенного email условиям регулярного выражения regex
if [[ $email =~ $regex ]] ; then
    echo "OK"
else
    echo "not OK"
fi
