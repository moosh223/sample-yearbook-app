<cfinclude  template="templates/header.cfm">
<cfinvoke component="models.new" method="getOne" returnvariable="allCustomers">
    <cfinvokeargument  name="id"  value=#url.id#>
</cfinvoke>
<div id="wrapper">
<table>
    <!--- begin html form;
    put action page in the "action" attribute of the form tag. --->
    <form action="models/New.cfc" method="post">
        <input type="Hidden" name="method" value="update">
        <input type="Hidden" name="id" value="<cfoutput>#allCustomers.id#</cfoutput>">
    <tr>
    <td>Name:</td>
    <td><input type="text" name="name" value=<cfoutput>"#allCustomers.name#"</cfoutput>></td>
    </tr>
    <tr>
    <td>Email:</td>
    <td><input type="Text" name="grade" value=<cfoutput>"#allCustomers.grade#"</cfoutput>></td>
    </tr>
    <tr>
    <td>Personalize:</td>
    <td><input id="test" type="checkbox" name="personalize" onclick="ShowHideDiv(this)" value="Yes"></td>
    </tr>
    <tr id="test2">
    <td>Address:</td>
    <td><input type="Text" name="personalize_name" value=<cfoutput>"#allCustomers.personalize_name#"</cfoutput>></td>
    </tr>
    <tr>
    <td>&nbsp;</td>
    <td><input type="Submit" value="Submit">&nbsp;<input type="Reset" value="Clear Form"></td>
    </tr>
    </form>
    <!--- end html form --->
    </table>
</div>
    
    <script>
        <cfif allCustomers.personalize neq 0>
            document.getElementById("test").checked = true
            document.getElementById("test2").hidden = false
        <cfelse>
            document.getElementById("test").checked = false
            document.getElementById("test2").hidden = true
        </cfif>

        function ShowHideDiv(chkPassport) {
            var dvPassport = document.getElementById("test2");
            dvPassport.hidden = !chkPassport.checked;
        }
    </script>
<cfinclude  template="templates/footer.cfm">