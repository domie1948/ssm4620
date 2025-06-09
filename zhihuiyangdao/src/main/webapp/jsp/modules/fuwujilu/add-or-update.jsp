<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑服务记录</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">服务记录管理</li>
                        <li class="breadcrumb-item active">编辑服务记录</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">服务记录信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa bbbbbb">
                                        <label>机构社区人员</label>
                                        <div>
                                            <select id="jigoushequSelect" name="jigoushequSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 bbbbbb aaaaaa">
                                        <label>姓名</label>
                                        <input id="jigoushequName" name="jigoushequName" class="form-control"
                                               placeholder="姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 bbbbbb aaaaaa">
                                        <label>手机号</label>
                                        <input id="jigoushequPhone" name="jigoushequPhone" class="form-control"
                                               placeholder="手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 bbbbbb aaaaaa">
                                        <label>身份证号</label>
                                        <input id="jigoushequIdNumber" name="jigoushequIdNumber" class="form-control"
                                               placeholder="身份证号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 bbbbbb aaaaaa">
                                        <label>照片</label>
                                        <img id="jigoushequPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa">
                                        <label>老人</label>
                                        <div>
                                            <select id="laorenSelect" name="laorenSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>老人姓名</label>
                                        <input id="laorenName" name="laorenName" class="form-control"
                                               placeholder="老人姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>老人手机号</label>
                                        <input id="laorenPhone" name="laorenPhone" class="form-control"
                                               placeholder="老人手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>老人身份证号</label>
                                        <input id="laorenIdNumber" name="laorenIdNumber" class="form-control"
                                               placeholder="老人身份证号" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>照片</label>
                                        <img id="yonghuPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>是否独居</label>
                                        <input id="dujuValue" name="dujuValue" class="form-control"
                                               placeholder="是否独居" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>是否残疾</label>
                                        <input id="canjiValue" name="canjiValue" class="form-control"
                                               placeholder="是否残疾" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>养老方式类型</label>
                                        <input id="yanglaofanghsiValue" name="yanglaofanghsiValue" class="form-control"
                                               placeholder="养老方式类型" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="laorenId" name="laorenId" type="hidden">
                                <input id="jigoushequId" name="jigoushequId" type="hidden">
                                    <div class="form-group col-md-6">
                                        <label>服务时间</label>
                                        <input id="fuwuTime-input" name="fuwuTime" type="text" class="form-control layui-input">
                                    </div>
                                    <div class="form-group  col-md-6">
                                        <label>服务详情</label>
                                        <input id="fuwujiluContentupload" name="file" type="file">
                                        <script id="fuwujiluContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var fuwujiluContentUe = UE.getEditor('fuwujiluContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="fuwujiluContent" id="fuwujiluContent-input">
                                    </div>
                                    <div class="form-group col-md-6 bbbbbb">
                                        <label>评价星级类型</label>
                                        <select id="fuwujiluTypesSelect" name="fuwujiluTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group  col-md-6 bbbbbb">
                                        <label>评价详情</label>
                                        <input id="pingjiaContentupload" name="file" type="file">
                                        <script id="pingjiaContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var pingjiaContentUe = UE.getEditor('pingjiaContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="pingjiaContent" id="pingjiaContent-input">
                                    </div>
                                    <%--<div class="form-group col-md-6 bbbbbb">--%>
                                        <%--<label>评价时间</label>--%>
                                        <%--<input id="updateTime-input" name="updateTime" type="text" class="form-control layui-input">--%>
                                    <%--</div>--%>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "fuwujilu";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var fuwujiluTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var jigoushequOptions = [];
    var laorenOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

        $('#fuwujiluContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('fuwujiluContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


        $('#pingjiaContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('pingjiaContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if($("#laorenId") !=null){
                var laorenId = $("#laorenId").val();
                if(laorenId == null || laorenId =='' || laorenId == 'null'){
                    alert("老人不能为空");
                    return;
                }
            }
            // if($("#jigoushequId") !=null){
            //     var jigoushequId = $("#jigoushequId").val();
            //     if(jigoushequId == null || jigoushequId =='' || jigoushequId == 'null'){
            //         alert("服务人员不能为空");
            //         return;
            //     }
            // }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("fuwujilu/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addfuwujilu');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function fuwujiluTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=fuwujilu_types", "GET", {}, (res) => {
                if(res.code == 0){
                    fuwujiluTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function jigoushequSelect() {
            //填充下拉框选项
            http("jigoushequ/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    jigoushequOptions = res.data.list;
                }
            });
        }

        function jigoushequSelectOne(id) {
            http("jigoushequ/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                jigoushequShowImg();
                jigoushequShowVideo();
                jigoushequDataBind();
            }
        });
        }
        function laorenSelect() {
            //填充下拉框选项
            http("laoren/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    laorenOptions = res.data.list;
                }
            });
        }

        function laorenSelectOne(id) {
            http("laoren/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                laorenShowImg();
                laorenShowVideo();
                laorenDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationFuwujilutypesSelect(){
            var fuwujiluTypesSelect = document.getElementById('fuwujiluTypesSelect');
            if(fuwujiluTypesSelect != null && fuwujiluTypesOptions != null  && fuwujiluTypesOptions.length > 0 ){
                for (var i = 0; i < fuwujiluTypesOptions.length; i++) {
                    fuwujiluTypesSelect.add(new Option(fuwujiluTypesOptions[i].indexName,fuwujiluTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationjigoushequSelect() {
            var jigoushequSelect = document.getElementById('jigoushequSelect');
            if(jigoushequSelect != null && jigoushequOptions != null  && jigoushequOptions.length > 0 ) {
                for (var i = 0; i < jigoushequOptions.length; i++) {
                        jigoushequSelect.add(new Option(jigoushequOptions[i].jigoushequName, jigoushequOptions[i].id));
                }

                $("#jigoushequSelect").change(function(e) {
                        jigoushequSelectOne(e.target.value);
                });
            }

        }

        function initializationlaorenSelect() {
            var laorenSelect = document.getElementById('laorenSelect');
            if(laorenSelect != null && laorenOptions != null  && laorenOptions.length > 0 ) {
                for (var i = 0; i < laorenOptions.length; i++) {
                        laorenSelect.add(new Option(laorenOptions[i].laorenName, laorenOptions[i].id));
                }

                $("#laorenSelect").change(function(e) {
                        laorenSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var fuwujiluTypesSelect = document.getElementById("fuwujiluTypesSelect");
        if(fuwujiluTypesSelect != null && fuwujiluTypesOptions != null  && fuwujiluTypesOptions.length > 0 ) {
            for (var i = 0; i < fuwujiluTypesOptions.length; i++) {
                if (fuwujiluTypesOptions[i].codeIndex == ruleForm.fuwujiluTypes) {//下拉框value对比,如果一致就赋值汉字
                        fuwujiluTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var jigoushequSelect = document.getElementById("jigoushequSelect");
            if(jigoushequSelect != null && jigoushequOptions != null  && jigoushequOptions.length > 0 ) {
                for (var i = 0; i < jigoushequOptions.length; i++) {
                    if (jigoushequOptions[i].id == ruleForm.jigoushequId) {//下拉框value对比,如果一致就赋值汉字
                        jigoushequSelect.options[i+1].selected = true;
                        $("#jigoushequSelect" ).selectpicker('refresh');
                    }
                }
            }
            var laorenSelect = document.getElementById("laorenSelect");
            if(laorenSelect != null && laorenOptions != null  && laorenOptions.length > 0 ) {
                for (var i = 0; i < laorenOptions.length; i++) {
                    if (laorenOptions[i].id == ruleForm.laorenId) {//下拉框value对比,如果一致就赋值汉字
                        laorenSelect.options[i+1].selected = true;
                        $("#laorenSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.fuwujiluContent != null && ruleForm.fuwujiluContent != 'null' && ruleForm.fuwujiluContent != '' && $("#fuwujiluContentupload").length>0) {

            var fuwujiluContentUeditor = UE.getEditor('fuwujiluContentEditor');
            fuwujiluContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.fuwujiluContent != null){
                    mes = ''+ ruleForm.fuwujiluContent;
                    mes = mes.replace(/\n/g, "<br>");
                }
                fuwujiluContentUeditor.setContent(mes);
            });
        }
        if (ruleForm.pingjiaContent != null && ruleForm.pingjiaContent != 'null' && ruleForm.pingjiaContent != '' && $("#pingjiaContentupload").length>0) {

            var pingjiaContentUeditor = UE.getEditor('pingjiaContentEditor');
            pingjiaContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.pingjiaContent != null){
                    mes = ''+ ruleForm.pingjiaContent;
                    mes = mes.replace(/\n/g, "<br>");
                }
                pingjiaContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        if($("#fuwujiluContentupload").length>0) {
            var fuwujiluContentEditor = UE.getEditor('fuwujiluContentEditor');
            if (fuwujiluContentEditor.hasContents()) {
                $('#fuwujiluContent-input').attr('value', fuwujiluContentEditor.getPlainTxt());
            }
        }
        if($("#pingjiaContentupload").length>0) {
            var pingjiaContentEditor = UE.getEditor('pingjiaContentEditor');
            if (pingjiaContentEditor.hasContents()) {
                $('#pingjiaContent-input').attr('value', pingjiaContentEditor.getPlainTxt());
            }
        }
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addfuwujilu');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                laorenId: "required",
                jigoushequId: "required",
                fuwuTime: "required",
                insertTime: "required",
                fuwujiluContent: "required",
                fuwujiluTypes: "required",
                pingjiaContent: "required",
                updateTime: "required",
            },
            messages: {
                laorenId: "老人不能为空",
                jigoushequId: "服务人员不能为空",
                fuwuTime: "服务时间不能为空",
                insertTime: "申请时间不能为空",
                fuwujiluContent: "服务详情不能为空",
                fuwujiluTypes: "评价星级类型不能为空",
                pingjiaContent: "评价详情不能为空",
                updateTime: "评价时间不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addfuwujilu = window.sessionStorage.getItem("addfuwujilu");
        if (addfuwujilu != null && addfuwujilu != "" && addfuwujilu != "null") {
            //注册表单验证
            $(validform());
            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("fuwujilu/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
            laydate.render({
                elem: '#fuwuTime-input'
                ,type: 'datetime'
            });
            laydate.render({
                elem: '#insertTime-input'
                ,type: 'datetime'
            });
            laydate.render({
                elem: '#updateTime-input'
                ,type: 'datetime'
            });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        jigoushequDataBind();
        laorenDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#laorenId").val(ruleForm.laorenId);
        $("#jigoushequId").val(ruleForm.jigoushequId);
        $("#fuwuTime-input").val(ruleForm.fuwuTime);
        $("#insertTime-input").val(ruleForm.insertTime);
        $("#fuwujiluContent").val(ruleForm.fuwujiluContent);
        $("#pingjiaContent").val(ruleForm.pingjiaContent);
        $("#updateTime-input").val(ruleForm.updateTime);

    }
    <!--  级联表的数据回显  -->
    function jigoushequDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#jigoushequId").val(ruleForm.id);

        $("#jigoushequName").val(ruleForm.jigoushequName);
        $("#jigoushequPhone").val(ruleForm.jigoushequPhone);
        $("#jigoushequIdNumber").val(ruleForm.jigoushequIdNumber);
    }

    function laorenDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#laorenId").val(ruleForm.id);

        $("#laorenName").val(ruleForm.laorenName);
        $("#laorenPhone").val(ruleForm.laorenPhone);
        $("#laorenIdNumber").val(ruleForm.laorenIdNumber);
        $("#dujuValue").val(ruleForm.dujuValue);
        $("#canjiValue").val(ruleForm.canjiValue);
        $("#yanglaofanghsiValue").val(ruleForm.yanglaofanghsiValue);
        $("#jibingContent").val(ruleForm.jibingContent);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        jigoushequShowImg();
        laorenShowImg();
    }


    <!--  级联表的图片  -->

    function jigoushequShowImg() {
        $("#jigoushequPhotoImg").attr("src",ruleForm.jigoushequPhoto);
    }


    function laorenShowImg() {
        $("#yonghuPhotoImg").attr("src",ruleForm.yonghuPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        jigoushequShowVideo();
        laorenShowVideo();
    }


    <!--  级联表的视频  -->

    function jigoushequShowVideo() {
        $("#jigoushequPhotoV").attr("src",ruleForm.jigoushequPhoto);
    }

    function laorenShowVideo() {
        $("#yonghuPhotoV").attr("src",ruleForm.yonghuPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            fuwujiluTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            jigoushequSelect();
            laorenSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationFuwujilutypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationjigoushequSelect();
            initializationlaorenSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addfuwujilu');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员' || window.sessionStorage.getItem('role') == '机构社区人员' ) {
            $(".bbbbbb").remove();
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events: none;');
        }else if (window.sessionStorage.getItem('role') == '老人') {
            $(".aaaaaa").remove();
        }else{
            // alert("未知情况.......");
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>