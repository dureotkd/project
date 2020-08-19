<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../part/head.jspf"%>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/js-sha256/0.9.0/sha256.min.js"></script>

<style>
h1 {
	text-align: center;
}
</style>

<h1>아이디 찾기</h1>

<script>
	var doFindLoginIdForm__submitDone = false;
	function doFindLoginIdForm__submit(form) {

		if (doFindLoginIdForm__submitDone){
			alert('처리중입니다.');
			return;
		}

		if (form.name.value.length == 0){
			form.name.focus();
			alert('성명을 입력해주세요');
			return;
		}

		if (form.nickname.value.length == 0){
			form.nickname.focus();
			alert('활동명을 입력해주세요');
			return;
		}

		form.submit();
		doFindLoginIdForm__submitDone = false;
	}
</script>

<div class="login-form-box">
	<form action="doFindLoginId" methofd="POST" class="login-form"
		onsubmit="doFindLoginIdForm__submit(this); return false;">
		<input type="hidden" name="redirectUri" value="login" />
		<input type="text" name="name" class="login-input-box"
			placeholder="성명" /> <input type="text" name="nickname"
			class="login-input-box" placeholder="활동명" /> <input type="submit"
			class="submit" value="찾자" />
	</form>




	<%@ include file="../part/foot.jspf"%>