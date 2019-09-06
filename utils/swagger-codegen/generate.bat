REM generate client for use as npm in this typescript-angular project
REM refer to https://angular.schule/blog/2018-04-swagger-codegen
REM Download swagger-codegen-cli-3.0.11.jar from https://mvnrepository.com/artifact/io.swagger.codegen.v3/swagger-codegen-cli/3.0.11/
java -jar ".\swagger-codegen-cli-3.0.11.jar" generate -i http://localhost:65049/swagger/v1/swagger.json -l typescript-angular -o "..\..\..\pqi-typescript-angular" -c options.json

REM refer to https://medium.com/@the1mills/how-to-test-your-npm-module-without-publishing-it-every-5-minutes-1c4cb4b369be
REM and https://docs.npmjs.com/cli/link
cd "..\..\..\pqi-typescript-angular"
npm link
cd "..\pqi"
npm link tsi

REM to unlink, see https://medium.com/@alexishevia/the-magic-behind-npm-link-d94dcb3a81af

REM Steps to publish:
REM 1. get account on npmjs.org
REM 2. log into account, and create new org "vorba"
REM 3. cd to ..\repos\tsi
REM 4. npm install
REM 5. npm run build
REM 6. npm login
REM >username: coxad27
REM >pasword: ***
REM >email: adam.cox@vorba.com
REM 7. npm publish --access=public

REM References:
REM
REM swagger codegen optons:
REM {
REM     "npmName": "@vorba/pqi",
REM     "snapshot": "true",
REM     "modelPropertyNaming": "PascalCase"
REM }
