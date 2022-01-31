FROM sonarqube:8.9-community
MAINTAINER yujian95 yujian95_cn@163.com
# 复制第三方插件
# 多分支检测插件，需要放置在 /lib/common/ 和 /extensions/ 下面
COPY 3rd-party-plugins/sonarqube-community-branch-plugin-1.8.1.jar /opt/sonarqube/lib/common/
COPY 3rd-party-plugins/sonarqube-community-branch-plugin-1.8.1.jar /opt/sonarqube/extensions/
# 多分支检测插件配置
# - sonar.ce.javaAdditionalOpts=-javaagent:./extensions/plugins/sonarqube-community-branch-plugin-1.8.1.jar=ce
# - sonar.web.javaAdditionalOpts=-javaagent:./extensions/plugins/sonarqube-community-branch-plugin-1.8.1.jar=web
COPY conf/sonar.properties /opt/sonarqube/conf/
# 中文语言包，或者 直接通过插件商城安装
COPY 3rd-party-plugins/sonar-l10n-zh-plugin-8.9.jar /opt/sonarqube/extensions/
