<%-- 
    Document   : home
    Created on : Oct 12, 2020, 9:24:09 PM
    Author     : savannahmuniz
--%>
<script>function onLoad() {
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
                document.getElementById('Element Picker').style.display = "block";
                evt.currentTarget.className += " active";
            }
</script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/home.css">
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/menubar.css">
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/tabs.css">
        <link href='https://fonts.googleapis.com/css?family=Aleo' rel='stylesheet'>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <title>HTML simple</title>
        
    </head>
    <body>
        <a href="#">
            <img src="html/htmllogo2.png" id="logo" alt="HTML simple logo">
        </a>
        <div class="topnav" id="topmenu">
            <a class="btn active" href="home?${home.id}">HTML Generator</a>
            <a class="btn" href="test?${test.id}">Test Your Knowledge</a>
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
            
        </script>
        
        <script>
            function showDiv(select){
               document.getElementById('instruct').style.display = "none";
               if(select.value=="paragraph"){
                document.getElementById('hidden_div').style.display = "block";
               } else{
                document.getElementById('hidden_div').style.display = "none";
               }
               if(select.value=="image"){
                document.getElementById('hidden_image').style.display = "block";
               } else{
                document.getElementById('hidden_image').style.display = "none";
               }
               if(select.value=="emoji"){
                document.getElementById('hidden_emoji').style.display = "block";
               } else{
                document.getElementById('hidden_emoji').style.display = "none";
               }
            } 
        </script>
        
        <script>
            function changeTab(){
                document.getElementById('gencode').innerHTML = "&lt;h&gt;" + document.getElementById('heading1').value +"&lt;/h&gt;";
                document.getElementById('headoutput').innerHTML = ""+document.getElementById('heading1').value+"";
                document.getElementById('paragraphoutput').innerHTML = ""+document.getElementById('textele').value+"";
                document.getElementById('paragraphoutput').style.fontSize = ""+document.getElementById('fontu').value+"";
                document.getElementById('paragraphcode').innerHTML = "&lt;p style=&quot;font-size:"+document.getElementById('fontu').value+"px&quot;&gt;"+document.getElementById('textele').value+"&lt;/p&gt;";
                document.getElementById('hidden_output').style.display = "block";
                document.getElementById('hidden_div').style.display = "none";
                document.getElementById('hidden_image').style.display = "none";
                document.getElementById('hidden_emoji').style.display = "none";
               
                document.getElementById('imagecode').innerHTML = ""+document.getElementById('userhref').value+"";
                document.getElementById('uh').innerHTML = ""+document.getElementById('userheight').value+"";
                document.getElementById('uw').innerHTML = ""+document.getElementById('userwidth').value+"";
                document.getElementById('imageplace').src = ""+document.getElementById('userhref').value+"";
                document.getElementById('imageplace').width = ""+document.getElementById('userwidth').value+"";
                document.getElementById('imageplace').height = ""+document.getElementById('userheight').value+"";
                 
                for(i = 1; i < 10; i++) { 
                    if(document.getElementById('e'+ i).checked){ 
                    //document.getElementById('emojicode').innerHTML= "&lt;code&gt;"+document.getElementById('e'+ i).value)+"&lt;/code&gt;"; 
                    document.getElementById('emojicode').innerHTML= "&amp;"+document.getElementById('e'+ i).value+"";
                    document.getElementById('emojiplace').innerHTML= "&"+document.getElementById('e'+ i).value+"";
                }
            }
                
                
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
                document.getElementById('HTML').style.display = "block";
                evt.currentTarget.className += " active";
                
                
            }
            
        </script>
        
        <div onload="onLoad()" id="main">
            <div id="header">
            </div>
            <body>
                <h1>HTML Generator</h1>
            </body>
            <div id="indexLeftColumn">
                
                <div id="instruct" style="text-align: left; padding-left: 15px; padding-right:15px; padding-top: 100px; cursor:pointer; vertical-align:middle;">
                    <p></p>
                    <h2 style="text-align:center; vertical-align:middle;">Welcome to HTML simple! Select elements and their attributes to generate your HTML code.</h2>
                </div>
            
                <div id="hidden_output" style="display:none; text-align: left; padding-left: 15px; padding-top: 5px; cursor:pointer;">
                    <p></p>
                    <h1 id="headoutput"></h1>
                    <p id="paragraphoutput"></p>
                    <img id="imageplace" width="100px" height="100px" ></img>
                    <p id="emojiplace"></p>
                </div>
            
                <div id="hidden_div" style="display:none; text-align: left; padding-left: 15px; padding-top: 5px;">
                    <p></p>
                    <style>
                        label textarea{
                        vertical-align: middle;
                    }</style>
                    <h1 style="text-align:center;">Paragraph Attributes</h1>
                    <p style="text-align:center;">Enter text as a paragraph element to your HTML.</p>
                    <table>
                    <tr><td style="text-align:right;"><label for="textele">Text</label></td><td><textarea id="textele" cols="40" rows="5"></textarea></td></tr>
                    
                    <tr><td style="text-align:right;">Font Size </td><td><input id="fontu" style="width:60px" value = "12" type="number"/><span style="margin-left:-33px;">pt</span></td></tr>
                    </table>
                    <br><br>
                    <p class="paragroup" style="text-align:center;">
                    <button style="font-size:24px;"><i class="material-icons">format_bold</i></button>
                    <button style="font-size:24px"><i class="material-icons">format_italic</i></button>
                    <button style="font-size:24px"><i class="material-icons">strikethrough_s</i></button>
                    <button style="font-size:24px"><i class="material-icons">format_align_center</i></button>
                    <button style="font-size:24px"><i class="material-icons">format_align_right</i></button>
                    <button style="font-size:24px"><i class="material-icons">format_align_left</i></button>
                    <button style="font-size:24px"><i class="material-icons">format_align_justify</i></button>
                    </p>
                    <br><br>
                    
                </div>
                <div id="hidden_image" style="display:none; text-align: left; padding-left: 15px; padding-top: 5px;">
                    <p></p>
                    <h1 style="text-align:center;">Image Attributes</h1>
                    <p style="text-align:center;">Enter an image URL to add to your HTML. <br>Specify image width and height.</p>
                    <table style="text-align:center;">
                        <col style="width:20%">
                        <col style="width:80%">
                        <tr><td style="text-align:right;">Photo URL </td><td><input id="userhref" style="width:250px" type="text"/></td></tr>
                        <tr><td style="text-align:right;">Width(px) </td><td><input id="userwidth" type="number"/></td></tr>
                        <tr><td style="text-align:right;">Height(px) </td><td><input id="userheight" type="number"/></td></tr>
                    </table>
                </div>
                
                <div class="emojibuttons" id="hidden_emoji" style="display:none; text-align: left; padding-left: 15px; padding-top: 5px;">
                    <p></p>
                    <h1 style="text-align:center;">Emoji Attributes</h1>
                    <p style="text-align:center;">Select a single emoji to add to your HTML code.</p>
                    <table style="text-align:center; margin-left:auto; margin-right:auto;">
                        <tr><td><input type="radio" id="e1" name="echoice" value="#128512"><label for="e1">&#128512;</label></input></td><td><input type="radio" id="e2" name="echoice" value="#128513"><label for="e2">&#128513;</label></input></td><td><input type="radio" id="e3" name="echoice" value="#128514"><label for="e3">&#128514;</label></input></td></tr>
                        <tr><td><input type="radio" id="e4" name="echoice" value="#128515"><label for="e4">&#128515;</label></input></td><td><input type="radio" id="e5" name="echoice" value="#128516"><label for="e5">&#128516;</label></input></td><td><input type="radio" id="e6" name="echoice" value="#128517"><label for="e6">&#128517;</label></input></td></tr>
                        <tr><td><input type="radio" id="e7" name="echoice" value="#128518"><label for="e7">&#128518;</label></input></td><td><input type="radio" id="e8" name="echoice" value="#128519"><label for="e8">&#128519;</label></input></td><td><input type="radio" id="e9" name="echoice" value="#128520"><label for="e9">&#128520;</label></input></td></tr>
                    </table>
                </div>
        
            </div>

            <div id="indexRightColumn">
                <!-- Tab links -->
                <div class="tab">
                  <button class="tablinks" onclick="openTab(event, 'Element Picker')" id="open">Element Picker</button>
                  <button class="tablinks" onclick="openTab(event, 'HTML')">HTML</button>
                </div>
                <!-- Tab content -->
                <div id="Element Picker" class="tabcontent" style="background-color:#45586e; color:white">
                  <!-- <h3>Element Picker</h3> -->
                  <p>
                        <label for="heading1">Heading:</label>
                        <input type="text" id="heading1" name="heading1"><br><br>
                        <label for="element">Element 1:</label>
                        <select id="elements" name="elements" onchange="showDiv(this)">
                            <option value="" selected disabled hidden>Select Element</option>
                            <option value="paragraph" >Paragraph</option>
                            <option value="image">Image</option>
                            <option value="emoji">Emoji</option>
                        </select><br><br>
                        <label for="element2">Element 2:</label>
                        <select id="elements" name="elements" onchange="showDiv(this)">
                            <option value="" selected disabled hidden>Select Element</option>
                            <option value="paragraph" >Paragraph</option>
                            <option value="image">Image</option>
                            <option value="emoji">Emoji</option>
                        </select><br><br>
                        <label for="element3">Element 3:</label>
                        <select id="elements" name="elements" onchange="showDiv(this)">
                            <option value="" selected disabled hidden>Select Element</option>
                            <option value="paragraph" >Paragraph</option>
                            <option value="image">Image</option>
                            <option value="emoji">Emoji</option>
                        </select><br><br>
                        <button id="genbutton" onclick="changeTab()">Generate</button>
                      </p>
                </div>
                
                <div id="HTML" class="tabcontent" style="background-color:#353838; color:white; cursor:pointer; font-size:14px;">
                  <!-- <h3>HTML Code</h3> -->
                  <p style="color:greenyellow;">&lt; ! DOCTYPE html &gt;
                      <br> &lt;html&gt;
                  </p>
                  <p style="color:orange;">&lt;body&gt;</p>
                  <p id="gencode">...</p>
                  <p id="paragraphcode"></p
                  <p>&lt;img src=&quot;
                  <span id="imagecode"></span>
                  &quot; width=&quot;
                  <span id="uw"></span>&quot; height=&quot;<span id="uh"></span>
                  &quot;&gt;&lt;/img&gt;</p>
                  <p><code>&lt;</code>p&gt;<span id="emojicode"></span>&lt;/p&gt;</p
                  <p></p>
                  <p style="color:orange;">&lt;/body&gt;</p>
                  <p style="color:greenyellow;">&lt;/html&gt;</p> 
                </div>
            </div>
