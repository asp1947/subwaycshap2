<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" aria-orientation="vertical">
        
        <hr />
        <asp:Label ID="Label1" runat="server" Text="출발역: "></asp:Label>
        <asp:TextBox ID="TextBox1" placeholder="역명을 입력해 주세요" runat="server" Text=""></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="조회" OnClick="Button1_click"/>
        <br />
        
        <br />
        
        <div style="height:300px; width:1000px; overflow:scroll">
        <asp:ListView ID="ListView1" runat="server" ItemPlaceholderID="phItemList" DataSourceID="">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF;color: #284775;">
                    <td>
                        <asp:Label ID="subwayIDLabel" runat="server" Text='<%# Eval("subwayID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="updnLineLabel" runat="server" Text='<%# Eval("updnLine") %>' />
                    </td>
                    <td>
                        <asp:Label ID="trainlinenmLabel" runat="server" Text='<%# Eval("trainlinenm") %>' />
                    </td>
                    <td>
                        <asp:Label ID="arvlMsg2Label" runat="server" Text='<%# Eval("arvlMsg2") %>' />
                    </td>
                    <td>
                        <asp:Label ID="btrainSttusLabel" runat="server" Text='<%# Eval("btrainSttus") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                    <th runat="server">열차호선</th>
                                    <th runat="server">상하행선</th>
                                    <th runat="server">방면역</th>
                                    <th runat="server">열차위치</th>
                                    <th runat="server">운행종류</th>
                    </tr>
                    <tr>
                        <td>데이터가 반환되지 않았습니다.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF;color: #333333;">
                    <td>
                        <asp:Label ID="subwayIDLabel" runat="server" Text='<%# Eval("subwayID") %>' />
                    <td>
                        <asp:Label ID="updnLineLabel" runat="server" Text='<%# Eval("updnLine") %>' />
                    </td>
                    <td>
                        <asp:Label ID="trainlinenmLabel" runat="server" Text='<%# Eval("trainlinenm") %>' />
                    </td>
                    <td>
                        <asp:Label ID="arvlMsg2Label" runat="server" Text='<%# Eval("arvlMsg2") %>' />
                    </td>
                    <td>
                        <asp:Label ID="btrainSttusLabel" runat="server" Text='<%# Eval("btrainSttus") %>' />
                    </td>
                </tr>
               
            </ItemTemplate>
            <LayoutTemplate>

                <table runat="server">

                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="width:100%; background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                    <th runat="server">열차호선</th>
                                    <th runat="server">상하행선</th>
                                    <th runat="server">방면역</th>
                                    <th runat="server">열차위치</th>
                                    <th runat="server">운행종류</th>
                                </tr>
                                <tr id="phItemList" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <tr runat="server">

                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                        </td>

                    </tr>

                </table>

            </LayoutTemplate>
            
        </asp:ListView>
           
        </div>
        
    </div>

    <div class="row">
     
    </div>

</asp:Content>
