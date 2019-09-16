<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Wcf_ajax.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
 <body bgcolor="black">  
        <form id="form1" runat="server">  
        <br />      
        <br />      
        <br />    
        <table style="color: White;">  
            <tr>  
                <td>  
                    Enter Number  
                </td>  
                <td>  
                    <input type="text" id="txtgetMulti" />  
                </td>  
            </tr>  
            <tr>  
                <td>  
                </td>  
                <td>  
                    <input id="btnGetMulti" type="button" value="Get Result" />  
                </td>  
            </tr>  
        </table>  
          
        </form>  
    </body>  

     <script type="text/javascript">
         $(function () {
             $('body').on('click', '#btnGetMulti', function () {
          
                 $.ajax({
                     type: "POST",
                     contentType: "application/json; charset=utf-8",
                     url: 'Service.svc/GetMultiplication',
                     data: '{"Number": "' + $("#txtgetMulti").val() + '"}',
                     processData: true,
                     dataType: "json",
                     success: function (response) {

                         alert(response.d);
                     },
                     error: function (errormsg) {
                         alert(errormsg.responseText);
                     }
                 });
             });
         });
        </script>  

  
</html>
