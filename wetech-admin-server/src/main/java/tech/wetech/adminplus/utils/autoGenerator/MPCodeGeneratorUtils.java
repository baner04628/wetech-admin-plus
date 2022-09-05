package tech.wetech.adminplus.utils.autoGenerator;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.InjectionConfig;
import com.baomidou.mybatisplus.generator.config.*;
import com.baomidou.mybatisplus.generator.config.po.TableInfo;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import com.baomidou.mybatisplus.generator.engine.BeetlTemplateEngine;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class MPCodeGeneratorUtils {

    private final static DbType dbType = DbType.MYSQL;

    private final static String url = "jdbc:mysql://localhost:3306/wetech_admin?serverTimezone=GMT";

    private final static String driver = "com.mysql.cj.jdbc.Driver";

    private final static String username = "root";

    private final static String password = "1382822201";

    private static final String PROJECT_RELATIVE_PATH = "D:/GitCloneProjects/wetech-admin/wetech-admin-server";  // 项目的绝对路径

    private static final String parentPackage = "tech.wetech.adminplus"; // 项目父包

    // 演示例子，执行 main 方法控制台输入模块表名回车自动生成对应项目目录中
    public static String[] scanner(String tip) {

        Scanner scanner = new Scanner(System.in);
        System.out.println("（多个名称用空格分隔，回车结束）请输入" + tip + "：");
        if (scanner.hasNextLine()) {
            String ipt = scanner.nextLine();
            if (StringUtils.isNotEmpty(ipt)) {
                return ipt.split(" ");
            }
        }
//        throw new MybatisPlusException("请输入正确的" + tip + "！");
        return null;
    }

    public static void generataCode() {

        /*
          代码生成器
         */
        AutoGenerator mpg = new AutoGenerator();
//        mpg.setTemplateEngine(new FreemarkerTemplateEngine());    // 选择 freemarker 模板引擎，未设置则默认使用 Veloctiy
        mpg.setTemplateEngine(new BeetlTemplateEngine());   // 选择 beetl 模板引擎，结果跟 freemaker 没什么区别

        /*
          全局配置
         */
        GlobalConfig gc = new GlobalConfig();
        gc.setOutputDir(PROJECT_RELATIVE_PATH + "/src/main/java");    //生成文件的输出目录
        gc.setAuthor("chez");                    //作者
        gc.setFileOverride(true);                //是否覆蓋已有文件 默认值：false
        gc.setOpen(false);                        //是否打开输出目录 默认值:true
        gc.setSwagger2(true);                    //开启 swagger2 模式 默认false
        gc.setBaseColumnList(true);                //开启 baseColumnList 默认false
        gc.setBaseResultMap(true);                //开启 BaseResultMap 默认false
        gc.setEntityName("%s");            //实体命名方式  默认值：null 例如：%sEntity 生成 UserEntity
        gc.setMapperName("%sMapper");            //mapper 命名方式 默认值：null 例如：%sDao 生成 UserDao
        gc.setXmlName("%sMapper");                //Mapper xml 命名方式   默认值：null 例如：%sDao 生成 UserDao.xml
        gc.setServiceName("%sService");            //service 命名方式   默认值：null 例如：%sBusiness 生成 UserBusiness
        gc.setServiceImplName("%sServiceImpl");    //service impl 命名方式  默认值：null 例如：%sBusinessImpl 生成 UserBusinessImpl
        gc.setControllerName("%sController");    //controller 命名方式    默认值：null 例如：%sAction 生成 UserAction
        mpg.setGlobalConfig(gc);

        /*
          数据源配置
         */
        DataSourceConfig dsc = new DataSourceConfig();
        dsc.setDbType(dbType);
        dsc.setUrl(url);
        dsc.setDriverName(driver);
        dsc.setUsername(username);
        dsc.setPassword(password);
        mpg.setDataSource(dsc);

        /*
          包路径配置
         */
        PackageConfig pc = new PackageConfig();
//        pc.setModuleName(scanner("模块名"));
        pc.setParent(parentPackage); //设置父包
//        pc.setEntity() //如果不给各个模块设置具体的包路径，则默认是当前parent目录的包下
//        pc.setXml("mapper.xml");//不设置的话 默认是放在当前parent目录的mapper.xml包下
        mpg.setPackageInfo(pc);

        /*
          自定义配置，这里新增了%Mapper.xml文件的保存路径：resources\mapper
         */
        InjectionConfig cfg = new InjectionConfig() {
            @Override
            public void initMap() {		//注入自定义 Map 对象
                // to do nothing
            }
        };
        List<FileOutConfig> focList = new ArrayList<>();
        focList.add(new FileOutConfig("/templates/mapper.xml.btl") {
            @Override
            public String outputFile(TableInfo tableInfo) {
                // 自定义输入文件名称
                return PROJECT_RELATIVE_PATH + "/src/main/resources/mapper/"
                        + tableInfo.getEntityName() + "Mapper" + StringPool.DOT_XML;
            }
        });
        cfg.setFileOutConfigList(focList);
        mpg.setCfg(cfg);
//        mpg.setTemplate(new TemplateConfig().setXml(null));

        /*
          数据库表配置
          用于设置表和实体关系、是否使用lombok插件等
         */
        // 策略配置	数据库表配置，通过该配置，可指定需要生成哪些表或者排除哪些表
        StrategyConfig strategy = new StrategyConfig();
        strategy.setNaming(NamingStrategy.underline_to_camel);    //表名生成策略
        strategy.setColumnNaming(NamingStrategy.underline_to_camel);//数据库表字段映射到实体的命名策略, 未指定按照 naming 执行

//        strategy.setCapitalMode(true);            // 全局大写命名 ORACLE 注意
//        strategy.setTablePrefix("prefix");        //表前缀
//        strategy.setSuperEntityClass("com.baomidou.ant.common.BaseEntity");    //自定义继承的Entity类全称，带包名
//        strategy.setSuperEntityColumns(new String[]{"test_id", "age"});    //自定义实体，公共字段
//        strategy.setEntityLombokModel(true);    //【实体】是否为lombok模型（默认 false
//        strategy.setSuperControllerClass("com.baomidou.ant.common.BaseController");    //自定义继承的Controller类全称，带包名

        //如果不设置则默认包含全部表，自动过滤无效表名
        String[] inputs = scanner("需要生成的表名");
        if(inputs != null) {
            strategy.setInclude(inputs);		//需要包含的表名，允许正则表达式（与exclude二选一配置）
//        strategy.setExclude(inputs); // 排除生成的表
        }

        strategy.setRestControllerStyle(true); //controller 层使用Restful风格
        strategy.setControllerMappingHyphenStyle(true);    //驼峰转连字符
//        strategy.setTablePrefix("sys_");    //去掉数据库表名前缀
        strategy.setEntityLombokModel(true);    // 设置使用lombok
        strategy.setSkipView(false);    // 是否跳过视图的生成（设置无效，不管怎么设置都无法识别视图）
        strategy.setLogicDeleteFieldName("is_deleted");   // 设置逻辑删除字段
        mpg.setStrategy(strategy);

        /*
          执行
         */
        mpg.execute();
    }
}
