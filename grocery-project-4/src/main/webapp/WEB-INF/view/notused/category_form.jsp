<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>

<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Category Form - Category Application </title>


    </head>


        <table border="1" width="80%" align="center">

            <tr>

                <td height="80px">

                    <%-- Header --%>

 

                </td>

            </tr>

            <tr>

                <td height="25px">

                    <%-- Menu --%>

                    

                </td>

            </tr>

            <tr>

                <td height="350px" valign="top">

                    <%-- Page Content Area--%>

                    <h3>Category Form</h3>

                    <c:if test="${err!=null}">

                        <p class="error">${err}</p>

                    </c:if>                  

                    <s:url var="url_csave"  value="/user/save_category"/>

                    <f:form action="${url_csave}" modelAttribute="command">

                        <table border="1">

                            <tr>

                                <td>Name</td>

                                <td><f:input path="name" /> </td>

                            </tr>

                            <tr>

                                <td>Description</td>

                                <td><f:input path="description" /> </td>

                            </tr>

                            <tr>

                                <td>Items</td>

                                <td><f:input path="items" /> </td>

                            </tr>

   

<%--                             <tr>

                                <td>Remark</td>

                                <td><f:textarea path="remark" /> </td>

                            </tr> --%>

                            <tr>                                

                                <td colspan="2" align="right">

                                    <button>Save</button>                                

                                </td>

                            </tr>

                        </table>

                    </f:form>

                </td>

            </tr>

            <tr>

                <td height="25px">

                    <%-- Footer --%>



                </td>

            </tr>

        </table>

    </body>

</html>