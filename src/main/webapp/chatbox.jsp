<%@ page import="java.io.*,java.util.*" %>
    <%@page import="java.sql.SQLException" %>
        <%@page import="java.sql.DriverManager"%>
            <%@page import="java.sql.ResultSet"%>
                <%@page import="java.sql.Statement"%>
                    <%@page import="java.sql.Connection"%>
                        <%@page import="jakarta.servlet.http.Cookie"%>
                            <%@page contentType="text/html" pageEncoding="UTF-8"%>
                                <!DOCTYPE html>
                                <html>

                                <head>
                                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                                    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/contact.css" />
                                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
                                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
                                    <title>Customer support</title>

                                </head>

                                <body>
                                    <%
        String name = null;
        String kk = null;
        Cookie ck[] = request.getCookies();   
        if(ck != null) {    
            for(int i=0;i<ck.length;i++){
            kk = ck[i].getName();
            if(kk.equals("client")){
            name = ck[i].getValue();       
             }
        }
     }else{
           name = "customer";
          }
            %>
                                        <div class="line-bar">
                                            <i><h4>Chat Box</h4></i>
                                        </div><br>


                                        <div class="content-box1">
                                            <div class="chat-box">
                                                <% 
               
                String driver = "com.mysql.jdbc.Driver";
                String url = "jdbc:mysql://localhost:3306/";
                String db="";
                String user = "root";
                String pw = "";
                try{
                    Class.forName(driver);
                }
                catch(ClassNotFoundException ex){
                    ex.printStackTrace();
                }
                Statement st =null;
                ResultSet rs =null;
                Connection con =null;
            %>
                                                    <table class="table">
                                                        <tr>
                                                            <th colspan="2">Session started... type your message in the following box</th>
                                                        </tr>

                                                        <%
                  try{
                      
                      con = DriverManager.getConnection(url+db,user,pw);
                      st = con.createStatement();
                      rs =st.executeQuery("SELECT * FROM customer_chat;");
                     
                      while(rs.next()){                          
                %>
                                                            <tr class="table-hover">
                                                                <td style="width:20%;">
                                                                    <%=rs.getString("name")%>&nbsp; >></td>
                                                                <td>
                                                                    <%=rs.getString("chat")%>
                                                                </td>
                                                            </tr>
                                                            <% 
                    }
                     
                 
                }catch(SQLException ex)
                    {
                        ex.printStackTrace();
                    }
                    
                   
                response.setIntHeader("Refresh",20);  
                %>

                                                    </table>
                                            </div>
                                        </div>
                                        <div class="send-msg ">
                                            <form class="form-inline" action="msg_box" method="post">
                                                <div class="logbutton">

                                                    <div class="form-group mx-sm-3 mb-2">
                                                        <input type="text" name="name" value="<% out.println(name);%>" hidden/>
                                                        <input type="text" name="msg" class="form-control" placeholder="type message here">
                                                    </div>

                                                    <button type="submit" class="btn btn-outline-info">Send Message</button>
                                                    <a href="index.jsp"><button type="button" class="btn btn-danger" onclick="return confirm('are you sure want to exit ?');">Close the session</button></a>
                                                </div>
                                            </form>
                                        </div>

                                </body>

                                </html>