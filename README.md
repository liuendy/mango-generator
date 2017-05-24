# mango-generator
### 简介

jfaster mango官方网站：

本项目是jfaster mango分库分表中间件代码生成器.
此工具可以方便的生成mango需要的数据对象(DO)和数据访问层对象(DAO)



### 环境依赖
1. jdk1.7(推荐)，1.6未测试

### jar包依赖
1. freemarker2.3.x
2. mysql驱动包

### 使用方式
1. 下载mango-gererator-1.0.jar、freemarker 、mysql
2. 下载后的jar放入工程的classpath下
3. 运行如下代码：
```java
public class AppTest {
    public static void main(String[] args) {
        MangoGenerator mg = new MangoGenerator(
                "jdbc:mysql://localhost:3306/jsponge", //数据库连接
                "root", //数据库用户名
                "root",//数据库密码
                "jsponge",//数据库库名
                "",//要生成的表名，不写则生成整个数据库，写了则只生成单个表
                "/Users/xiaojianyu/Downloads/");//生成的DO和DAO文件位置
        mg.generator();
    }
}

```
4. 生成文件预览结果

ServerGatherRecord.java

```java
import java.io.Serializable;
import java.util.*;
import java.math.BigDecimal;

/**
* 对应数据库表名: server_gather_record
*/
public class ServerGatherRecord implements Serializable{

    /**
    * 数据库字段: id
    * 字段描述: 
    */
    private Long id;

    /**
    * 数据库字段: server_id
    * 字段描述: 服务器id
    */
    private Long serverId;

    /**
    * 数据库字段: gather_type
    * 字段描述: 采集类型，1-内存；2-cpu；3-磁盘
    */
    private Integer gatherType;

    /**
    * 数据库字段: gather_time
    * 字段描述: 采集时间
    */
    private Date gatherTime;

    /**
    * 数据库字段: total
    * 字段描述: 总量
    */
    private Long total;

    /**
    * 数据库字段: free
    * 字段描述: 空闲的
    */
    private Long free;

    /**
    * 数据库字段: used
    * 字段描述: 已使用的
    */
    private Long used;

    /**
    * 数据库字段: create_time
    * 字段描述: 创建时间
    */
    private Date createTime;

    /**
    * 数据库字段: update_time
    * 字段描述: 更新时间
    */
    private Date updateTime;


    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setServerId(Long serverId) {
        this.serverId = serverId;
    }

    public Long getServerId() {
        return serverId;
    }

    public void setGatherType(Integer gatherType) {
        this.gatherType = gatherType;
    }

    public Integer getGatherType() {
        return gatherType;
    }

    public void setGatherTime(Date gatherTime) {
        this.gatherTime = gatherTime;
    }

    public Date getGatherTime() {
        return gatherTime;
    }

    public void setTotal(Long total) {
        this.total = total;
    }

    public Long getTotal() {
        return total;
    }

    public void setFree(Long free) {
        this.free = free;
    }

    public Long getFree() {
        return free;
    }

    public void setUsed(Long used) {
        this.used = used;
    }

    public Long getUsed() {
        return used;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }
}
```
ServerGatherRecordDao.java

```java
import org.jfaster.mango.annotation.DB;
import org.jfaster.mango.annotation.SQL;

@DB(
        table = "server_gather_record"
)
public interface ServerGatherRecordDao {

    String BASE_COLUMNS = " id, server_id, gather_type, gather_time, total, free, used, create_time, update_time";
    String VALUES_COLUMNS = ":id, :serverId, :gatherType, :gatherTime, :total, :free, :used, :createTime, :updateTime";

    @SQL("insert into #table(" + BASE_COLUMNS + ") values(" + VALUES_COLUMNS + ")")
    boolean insert(ServerGatherRecord object);

    @SQL(
        "insert into #table ( "
        + " #if(:id != null) id, #end "
        + " #if(:serverId != null) server_id, #end "
        + " #if(:gatherType != null) gather_type, #end "
        + " #if(:gatherTime != null) gather_time, #end "
        + " #if(:total != null) total, #end "
        + " #if(:free != null) free, #end "
        + " #if(:used != null) used, #end "
        + " #if(:createTime != null) create_time, #end "
        + " #if(:updateTime != null) update_time #end "
        + " ) values( "
        + " #if(:id != null) :id, #end "
        + " #if(:serverId != null) :serverId, #end "
        + " #if(:gatherType != null) :gatherType, #end "
        + " #if(:gatherTime != null) :gatherTime, #end "
        + " #if(:total != null) :total, #end "
        + " #if(:free != null) :free, #end "
        + " #if(:used != null) :used, #end "
        + " #if(:createTime != null) :createTime, #end "
        + " #if(:updateTime != null) :updateTime #end )"
    )
    boolean insertSelective(ServerGatherRecord object);

    @SQL("select " + BASE_COLUMNS + " from #table where id = :1")
    ServerGatherRecord selectByPrimaryKey(Long id);

    @SQL(
        "update #table set "
        + " server_id = :serverId, "
        + " gather_type = :gatherType, "
        + " gather_time = :gatherTime, "
        + " total = :total, "
        + " free = :free, "
        + " used = :used, "
        + " create_time = :createTime, "
        + " update_time = :updateTime "
        + " where id = :id"
    )
    boolean updateByPrimaryKey(ServerGatherRecord object);

    @SQL(
        "update #table set "
        + " #if(:serverId != null) server_id = :serverId, #end "
        + " #if(:gatherType != null) gather_type = :gatherType, #end "
        + " #if(:gatherTime != null) gather_time = :gatherTime, #end "
        + " #if(:total != null) total = :total, #end "
        + " #if(:free != null) free = :free, #end "
        + " #if(:used != null) used = :used, #end "
        + " #if(:createTime != null) create_time = :createTime, #end "
        + " #if(:updateTime != null) update_time = :updateTime  #end "
        + " where id = :id"
    )
    boolean updateByPrimaryKeySelective(ServerGatherRecord object);

    @SQL("delete from #table where id = :1")
    boolean deletesByPrimaryKey(Long id);
}
```