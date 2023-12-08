<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 아티스트 정보 

Map<String, Object> artistInfo = new HashMap<>();
artistInfo.put("name", "아이유");
artistInfo.put("debute", 2008);
artistInfo.put("agency", "EDAM엔터테인먼트");
artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");

// 아이유 노래 리스트 
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);
%>


<h4>곡 정보</h4>
<%
	// 상세 정보를 보여줄 target (곡 정보가 담긴 맵)
	Map<String, Object> target = null;

	// 1. 목록에서 클릭한 경우(id값)
	if (request.getParameter("id") != null) {
		int id = Integer.parseInt(request.getParameter("id"));
	
	for (Map<String, Object> music : musicList ){
		if((int)music.get("id") == id){
			target = music;
			break;
			}
		}
	}
	

	// 2. 상단에서 form 태그로 검색한 경우(search 값)
	if (request.getParameter("search") != null){
		String search = request.getParameter("search");
		for (Map<String, Object>music : musicList){
			if (music.get("title").equals(search)){
				target = music;
				break;
			}
		}
	}
	
	
	
	// out.print(target);
%>
<div class="d-flex border border-success p-3 mb-3">
	<div class="mr-4">
		<img src=<%= target.get("thumbnail")%> width="200" alt="앨범 이미지">
	</div>
	<div>
		<div class="display-4"><%= target.get("title")%></div>
		<div class="text-success font-weight-bold"><%=target.get("singer")%></div>
		<div class="music-info d-flex mt-2">
			<div class="mr-3">
				<div>앨범</div>
				<div>재생시간</div>
				<div>작곡가</div>
				<div>작사가</div>
			</div>
			<div>
				<div><%= target.get("album") %></div>
				<div><%= (int)target.get("time") / 60  %> : <%= (int)target.get("time") % 60  %> </div>
				<div><%= target.get("composer") %></div>
				<div><%= target.get("lyricist") %></div>
			</div>
		</div>
	</div>
</div>

<div>
	<h4>가사</h4>
	<hr>
	가사 정보 없음
</div>