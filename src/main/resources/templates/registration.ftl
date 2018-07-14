<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
Add new user
<#--<div th:if="${param.error}">
    Invalid username and password.
</div>
<div th:if="${param.logout}">
    You have been logged out.
</div>
<div th:if="${message}">
    <b th:text="${message}"></b>
</div>-->
${message?ifExists}
<@l.login "/registration" />
</@c.page>