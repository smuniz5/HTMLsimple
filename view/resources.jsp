<%-- 
    Document   : resources
    Created on : Oct 12, 2020, 5:55:40 PM
    Author     : savannahmuniz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/home.css">
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/menubar.css">
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/tabs.css">
        <link href='https://fonts.googleapis.com/css?family=Aleo' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <title>HTML simple</title>
    </head>
    <body>
        <a href="#">
            <img src="html/htmllogo2.png" id="logo" alt="HTML simple logo">
        </a>
        <div class="topnav" id="topmenu">
            <a class="btn" href="home?${home.id}">HTML Generator</a>
            <a class="btn" href="test?${test.id}">Test Your Knowledge</a>
            <a class="btn active" href="resources?${resources.id}">Additional Resources</a>
            <a class="btn" href="contact?${contact.id}">Contact</a>
        </div>
        
        <script><!-- comment -->
            function openTab(evt, tabName) {
                // Declare all variables
                var i, tabcontent, tablinks;

                // Get all elements with class="tabcontent" and hide them
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                  tabcontent[i].style.display = "none";
                }

                // Get all elements with class="tablinks" and remove the class "active"
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                  tablinks[i].className = tablinks[i].className.replace(" active", "");
                }

                // Show the current tab, and add an "active" class to the button that opened the tab
                document.getElementById(tabName).style.display = "block";
                evt.currentTarget.className += " active";
            }
            document.getElementById("Element Picker").click();
            openTab(event, 'Element Picker');
        </script>
        <div id="main">
            <div id="header">
            </div>
            <body>
                <h1>Additional Resources</h1>
                <div class="search"><input style="font-family: FontAwesome;" type="text" placeholder="&#xf002;   Search Resources..."/></div>
            </body>
            <br><br><br>
            <div>
                <style>
                    table {
                      border-collapse: collapse;
                      width: 75%;
                      margin-left:auto;
                      margin-right:auto;
                      background-color:white;
                      
                    }

                    th, td {
                      padding: 8px;
                      text-align: left;
                      border-bottom: 20px solid #eee;
                    }
                    
                    tr{
                        border-bottom:5pt;
                        border-bottom-color:#eee;
                    }
                </style>
                <table classname="resourcetable">
                    <tr>
                        <td><a href="https://www.w3schools.com"><img src="html/w3.png" width="100px"></img></a></td>
                        <td><h2>w3schools.com</h2><p>W3Schools is an educational website for learning web technologies online. Content includes tutorials and references relating to HTML, CSS, JavaScript, JSON, PHP, Python, AngularJS, React.js, SQL, Bootstrap, Sass, Node.js, jQuery, XQuery, AJAX, XML, Raspberry Pi, C++, C# and Java.</p></td>
                    </tr>
                    <tr>
                        <td><a href="https://www.codecademy.com"><img src="html/code.png" width="100px"></img></a></td>
                        <td><h2>Codeacademy</h2><p>Codecademy is an American online interactive platform that offers free coding classes in 12 different programming languages including Python (pandas-Python library, Beautiful Soup-Python Library), Java, Go, JavaScript (jQuery, AngularJS, React.js), Ruby (Ruby on Rails-Ruby framework), SQL, C++,C#,Swift, and Sass, as well as markup languages HTML and CSS.</p></td>
                    </tr>
                    <tr>
                        <td><a href="https://www.edx.org/learn/html"><img src="html/edx.png" width="100px"></img></a></td>
                        <td><h2>edX</h2><p>edX is an American massive open online course (MOOC) provider created by Harvard and MIT. It hosts online university-level courses in a wide range of disciplines to a worldwide student body, including some courses at no charge.</p></td>
                    </tr>
                    <tr>
                        <td><a href="https://www.sublimetext.com"><img src="html/sublogo.png" width="100px"></img></a></td>
                        <td><h2>Sublime Text 3</h2><p>Sublime Text is a free shareware cross-platform source code editor with a Python application programming interface (API). It natively supports many programming languages and markup languages, and functions can be added by users with plugins, typically community-built and maintained under free-software licenses.</p></td>
                    </tr>
                    <tr>
                        <td><a href="https://www.lynda.com"><img src="html/lynda_logo.png" width="100px"></img></a></td>
                        <td><h2>Lynda.com</h2><p>Lynda.com is an American website offering video courses taught by industry experts in software, creative, and business skills.</p></td>
                    </tr>
                  </table>
                <br><br>
            </div>
