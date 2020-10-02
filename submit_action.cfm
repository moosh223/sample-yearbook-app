<!--- If the Contractor check box is clear,
set the value of the Form.Contract to "No" --->
<cfif not isdefined("Form.personalize")>
    <cfset Form.personalize = "No">
</cfif>
    
<!--- Insert the new record --->
<cfinsert tablename="yearbookorders">
<div id="wrapper">
<h1>Employee Added</h1>
<cfoutput> 
    Your order has been placed for #form.name#.
</cfoutput>
</div>
<cflocation  url="index.cfm">