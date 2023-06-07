<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"/>
    <style>
      #container {
        width: 500px;
        margin: 0 auto;
      }
      #loginIMG {
        background-color: ivory;
        height: 400px;
      }
      img {
        height: 400px;
        margin-left: 40px;
      }
    </style>
  </head>
  <body>
    <div id="container">
      <div id="loginIMG">
      </div>
      <form action="member" method="POST">
        <table class="table">
          <tr>
            <td>아이디</td>
            <td><input type="text" id="myId" name="email" placeholder="아이디 필수입력" onchange="myId" /><button type="button" id="check">중복확인</button></td>
          </tr>

          <tr>
            <td>비밀번호</td>
            <td><input type="password" name="password" placeholder="비밀번호 필수입력"/></td>
          </tr>
          
          <tr>
            <td>이름</td>
            <td><input type="text" name="name" placeholder="이름 필수입력"/></td>
          </tr>
          
          <tr>
            <td>전화번호</td>
            <td><input type="text" name="phone" placeholder="전화번호 필수입력"/></td>
          </tr>
          
          <tr>
            <td>주소</td>
            <td><input type="text" name="address" placeholder="주소 필수입력"/></td>
          </tr>
          
          <tr>
            <td ><input type="submit" value="회원가입" disabled="disabled"/></td>
          </tr>
          
          <tr>
            <td ><input type="hidden" id="dup" /></td>
          </tr>
        </table>
      </form>
    </div>
    
    <script>
  document.querySelector('#check').addEventListener('click', function () {
    let email = document.querySelector('input[name=email]').value;
    let data = email;

    fetch('duplication', {
      method: 'POST',
      headers: {
        'Content-Type': 'text/plain' 
      },
      body: data
    })
      .then(result => result.text())
      .then(data => {
        console.log(data)
        if (data === 'OK') {
          alert('사용가능');
          document.querySelector('#dup').value = 'ok';
          document.querySelector('input[type=submit]').removeAttribute('disabled');
        } else if (data === 'Fail') {
          let em = document.querySelector('input[name=email]');
          alert('사용불가');
          em.value = '';
          em.focus();
          document.querySelector('input[type=submit]').setAttribute('disabled', 'disabled');
        }
      })
      .catch(err => console.log(err));
  });

  document.querySelector('input[name=email]').addEventListener('input', function () {
    document.querySelector('input[type=submit]').setAttribute('disabled', 'disabled');
  });
    </script>
  </body>
</html>
