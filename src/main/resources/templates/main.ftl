<#import "parts/common.ftl" as c>

<@c.page>
<div class="form-row">
    <div class="form-group col-md-6">
        <form method="get" action="/main" class="form-inline">
            <input type="text" name="filter" value="${filter?ifExists}" class="form-control"
                   placeholder="Search by Tag">
            <button type="submit" class="btn btn-primary ml-2">Search</button>
        </form>
    </div>
</div>

<a class="btn btn-primary" data-toggle="collapse" href="#collapseAddMessage" role="button" aria-expanded="false"
   aria-controls="collapseExample">
    Add new message
</a>
<div class="collapse <#if message??>show</#if>" id="collapseAddMessage">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" name="text" class="form-control ${(textError??)?string('is-invalid', '')}"
                       value="<#if message??>${message.text}</#if>" placeholder="Message input"/>
                <#if textError??>
                    <div class="invalid-feedback">
                        ${textError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <input type="text" name="tag" class="form-control ${(tagError??)?string('is-invalid', '')}"
                       value="<#if message??>${message.tag}</#if>" placeholder="Tag"/>
                 <#if tagError??>
                    <div class="invalid-feedback">
                        ${tagError}
                    </div>
                 </#if>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">Choose File</label>
                </div>
            </div>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Add</button>
            </div>
        </form>
    </div>
</div>

<div class="card-columns">
    <#list messages as message>
        <div class="card my-3">
            <div>
        <#if message.filename??>
            <img src="/img/${message.filename}" class="card-img-top">
        </#if>
            </div>
            <div class="m-2">
                <span>${message.text}</span>
            </div>
            <i>${message.tag}</i>
            <div class="card-footer text-muted">
                ${message.getAuthorName()}
            </div>
        </div>
    <#else>
        No messages...
    </#list>
</div>
</@c.page>