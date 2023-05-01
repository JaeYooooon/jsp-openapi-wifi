## 📍 Wifi Project
서울시 공공 OpenAPI 를 활용하여주변의 Wifi 정보를 제공하는 웹서비스

## ⚙ Tech Stack
- Language : Java, JS
- Build : Gradle 
- Server : Tomcat 8.5, JSP
- Database : MYSQL
- Library : Lombok, Okhttp3, Gson
- Front-End : HTML, CSS, Bootstrap


## 🛠 Function
**Function** | **구현 완료** | 
:------------                                   | :----------------: |  
**Open API 활용 Json 데이터 파싱**              | :heavy_check_mark: | 
**Open API 활용 DB에 값 저장**                  | :heavy_check_mark: | 
**현재 위도, 경도 값 받아오기**                 | :heavy_check_mark: | 
**위도, 경도를 활용하여 주변 와이파이 검색**    | :heavy_check_mark: |
**와이파이 정보 자세히 보기**                   | :heavy_check_mark: |  
**위도 경도 히스토리 저장/삭제/조회**           | :heavy_check_mark: |  
**북마크 그룹 추가/수정/조회/삭제**             | :heavy_check_mark: |  
**북마크 리스트 추가/조회/삭제**                | :heavy_check_mark: |  

## 🧾 ERD Diagram
![wifiERD](https://user-images.githubusercontent.com/99658884/233536975-505e6a1a-94eb-4042-8209-434cdb80526c.png)

## ❗ Impression
프로젝트를 진행하면서 가장 큰 어려움은 프로젝트 세팅과 자바로 DB를 연결하는 부분이었다. 프로젝트를 시작하기 전 충분한 계획과 조사를 하지 않았던 것이 이러한 어려움을 만들었다고 생각한다. 그러나 프로젝트를 진행하면서 이러한 어려움을 해결하면서 새롭게 배워나가는 경험이 매우 유익했다. 이러한 경험을 바탕으로 다음 프로젝트에서는 더욱 원활하게 프로젝트를 진행할 수 있을 것이라 생각한다. OpenApi를 활용하여 Wifi 정보를 받아오는 부분이 오래걸려서 개선이 필요해보인다. 또한 내 위치 가져오기 버튼을 통해 위도, 경도 값을 받아오는데 내 위치 값이 계속 초기화 되는 부분도 개선이 필요해 보인다. 쉬워보이는 프로젝트였지만 막상 부딪혀보니 어려웠고 OpenAPI를 활용해 볼 수 있는 프로젝트여서 유익했다 
