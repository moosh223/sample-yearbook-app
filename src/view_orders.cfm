<cfinclude  template="templates/header.cfm">

<cfinvoke component="models.New" method="get" returnvariable="allCustomers" />
<div id="body">
<cfif allCustomers.RecordCount eq 0>
  <cfoutput><p>No Orders Yet!</p></cfoutput>
<cfelse>
  <table>
    <tr>
      <th>Name</th>
      <th>Grade</th>
    </tr>
    <cfoutput query="allCustomers">
        <tr>
        <td>#Name#</td>
        <td>#Grade#</td>
        <td><a href="edit.cfm?id=#id#"><input type="button" value="Edit"></a></td>
        <td><a href="delete.cfm?id=#id#"><input type="button" value="Delete"></a></td>
        </tr>
    </cfoutput>
  </table>
</cfif>
</div>
<cfinclude  template="templates/footer.cfm">