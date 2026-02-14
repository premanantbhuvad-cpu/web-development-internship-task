<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="Default.aspx.cs"
    Inherits="WebApplication20._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron text-center">
        <h1>Welcome</h1>
        <p>Simple Login Authentication System using ASP.NET Web Forms</p>

        <br />

        <!-- LOGIN BUTTON -->
        <button type="button"
                class="btn btn-primary btn-lg"
                data-toggle="modal"
                data-target="#loginModal">
            Login / Register
        </button>
    </div>

    <!-- MODAL -->
    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <!-- HEADER -->
                <div class="modal-header">
                    <button type="button" class="close"
                            data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Login / Register</h4>
                </div>

                <!-- BODY -->
                <div class="modal-body">

                    <!-- LOGIN SECTION -->
                    <h4>Login</h4>

                    <div class="form-group">
                        <label>Username</label>
                        <asp:TextBox ID="txtLoginUser"
                            runat="server"
                            CssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>Password</label>
                        <asp:TextBox ID="txtLoginPass"
                            runat="server"
                            TextMode="Password"
                            CssClass="form-control" />
                    </div>

                    <asp:Button ID="btnLogin"
                        runat="server"
                        Text="Login"
                        CssClass="btn btn-success btn-block" 
                        OnClick="btnLogin_Click"/>

                    <hr />

                    <!-- REGISTER SECTION -->
                    <h4>Register</h4>

                    <div class="form-group">
                        <label>Username</label>
                        <asp:TextBox ID="txtRegUser"
                            runat="server"
                            CssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>Password</label>
                        <asp:TextBox ID="txtRegPass"
                            runat="server"
                            TextMode="Password"
                            CssClass="form-control" />
                    </div>

                    <asp:Button ID="btnRegister"
                        runat="server"
                        Text="Register"
                        CssClass="btn btn-primary btn-block" 
                         OnClick="btnRegister_Click"/>

                </div>

            </div>
        </div>
    </div>

</asp:Content>
