<%-- 
    Document   : welcome
    Created on : Nov 14, 2018, 10:05:25 AM
    Author     : pupil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Главная</title>
    </head>
    <body>
        <h1>Навигация по сайту</h1>
        ${textToPage}<br>
        <br>
        <a href="showLogin">Войти в систему</a>
        <br>
         
        <a href="logout">Выйти из системы</a>
        <br>
        <a href="newBook">добавить книгу</a><br>
        <a href="newReader">добавить читателя</a><br>
        <a href="showBooks">Список книг</a><br>
        <a href="showReader">Список читателей</a><br>
        <a href="library">Выдать книгу</a><br>
        <a href="showTakeBook">Список выданных книг</a>
        <br>
        <p>Для администратора:</p>
         <br>
        <a href="editUserRoles">Назначение ролей пользователям</a>
        <br><br>
       
        Добавлена книга:<br>
        Название: ${book.nameBook}<br>
        Автор: ${book.author}
        <hr>
        Добавлен читатель:<br>
        Имя: ${reader.name}<br>
        Фамилия: ${reader.surname}
        
    </body>
</html>