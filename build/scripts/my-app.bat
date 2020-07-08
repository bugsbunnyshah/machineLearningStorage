@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  my-app startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and MY_APP_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\my-app.jar;%APP_HOME%\lib\json2flat-1.0.3.jar;%APP_HOME%\lib\json-path-2.2.0.jar;%APP_HOME%\lib\quarkus-resteasy-1.4.2.Final.jar;%APP_HOME%\lib\quarkus-vertx-http-1.4.2.Final.jar;%APP_HOME%\lib\quarkus-resteasy-server-common-1.4.2.Final.jar;%APP_HOME%\lib\quarkus-vertx-core-1.4.2.Final.jar;%APP_HOME%\lib\quarkus-resteasy-common-1.4.2.Final.jar;%APP_HOME%\lib\quarkus-arc-1.4.2.Final.jar;%APP_HOME%\lib\quarkus-netty-1.4.2.Final.jar;%APP_HOME%\lib\quarkus-core-1.4.2.Final.jar;%APP_HOME%\lib\slf4j-jboss-logging-1.2.0.Final.jar;%APP_HOME%\lib\slf4j-api-1.7.30.jar;%APP_HOME%\lib\json-20200518.jar;%APP_HOME%\lib\snakeyaml-1.26.jar;%APP_HOME%\lib\spring-web-5.2.1.RELEASE.jar;%APP_HOME%\lib\gson-2.8.6.jar;%APP_HOME%\lib\vertx-web-3.8.5.jar;%APP_HOME%\lib\vertx-web-common-3.8.5.jar;%APP_HOME%\lib\vertx-auth-common-3.8.5.jar;%APP_HOME%\lib\vertx-core-3.8.5.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.45.Final.jar;%APP_HOME%\lib\netty-codec-http2-4.1.45.Final.jar;%APP_HOME%\lib\netty-codec-http-4.1.45.Final.jar;%APP_HOME%\lib\netty-handler-4.1.45.Final.jar;%APP_HOME%\lib\netty-resolver-dns-4.1.45.Final.jar;%APP_HOME%\lib\netty-codec-socks-4.1.45.Final.jar;%APP_HOME%\lib\netty-codec-dns-4.1.45.Final.jar;%APP_HOME%\lib\netty-codec-4.1.45.Final.jar;%APP_HOME%\lib\netty-transport-4.1.45.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.45.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.45.Final.jar;%APP_HOME%\lib\netty-common-4.1.45.Final.jar;%APP_HOME%\lib\jackson-databind-2.10.3.jar;%APP_HOME%\lib\jackson-annotations-2.10.3.jar;%APP_HOME%\lib\jackson-core-2.10.3.jar;%APP_HOME%\lib\resteasy-core-4.5.3.Final.jar;%APP_HOME%\lib\resteasy-core-spi-4.5.3.Final.jar;%APP_HOME%\lib\vertx-bridge-common-3.8.5.jar;%APP_HOME%\lib\quarkus-development-mode-spi-1.4.2.Final.jar;%APP_HOME%\lib\quarkus-ide-launcher-1.4.2.Final.jar;%APP_HOME%\lib\quarkus-security-1.1.0.Final.jar;%APP_HOME%\lib\smallrye-config-1.7.0.jar;%APP_HOME%\lib\jboss-threads-3.1.1.Final.jar;%APP_HOME%\lib\arc-1.4.2.Final.jar;%APP_HOME%\lib\smallrye-config-common-1.7.0.jar;%APP_HOME%\lib\jboss-logging-3.3.2.Final.jar;%APP_HOME%\lib\jboss-logmanager-embedded-1.0.4.jar;%APP_HOME%\lib\jakarta.activation-1.2.1.jar;%APP_HOME%\lib\mutiny-0.4.4.jar;%APP_HOME%\lib\jakarta.enterprise.cdi-api-2.0.2.jar;%APP_HOME%\lib\jakarta.inject-api-1.0.jar;%APP_HOME%\lib\jakarta.interceptor-api-1.2.5.jar;%APP_HOME%\lib\jakarta.annotation-api-1.3.5.jar;%APP_HOME%\lib\jakarta.transaction-api-1.3.3.jar;%APP_HOME%\lib\jakarta.validation-api-2.0.2.jar;%APP_HOME%\lib\jboss-jaxb-api_2.3_spec-2.0.0.Final.jar;%APP_HOME%\lib\jboss-jaxrs-api_2.1_spec-2.0.1.Final.jar;%APP_HOME%\lib\json-smart-2.3.jar;%APP_HOME%\lib\microprofile-config-api-1.4.jar;%APP_HOME%\lib\microprofile-context-propagation-api-1.0.1.jar;%APP_HOME%\lib\graal-sdk-19.3.1.jar;%APP_HOME%\lib\jboss-logging-annotations-2.1.0.Final.jar;%APP_HOME%\lib\wildfly-common-1.5.4.Final-format-001.jar;%APP_HOME%\lib\accessors-smart-1.2.jar;%APP_HOME%\lib\asm-7.3.1.jar;%APP_HOME%\lib\reactive-streams-1.0.3.jar;%APP_HOME%\lib\spring-beans-5.2.1.RELEASE.jar;%APP_HOME%\lib\spring-core-5.2.1.RELEASE.jar;%APP_HOME%\lib\spring-jcl-5.2.1.RELEASE.jar;%APP_HOME%\lib\jakarta.el-api-3.0.3.jar


@rem Execute my-app
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %MY_APP_OPTS%  -classpath "%CLASSPATH%" org.gradle.sample.Main %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable MY_APP_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%MY_APP_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
