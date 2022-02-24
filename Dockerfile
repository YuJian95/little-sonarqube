FROM sonarqube:8.9-community
MAINTAINER yujian95 yujian95_cn@163.com
# 复制第三方插件
# 多分支检测插件，需要放置在 /lib/common/ 和 /extensions/plugins/ 下面
COPY 3rd-party-plugins/sonarqube-community-branch-plugin-1.8.1.jar /opt/sonarqube/lib/common/
COPY 3rd-party-plugins/sonarqube-community-branch-plugin-1.8.1.jar /opt/sonarqube/extensions/plugins
# 多分支检测插件配置
# - sonar.ce.javaAdditionalOpts=-javaagent:./extensions/plugins/sonarqube-community-branch-plugin-1.8.1.jar=ce
# - sonar.web.javaAdditionalOpts=-javaagent:./extensions/plugins/sonarqube-community-branch-plugin-1.8.1.jar=web
COPY conf/sonar.properties /opt/sonarqube/conf/
# 中文语言包，或者 直接通过插件商城安装
COPY 3rd-party-plugins/sonar-l10n-zh-plugin-8.9.jar /opt/sonarqube/extensions/plugins
# Gitlab 分析插件，无适应版本
COPY 3rd-party-plugins/sonar-gitlab-plugin-5.1.2.jar /opt/sonarqube/extensions/plugins
# 阿里巴巴代码规范插件
COPY 3rd-party-plugins/sonar-pmd-plugin-3.2.1.jar /opt/sonarqube/extensions/plugins
