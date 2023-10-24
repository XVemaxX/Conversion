<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Conversion Web.aspx.cs" Inherits="Conversion_Web" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Conversion</title>
</head>
<body>
    <style>
        .MHPTOKPH {
            align-content: center;
            justify-content: center;
        }
    </style>
    <form id="form1" runat="server">
        <div class="MHPTOKPH">
            <h2 style="text-align: center;">Speed Converter</h2>
            <p>Type a value in the MPH field to convert the value to KPH:</p>
            <p>
                <label>MPH</label>
                <input id="inputMPH" type="number" placeholder="MPH"
                    oninput="speedConverter(this.value)"
                    onchange="speedConverter(this.value)">
            </p>
            <p>KPH: <span id="outputKPH"></span></p>
        </div>
        <script>
            function speedConverter(valNum) {
                valNum = parseFloat(valNum);
                document.getElementById("outputKPH").innerHTML = valNum * 1.609344;
            }
        </script>
    </form>
        <br />
        <br />
        <br />
    <form id="form2">
        <div class="MHPTOKNOTS">
            <p>Type a value in the Knots field to convert the value to MPH:</p>

            <p>
                <label>Knots</label>
                <input id="inputKnots" type="number" placeholder="Knots" oninput="speedConverter(this.value)" onchange="speedConverter(this.value)">
            </p>
            <p>MPH: <span id="outputMPH"></span></p>
        </div>
        <script>
            function speedConverter(valNum) {
                document.getElementById("outputMPH").innerHTML = valNum * 1.150779;
            }
        </script>
    </form>
</body>
</html>
