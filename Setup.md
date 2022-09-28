College Manager - Configuration<br/>
<br/>
To run the project,  start with installing Visual Studio.<br/>
<br/>
When starting the IDE, you’ll be able to see a screen like this:<br/>
![image](https://user-images.githubusercontent.com/79454375/192875475-e1398975-26d3-44ed-9626-2a75ef75f90d.png)
<br/>
Select the option Clone a repository<br/>
<br/>
Input the repository location: https://github.com/Trxuxv/CollegeManager.git<br/>
<br/>

Like this: 
<br/>
![image](https://user-images.githubusercontent.com/79454375/192875626-fa831999-221d-44f5-8818-1382ad5150b2.png)
<br/>

In the Solution, right-click on the project, select Manage NuGet Packages…<br/>
<br/>

Search for: Microsoft.CodeDom.Providers.DotNetCompilerPlatform 
![image](https://user-images.githubusercontent.com/79454375/192875673-cfcad80c-d874-4ded-ba36-83d22849738e.png) <br/>
<br/>

Update it.
![image](https://user-images.githubusercontent.com/79454375/192875727-aa119cfb-fa5b-4de3-9a3e-d3bed857eeb7.png)<br/>

<br/>
Now run the code: <br/>
![image](https://user-images.githubusercontent.com/79454375/192875836-429d0d98-baa7-4f4f-91ad-80d32c7231b3.png)<br/>
<br/>


You’ll be able to see this:<br/>
![image](https://user-images.githubusercontent.com/79454375/192875935-5f3df6f1-948b-4570-90eb-9dbb3f6204cd.png)<br/>
<br/>
To use the System now, you have to configure the Database to start. <br/>

First:<br/>
 Go to your solution hub, select the option: Connected Services.<br/>
 ![image](https://user-images.githubusercontent.com/79454375/192876846-c70b28f0-bba3-4a2d-bdaf-1fd08d9e0ecb.png)<br/>

<br/>
Select SQL Server Database > Connect > ‘SQL Server Express LocalDB(Local)’ <br/>
<br/>
Input the ConnectionString name: ConnectionStrings<br/>
![image](https://user-images.githubusercontent.com/79454375/192877427-3b1a8fbf-126c-4401-a065-e3f222344553.png)<br/>

<br/>
Now do next > finish<br/>
![image](https://user-images.githubusercontent.com/79454375/192877475-2d0b4532-de19-47e4-af46-c84d75f8669f.png)<br/>
<br/>
It must be like this:<br/>
![image](https://user-images.githubusercontent.com/79454375/192877513-9ea5e580-e397-4d47-8e17-6947b6ba3bc0.png)<br/>
<br/>
Still in the project, delete the folder App_Data with the ‘mdf’ item<br/>
![image](https://user-images.githubusercontent.com/79454375/192877555-106939ab-bd49-4401-9673-f675f2027a80.png)<br/>

<br/>
Select OK.<br/>
![image](https://user-images.githubusercontent.com/79454375/192877604-8e365388-2ba0-4a50-920e-6720d27ffc9a.png)<br/>
<br/>

Now right-click on the project, Add > New Item<br/>
![image](https://user-images.githubusercontent.com/79454375/192877698-78b19deb-4b72-4c67-bbb1-e91c2d17cd79.png)<br/>
Your Visual Studio must have the Data Storage and processing SQL Server Data Tools.<br/>
 
<br/>
In the Add New Item window, search for SQL Server Database.<br/>
![image](https://user-images.githubusercontent.com/79454375/192877727-30d074d4-27a8-4986-9bda-225351308f2d.png)<br/>

Rename the Database1.mdf to Database.mdf<br/>
![image](https://user-images.githubusercontent.com/79454375/192877766-2af5487b-fb51-43d4-92d4-13a804e4a3c4.png)<br/>
Now Add.<br/>

<br/>
Select YES.<br/>
![image](https://user-images.githubusercontent.com/79454375/192877807-f84e17b4-5936-43c5-9109-83a9e04b97d0.png)<br/>
<br/>

You must see this:<br/>
![image](https://user-images.githubusercontent.com/79454375/192877894-1ff62d93-b61d-4f38-afea-5ca04267e79a.png)<br/>
<br/>
Double click on the Database.<br/>
<br/>
You’ll see this:<br/>
![image](https://user-images.githubusercontent.com/79454375/192877946-c9161e26-ab5e-4b40-b964-188af4688104.png)<br/>
<br/>
Now right-click on the Database(CollegeManager) > New Query<br/>
![image](https://user-images.githubusercontent.com/79454375/192877992-c0ef09ef-1168-427a-ad6e-0bd9b2bcf5fc.png)<br/>
<br/>

Back to Solution, select the option Show All Files <br/>
<br/>
You’ll be able to see the file Script.sql<br/>
![image](https://user-images.githubusercontent.com/79454375/192878599-25ef5caf-e706-4e83-a4c5-bcb96743a935.png)<br/>

<br/>
Copy the entire query:<br/>
![image](https://user-images.githubusercontent.com/79454375/192878801-98726d96-1c9e-4896-aef8-a422fd238ac5.png)<br/>
<br/>
Now past it in the SQLQuery1.sql > Run the script ![image](https://user-images.githubusercontent.com/79454375/192878883-3d30060b-d160-4f3a-b631-99b7ee0e334d.png)<br/>
<br/>
You must see this <br/>
![image](https://user-images.githubusercontent.com/79454375/192879333-6ed09b0a-77e8-4110-8c80-904390fe6bd2.png)<br/>

<br/>
And its finished. <br/>

The system is ready to use.

======================================================================================================================================================
Best Regards,
Débora Ferreira@2022
