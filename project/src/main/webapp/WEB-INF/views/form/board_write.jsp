<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

<form action="${home }board/writeProc" method="post">
	<div class="board_box">
		<div>
			<div class="bvb_title">
				<input type="text" name="title" id="title" class="text_title" value="${freeboard.title }"/>
			</div>
			<div class="bvb_info_hidden">
				<input type="hidden" name="nickname" id="writer" class="hidden_writer" value="${membersession.nickname }" />
				<input type="hidden" name="email" id="email" value="${membersession.email }" />
				 <%-- <input	type="hidden" name="write_date" id="write_date" class="hidden_date" value="${freeboard.write_date }" /> --%>
			</div>
		</div>
		<div class="bvb_contents_write">
			<div>
				<textarea name="contents" id="summernote">${freeboard.contents }</textarea>
			</div>
			<script>
				$('#summernote').summernote({
					height : 300
				});
			</script>
		</div>
		<div class="bvb_button_boxtest">
			<button type="submit">글쓰기</button>
			<button type="reset">취소</button>
		</div>
	</div>
</form>