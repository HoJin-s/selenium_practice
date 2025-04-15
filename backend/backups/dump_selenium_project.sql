-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: selenium_project
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articles_article`
--

DROP TABLE IF EXISTS `articles_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles_article` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `day_of_week_category` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `thumbnail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_article`
--

LOCK TABLES `articles_article` WRITE;
/*!40000 ALTER TABLE `articles_article` DISABLE KEYS */;
INSERT INTO `articles_article` VALUES (1,'\"얘네 또 나와?\"..\'나는솔로\' 출연자 우려먹기, 벌써 피곤한 \'지볶행\' [Oh!쎈 이슈]','[\"https://imgnews.pstatic.net/image/109/2025/02/25/0005249618_001_20250225051817918.jpg?type=w647\", \"[OSEN=박소영 기자] ‘나는 솔로’ 제작진이 또 출연진 우려먹기를 시작한다.\", \"오는 28일 첫 방송을 앞둔 SBS Plus·ENA·티빙 신규 예능 ‘지지고 볶는 여행’은 ‘나는 솔로’ 제작진이 ‘나솔사계’ 론칭 후 또다시 준비한 여행 리얼리티 프로그램이다. ‘지지고, 볶고, 속 끓이며 사는 것이 사랑과 인생’이라는 콘셉트로 그동안 ‘나는 솔로’에 나왔던 핫한 출연자들의 재회 여행을 예고하고 있다.\", \"슈퍼주니어 신동과 배우 경수진-이세희가 스튜디오 MC로 나서는 가운데 24일 티저를 통해 첫 번째 여행 주인공들이 공개됐다. ‘나는 솔로’와 ’사계’에서 최종 커플이었다가 헤어진 커플, 순애보로 좋아했지만 안타깝게 이어지지 못한 커플, 싸우다 정든 커플 등 각기 다른 사연을 가진 이들이 등장하는 것.\", \"https://imgnews.pstatic.net/image/109/2025/02/25/0005249618_002_20250225051817934.jpg?type=w647\", \"주인공은 ‘나는 솔로’ 10기 방송 당시 ‘손선풍기 플러팅’, ‘곱창찌개’ 진실공방 등으로 “언성 낮추세요” 유행어까지 탄생시킨 정숙과 영수를 비롯해 9기 옥순과 남자 4호, 22기 영숙과 22기 영수다. 다시 만난 이들 커플은 각각 여행을 떠나 지지고 깨 볶는 각양각색의 이야기를 안방에 전달할 예정이다.\", \"24일 공개된 티저부터 벌써 매콤하다. 수영복 얘기를 꺼낸 10기 영수엑 10기 정숙은 “검색하지 말라고 했잖아”라고 쏘아붙였고,  10기 영수는 “나한테 알려주면 내가 간다고, 어쩌라고~”라며 짜증을 부렸다. 10기 정숙은 또다시 “오빠가 얘기했잖아!”라고 받아쳤고 결국 10기 영수는 “말꼬리 잡고 그런 식으로 얘기하지 말고! 됐어! 얘기하지마! 시끄러워!”라며 발끈하고 말았다.\", \"이처럼 제작진은 10기 정숙, 9기 옥순, 22기 영숙 같은 화제성 높은 출연자들을 또다시 섭외해 쉬운 길을 택했다. 이들 모두 \'나는 솔로\'에 이어 \'나솔사계\'에 나와 사랑 찾기 대신 관심만 얻고 돌아갔던 인물.\", \"무엇보다 10기 정숙은 거침없는 언행으로, 9기 옥순은 출연 때마다 갈등을 빚는 이슈메이커로, 22기 영숙은 스스로 우월한 유전자라 자부하는 ‘자뻑’ 캐릭터로 출연 때마다 높은 화제성을 낳았던 바다.\", \"남규홍 PD로서는 관심이 고픈 화제의 출연자들을 재탕해 ‘나는 솔로’, ‘나솔사계’에 이어 다시 한번 자가복제를 꾀한 셈이다. “기존 \'나는 솔로\' 시리즈의 진정성 있는 매력은 유지하면서도, 여행이라는 새로운 포맷을 통해 더욱 자연스럽고 특별한 관계에서 오는 리얼리티 감정 여행을 그려낼 것”이라고 자신하고 있지만 시청자들로서는 벌써부터 피로감을 느끼고 있다.\", \"/comet568@osen.co.kr\"]','2025-02-25 00:00:00.000000','화요일','https://imgnews.pstatic.net/image/109/2025/02/25/0005249618_001_20250225051817918.jpg?type=w647'),(2,'이영자, ♥황동주와 정식 연인 됐다…핑크빛으로 맞은 \'돌아온 전성기\' [TEN피플]','[\"[텐아시아=김세아 기자]\", \"https://imgnews.pstatic.net/image/312/2025/02/24/0000701868_001_20250224200108777.jpg?type=w647\", \"/ 사진=텐아시아DB\", \"방송인 이영자가 데뷔 35년 만에 핑크빛 결실을 맺었다. 상대는 배우 황동주다. KBS 연애 리얼리티 프로그램 \'오래된 만남 추구\'에서 배우 황동주와 최종 커플이 되며 다시 한번 대중의 뜨거운 관심을 받고 있다.\", \"지난 23일 방송된 KBS Joy·KBS 2TV \'오래된 만남 추구\'(이하 \'오만추\')에서는 이영자(이유미)와 황동주가 남이섬 데이트를 즐긴 뒤 최종 커플이 됐다. 최종 선택에서 황동주는 \\\"그분 덕분에 \'내가 연기자가 된 게 너무 행복하다\'고 느꼈다. 데뷔 이래 제일 크게 느끼고 있다\\\"며 이영자를 선택했고 이영자도 이에 응했다.\", \"https://imgnews.pstatic.net/image/312/2025/02/24/0000701868_002_20250224200108807.jpg?type=w647\", \"/ 사진=KBS JOY \'오래된 만남 추구\'\", \"\'오만추\'는 무인도에 떨어져도 아무 일 없을 거라 믿었던 연예계 싱글들이 과거 스쳐 간 인연을 돌아보는 내용이다. 중년 연예인들이 출연자다. 이들은 미처 알아채지 못했던 그들의 진짜 인연을 찾는다. 이 과정을 통해 시청자들에게 \'꺼진 인연도 다시 보자\'는 메시지를 준다. 이영자, 장서희, 김숙, 우희진, 지상렬, 구본승, 황동주, 이재황이 출연해 저마다의 사랑을 꽃피웠다.\", \"특히 황동주는 이영자를 \'30년 이상형\'이라고 밝히면서 많은 시청자의 관심과 응원을 받았다. 이영자를 향한 마음을 거침없이 드러낸 황동주와 그런 그를 내심 신경 쓰는 이영자의 모습이 공개되며 두 사람의 커플 성사를 향한 시청자들의 뜨거운 응원이 이어졌다.\", \"https://imgnews.pstatic.net/image/312/2025/02/24/0000701868_003_20250224200108841.jpg?type=w647\", \"/ 사진=KBS JOY \'오래된 만남 추구\'\", \"데뷔 35년 동안 열애설 한번 없었던 이영자이기에 연애 프로그램에 출연한다는 사실 만으로도 큰 화제가 됐다. 비록 \'오만추\'의 시청률은 KBS JOY에서는 닐슨코리아 전국 가구 기준 최고 0.3%를 기록했고 KBS2에서는 최고 2.8%를 기록하면서 한 자릿수에 머물렀지만, 프로그램의 화제성만큼은 폭발적이었다.\", \"온라인 커뮤니티와 SNS에서는 두 사람의 러브스토리를 두고 다양한 반응이 이어지고 있다. 특히 이영자의 새로운 모습을 반가워하는 반응이 많았다. MBC \'전지적 참견 시점\'에서 먹거리로만 화제가 됐던 지난 과거와는 확연히 다른 모습을 보였기 때문이다.\", \"https://imgnews.pstatic.net/image/312/2025/02/24/0000701868_004_20250224200108876.jpg?type=w647\", \"/ 사진=KBS JOY \'오래된 만남 추구\'\", \"이영자는 남에게 웃음을 줬던 그동안의 모습과는 다르게 특히 연애 프로그램에서 수줍어하는 모습, 진심 어린 고백 등 평소와는 다른 면모를 보여주며 색다른 매력을 선보였다. 유쾌한 입담과 먹방 이미지로 대중에게 익숙했던 모습보다는 새로운 모습을 보이며 다시 한번 전성기를 맞았다.\"]','2025-02-25 00:00:00.000000','화요일','https://imgnews.pstatic.net/image/312/2025/02/24/0000701868_001_20250224200108777.jpg?type=w647'),(3,'\'다니엘 언니\' 올리비아 마쉬, 자작곡 표절 인정…\"진심으로 사과\" [공식](전문)','[\"https://imgnews.pstatic.net/image/117/2025/02/24/0003916478_001_20250225004306510.jpg?type=w647\", \"올리비아 마쉬 / 마이데일리\", \"[마이데일리 = 김지우 기자] 뉴진스 다니엘의 언니이자 가수 올리비아 마쉬 측이 자작곡 \'백시트\'의 표절을 인정했다.\", \"24일 올리비아 마쉬의 소속사 엠플리파이 측은 \\\"올리비아 마쉬는 지난 13일 첫 번째 앨범 \'Meanwhile\'(민와일)을 발매했다. 이후 앨범에 수록된 더블 타이틀곡 중 \'Backseat\'(백시트)가 아이작 던바의 \'Onion Boy\'(어니언 보이)와 유사하다는 논란이 불거졌다\\\"며 \\\"당사는 직접 두 곡을 비교해본 결과 아이작 던바의 주장에 일리가 있다고 해석했다\\\"고 밝혔다.\", \"이어 \\\"아이작 던바와 원만한 합의를 마쳤으며, 원작자의 권리가 보장될 수 있도록 작곡 지분에 대한 협의, 크레딧 등록 등 필요한 제반 업무를 진행하고 있다\\\"고 전했다.\", \"그러면서 \\\"이번 일을 교훈 삼아 내부 시스템을 점검하여 앞으로 이와 같은 사태가 다시는 발생하지 않도록 면밀하게 살피겠다. 다시 한번 아이작 던바에게 고개 숙여 사과드리며, 이번 사태로 인해 실망하셨을 팬분들께도 진심으로 사과의 말씀 드린다\\\"고 덧붙였다.\", \"한편, 올리비아 마쉬는 \'백시트\'의 작사, 작곡, 편곡에 참여했다. 현재 작곡 크레딧에는 올리비아 마쉬와 더불어 원곡자 아이작 던바의 이름이 추가됐다.\", \"https://imgnews.pstatic.net/image/117/2025/02/24/0003916478_002_20250225004306546.jpg?type=w647\", \"올리비아 마쉬 / 마이데일리\", \"▲ 이하 올리비아 마쉬 측 전문\", \"안녕하세요. 엠플리파이입니다.\", \"최근 불거진 올리비아 마쉬 관련 이슈에 대한 입장 전달드립니다.\", \"올리비아 마쉬는 지난 13일 첫 번째 앨범 \'Meanwhile\'(민와일)을 발매한 바 있습니다. 발매 이후 앨범에 수록된 더블 타이틀곡 중 \'Backseat\'(백시트)가 아이작 던바(Isaac Dunbar)의 \'Onion Boy\'(어니언 보이)와 유사하다는 논란이 불거졌습니다.\", \"당사는 직접 두 곡을 비교해본 결과 아이작 던바의 주장에 일리가 있다고 해석했습니다. 이에 아이작 던바와 원만한 합의를 마쳤으며, 원작자의 권리가 보장될 수 있도록 작곡 지분에 대한 협의, 크레딧 등록 등 필요한 제반 업무를 진행하고 있습니다.\", \"이는 창의성과 공정한 예술적 관행에 대한 저희의 공동된 헌신을 반영한 결과입니다. 당사는 모든 창작자에 대한 투명성과 존중을 바탕으로 계속해서 작업을 이어나가겠습니다.\", \"당사는 이번 일을 교훈 삼아 내부 시스템을 점검하여 앞으로 이와 같은 사태가 다시는 발생하지 않도록 면밀하게 살피겠습니다. 다시 한번 아이작 던바에게 고개 숙여 사과드리며, 이번 사태로 인해 실망하셨을 팬분들께도 진심으로 사과의 말씀 드립니다.\"]','2025-02-25 00:00:00.000000','화요일','https://imgnews.pstatic.net/image/117/2025/02/24/0003916478_001_20250225004306510.jpg?type=w647'),(4,'父 김봉곤 훈장, 은행 빚만 26억원 졌는데…해명한 김다현 \"수익, 직접 관리해\"(\'가보자고\')','[\"[텐아시아=류예지 기자]\", \"https://imgnews.pstatic.net/image/312/2025/02/24/0000701891_001_20250224213411750.jpg?type=w647\", \"김다현\", \"MBN ‘가보자GO(가보자고)’에 출연한 김봉곤, 김다현 부녀가 사랑이 가득한 에피소드로 종합편성채널 시청률 1위를 기록했다.\", \"23일 방송된 MBN ‘가보자GO’ 시즌4 3회는 호랑이 훈장에서 딸의 매니저로 변신, 제2의 인생을 살고 있는 훈장 김봉곤과 국악 트롯 요정으로 불리며 각종 트로트 오디션을 싹쓸이한 영재 김다현이 출연해 현실 부녀의 솔직한 이야기와 따뜻한 노래로 시청자들의 눈과 귀를 사로잡았다. 이 날 방송은 시청률 3.2%를 기록했다.\", \"김다현을 위해 2년 전부터 서울살이를 시작한 김봉곤, 김다현 가족의 첫 서울 아파트에 초대받은 MC들은 서울살이 소감을 궁금해했다. 아빠 김봉곤은 “서울에 대한 로망이 없다”라고 밝혔고, 딸 김다현은 “좋기만 할 줄 알았는데 공기가 답답하더라. 차에 있는 시간이 많아 불편한 점도 있다”라고 서울살이의 힘든 점을 고백했지만 “교통도 편리하고 편의점도 가까워서 좋다. 뷰티 스토어도 있고”라며 10대 소녀다운 행복한 미소를 지으며 서울살이에 만족했다.\", \"https://imgnews.pstatic.net/image/312/2025/02/24/0000701891_002_20250224213411785.jpg?type=w647\", \"[사진 출처 : MBN \'가보자GO\' 캡처]\", \"MC들은 김봉곤에게 “분리수거 때문에 혼난 적이 있다던데?”라고 물었고, 김봉곤은 “분리수거는 엄마 담당이라고 생각했는데, 대부분 남자가 하더라”라며 당황했던 첫 분리수거 소감을 전했다. 김봉곤의 아내는 “분리수거를 잘못하면 피해를 줄 수 있어 처음에 같이 내려갔는데, 분리를 안 하고 한 번에 버리더라. 그래서 가르쳐 줬다”라며 아찔했던 기억을 전했다.\", \"MC들은 부모님과 함께 일하는 김다현에게 “수익 관리는 누가 하는가?”라고 물었고, 김다현은 “내 몫은 내가 관리한다.”라고 똑 부러지게 답했다. MC들은 “가족이라도 금전적인 문제는 굉장히 민감하다”라고 걱정했지만, 김다현의 엄마는 “다현이가 굉장히 철저하고, 자신의 수익을 확실히 챙긴다”라고 답했다. 특히 함께 이야기를 나누던 MC들은 김다현의 똑 부러짐에 놀라며 “건강한 것 같다”, “가정교육을 잘 받아서 그런 것 같다”라며 감탄했다.\", \"MC들은 김다현에게 “원래 꿈이 가수였나?” 물었고, 김다현은 “판소리를 시작한 뒤에는 판소리 명창이 꿈이었고, 트로트 가수를 하면서 세계적인 가수를 꿈꾸게 됐다”라고 답했다. MC들은 김다현의 재능을 어떻게 발견하게 되었는지 궁금해했고, 김봉곤은 “첫째와 둘째는 소질은 있는데 하기 싫어했고, 셋째와 넷째(다현)는 재능이 있어 시켜보니 ‘이 길로 가야겠다’ 싶었다. 좋은 선생님이 있으면 전국 팔도를 찾아다니면서 배웠다”라고 답했다.\", \"이야기를 나누던 중 김봉곤의 셋째 딸이자 퓨전 댄스 트로트 걸그룹 파스텔걸스의 메인 보컬인 김도현이 합류했고, 안정환은 ‘올해 20살로 술을 마시게 되었다’는 김도현의 말에 “딸이 성인이 된 날 술을 가르쳐 줬는데, 그날 딸이 따라준 술이 세상에서 제일 맛있었다. 최고다”라며 딸과 함께했던 행복했던 기억을 전했다.\", \"이어 성격이 전혀 다른 부모님과 일하는 김다현에게 MC들은 “아버지 때문에 답답했던 적 있나?” 궁금해했고, 김다현은 “답답하지는 않지만, 성격이 나랑 다르시다. 충돌이 있다”라고 답했다. 김다현의 엄마는 “도현이는 아직도 아빠를 안아주고 뽀뽀도 한다. 하지만 다현이는 하지 않는다”라고 말했고, 안정환은 “사춘기는 누구나 겪는 거니까”라고 아빠 김봉곤을 위로했다.\", \"이어 “나도 사춘기 아들을 때린 적이 있다”라고 운을 뗀 안정환은 “남자애들은 사춘기에 잡아야 한다. 그렇지 않으면 화가 (상대적으로 힘이 약한) 엄마에게 간다”라며 “지금 잡지 않으면 더 나빠질 것 같아서 때렸는데, 때리고 나서 내 손을 자르고 싶더라. 그런데 아들을 위해서는 해야 할 것 같았다”라며 사랑하는 아들을 위해 훈육을 해야했던 가슴 아픈 에피소드를 전해 모두를 놀라게 했다.\", \"마지막으로 김다현은 아버지에게 직접 쓴 편지를 전했고, 자신을 위해 희생한 아버지를 향한 마음이 담긴 딸의 편지에 모든 가족이 눈물을 흘려 보는 이들까지 먹먹하게 만들었다. 특히 김봉곤은 “요즘은 메신저를 쓰는데 하트가 없더라, 나에게 올 하트가 어딘가로 갔다는 거 아니냐. 그런데 다현이 편지 뒤에 하트가 있다”라며 울먹였고, 김다현은 김봉곤에게 “사랑합니다”라며 하트를 선물해 감동을 자아냈다. 편지뿐만 아니라 김다현은 아버지를 위한 헌정곡으로 나훈아의 영영을 불렀고, 아름다운 노래로 마지막까지 진한 여운을 선사했다.\", \"한편 김봉곤은 2023년 MBN \'특종세상\'에 출연해 서당을 크게 지었다가 은행 빚만 26억을 졌다고 고백했다. 당시 김봉곤은 \\\"캐피탈(제2금융권) 돈도 써봤다. 이자가 25%였다\\\"며 빚더미에 앉아 쫓기듯 진천으로 내려간 사연을 밝혔다.\", \"이후 지난해 9월 JTBC 예능 \'아는 형님\'에 출연한 김다현은 \\\"요즘 사람들이 나보고 돈 벌어서 네가 갚냐고 많이 하더라\\\"며 \\\"아니다. 우리 아버지가 열심히 해서 다 갚으셨고, 우리 가족이 돈 관리가 명확하다\\\"고 해명했다.\"]','2025-02-25 00:00:00.000000','화요일','https://imgnews.pstatic.net/image/312/2025/02/24/0000701891_001_20250224213411750.jpg?type=w647');
/*!40000 ALTER TABLE `articles_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add article',7,'add_article'),(26,'Can change article',7,'change_article'),(27,'Can delete article',7,'delete_article'),(28,'Can view article',7,'view_article');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$sBheEHczxaOXOJOyuZYUaE$xDTurGT/mtSpMjINrvtG1tT7HuTALFZZf3sM5edfoiI=','2025-02-25 02:42:26.270194',1,'admin','','','admin@admin.com',1,1,'2025-02-25 01:04:06.821067');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'articles','article'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-02-25 00:39:37.531146'),(2,'auth','0001_initial','2025-02-25 00:39:37.844150'),(3,'admin','0001_initial','2025-02-25 00:39:37.924132'),(4,'admin','0002_logentry_remove_auto_add','2025-02-25 00:39:37.929131'),(5,'admin','0003_logentry_add_action_flag_choices','2025-02-25 00:39:37.933981'),(6,'articles','0001_initial','2025-02-25 00:39:37.946441'),(7,'articles','0002_remove_article_summary','2025-02-25 00:39:37.965101'),(8,'articles','0003_remove_article_image','2025-02-25 00:39:37.981365'),(9,'articles','0004_article_thumbnail','2025-02-25 00:39:37.999211'),(10,'articles','0005_alter_article_created_at','2025-02-25 00:39:38.001224'),(11,'articles','0006_alter_article_created_at','2025-02-25 00:39:38.004226'),(12,'articles','0007_alter_article_created_at','2025-02-25 00:39:38.007224'),(13,'articles','0008_alter_article_created_at','2025-02-25 00:39:38.009731'),(14,'articles','0009_alter_article_created_at','2025-02-25 00:39:38.012154'),(15,'articles','0010_alter_article_created_at','2025-02-25 00:39:38.014153'),(16,'articles','0011_alter_article_options','2025-02-25 00:39:38.017154'),(17,'articles','0012_alter_article_options','2025-02-25 00:39:38.019154'),(18,'articles','0013_alter_article_content','2025-02-25 00:39:38.040206'),(19,'articles','0014_alter_article_content','2025-02-25 00:39:38.062234'),(20,'articles','0015_alter_article_content','2025-02-25 00:39:38.083767'),(21,'articles','0016_alter_article_content','2025-02-25 00:39:38.103365'),(22,'contenttypes','0002_remove_content_type_name','2025-02-25 00:39:38.172125'),(23,'auth','0002_alter_permission_name_max_length','2025-02-25 00:39:38.208116'),(24,'auth','0003_alter_user_email_max_length','2025-02-25 00:39:38.221568'),(25,'auth','0004_alter_user_username_opts','2025-02-25 00:39:38.227569'),(26,'auth','0005_alter_user_last_login_null','2025-02-25 00:39:38.262142'),(27,'auth','0006_require_contenttypes_0002','2025-02-25 00:39:38.264141'),(28,'auth','0007_alter_validators_add_error_messages','2025-02-25 00:39:38.269142'),(29,'auth','0008_alter_user_username_max_length','2025-02-25 00:39:38.309439'),(30,'auth','0009_alter_user_last_name_max_length','2025-02-25 00:39:38.354973'),(31,'auth','0010_alter_group_name_max_length','2025-02-25 00:39:38.366798'),(32,'auth','0011_update_proxy_permissions','2025-02-25 00:39:38.371317'),(33,'auth','0012_alter_user_first_name_max_length','2025-02-25 00:39:38.412329'),(34,'sessions','0001_initial','2025-02-25 00:39:38.436015');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('glb0665ega54zmgn527xta7bs91ev2dd','.eJxVjEEOgjAQRe_StWnaGWjBpXvP0Ew7M4IaSCisjHdXEha6_e-9_zKJtnVIW5UljWzOxpvT75apPGTaAd9pus22zNO6jNnuij1otdeZ5Xk53L-DgerwrZ1AQceeNITeQ0tFEblERzk0LYpy18TspA8aOgRUYuHeKUIBgajm_QHtxThb:1tmktu:k2SevYR44Frk7i9i0f0-ZEUGTdLhtNaCK3sE3F6n0ac','2025-03-11 02:42:26.271699');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_summary`
--

DROP TABLE IF EXISTS `user_summary`;
/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary` AS SELECT 
 1 AS `id`,
 1 AS `username`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `user_summary`
--

/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_summary` AS select `auth_user`.`id` AS `id`,`auth_user`.`username` AS `username`,`auth_user`.`email` AS `email` from `auth_user` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-25 23:19:25
