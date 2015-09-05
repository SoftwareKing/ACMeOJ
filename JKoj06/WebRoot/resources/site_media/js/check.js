function check_login() {
    if(isEmpty(document.form.username.value)) {
        alert("Username can't be empty!");
        return false;
    }
    
    if(isEmpty(document.form.password.value)) {
        alert("Please input your password.");
        return false;
    }
    
    if(isEmpty(document.form.checkcode.value)) {
        alert("Please input checkcode");
        return false;
    }
    
    if(document.form.checkcode.value.length != 4) {
        alert("Checkcode wrong");
        return false;
    }
}

function check_login_index(ele) {
    $(ele).parent().submit();
}



function check_UPFC() {
    if(isEmpty(document.form.username.value)) {
        alert("User ID can't be empty!");
        return false;
    }
    
    if(isEmpty(document.form.nickname.value)) {
        alert("Please input your Nick name");
        return false;
    }
    
    if(isEmpty(document.form.email.value)) {
        alert("Please input your email");
        return false;
    }
    
    else {
        var Email = document.form.email.value;
        if (Email.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) == -1) {
            alert("Your E-mail has formal error");
            return false;
        }
    }
    
    if(isEmpty(document.form.checkcode.value)) {
        alert("Please input checkcode");
        return false;
    }
    
    if(document.form.checkcode.value.length != 4) {
        alert("Checkcode wrong");
        return false;
    }
    
    return true;
}

function check_UPC(){
    if (isEmpty(document.form.OldPassWord.value)) {
        alert("Please input your old Password");
        return false;
    }
    
    if (isEmpty(document.form.password1.value)) {
        alert("Please input your New Password");
        return false;
    }
    
    if(document.form.password1.value.length < 4) {
        alert("Password mast be more than 4 letters!");
        return false;
    }
    
    if (isEmpty(document.form.password2.value)) {
        alert("Please input Repeat Password");
        return false;
    }
    
    if (document.form.password1.value != document.form.password2.value) {
        alert("Password and Repeat Password isn't the same");
        return false;
    }
    
    return true;
}

function check_UserS() {
    var key = document.UserS_Form.UserID
    if(key.value === "Search User")
    {
        alert("User ID can't be empty!");
        return false;
    }

    if(isEmpty(key.value))
    {
        alert("User ID can't be empty!");
        return false;
    }

    return true;
}

function CheckName(){
    var key = document.SProblemName.ProblemName
    if(key.value === "Problem") {
        return confirm('Are you sure to search "Problem" in problem list?');
    }
    
    if(isEmpty(key.value)){
        alert("Problem Title can't be empty!");
    return false;
    }
}

function CheckID() {
    var key = document.SProblemID.ProblemID;
    if(isEmpty(key.value)) {
        alert("Problem ID can't be empty!");
        return false;
    }

    if(key.value === "Problem ID") {
        alert("Problem ID can't be empty!");
        return false;
    }
    
    else {
        if(isNaN(Number(key.value)))
        {
            alert("Problem ID must be an integer!");
            return false;
        }
        else
            return true;
    }
}

function CheckSource() {
    var key = document.SProblemSource.Source;
    if(key.value === "Source") {
        return confirm('Are you sure to search "Source" in problem list?');
    }
    
    if(isEmpty(key.value)){
        alert("Problem Source can't be empty!");
    return false;
    }
}

function check_status() {
    var user = document.Sstatus.username;
    var pid = document.Sstatus.pid;
    var resu =  document.Sstatus.result;
    var Comp = document.Sstatus.compiler;
    
    if(isEmpty(user.value) && isEmpty(pid.value) && resu.value == "" && Comp.value == ""){
        alert("You need fill in some information to search. None is invalid!");
        return false;
    }

    if(user.value == 'User ID' && pid.value == 'Problem ID' && resu.value == "" && Comp.value == "") {
        alert("You need fill in some information to search. None is invalid!");
        return false;
    }

    if(user.value == 'User ID' && isEmpty(pid.value) && resu.value == "" && Comp.value == "") {
        alert("You need fill in some information to search. None is invalid!");
        return false;
    }

    if(isEmpty(user.value) && pid.value == 'Problem ID' && resu.value == "" && Comp.value == "") {
        alert("You need fill in some information to search. None is invalid!");
        return false;
    }
    
    if(user.value == 'User ID') {
        user.value = '';
    }
    
    if(pid.value == 'Problem ID') {
        pid.value = '';
    }else {
        pid.value = Number(pid.value);
    }
}

function check_source() {
    var source = document.getElementById('SourceSide');
    if(isEmpty(source.value)) {
        alert('Please input your source!');
        return false;
    }
    document.getElementById('Training').style.display='none';
    $.cookie('compiler',$('select').val());
    return true;
}

function check_rizhi() {
    var arti = document.getElementById('id_article');
    if (isEmpty(arti.value)) {
        alert('Please input something for your article!');
        return false;
    }
    arti = document.getElementById('id_title');
    if (isEmpty(arti.value)) {
        alert('Please input title for your article!');
        return false;
    }
    return true;
}

function check_liuyan() {
    var mmsg = document.getElementById('id_message');
    if (isEmpty(mmsg.value)) {
        alert('Please input some messgae!');
        return false;
    }
    return true;
}

function check_AddFriend() {
    var Fri = document.getElementById('id_username');
    if (Fri.value == "Friend's ID") {
        alert("Please input your friend's ID!");
        return false;
    }
    return true;
}

function Del_Fri(url) {
    if(confirm('Are your sure to remove this friend?')) {
        window.location.href = url;
    }
    
    else {
        return false;
    }
}

function Add_Friend(fname,url) {
    if(confirm('Are you sure to add "' + fname + '" as your friend?')) {
        window.location.href = url;
    }
    
    else {
        return false;
    }
}

function isEmpty(str) {
    var path = new RegExp(/\S/);
    if(path.test(str) == false) {
        return true;
    }
    return false;
}
