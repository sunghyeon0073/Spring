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
      crossorigin="anonymous"
    />
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
        height: 300px;
        margin-left: 40px;
         margin-top: auto;
         
      }
    </style>
  </head>
  <body>
    <div id="container">
      <div id="loginIMG">
        <img src=resources/잼민이1.jpg alt='이미지' />
      </div>
      <form action="login" method="POST">
        <table class="table">
          <tr>
            <td>ID</td>
            <td><input type="text" name="email" placeholder="ID 입력"  value="${cookie.id.value }"/></td>
          </tr>
          <tr>
            <td>PASSWORD</td>
            <td><input type="password" name="password"/></td>
          </tr>
          <tr>
            <td><input type="submit" value="로그인하기" /></td>
            <td>아이디 저장<input type="checkbox" name="remember"  ${empty cookie.id.value ? '' : 'checked' } />
            <td><input type="button" value="목록으로" onclick="location.href='home'"/></td>
            </td>
          </tr>
          
        </table>
      </form>
    </div>
  </body>
</html>
