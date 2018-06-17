<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: sayyo
  Date: 2018-06-12
  Time: 오후 7:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>edit</title>
    <!-- include libraries(jQuery, bootstrap) -->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

    <!-- include summernote css/js -->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
    <!--summernote :E -->
    <style>
        .errorblock {border: 2px solid red;}
        .error {color: red;}
    </style>
</head>
<body>
<div class="board_div">
    <h2 class="page-header">Write</h2>
    <c:if test="${post.id == 0}"><c:url var="actionUrl" value="/post/write"/></c:if>
    <c:if test="${post.id != 0}"><c:url var="actionUrl" value="/post/${post.id}/edit"/></c:if>
    <form:form action="${actionUrl}" modelAttribute="post" method="post">

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

        <c:if test="${post.id != 0}"><form:input type="hidden" path="regDate" /></c:if>
        <form:errors path="*" cssClass="errorblock" element="div" />

        <form:input type="text" path="title" placeholder="Title"
                    style="height: 70px; width: 100%; font-size: 55px;
			border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 1px; outline-style: none;
			font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: 800;" />
        <form:errors path="title" cssClass="error" />

        <form:input type="text" path="subtitle" placeholder="Subtitle (option)"
                    style="height: 60px; width: 100%; font-size: 24px;
			border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 1px; outline-style: none;
			font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: 600;" />
        <form:errors path="subtitle" cssClass="error" />
        <hr style="margin-top: 2px; border-top: 1px solid #999;">

        <div class="form-group">
            <label for="content" class="col-sm-2 control-label">contents</label>
            <div class="col-sm-10">
                <form:textarea path="content" id="content"></form:textarea>
                <form:errors path="content" cssClass="error" />
            </div>
        </div>

        <div class="pull-right">
            <button type="submit" class="btn btn-primary btn-success boardAddBtn"><span class="glyphicon glyphicon-pencil"></span> Write</button>
        </div>
        </form:form>
</div>

</body>
<script>
    $(document).ready(function(){
        $('#content').summernote({
            placeholder: 'Write contents',
            height: 400,
            minHeight: null,             // set minimum height of editor
            maxHeight: null,             // set maximum height of editor
        });

    });
</script>

</html>
