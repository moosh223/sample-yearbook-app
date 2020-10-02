<cfcomponent>
    <cffunction name="get" hint="Gets all customer from the database" returntype="query">
        <cfquery name="getCustomers">
            SELECT id, name, grade FROM public.yearbookorders
        </cfquery>
        <cfreturn getCustomers>
    </cffunction>
    <cffunction name="getOne" hint="Gets all customer from the database" returntype="query">
        <cfargument  name="id">
        <cfquery name="getCustomers">
            SELECT * FROM public.yearbookorders WHERE id = #id#
        </cfquery>
        <cfreturn getCustomers>
    </cffunction>
    <cffunction name="update" hint="Gets all order from the database" output="false" access="remote">
        <cfargument name="id">
        <cfdump  var="#Form#">
        <cfif not isdefined("Form.personalize")>
            <cfset Form.personalize = "No">
            <cfset Form.personalize_name = "">
        </cfif>
        <cfquery name="getOrders">
          UPDATE public.yearbookorders
          SET name = '#Form.name#', grade = '#Form.grade#', personalize = '#Form.personalize#', personalize_name = '#Form.personalize_name#'
          WHERE id = #id#
        </cfquery>
        <cflocation  url="../index.cfm">
    </cffunction>
    <cffunction name="delete" hint="Gets all order from the database" output="false" access="remote">
        <cfargument name="id">
        <cfquery name="getOrders">
          DELETE FROM public.yearbookorders
          WHERE id = #id#
        </cfquery>
    </cffunction>
</cfcomponent>
