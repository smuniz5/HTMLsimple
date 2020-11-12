<%-- 
    Document   : test
    Created on : Oct 12, 2020, 5:55:22 PM
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
        <title>HTML simple</title>
        
    </head>
    <body>
        <a href="#">
            <img src="html/htmllogo2.png" id="logo" alt="HTML simple logo">
        </a>
        <div class="topnav" id="topmenu">
            <a class="btn" href="home?${home.id}">HTML Generator</a>
            <a class="btn active" href="test?${test.id}">Test Your Knowledge</a>
            <a class="btn" href="resources?${resources.id}">Additional Resources</a>
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
                <h1>Test Your Knowledge</h1>
            </body>
            <!--<iframe src="html/frame_1.html" width="50%" height="300px"></iframe>-->
            <iframe src="html/frame_2.html" width="100%" height="347px" frameBorder ="0"></iframe>  


