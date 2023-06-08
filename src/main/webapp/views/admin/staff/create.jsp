<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="frm" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="bi-pencil-square" viewBox="0 0 16 16">
        <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
        <path fill-rule="evenodd"
              d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
    </symbol>
    <symbol id="bi-x-octagon-fill" viewBox="0 0 16 16">
        <path d="M11.46.146A.5.5 0 0 0 11.107 0H4.893a.5.5 0 0 0-.353.146L.146 4.54A.5.5 0 0 0 0 4.893v6.214a.5.5 0 0 0 .146.353l4.394 4.394a.5.5 0 0 0 .353.146h6.214a.5.5 0 0 0 .353-.146l4.394-4.394a.5.5 0 0 0 .146-.353V4.893a.5.5 0 0 0-.146-.353L11.46.146zm-6.106 4.5L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 1 1 .708-.708z"/>
    </symbol>
    <symbol id="bi-plus-circle" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
        <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
    </symbol>
</svg>

<section id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-1 text-gray-800">Thêm nhân viên</h1>
                    <%--@elvariable id="users" type=""--%>
                    <frm:form method="POST"
                              modelAttribute="users"
                              action="${pageContext.request.contextPath}/admin/staff/create"
                              class="row g-3 needs-validation">
                        <div class="col-md-2">
                            <label for="validationCustom01" class="form-label">Username</label>
                            <frm:input type="text" class="form-control" id="validationCustom01" path="username"/>
                            <div class="alter alter-danger text-danger">
                                    ${err_ma}
                            </div>
                            <frm:errors path="username" class="alter alter-danger text-danger"/>
                        </div>

                        <div class="col-md-3">
                            <label for="validationCustom04" class="form-label">Họ tên</label>
                            <frm:input type="text" class="form-control" id="validationCustom04" path="name"/>
                            <frm:errors path="name" class="alter alter-danger text-danger"/>
                        </div>
                        <div class="col-md-7">
                        </div>

                        <div class="col-md-2">
                            <label class="form-label">Giới tính</label>
                            <br>
                            <frm:radiobutton path="gender" value="1" checked="checked"/>Nam
                            <frm:radiobutton path="gender" value="0"/>Nữ
                        </div>
                        <div class="col-md-3">
                            <label for="validationCustom07" class="form-label">Số điện thoại</label>
                            <input type="text" class="form-control" id="validationCustom07" name="phonenumber" required>
                        </div>
                        <div class="col-md-6">
                        </div>

                        <div class="col-md-3">
                            <label for="validationCustom08" class="form-label">Mật khẩu</label>
                            <frm:input type="password" class="form-control" id="validationCustom08" path="password"/>
                        </div>
                        <div class="col-md-8">
                        </div>

                        <div class="col-md-2" style="margin-top: 20px">
                            <label for="validationCustom10" class="form-label">Chức vụ</label>
                            <frm:select class="form-select" id="validationCustom10" path="role">

                                <frm:option value="0">Quản lý</frm:option>
                                <frm:option value="1">Nhân viên</frm:option>
                            </frm:select>
                        </div>
                        <div class="col-md-4">
                            <label>Trạng thái</label>
                            <br>
                            <frm:radiobutton path="available" value="1" checked="checked"/>Hoạt động
                            <frm:radiobutton path="available" value="0"/>Không hoạt động
                        </div>
                        <div class="col-12" style="margin-top: 20px">
                            <input type="submit" value="Save" class="btn btn-primary"/>
                        </div>
                    </frm:form>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- End of Main Content -->
        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->
</section>

