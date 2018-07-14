<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div>
    <@l.logout />
</div>
<div>
    <form method="post" action="/main">
        <input type="text" name="text" placeholder="Введите сообщение"/>
        <input type="text" name="tag" placeholder="Тэг"/>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <button type="submit">Добавить</button>
    </form>
</div>
<br/>
<div>Список сообщений</div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter}">
        <button type="submit">Найти</button>
    </form>
<#--<div th:each="message:${messages}">
    <b th:text="${message.id}">id</b>
    <span th:text="${message.text}">text</span>
    <i th:text="${message.tag}">tag</i>
    <strong th:text="${message.getAuthorName()}">author</strong>
</div>-->

<#list messages as message>
<div>
    <b>${message.id}</b>
    <span>${message.text}</span>
    <i>${message.tag}</i>
    <strong>${message.getAuthorName()}</strong>
</div>
<#else>
No messages...
</#list>

</@c.page>