# Project3
UFC커뮤니티

   Package / Class / Interface  예상

     Controller
 - CommonController
 - BoardController
 - MemberController

     Common 
 - BoardTools
 
     DTO 
 - Member
 - Login
 - Player
 - FreeBoard
 - News
 - Highlight
 - Schedule_Result(일정/결과)
 - Ranking_Record(순위/기록)
 - FreeBoard_Reply
 - News_Reply
 - Highlight_Reply

   












     IDao
 - MemberDao
 - BoardDao
 - ReplyDao

     IService 
 - MemberService
 - BoardService

     Service
 - MemberServiceImpl
 - BoardServiceImpl

마스터 제목 스타일 편집
•	마스터 텍스트 스타일을 편집합니다
•	둘째 수준
•	셋째 수준
•	넷째 수준
•	다섯째 수준
1
2017-11-06

마스터 제목 스타일 편집
마스터 부제목 스타일 편집
1
2017-11-06

마스터 제목 스타일 편집
•	마스터 텍스트 스타일을 편집합니다
•	둘째 수준
•	셋째 수준
•	넷째 수준
•	다섯째 수준
1
2017-11-06

마스터 부제목 스타일 편집
마스터 부제목 스타일 편집
1
2017-11-06

마스터 제목 스타일 편집
•	마스터 텍스트 스타일을 편집합니다
•	둘째 수준
•	셋째 수준
•	넷째 수준
•	다섯째 수준
•	마스터 텍스트 스타일을 편집합니다
•	둘째 수준
•	셋째 수준
•	넷째 수준
•	다섯째 수준
1
2017-11-06

마스터 제목 스타일 편집
마스터 부제목 스타일 편집
마스터 부제목 스타일 편집
•	마스터 텍스트 스타일을 편집합니다
•	둘째 수준
•	셋째 수준
•	넷째 수준
•	다섯째 수준
•	마스터 텍스트 스타일을 편집합니다
•	둘째 수준
•	셋째 수준
•	넷째 수준
•	다섯째 수준
1
2017-11-06

마스터 제목 스타일 편집
1
2017-11-06

1
2017-11-06

마스터 부제목 스타일 편집
•	마스터 텍스트 스타일을 편집합니다
•	둘째 수준
•	셋째 수준
•	넷째 수준
•	다섯째 수준
마스터 부제목 스타일 편집
1
2017-11-06

마스터 부제목 스타일 편집
마스터 부제목 스타일 편집
그림
1
2017-11-06

마스터 제목 스타일 편집
•	마스터 텍스트 스타일을 편집합니다
•	둘째 수준
•	셋째 수준
•	넷째 수준
•	다섯째 수준
1
2017-11-06

마스터 부제목 스타일 편집
•	마스터 텍스트 스타일을 편집합니다
•	둘째 수준
•	셋째 수준
•	넷째 수준
•	다섯째 수준
1
2017-11-06

   Package / Class / Interface  예상

     Controller
 - CommonController
 - BoardController
 - MemberController

     Common 
 - BoardTools
 
     DTO 
 - Member
 - Login
 - Player
 - FreeBoard
 - News
 - Highlight
 - Schedule_Result(일정/결과)
 - Ranking_Record(순위/기록)
 - FreeBoard_Reply
 - News_Reply
 - Highlight_Reply

   








     IDao
 - MemberDao
 - BoardDao
 - ReplyDao

     IService 
 - MemberService
 - BoardService

     Service
 - MemberServiceImpl
 - BoardServiceImpl

















   MemberServiceImpl 클래스안 사용  메소드

MemberProc - 회원가입 버튼 클릭시 동작발생
 - 정식 이메일인지 확인
 - 이메일 중복확인
 - 패스워드 , 패스워드확인 동일성 확인
 - 약관동의 , 개인정보취급방침 체크박스 체크확인

IsExistEmail - 이메일 중복확인 메소드
 - 사용자가 입력한 이메일과 DB에 있는 이메일이 중복되는지 확인
    (1) 중복되었다면 팝업창 발생 (”중복된아이디”) 후 커서 이동

