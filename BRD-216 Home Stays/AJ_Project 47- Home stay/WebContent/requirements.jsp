<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Requirements</title>
</head>

<style>
body{
  background-image:url("home.jpg");
background-repeat:no-repeat;
background-size: 1400px 700px
	
  }
.City

{ 
  color:midnightblue;
  font-size:20px;
  width:300px;
  padding:5px;  
}

.Area
{

  color:midnightblue;
  font-size:20px;
  width:300px;
  padding:10px;
  padding-left:50px;


}

.AC

{ 

  color:midnightblue;
  font-size:20px;
  width:300px;
  padding:5px;

}

.Persons
{ 

   color:midnightblue;
   font-size:20px;
   width:300px;
   padding:10px;
   padding-left:50px;


}

.Room

{
   color:midnightblue;
   font-size:20px;
   width:100px;
   padding:10px;
  
}

.Duration

{    color:midnightblue;
     font-size:20px;
     width:300px;
     padding:15px;
    

}

.Date

{ 
   color:midnightblue;
  font-size:20px;
  width:300px;
  padding:15px;
padding-left:50px;


}

.select1
{
border:3px solid #456879;
	border-radius:15px;
	height: 22px;
	width: 230px;
}
.select2
{
border:3px solid #456879;
	border-radius:15px;
	height: 22px;
	width: 230px;
}

.select3
{
border:3px solid #456879;
	border-radius:15px;
	height: 22px;
	width: 230px;
}

.text1
{
border:3px solid #456879;
	border-radius:15px;
	height: 22px;
	width: 230px;
}

.text2
{
border:3px solid #456879;
	border-radius:15px;
	height: 22px;
	width: 230px;
}

.Rb
{
	display: flex;
	flex-direction: column;	
	background: var(--white);
	width: 300px;
	padding: 20px 25px;
	border-radius: 20px;
	box-shadow: 0 19px 38px rgba(0, 0, 0, 0.13);
}




.di
{
	background : linear-gradient(#c5c5ae52,#d1d4bb);
  margin-right:200px;
margin-left : 200px;
  border-radius:9%;
	width : 70%; 
padding : 20px;
}


</style>
<body>

<br><br><br><br><br>
<h1 style= "font-style : oblique;"><center>Fill Your Requirements</center></h1>

    <form action="stays.jsp"  name = "requirements"><br><br>
      <center>
      <div class="di">
      <table>
       
           <tr>
          <td class ="City"><b>City</b><span style="color:red">*</span></td>
          <td><select class="select1" name="city">
            <option value ="Pune" >Pune</option>
            <option value = "Bhopal" >Bhopal</option>
          </td>
          
          <br>
          <td class="Area"><b>Area</b><span style="color:red">*</span></td>
          <td>
          <input type = "text" class="text1" name="area" required>
          </td>
          </tr>

           <td class="Duration" name="duration"><b>Duration</b><span style="color:red">*</span></td>
          <td>
                <select class="select3">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                </select>
          </td>

          
          
          <td class="Persons"><b>No. of Persons</b><span style="color:red">*</span></td>
          <td>
            <input type="text" name="persons" size="2" class="text2" required>
          </td>
         </tr>
          <tr>
              <td class="Room"><b>Type of Rooms</b></td>
          <td>
            <select class="select2">
              <option value="Private Room" >Private Room</option>
              <option value="Shared Room" >Shared Room</option>
              <option value="Entire room" >Entire Room</option>
            </select>
           </td>
           
            <td class="Date"><b>Starting Date</b><span style="color:red">*</span></td>
          <td>
             
              <select class="select4" required>
              <option value="Day">Day</option>
              <option values="1">1</option>
              <option values="2">2</option>
              <option values="3">3</option>
              <option values="4">4</option>
              <option values="5">5</option>
              <option values="6">6</option>
              <option values="7">7</option>
              <option values="8">8</option>
              <option values="9">9</option>
              <option values="10">10</option>
              <option values="11">11</option>
              <option values="12">12</option>
              <option values="13">13</option>
              <option values="14">14</option>
              <option values="15">15</option>
              <option values="16">16</option>
              <option values="17">17</option>
              <option values="18">18</option>
              <option values="19">19</option>
              <option values="20">20</option>
              <option values="21">21</option>
              <option values="22">22</option>
              <option values="23">23</option>
              <option values="24">24</option>
              <option values="25">25</option>
              <option values="26">26</option>
              <option values="27">27</option>
              <option values="28">28</option>
              <option values="29">29</option>
              <option values="30">30</option>
              <option values="31">31</option>
              </select>
              <select>	
              <option value="Month">Month</option>
              <option value="January">January</option>
              <option value="February">February</option>
              <option value="March">March</option>
              <option value="April">April</option>
              <option value="May">May</option>
              <option value="June">June</option>
              <option value="July">July</option>
              <option value="August">August</option>
              <option value="september">September</option>
              <option value="October">October</option>
              <option value="November">November</option>
              <option value="December">December</option>
              </select>
              <select>
              <option value="Year">Year</option>
              <option value="2019">2019</option>
              <option value="2020">2020</option>
              <option value="2021">2021</option>
              <option value="2022">2022</option>
            </select>
          </td>
         
        </tr>
        
        <tr>
          <tr>
          <td class="AC"><b>AC/Non-AC</b></td>
           <td>
		
          <input type = "radio" name="Room" value = "AC" checked>AC
          <input type="radio" name = "Room" value="NON-AC" >Non-AC 
          </td>
        </tr>
        
      </table>
        </div>
        <button type = "submit" form = "requirements" value = "Submit"> Submit</button>
</center>
    </form>

</body>
</html>