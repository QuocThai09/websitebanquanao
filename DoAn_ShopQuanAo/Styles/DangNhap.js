<script type="text/javascript">
    $(document).ready(function()
    {
    var submit = $("button[type='submit']");

    // bắt sự kiện click vào nút Login
    submit.click(function()
    {
        var user = $("input[name='user']").val();
        var password = $("input[name='password']").val();

    // Kiểm tra đã nhập tên tài khoản chưa
    if (user == '') {
        alert('Vui lòng nhập tài khoản');
        return false;
        }

    // Kiểm tra đã nhập mật khẩu chưa
    if (password == '') {
        alert('Vui lòng nhập mật khẩu');
        return false;
        }

    // Lấy tất cả dữ liệu trong form login
    var data = $('form#form-login').serialize();
    // Sử dụng $.ajax()
    $.ajax({
        type : 'POST', //kiểu post
        url  : 'submit.php', //gửi dữ liệu sang trang submit.php
        data : data,
        success :  function(data)
                {
                        if (data == 'false')
                        {
                            alert('Sai tên đăng nhập hoặc mật khẩu');
                        }
                        else {
                            $('#content').html(data);
                        }
               }
        });
        return false;
    });
});
</script>
