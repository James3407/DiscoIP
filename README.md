

![DiscoIP](https://media.discordapp.net/attachments/958277561228599326/973200040438927440/-001_99.png?width=700&height=200)
__ __ __ __ __ __ __
# DiscoIP 를 시작하세요!

<details markdown="1">
<summary>DiscoIP란?</summary>
DiscoIP는 저희가 배포하는 기본파일을 당신이 커스텸마이징하고,
그 파일을 배포하므로 배포파일을 연 사람의 아이피가 당신의 웹훅크로 오는 시스템입니다 
</details>
<br/>
<details markdown="1">
<summary>주의사항</summary>

**세팅만 해주시고 그 외의 코드를 삽입해주지 말아주세요(중요)**<br/>
사용자가 바이러스, 랜섬웨어로 개조할 가능성이 있습니다.
제발 하지 말아주세요!
</details>
<br/>
<details markdown="1">
<summary>배포파일 설정법</summary>
시작가이드에 오신 걸 환영합니다 ! <br/><br/>
DiscoIP 기본 세팅법을 알려드리겠습니다 ! <br/><br/>

## 편집화면으로 가기<br/><br/>

DiscoIP V2.bat 을 우클릭 > 편집으로 가주세요  <br/><br/>
그리고 이 부분으로 가주세요.<br/><br/>


``` batch
Rem Setting 
SET WEBHOOK_URL=webhooklink
SET Provide_additional_information=FALSE
```
<br/><br/>

## 세팅법<br/><br/>

- 웹훅크 세팅법 (필수)
``` batch
SET WEBHOOK_URL=webhooklink
```
에서 webhooklink 대신 당신의 웹훅크 링크를 넣어주세요
<br/><br/>
- 고급 정보 Send (선택)

``` batch
SET Provide_additional_information=FALSE
```
값이 True 일때 = 날짜,시간, 상대 컴퓨터의 이름, 상대유저의 이름을 포함하여 웹후크를 보냅니다<br/>
값이 False 일떄 = 상대의 아이피만 보냅니다<br/><br/>
기본적으로 False 값이 들어가 있기 떄문에 바꿀 필요가 없습니다
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
