<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>S치킨-그룹웨어</title>
<c:import url="../template/head.jsp" />
</head>

<body>
	<!-- ======= Header ======= -->
	<c:import url="../template/header.jsp" />
	<!-- ======= Sidebar ======= -->
	<c:import url="../template/sidebar.jsp" />
	<main id="main" class="main">
		<div class="pagetitle">
			<h1>회원가입</h1>
		</div>
		<section class="section">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body mt-3">
						
							<form id="frm" action="./join" method="post" enctype="multipart/form-data" class="d-flex flex-column align-items-center">
								<div class="row justify-content-center mb-3 w-50">
									<div class="form-group mb-3 mt-3">
										<label for="name" class="form-label"><b>이름</b></label> <input
											id="name" type="text" class="form-control" placeholder="이름">
									</div>
									<div class="form-group mb-3">
										<label for="phoneNumber" class="form-label"><b>전화번호</b></label>
										<input id="phoneNumber" type="text" class="form-control"
											placeholder="'-' 제외하고 넣어주세요.">
									</div>
									<div class="form-group mb-3">
										<label for="email" class="form-label"><b>이메일</b></label> <input
											id="email" type="email" class="form-control"
											placeholder="이메일">
									</div>

									<label for="address" class="form-label"><b>주소</b></label>
									<div class="form-group mb-3 d-flex">
										<input type="text" id="postcode" placeholder="우편번호"
											class="form-control"> <input type="button"
											onclick="openPostcodePopup()" value="우편번호 찾기"
											class="btn btn-primary">
									</div>

									<div class="form-group mb-3 d-flex">
										<input type="text" id="address" class="form-control"
											placeholder="주소"> <input type="text"
											id="address_detail" class="form-control ml-2"
											placeholder="상세주소">
									</div>


									<div class="form-group mb-3">
										<label for="residentNumber" class="form-label"><b>생년월일</b></label>
										<input id="residentNumber" type="date" class="form-control">
									</div>
									<div class="form-group mb-3">
										<label for="dateOfEmployment" class="form-label"><b>입사일</b></label>
										<input id="dateOfEmployment" type="date" class="form-control">
									</div>
									<div class="form-group mb-3 col-4">
										<label for="position" class="form-label"><b>직급</b></label> <select
											class="form-select" id="position">
											<option value="0">직급 선택</option>
											<option value="1">사원</option>
											<option value="1">주임</option>
											<option value="1">대리</option>
											<option value="1">과장</option>
											<option value="1">부장</option>
										</select>
									</div>
									<div class="form-group mb-3 col-4">
										<label for="department" class="form-label"><b>부서</b></label> <select
											class="form-select" id="department">
											<option value="0">부서 선택</option>

										</select>
									</div>
									<div class="form-group mb-3 col-4">
										<label for="team" class="form-label"><b>팀</b></label> <select
											class="form-select" id="team">
											<option value="0">팀 선택</option>

										</select>
									</div>
									<div class="form-group mb-3 col-4">
										<label for="bankName" class="form-label"><b>은행명</b></label> <select
											class="form-select" id="bankName">
											<option value="0">은행 선택</option>
											<option value="1">국민은행</option>
											<option value="2">신한은행</option>
											<option value="3">농협</option>
											<option value="4">신협</option>
										</select>
									</div>
									<div class="form-group mb-3 col-8">
										<label for="accountNumber" class="form-label"><b>계좌번호</b></label>
										<input id="accountNumber" type="text" class="form-control"
											placeholder="계좌번호">
									</div>
								</div>


								<button type="button" class="btn btn-primary mt-3">회원가입</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<!-- End #main -->
	<!-- ======= Footer ======= -->
	<c:import url="../template/footer.jsp" />
	<!-- ======= Script ======= -->
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="/js/employee/address.js"></script>
	<script src="/js/employee/department.js"> </script>
	<c:import url="../template/script.jsp" />
</body>

</html>