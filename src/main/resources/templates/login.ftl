<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
Login page
<#--<div th:if="${param.error}">
    Invalid username and password.
</div>
<div th:if="${param.logout}">
    You have been logged out.
</div>-->
<@l.login "/login" />
<a href="/registration">Add new user</a>
</@c.page>