import org.jfaster.mango.annotation.DB;
import org.jfaster.mango.annotation.SQL;

@DB(
        table = "${tableName}"
)
public interface ${className}Dao {

    <#assign BASE_COLUMNS = ""/>
    <#assign VALUES_COLUMNS = ""/>
    <#list fieldList as o>
         <#assign BASE_COLUMNS = BASE_COLUMNS + ", " + o.columnName/>
         <#assign VALUES_COLUMNS = VALUES_COLUMNS + ":" + o.fieldName + ", "/>
    </#list>
    String BASE_COLUMNS = "${BASE_COLUMNS?substring(1,BASE_COLUMNS?length)}";
    String VALUES_COLUMNS = "${VALUES_COLUMNS?substring(0,VALUES_COLUMNS?length-2)}";

    @SQL("insert into #table(" + BASE_COLUMNS + ") values(" + VALUES_COLUMNS + ")")
    boolean insert(${className} object);

    @SQL(
        "insert into #table ( "
    <#list fieldList as o>
        <#if  o_index == fieldList?size - 1 >
        + " #if(:${o.fieldName} != null) ${o.columnName} #end "
        <#else>
        + " #if(:${o.fieldName} != null) ${o.columnName}, #end "
        </#if>
    </#list>
        + " ) values( "
    <#list fieldList as o>
        <#if o_index == fieldList?size - 1 >
        + " #if(:${o.fieldName} != null) :${o.fieldName} #end )"
        <#else>
        + " #if(:${o.fieldName} != null) :${o.fieldName}, #end "
        </#if>
    </#list>
    )
    boolean insertSelective(${className} object);

    @SQL("select " + BASE_COLUMNS + " from #table where ${pk} = :1")
    ${className} selectByPrimaryKey(${pkFieldType} ${pkFieldName});

    @SQL(
        "update #table set "
    <#list fieldList as o>
    <#if  o.columnName != pk >
        <#if  o_index == fieldList?size - 1 >
        + " ${o.columnName} = :${o.fieldName} "
        <#else>
        + " ${o.columnName} = :${o.fieldName}, "
        </#if>
    </#if>
    </#list>
        + " where ${pk} = :${pkFieldName}"
    )
    boolean updateByPrimaryKey(${className} object);

    @SQL(
        "update #table set "
    <#list fieldList as o>
    <#if  o.columnName != pk >
        <#if  o_index == fieldList?size - 1 >
        + " #if(:${o.fieldName} != null) ${o.columnName} = :${o.fieldName}  #end "
        <#else>
        + " #if(:${o.fieldName} != null) ${o.columnName} = :${o.fieldName}, #end "
        </#if>
    </#if>
    </#list>
        + " where ${pk} = :${pkFieldName}"
    )
    boolean updateByPrimaryKeySelective(${className} object);

    @SQL("delete from #table where ${pk} = :1")
    boolean deletesByPrimaryKey(${pkFieldType} ${pkFieldName});
}