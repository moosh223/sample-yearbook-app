<cfinclude  template="templates/header.cfm">
<div id="wrapper">
    <table>
        <form action="submit_action.cfm" method="post">
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Grade:</td>
                <td><input type="text" name="grade"></td>
            </tr>
            <tr>
                <td>Personalization:</td>
                <td><input id="chk" type="checkbox" autocomplete="off" name="personalize" value="Yes" onchange="ShowHideDiv(this)"></td>
            </tr>
            <tr id="p" onload="Test()" hidden>
                <td>Personalized Name:</td>
                <td><input type="Text" name="personalize_name" value=""></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><input type="Submit" value="Submit">&nbsp;<input type="Reset" value="Clear Form"></td>
            </tr>
        </form>
    </table>
</div>
<script type="text/javascript">
    function ShowHideDiv(chkPassport) {
        var dvPassport = document.getElementById("p");
        dvPassport.hidden = !chkPassport.checked;
    }
</script>
<cfinclude  template="templates/footer.cfm">