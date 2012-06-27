<!---
    |------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
	| Parameter     | Required | Type    | Default | Description                                                                                                                                           |
    |------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
	| table         | Yes      | string  |         | existing table name                                                                                                                                   |
	| columnName    | Yes      | string  |         | name for column to change                                                                                                                             |
	| columnType    | Yes      | string  |         | new type for column                                                                                                                                   |
	| referenceName | No       | string  |         | name for new reference column, see documentation for references function, required if columnType is 'reference'                                       |
	| default       | No       | string  |         | default value for column                                                                                                                              |
	| null          | No       | boolean |         | whether nulls are allowed                                                                                                                             |
	| limit         | No       | number  |         | character or integer size limit for column                                                                                                            |
	| precision     | No       | number  |         | precision value for decimal columns, i.e. number of digits the column can hold                                                                        |
	| scale         | No       | number  |         | scale value for decimal columns, i.e. number of digits that can be placed to the right of the decimal point (must be less than or equal to precision) |
	| addColumns    | No       | number  | false   | if true, attempts to add columns and database will likely throw an error if column already exists                                                     |
    |------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|

    EXAMPLE:
      changeColumn(table='members',columnType='string',columnName='status',limit=50);
--->
<cfcomponent extends="[extends]" hint="[description]">
  <cffunction name="up">
    <cfscript>
	    changeColumn(table='tableName', columnType='', columnName='columnName', default='', null=true);
    </cfscript>
  </cffunction>
  <cffunction name="down">
    <cfscript>
		changeColumn(table='tableName',columnName='columnName');
    </cfscript>
  </cffunction>
</cfcomponent>