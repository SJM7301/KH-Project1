# 개인 프로젝트
프로젝트 기간: 2025.03.4 ~ 2025.03.14

블로그 기반 영화리뷰 사이트

## 프로젝트 계획
1. 주제 선정
2. 필요한 데이터 수집
3. 기획 및 설계
4. 구현 및 연동
5. 테스트

## 프로젝트
### 1. 서비스 소개
영화리뷰 사이트는 관리자(admin)가 영화리뷰를 작성하면 회원들이 댓글로 의견을 작성하는 웹이다.

### 2. 주요기능
![Image](https://github.com/user-attachments/assets/ba080e8d-f215-48cd-a933-9455fc004618)
### 3. 시스템 구축
![Image](https://github.com/user-attachments/assets/2aff71e2-6324-490a-8a9e-ee4a557335a9)
### 4. 흐름도
![Image](https://github.com/user-attachments/assets/23de84e6-a35f-4aa8-9578-036ccb170d52)

## 프로젝트 선정 베경
● 블로그를 만들어 보고 싶었다.

● 기간안에 만들 수 있는 웹 페이지를 만들어야 한다.

● 데이터가 많으면 좋다.

## 시스템 구축
![Image](https://github.com/user-attachments/assets/9cbe67bb-8f24-40dc-8d38-ec5dfdcd0622)

common: DB연결 처리

controller: QnA의 CRUD 처리를 담당

dao: DB와 애플리케이션 간의 데이터 상호작용을 처리

dto: controller와 dao 간 데이터 전달을 위한 객체

filter: 로그를 파일에 저장

board: QnA페이지 및 QnA등록 수정 삭제, 상세 페이지

logs: filter에서 저장된 로그

META-INF: JAR파일 관련 설정

css: 외부 라이브러리 스타일 시트 및 이미지 슬라이드 스타일 시트

images: 영화 포스터 이미지

sql: 이용자, 영화리뷰, 댓글, QnA, 공지사항 관련 DB

add~.jsp: 영화, 회원, 댓글, 공지사항 등록

~Movie.jsp: 액션, SF, 코미디, 로맨스, 기타 영화 페이지

dbconn.jsp: DB연결 처리

delete~.jsp: 댓글, 영화, 회원, 공지사항 삭제

detail.jsp: 영화리뷰 상세 화면

edit~.jsp: 영화리뷰, 공지사항 수정 및 삭제 기능

exceptionNo~.jsp: 오류 페이지 출력

processAdd~.jsp: 회원정보, 영화리뷰 데이터, 공지사항 정보 등 DB에 저장

processFind~.jsp: Id 및 pw를 DB에서 조회

processUpdate~.jsp: 회원정보, 영화리뷰 데이터 등 수정 후 DB에 저장

resultMember.jsp: 회원 상태에 따른 메시지 출력

update~.jsp: 회원정보, 영화리뷰, 공지사항 정보 등 수정 페이지

## 기능 명세
### 공통 기능
로그인 / 회원가입 / 아이디 및 비밀번호 찾기 / 댓글 작성 / QnA 작성

### 메인화면
비회원 및 회원 / 관리자(admin)
![Image](https://github.com/user-attachments/assets/34c64fb1-3019-49ef-83a1-17be37cb9445)

비회원 및 회원은 nav바에서 액션, SF, 코미디, 로맨스, 기타 영화와 Q&A로 이동할 수 있고, 관리자는 영화 리뷰 및 공지사항 등록, 수정, 삭제가 가능하다.

### 로그인
![Image](https://github.com/user-attachments/assets/38f1bcb9-5b62-4e2a-8c32-8d4b377763e7)

### 회원가입
![Image](https://github.com/user-attachments/assets/cbea3a6f-fc35-4605-96cc-f0e25aae5baa)

### 아이디 및 비밀번호 찾기
![Image](https://github.com/user-attachments/assets/7e38b418-0f6e-436f-83ee-d7fe55d4fec9)

### 댓글 작성 
![Image](https://github.com/user-attachments/assets/78ecf864-2a2c-478c-83a1-b8a3dbc78a8e)

### QnA 작성
![Image](https://github.com/user-attachments/assets/dcc979ea-271a-48be-8d72-5885156ae710)

### 관리자(admin) 기능
영화리뷰 및 공지사항 추가, 수정, 삭제 / 회원 댓글 및 QnA 관리, QnA 답변

### 영화리뷰 및 공지사항 추가, 수정, 삭제
![Image](https://github.com/user-attachments/assets/6ee5565b-ac22-4713-a2af-39fed8fdb55e)
![Image](https://github.com/user-attachments/assets/6a9daa44-d4f2-4903-b936-1484579edddc)

### 회원 댓글 및 QnA 관리, QnA 답변
![Image](https://github.com/user-attachments/assets/52dbb524-5962-462d-939c-f13bffbbcf20)
