<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sutalmasayfasi.aspx.cs" Inherits="nypsutcuprojesi.sutalmasayfasi" %>


<!DOCTYPE html>
<html lang="tr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Doğal Günlük Taze Süt</title>

<style id="" media="all">/* cyrillic */
@font-face {
  font-family: 'Playfair Display';
  font-style: normal;
  font-weight: 900;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/playfairdisplay/v30/nuFvD-vYSZviVYUb_rj3ij__anPXJzDwcbmjWBN2PKfsunDTbtPY_Q.woff2) format('woff2');
  unicode-range: U+0301, U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* vietnamese */
@font-face {
  font-family: 'Playfair Display';
  font-style: normal;
  font-weight: 900;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/playfairdisplay/v30/nuFvD-vYSZviVYUb_rj3ij__anPXJzDwcbmjWBN2PKfsunDYbtPY_Q.woff2) format('woff2');
  unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+1EA0-1EF9, U+20AB;
}
/* latin-ext */
@font-face {
  font-family: 'Playfair Display';
  font-style: normal;
  font-weight: 900;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/playfairdisplay/v30/nuFvD-vYSZviVYUb_rj3ij__anPXJzDwcbmjWBN2PKfsunDZbtPY_Q.woff2) format('woff2');
  unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Playfair Display';
  font-style: normal;
  font-weight: 900;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/playfairdisplay/v30/nuFvD-vYSZviVYUb_rj3ij__anPXJzDwcbmjWBN2PKfsunDXbtM.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
</style>
<style id="" media="all">/* cyrillic-ext */
@font-face {
  font-family: 'Alice';
  font-style: normal;
  font-weight: 400;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/alice/v20/OpNCnoEEmtHa6GcDrg7shw.woff2) format('woff2');
  unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
/* cyrillic */
@font-face {
  font-family: 'Alice';
  font-style: normal;
  font-weight: 400;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/alice/v20/OpNCnoEEmtHa6GcKrg7shw.woff2) format('woff2');
  unicode-range: U+0301, U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* latin-ext */
@font-face {
  font-family: 'Alice';
  font-style: normal;
  font-weight: 400;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/alice/v20/OpNCnoEEmtHa6GcArg7shw.woff2) format('woff2');
  unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Alice';
  font-style: normal;
  font-weight: 400;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/alice/v20/OpNCnoEEmtHa6GcOrg4.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
</style>

<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

<link type="text/css" rel="stylesheet" href="css/style.css" />

<meta name="robots" content="noindex, follow">
</head>
<body>
<div id="booking" class="section">
<div class="section-center">
<div class="container">
<div class="row">
<div class="booking-form">
<div class="booking-bg">
<div class="form-header">
<h2>En Taze Sütleri Satın Al</h2>
<p>Günlük taze sütleri şimdi satın al, istediğin tarihte kapına gelsin.</p>
</div>
</div>
<form runat="server">
<div class="row">
<div class="col-md-6">
<div class="form-group">
<span class="form-label">Tarih</span>
	<asp:TextBox ID="tarihtxt" CssClass="form-control" TextMode="Date" runat="server" required></asp:TextBox>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<span class="form-label">Telefon Numarası</span>
	<asp:TextBox ID="telefontxt" CssClass="form-control" TextMode="Phone" runat="server" placeholder="Telefon Numarası" required></asp:TextBox>
</div>
</div>
</div>
<div class="row">
<div class="col-md-6">
<div class="form-group">
<span class="form-label">Ürün Tipi</span>
	<asp:DropDownList ID="uruntipiddl" CssClass="form-control" runat="server" required >
        <asp:ListItem Text="Ürün seçiniz." Selected="True" Value="bos"/>
	</asp:DropDownList>
<span class="select-arrow"></span>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<span class="form-label">Ürün Adeti</span>
	<asp:DropDownList ID="urunadediddl" CssClass="form-control" runat="server" required >
        <asp:ListItem Text="0" Selected="True" Value="0"/>
        <asp:ListItem Text="1"  Value="1"/>
        <asp:ListItem Text="2"  Value="2"/>
        <asp:ListItem Text="3"  Value="3"/>
        <asp:ListItem Text="4"  Value="4"/>
        <asp:ListItem Text="5"  Value="5"/>
	</asp:DropDownList>
<span class="select-arrow"></span>
</div>
</div>
</div>
<div class="form-group">
<span class="form-label">Adresiniz</span>
	<asp:TextBox ID="adrestxt" CssClass="form-control" placeholder="Adresiniz" runat="server" required></asp:TextBox>
</div>
	<asp:Button ID="satinalbtn" CssClass="submit-btn" OnClick="satinalbtn_Click" runat="server" Text="Satın Al" />
	<asp:Label ID="almabilgisi" runat="server" Text=""></asp:Label>
</form>
</div>
</div>
</div>
</div>
</div>
</body>
</html>