<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThongTinCaNhan.aspx.cs" Inherits="ThongTinCaNhan.ThongTinCaNhan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            width: 229px;
        }
        .auto-style2 {
            text-align: center;
            width: 63px;
        }
        .auto-style3 {
            text-align: center;
            width: 63px;
            height: 28px;
        }
        .auto-style4 {
            height: 28px;
        }
        .form-check {}
        .form-control {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
            <table align="center" cellpadding="4" cellspacing="0" class="w-100">
                <tr>
                    <td colspan="2" class="text-center h3 alert alert-info">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ĐĂNG KÝ THÔNG TIN</td>
                </tr>
                <tr>
                    <td class="auto-style2">Họ tên:</td>
                    <td>
                        <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-select" Width="151px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Ngày sinh:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtNgaySinh" runat="server" TextMode="Date" CssClass="form-select" Width="153px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Giới tính:</td>
                    <td class="auto-style4">
                        <asp:RadioButton ID="rdNam" runat="server" Text="Nam"  CssClass="form-check-inline" Checked="true" GroupName="GT" />
                        <asp:RadioButton ID="rdNu" runat="server" Text="Nữ" CssClass="form-check-inline" GroupName="GT" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Trình độ:</td>
                    <td>
                        <asp:DropDownList ID="ddlTrinhDo" runat="server" Width="144px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Nghề nghiệp:</td>
                    <td>
                        <asp:ListBox ID="listNgheNghiep" runat="server" Width="155px" Height="92px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Hình:</td>
                    <td>
                        <asp:FileUpload ID="FHinh" runat="server" Height="74px" Width="101px"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Sở thích:</td>
                    <td>
                        <asp:CheckBoxList ID="cklSoThich" runat="server" CssClass="form-check">
                           
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2">
                        <asp:Button ID="btGui" runat="server" Text="Gửi" CssClass="btn btn-primary"/>
                        <asp:Button ID="btNhapLai" runat="server" Text="Nhập lại" CssClass="btn btn-primary" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="text-center h3 alert alert-info"> KẾT QUẢ ĐĂNG KÝ</td>
                </tr>
                 <tr>
                    <td colspan="2" class="auto-style1">
                        <asp:Label ID="lbKetQua" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
           
        </div>
    </form>
</body>
</html>
