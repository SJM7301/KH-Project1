# 개인 프로젝트
프로젝트 기간: 2025.03.04 ~ 2025.03.14

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

### 3. 사용기술 및 개발환경
![Image](https://github.com/user-attachments/assets/2aff71e2-6324-490a-8a9e-ee4a557335a9)


<table>
  <tr>
    <td>운영체제</td>
    <td>Windows 10</td>
  </tr>
  <tr>
    <td>사용 언어</td>
    <td>Java, JavaScript, JSP, HTML, CSS, JS</td>
  </tr>
  <tr>
    <td>FrameWork / Library</td>
    <td>BootStrap</td>
  </tr>
  <tr>
    <td>DB</td>
    <td>MySQL</td>
  </tr>
  <tr>
    <td>WAS</td>
    <td>Apache Tomcat</td>
  </tr>
</table>

### 4. 흐름도
![Image](https://github.com/user-attachments/assets/23de84e6-a35f-4aa8-9578-036ccb170d52)

## 프로젝트 선정 베경
● 블로그를 만들어 보고 싶었다.

● 기간안에 만들 수 있는 웹 페이지를 만들어야 한다.

● 데이터가 많으면 좋다.

## 구현 기능
- 헤더
  - 로고, (로그인, 로그아웃), (회원가입, 회원수정)
  - (액션, SF, 코미디, 로맨스, 기타)영화, QnA
  - (영화 리뷰 및 공지사항 등록, 수정, 삭제)

- 로고
  - 클릭 시 메인 페이지로 이동

- 로그인
  - ID, Password 입력
  - DB에 저장된 ID 및 Password가 불일치 시 "아이디와 비밀번호를 확인해 주세요" 출력
 
- 회원가입
  - 아이디, 비밀번호, 비밀번호 확인, 성명, 이메일 입력 후 회원가입
  <table>
    <tr>
      <td>아이디 미입력 시</td>
      <td>"아이디를 입력하세요."</td>
    </tr>
    <tr>
      <td>비밀번호 미입력 시</td>
      <td>"비밀번호를 입력하세요."</td>
    </tr>
    <tr>
      <td>비밀번호와 비밀번호 확인 불일치 시</td>
      <td>"비밀번호를 동일하게 입력하세요."</td>
    </tr>
    <tr>
      <td>성명 미입력 시</td>
      <td>"성명을 입력하세요."</td>
    </tr>
    <tr>
      <td>이메일 미입력 시</td>
      <td>"이메일을 입력하세요."</td>
    </tr>
  </table>

- 회원 수정
  - 아이디 (readonly -> 수정 불가능)
  - 비밀번호
  - 비밀번호 확인
  - 성명 (readonly -> 수정 불가능)
  - 이메일
  - 회원수정 | 회원탈퇴

- 메인 페이지
  - 공지사항
  - 슬라이드 이미지
  - 영화 리뷰 목룍

- 영화 리뷰 추가, 수정, 삭제
  - 영화 코드 (readonly -> 수정 불가능)
  - 영화 제목
  - 장르
  - 평점
  - 감독
  - 영화 리뷰
  - 나라
  - 개봉일
  - 상영 플랫폼
  - 영화 포스터

- 영화 리뷰 상세 페이지
  - 영화 제목
  - 장르 | 평점
  - 감독 | 나라
  - 개봉일 | 상영 플랫폼
  - 영화 리뷰
  - 영화 댓글 목록

 - QnA 게시판
  - QnA 목록
  - 글쓰기
  - QnA 검색

- QnA 글쓰기
  - 성명 (readonly -> 수정 불가능)
  - 제목 쓰기
  - 내용 쓰기

 - QnA 목록 상세 페이지
   - 제목
   - 내용
   - QnA 수정 및 삭제
   - QnA 답변

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

## 회원 및 비회원 기능
### 메인화면
비회원 및 회원 / 관리자(admin)
![Image](https://github.com/user-attachments/assets/34c64fb1-3019-49ef-83a1-17be37cb9445)

1. 비회원 및 회원은 nav바에서 액션, SF, 코미디, 로맨스, 기타 영화와 Q&A로 이동할 수 있다.
2. 관리자는 영화 리뷰 및 공지사항 등록, 수정, 삭제가 가능하다.

### 로그인
![Image](https://github.com/user-attachments/assets/38f1bcb9-5b62-4e2a-8c32-8d4b377763e7)

1. 로그인 성공 유무를 확인할 수 있다.
2. 아이디 및 비밀번호 찾기와 회원가입 페이지로 이동할 수 있다.
### 회원가입
![Image](https://github.com/user-attachments/assets/cbea3a6f-fc35-4605-96cc-f0e25aae5baa)

1. 회원가입 성공 유무를 확인할 수 있다.
### 아이디 및 비밀번호 찾기
![Image](https://github.com/user-attachments/assets/7e38b418-0f6e-436f-83ee-d7fe55d4fec9)

1. 작성란에 작성한 내용과 DataBase안에 저장된 내용이 동일하면 아이디 및 비밀번호를 알려준다.
### 리뷰에 대한 댓글 작성 
![Image](https://github.com/user-attachments/assets/78ecf864-2a2c-478c-83a1-b8a3dbc78a8e)
1. 본인이 작성한 댓글만 삭제할 수 있다.
### QnA 작성
![Image](https://github.com/user-attachments/assets/dcc979ea-271a-48be-8d72-5885156ae710)
1. QnA 페이지 우측 하단에 있는 글쓰기 버튼을 통해 QnA 작성 페이지로 이동할 수 있다.
2. 제목과 내용을 작성 후 등록 버튼을 클릭 시 QnA가 등록된다.
3. QnA 페이지에서 제목을 클릭하면 상세 내용을 볼 수 있고, QnA 작성자만 수정 및 삭제할 수 있다.
4. 회원은 QnA 답변을 할 수 없다.
### 관리자(admin) 기능
영화리뷰 및 공지사항 추가, 수정, 삭제 / 회원 댓글 및 QnA 관리, QnA 답변

### 영화리뷰 및 공지사항 추가, 수정, 삭제
![Image](https://github.com/user-attachments/assets/6ee5565b-ac22-4713-a2af-39fed8fdb55e)
![Image](https://github.com/user-attachments/assets/6a9daa44-d4f2-4903-b936-1484579edddc)
1. 영화리뷰 및 공지사항 추가, 수정, 삭제는 관리자만 할 수 있다.
2. 영화리뷰 코드는 중복될 수 없으며, 공지사항 번호는 중복될 수 있다.

### 회원 댓글 및 QnA 관리, QnA 답변
![Image](https://github.com/user-attachments/assets/52dbb524-5962-462d-939c-f13bffbbcf20)
1. 관리자는 모든 댓글을 삭제할 수 있다.
2. QnA는 수정할 수 없지만 삭제할 수 있다.
3. QnA 댓글을 작성할 수 있고, 삭제할 수 있다.
