class NeighborhoodLife {
  final String category;
  final String profileImageUrl;
  final String username;
  final String location;
  final String content;
  final String contentImageUrl;
  final int commentCount;
  final int authCount;
  final String date;

  NeighborhoodLife({
    required this.category,
    required this.profileImageUrl,
    required this.username,
    required this.location,
    required this.content,
    required this.contentImageUrl,
    required this.commentCount,
    required this.authCount,
    required this.date,
  });
}

String lifeTitle = '이웃과 함께 만드는 봄 간식 지도 마음까지 따듯해지는 봄 간식을 만나보세요';
List<NeighborhoodLife> neighborhoodLifeList = [
  NeighborhoodLife(
    category: '우리동네질문',
    profileImageUrl: 'https://picsum.photos/200/300',
    username: '헬로키티',
    location: '좌동',
    content: '예민한 강아지도 미용할 수 있는 곳이나 동물 병원 어디 있을까요? \n'
        '내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요 ㅜㅜ',
    contentImageUrl: 'https://picsum.photos/200/300',
    commentCount: 11,
    authCount: 3,
    date: '3시간 전',
  ),
  NeighborhoodLife(
    category: '우리동네소식',
    profileImageUrl: 'https://picsum.photos/200/300',
    username: '당근토끼',
    location: '우동',
    content: '이명 치료 잘하는 병원 추천해주세요',
    contentImageUrl: 'https://picsum.photos/200/300',
    commentCount: 2,
    authCount: 1,
    date: '1일 전',
  ),
  NeighborhoodLife(
    category: '분실',
    profileImageUrl: 'https://picsum.photos/200/300',
    username: '플러팅고수',
    location: '중동',
    content: '롯데 3차 니나도 롯데캐슬 방향으로 재래시장 앞쪽 지나 혹시 에어팟 오른쪽 주우신 분 있나요 ㅠㅠ',
    contentImageUrl: '',
    commentCount: 11,
    authCount: 8,
    date: '1일 전',
  ),
  NeighborhoodLife(
    category: '우리동네질문',
    profileImageUrl: 'https://picsum.photos/200/300',
    username: '구르밍',
    location: '우동',
    content: '밤부터 새벽까지 하던 토스트 아저씨 언제 다시 오나요 ㅠㅠ',
    contentImageUrl: '',
    commentCount: 0,
    authCount: 7,
    date: '3일 전',
  ),
  NeighborhoodLife(
    category: '우리동네질문',
    profileImageUrl: 'https://picsum.photos/200/300',
    username: '아는형',
    location: '만덕동',
    content: '오늘 오픈한 카페 추천해주세요',
    contentImageUrl: 'https://picsum.photos/200/300',
    commentCount: 11,
    authCount: 2,
    date: '5일 전',
  ),
];
