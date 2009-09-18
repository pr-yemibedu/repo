<%@ page language="java" %>
<%@ taglib uri="ftstaglib" prefix="fts" %>

<html>
    <head>
        <title>
            <%= title %>
        </title>
    </head>
    <body>
        <form action="process?action=authenticate" method="post">
            <% String url = request.getParameter("url"); %>
            <%
            if (url != null)
            {
            %>
            <input type="hidden" name="url" value="<%= url %>"></input>
            <%
            }
            %>
            <table border="0">
                <tr>
                    <td>
                        <%= title %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <font color="red">
                            <%= (request.getParameter("message") == null) ? "" : request.getParameter("message") %>
                        </font>
                    </td>
                </tr>
                <tr>
                    <td>
                        User Name:
                    </td>
                    <td>
                        <input
                            type="text"
                            name="user"
                            value="<fts:getCookieValue name="user"/>">
                        </input>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:
                    </td>
                    <td>
                        <input
                            type="password"
                            name="password"
                            value="<fts:getCookieValue name="password"/>">
                        </input>
                    </td>
                </tr>
                <tr>
                    <td colspan=2">
                        <input type="submit" value="login">
                    </td>
                </tr>
                <tr>
                    <td>
                        Remember Me
                    </td>
                    <td>
                        <input
                            type="checkbox"
                            name="remember">
                        </input>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>