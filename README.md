# little-sonarqube

- 基于 sonarqube8.9 社区版构建，增加多分支分析插件以及中文语言包。
- 基于 sonarqube7.6 社区版构建，增加多分支分析插件以及中文语言包，gitlab 评论插件。

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
|sonar-gitlab-plugin|gitlab 提交分析|https://github.com/gabrie-allaigre/sonar-gitlab-plugin|
|sonar-pmd-plugin|阿里代码规范|https://github.com/caowenliang/sonar-pmd-p3c|

## 使用说明

### sonarqube8.9

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

### sonarqube7.6

**直接使用：**

地址：https://hub.docker.com/r/yujian95/sonarqube

```docker
docker pull yujian95/sonarqube:7.6
```

**手动构建：**

```docker
# 一般情况下
docker build -t yujian95/sonarqube:7.6 .
# 使用 苹果 M1 芯片构建时，需要指定运行环境
docker buildx build -t yujian95/sonarqube:7.6 --platform=linux/amd64 -o type=docker .
docker login
docker push yujian95/sonarqube:7.6
```