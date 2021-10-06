
	$(document)
			.ready(
					function() {
						let id_ch = false;
						let pwd_ch = false;
						let pwdch_ch = false;
						let phone_ch = false;
						let studentNum_ch = false;

						// 제출버튼 활성화 함수
						function buttonlive() {

							if (id_ch && pwd_ch && pwdch_ch && phone_ch && studentNum_ch) {
								$("#signUpBtn").prop("disabled", false);
							} else {
								$("#signUpBtn").prop("disabled", true);
							}

						}

						$('#id').keyup(function() {
							const regxid = /^[A-Za-z | 0-9]{3,15}$/; //id
							if ($('#id').val() == "") {
								$('.chid').text("아이디를 입력해주세요. ");
								id_ch = false;
							} else if (!regxid.test($('#id').val())) {
								$('.chid').text("3~15자 이내 영문자,숫자 입력해주세요. ");
								id_ch = false;
							} else {
								$('.chid').text("");
								id_ch = true;
							}
							buttonlive();

						}); //ID 확인

						$('#pwd')
								.keyup(
										function() {
											const regxpwd = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}$/; //pwd
											if ($('#pwd').val() == "") {
												$('.chpwd').text(
														"패스워드를 입력해주세요. ");
												pwd_ch = false;
											} else if (!regxpwd.test($('#pwd')
													.val())) {
												$('.chpwd')
														.text(
																"특수문자 최소 1개 포함한 영문과 숫자를 입력해주세요. ");
												pwd_ch = false;
											} else {
												$('.chpwd').text("");
												pwd_ch = true;
											}
											buttonlive();

										}); //패스워드 확인

						$('#checkpwd').keyup(function() {
							if ($('#checkpwd').val() != $('#pwd').val()) {
								$('.chpwd_ch').text("입력한 패스워드가 일치하지 않습니다. ");
								pwdch_ch = false;
							} else {
								$('.chpwd_ch').text("");
								pwdch_ch = true;
							}
							buttonlive();

						}); //패스워드 재확인

						$('#phone')
								.keyup(
										function() {

											var regxphone = /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/;

											if ($('#phone').val() == "") {
												$('.chphone').text(
														"전화번호를 입력해주세요. ");
												phone_ch = false;
											} else if (!regxphone.test($(
													'#phone').val())) {
												$('.chphone').text(
														"올바른 전화번호를 입력하세요. ");
												phone_ch = false;
											} else {
												$('.chphone').text("");
												phone_ch = true;
											}
											buttonlive();

										});

						$('#studentNum').keyup(function() {

							if ($('#studentNum').val() == "") {
								$('.chstudentNum').text("원아번호를 입력해주세요. ");
								studentNum_ch = false;

							} else {
								$('.chstudentNum').text("");
								studentNum_ch = true;
							}
							buttonlive();

						});

					});
	
	function checkz() {
		if (id_ch && pwd_ch && pwdch_ch && phone_ch && studentNum_ch ) {
			return true;
		} else {
			return false;
		}
	}