LoginProc - 로그인 버튼 클릭시 동작발생
 - 이메일,패스워드 의 입력칸 빈곳 체크
    (1) 비어있다면 해당 칸으로 커서 이동
 - DB에 저장된 이메일인지 확인
    (1) 해당 이메일에 맞는 패스워드인지 확인
        - 해당 이메메일과 패스워드가 DB에 동일하다면 로그인성공, 로그인 팝업창 사라짐 (session = login상태) / (logout버튼 활성화)

FindPassword - 비밀번호 찾기 버튼 클릭시 동작발생
 - 이메일의 입력칸 빈곳 체크
    (1) 비어있다면 해당 칸으로 커서 이동
 - 해당이메일로 인증번호 발송
    (1) 이메일에서 인증번호 확인 버튼 클릭
    (2) 웹사이트에서 비밀번호 변경 창 띄움


   













   BoardServiceImpl 클래스안 사용  메소드

 deleteBoard - 글 삭제
 - 게시판내 글은 본인이 입력한 글만 삭제버튼 클릭가능 
 - 최초 글을 작성시 작성자의 이메일이 보이지않는 값으로 저장되어 기록됨
   (1) 저장되어있는 이메일과 현재 로그인된 이메일이 일치하면 삭제 가능
   (2) 불일치 할 경우 팝업창 발생(”본인이 작성한 게시글이 아닙니다.”)

 getSearchWord- 글 검색
 - 검색창에 내용이 2글자 ~ 10자 이하 인지 체크
   (1) 2글자 미만, 10자 이상 일때 팝업창 출력(”~~~”)
   (2) Mapper.xml 에 만들어놓은 쿼리문을 이용하여 DB에서 게시글 검색
      - 제목,내용,작성자 포함 해당되는 글 모두 찾아 띄워줌
   (3) 해당되는 게시글이 하나도 없을시에는 빈 공간 출력.

 getNavi - 게시판 페이지 수 네이게이션
 - 네비게이션 툴을 호출하여 해당 게시판에 글수만큼 리스트를 생성 1,2,3,4 페이지 넘버 출력 

 getBoard - 게시글 제목 클릭시 게시글 폼으로 이동하여 글 출력
 - 클릭된 게시글의 넘버 값을 끌고와 writeForm.jsp 페이지에서 해당하는 칸에 출력.

HighlightClick - 하이라이트 영상 클릭시 동작발생
 - 클릭된 영상의 재생페이지에서 영상을 재생.
   (1) 해당 영상의 넘버 값을 재생페이지로 가져감.
 
NewsProc - 뉴스 게시글 클릭시 동작발생
 - 기본 게시판의 동작형식을 따라감.
   (1) 해당 뉴스의 넘버 값을 가지고 NewsForm.jsp 페이지로 이동하여 해당하는 칸에 출력.

Schedule_Result - 일정/결과 클릭시 동작발생
 - 일정/결과는 최초에 선수의 고유넘버를 저장하여 만들어진 게시판형태
 - 클릭시 해당 선수의 넘버 값을 가지고 Schedule_ResultForm.jsp 페이지로 이동하여 해당하는 칸에 출력.









   BoardServiceImpl 클래스안 사용  메소드

 SelectBoard - 게시판 버튼 눌렀을때 동작 발생
  - 자유게시판,하이라이트,뉴스 게시판 버튼을 클릭 하였을때 해당 URI를 가지고 DB에 맞는 테이블의 값을 찾음
   (1) 해당하는 테이블을 view.jps 폼으로 가져와 형식에 맞게 출력. [ 오름차,내림차,최신,인기 등등 맞는 형식으로 for문을 이용하여 출력 ]
   (2) List 형식으로 메소드 구현
   (3) Map<String, Object> map = new HashMap<String, Object>();    구현후  








   Board_ReplyServiceImpl 클래스안 사용  메소드

replyFinish - 댓글 작성완료 버튼 클릭시 동작발생
 - 댓글 입력칸에 내용이 입력 되었는지 확인
   (1) 입력 되었다면 1 ~ 400 글자 수 제한 범위내에 해당 확인
       - 글자 범위내에 해당한다면 작성자 이름,작성일자,내용 DB에 저장 및 jsp 페이지에 출력.
   (2) 입력 되지 않았다면 팝업창 출력 (”1~400자 입력하세요”) 후 커서 입력칸으로 이동.
