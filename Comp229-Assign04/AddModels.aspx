<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddModels.aspx.cs" Inherits="Comp229_Assign04.AddModels" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div id="addNewModelDiv" runat="server">
        <table class="table breadcrumb" style="width: 95%" runat="server">
            <tr>
                <td class="rights">
                    <asp:Label runat="server" Text="Name" ID="lbAddName" />
                </td>
                <td>
                    <asp:TextBox ID="txtbxName" runat="server" TextMode="SingleLine" />
                    <asp:RequiredFieldValidator ID="rfvName" ControlToValidate="txtbxName" runat="server" Display="Static"
                        SetFocusOnError="true" ErrorMessage="Name is required" />
                </td>
            </tr>

            <tr>
                <td class="rights">
                    <asp:Label runat="server" Text="Faction" />
                </td>
                <td>
                    <asp:DropDownList ID="ddlFaction" runat="server">
                        <asp:ListItem Text="Please choose one" Value="" />
                        <asp:ListItem Text="Teknes" Value="Teknes" />
                        <asp:ListItem Text="Goritsi" Value="Goritsi" />
                        <asp:ListItem Text="Shael Han" Value="Shael Han" />
                        <asp:ListItem Text="Hadross" Value="Hadross" />
                        <asp:ListItem Text="Nasier" Value="Nasier" />
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="rights">
                    <asp:Label runat="server" Text="Rank" />
                </td>
                <td>
                    <asp:RadioButtonList runat="server" ID="rblRank" RepeatDirection="Horizontal" Width="200px">
                        <asp:ListItem Text=" One" Value="1" />
                        <asp:ListItem Text=" Two" Value="2" />
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="rights">
                    <asp:Label runat="server" Text="Base" />
                </td>
                <td>
                    <asp:TextBox ID="txtBase" Text="Base" TextMode="Number" runat="server" CssClass="form-control" />
                    <asp:RangeValidator ControlToValidate="txtBase" ID="RangeValidatorBase" runat="server" MinimumValue="3" MaximumValue="40" Display="Static"
                        SetFocusOnError="true" ForeColor="Red" ErrorMessage="Higher than 3 and lower than 40" />
                </td>
            </tr>
            <tr>
                <td class="rights">
                    <asp:Label runat="server" Text="Size" ID="lbAddSize" CssClass="ToTheLeft" />
                </td>
                <td>
                    <asp:TextBox ID="txtSize" TextMode="Number" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="rights">
                    <asp:Label runat="server" Text="Deployment" ID="lbAddDeployment" />
                </td>
                <td>
                    <asp:RadioButtonList runat="server" ID="rblDeploymentZone" RepeatDirection="Horizontal" Width="200px">
                        <asp:ListItem Text="A" Value="A" />
                        <asp:ListItem Text="B" Value="B" />
                        <asp:ListItem Text="C" Value="C" />
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="rights">
                    <asp:Label runat="server" Text="Mobility" ID="LabelMoblity" />
                </td>
                <td>
                    <asp:TextBox ID="txtMobility" TextMode="Number" runat="server" CssClass="form-control" />
                </td>
            </tr>


            <tr>
                <td>
                    <asp:Label runat="server" Text="Willpower" ID="LabelPower" />
                </td>
                <td>
                    <asp:TextBox ID="txtWillPower" TextMode="Number" runat="server" CssClass="form-control" />
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label runat="server" Text="Resilance" ID="LabelResilance" />
                </td>
                <td>
                    <asp:TextBox ID="txtResiliance" TextMode="Number" runat="server" CssClass="form-control" />
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label runat="server" Text="Wounds" ID="LabelWounds" />
                </td>
                <td>
                    <asp:TextBox ID="txtWounds" TextMode="Number" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="rights">
                    <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-primary btn-lg"
                        OnClick="btnSaveModel_Click" runat="server" />
                </td>
                <td class="btnHomeCancel">
                    <asp:Button Text="Cancel" ID="Button1" runat="server" CssClass="btn btn-warning btn-lg"
                        UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                </td>
            </tr>
        </table>



        <div id="sentEmailDiv" runat="server">
            <table id="sentEmailTable" class="tab breadcrumb">
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lbEmail" Text="Email" />
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtbxEmail" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lbSubject" Text="Subject" />
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtbxSubject" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lbMessage" Text="Message" />
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtbxMessage" TextMode="MultiLine" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </table>
        </div>
    </div>

</asp:Content>
