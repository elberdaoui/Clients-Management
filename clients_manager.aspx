<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clients_manager.aspx.cs" Inherits="Clients_Management.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/Content/tailwindcss.css" rel="stylesheet"/>
    <title>Clients Manager</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            


            <div class="align-middle rounded-tl-lg rounded-tr-lg inline-block w-full py-4 my-2 overflow-hidden bg-white shadow-lg px-12">
                    <div class="flex justify-between">
                        <%--<div class="inline-flex border rounded w-7/12 px-2 lg:px-6 h-12 bg-transparent">
                            <div class="flex flex-wrap items-stretch w-full h-full mb-6 relative">
                                <div class="flex">
                                    <span class="flex items-center leading-normal bg-transparent rounded rounded-r-none border border-r-0 border-none lg:px-3 py-2 whitespace-no-wrap text-grey-dark text-sm">
                                        <svg width="18" height="18" class="w-4 lg:w-auto" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M8.11086 15.2217C12.0381 15.2217 15.2217 12.0381 15.2217 8.11086C15.2217 4.18364 12.0381 1 8.11086 1C4.18364 1 1 4.18364 1 8.11086C1 12.0381 4.18364 15.2217 8.11086 15.2217Z" stroke="#455A64" stroke-linecap="round" stroke-linejoin="round" />
                                            <path d="M16.9993 16.9993L13.1328 13.1328" stroke="#455A64" stroke-linecap="round" stroke-linejoin="round" />
                                        </svg>
                                    </span>
                                </div>
                                <input type="text" class="flex-shrink flex-grow flex-auto leading-normal tracking-wide w-px flex-1 border border-none border-l-0 rounded rounded-l-none px-3 relative focus:outline-none text-xxs lg:text-xs lg:text-base text-gray-500 font-thin" placeholder="Search" />
                            </div>
                        </div>--%>
                        <%--<button class="px-5 py-2 border-blue-500 border text-blue-500 rounded transition duration-300 hover:bg-blue-700 hover:text-white focus:outline-none">Add Client</button>--%>
                        <%--<asp:Button ID="btn_Add" class="px-5 py-2 border-blue-500 border text-blue-500 rounded transition duration-300 hover:bg-blue-700 hover:text-white focus:outline-none" runat="server" Text="Add Client" data-toggle="modal" data-target="#exampleModalTwo" OnClick="btn_Add_Click" />--%>

                           <!-- Button trigger modal -->
                            <%--<button type="button" class="px-5 py-2 border-blue-500 border text-blue-500 rounded transition duration-300 hover:bg-blue-700 hover:text-white focus:outline-none" data-toggle="modal" data-target="#addClient">
                              Add Client
                            </button>--%>

                            
                





            <%--<div class="">

                        <div class="mb-4">

                            <label for="idInput" class="block text-gray-700 text-sm font-bold mb-2">ID:</label>

                            <input type="text" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="idInput" placeholder="Enter ID" value="@Request.Form["idInput"]" name="idInput" />                           

                        </div>

                        <div class="mb-4">

                            <label for="fnInput" class="block text-gray-700 text-sm font-bold mb-2">First Name:</label>

                            <input type="text" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="fnInput" placeholder="Enter First Name" value="@Request.Form["fnInput"]" name="fnInput" />                           

                        </div>

                        <div class="mb-4">

                            <label for="lnInput" class="block text-gray-700 text-sm font-bold mb-2">Last Name:</label>

                            <input type="text" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="lnInput" placeholder="Enter Last Name" value="@Request.Form["lnInput"]" name="lnInput" />

                            

                        </div>

                        <div class="mb-4">

                            <label for="addressInput" class="block text-gray-700 text-sm font-bold mb-2">Address:</label>

                            <input type="text" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="addressInput" placeholder="Enter Address" value="@Request.Form["addressInput"]" name="addressInput" />

                            

                        </div>

                        <div class="mb-4">

                            <label for="cityInput" class="block text-gray-700 text-sm font-bold mb-2">City:</label>

                            <input type="text" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="cityInput" placeholder="Enter City" value="@Request.Form["cityInput"]" name="cityInput" />

                                                                                   

                        </div>

                        
                    </div>--%>

            <table class="min-w-full divide-y divide-gray-200">
            <tr>
                <td class="auto-style3">Client ID</td>
                <td>
                    <asp:TextBox ID="txtID" cssclass="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Client firstName</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtName" cssclass="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Client lastName</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtlName" cssclass="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Client adresse</td>
                <td>
                    <asp:TextBox ID="txtAdresse" cssclass="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Client city</td>
                <td>
                   <asp:TextBox ID="txtcity" cssclass="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btn_Add" class="px-5 py-2 border-blue-500 border text-blue-500 rounded transition duration-300 hover:bg-blue-700 hover:text-white focus:outline-none" runat="server" Text="Add Client" data-toggle="modal" data-target="#exampleModalTwo" OnClick="btn_Add_Click" />
                    <asp:Button ID="btn_Update" class="px-5 py-2 mx-2 border-blue-500 border text-blue-500 rounded transition duration-300 hover:bg-yellow-500 hover:text-white focus:outline-none" runat="server" Text="Update" OnClick="btn_Update_Click" />
                    <asp:Button ID="btn_Delete" class="px-5 py-2 border-blue-500 border text-blue-500 rounded transition duration-300 hover:bg-red-700 hover:text-white focus:outline-none" runat="server" Text="Delete" OnClick="btn_Delete_Click" />
                    <asp:Button ID="btn_Search" class="px-5 py-2 border-blue-500 border text-blue-500 rounded transition duration-300 hover:bg-green-500 hover:text-white focus:outline-none" runat="server" Text="Search/All" OnClick="btn_Search_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

                </div>
                </div>
            



            


            <asp:GridView ID="GridView1" HorizontalAlign="Center" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" DataKeyNames="id" Width="662px">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

            </asp:GridView>
            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:clientConnectionString %>" SelectCommand="SELECT * FROM [clients]"></asp:SqlDataSource>--%>
            <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" HorizontalAlign="Center" GridLines="Vertical" Width="716px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" HorizontalAlign="Center"/>
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
