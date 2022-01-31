# sonarqube

> 基于 sonarqube 8.9 社区版构建，增加多分支分析插件以及中文语言包。

## 镜像环境变量

> 需要配置一下数据库配置

```shell
# 数据库配置默认值
POSTGRES_USER: sonar
POSTGRES_DB: sonardb
POSTGRES_PASSWORD: postgrespwd
```

## 第三方插件

|名称|功能|地址|
|----|----|----|
|sonarqube-community-branch-plugin|一个SonarQube插件，允许在Community版本中进行分支分析。|https://github.com/mc1arke/sonarqube-community-branch-plugin|
|sonar-l10n-zh|中文语言包|https://github.com/xuhuisheng/sonar-l10n-zh|

## 使用说明

**直接使用：**

地址：https://hub.docker.com/r/yujian95/sonarqube

```docker
docker pull yujian95/sonarqube:8.9
```

**手动构建：**

```docker
# 一般情况下
docker build -t yujian95/sonarqube:8.9 .
# 使用 苹果 M1 芯片构建时，需要指定运行环境
docker buildx build -t yujian95/sonarqube:8.9 --platform=linux/amd64 -o type=docker .
docker login
docker push yujian95/sonarqube:8.9
```