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
</head>
<body>
<div class="board_div">
    <h2 class="page-header">Write</h2>
    <form action="/post/write" method="post">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <div class="form-group">
            <label for="subject" class="col-sm-2 control-label">Title</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="subject" name="subject" placeholder="Title">
            </div>
        </div>

        <div class="form-group">
            <label for="content" class="col-sm-2 control-label">contents</label>
            <div class="col-sm-10">
                <textarea id="content" name="content"></textarea>
            </div>
        </div>

        <div class="pull-right">
            <button type="submit" class="btn btn-primary btn-success boardAddBtn"><span class="glyphicon glyphicon-pencil"></span> Write</button>
        </div>
    </form>
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
