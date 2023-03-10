-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: k7b204.p.ssafy.io    Database: b204
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(200) NOT NULL,
  `examples` longtext NOT NULL,
  `answer` int NOT NULL,
  `explanation` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,'중국 경제 중심의 세계질서를 일컫는 용어로 알맞은 것은 무엇인가?','차이메리카:팍스시니카:팍스아메리카:베이징컨센서스',1,'오늘날에는 경제대국이 된 중국이 자신의 뜻대로 세계질서를 개편하여 중국이 주도하는 시대가 된다는 뜻이다.'),(2,'다음 중 주식거래시, 시가보다 주가가 상승하여 종가가 더 높게 끝나는 경우를 일컫는 말은 무엇인가?','양봉:음봉:영봉:봉봉',0,'양봉이란 시가보다 주가가 상승하여 종가가 높게 끝나는 경우를 말한다. 즉, 매수세가 강해지면서 강세로 끝을 맺는 양상을 말한다.'),(3,'제도금융권에 속하지 않는 나머지 금융기관으로 사금융권이란 말과 같은 뜻으로 사용되며, 소비자금융이라고도 불리는 것은 무엇인가?','제1금융권:제2금융권:제3금융권:제4금융권',2,'제3금융권에 관한 설명이며, 여기에는 주로 대출을 전문으로 하는 대부업체 및 사채업체가 해당된다.'),(4,'1987년 뉴욕 증시가 폭락한것으로 부터 유래한, 지수 폭락일을 나타내는 용어는 무엇인가?','대공황:블랙프라이데이:블랙먼데이:블랙잉크',2,'블랙먼데이에 관한 설명이다.'),(5,'다음 중 주가를 인위적으로 끌어 올리거나 내려서 시세 차익을 보는 것을 말하는 용어는 무엇인가?','승부조작:주가조작:여론조작:투표조작',1,'주가조작에 대한 설명이다. 증권 브로커, 대주주 등이 공모해서 특정 기업의 주식을 매입하여 주식값을 폭등시킨 후 시세가 좋을 때 주식을 되팔아 이익을 챙기는 작전주가 예이다.'),(6,'금융(Financial)과 기술(Technology)의 합성어로, 금융과 IT의 결합을 통해 새롭게 등장한 산업 및 서비스 분야를 일컫는 말은 무엇인가?','핀테크:빅데이터:나노테크:블록체인',0,'핀테크에 관한 설명이다. 핀테크로 인해 모바일, SNS, 빅 데이터 등 새로운 IT기술 등을 활용하여 기존 금융기법과 차별화된 금융서비스를 제공하는 기술기반 금융서비스 혁신이 일어나고 있다.'),(7,'다음 중 벤처기업들이 상장되어 있는 미국의 장외시장을 일컫는 말은?','자스닥(JASDAQ):나스닥(NASDAQ):코스피(KOSPI):코스닥(KOSDAQ)',1,'나스닥(NASDAQ)은 미국은 물론 전세계 첨단기술 산업체들의 활동기반이 되고 있으며, 인텔, 마이크로소프트 등의 첨단 정보통신업체들이 나스닥(National Association of Securities Automated Quotation)에 등록되어 있다.'),(8,'구축효과란?','정부지출의 감소 때문에 민간부문의 투자가 감소하는 현상:정부지출의 감소 때문에 민간부문의 투자가 증가하는 현상:정부지출의 증가 때문에 민간부문의 투자가 감소하는 현상:정부지출의 증가 때문에 민간부문의 투자가 증가하는 현상',2,'구축효과 : 정부지출 증가 때문에 민간부문의 투자가 감소하는 현상.'),(9,'다음 중 채권을 변제받는 경우 다른 일반 채권자보다 먼저 배당을 받을 수 있는 권리에 해당하는 용어는?','근저당권:우선변제권:대항권:주택임차권',1,'우선변제권에 관한 설명이다. 우선변제권을 행사하는 경우 선순위권자가 전액을 변제받은 뒤, 나머지에 대해 후순위권자가 변제를 받게 된다.'),(10,'금리가 낮은 통화로 자금을 조달해 금리가 높은 나라의 금융상품 등에 투자함으로써 수익을 내는 거래를 무엇이라 하는가?','핀 트레이드:캐리 트레이드:트럼프 트레이드:워시 트레이드',1,'캐리 트레이드(Carry Trade)는 금리가 낮은 통화로 자금을 조달해 금리가 높은 나라의 금융상품 등에 투자함으로써 수익을 내는 거래를 의미한다. 통상적으로는 금리 차 거래의 직접적인 대상이 되는 채권이나 대출자산 등에 대한 투자에 국한되지만, 보다 넓은 의미로는 주식이나 원자재, 부동산 등 수익을 낼 수 있는 다양한 종류의 자산에 대한 투자들을 두루 포괄한다.'),(11,'신용도가 낮은 회사가 발행한 것으로, 원리금 상환에 대한 불이행 위험이 큰 채권은 무엇인가?','아리랑본드:정크본드:딤섬본드:캥거루본드',1,'정크본드의 정크(Junk)란 쓰레기를 뜻하는 말로 직역하면 가치가 거의 없는 채권을 말한다. 기업의 신용등급이 아주 낮아 회사채 발행이 불가능한 기업이 발행하는 회사채로 고수익채권 또는 열등채라고도 부른다. 대표적인 외화채권에는 아리랑본드(우리나라의 대표적 외국채), 딤섬본드(중국의 국유은행인 공상은행과 농업은행이 발행하는 위안화 기반 채권), 캥거루본드(외국 정부나 외국 기업이 호주 국내 시장에서 호주 투자자들을 대상으로 판매하는 채권) 등이 있다.'),(12,'다음의 신문기사와 관련 있는 증시 격언은? <기사> 정부의 부동산 안정화 종합 대책의 반사 이익으로 주식시장이 활성화될 것이라는 기대감은 이날 정오 무렵 정부의 종합 대책 발표와 함께 사라지며 종합주가지수는 상승폭을 크게 줄였다.','소문에 사고 뉴스에 팔아라.:산이 높으면 계곡도 깊다.:달걀은 한 바구니에 전부 담지 마라.:눈 위에 서지 마라.',0,'재료는 이미 소문단계에서 주가에 반영되는 것이 일반적이어서 막상 공식적으로 발표되면 재료로서의 역할을 상실하고 주가는 오히려 하락하는 경우가 많다.'),(13,'미국 연방준비제도이사회(FRB) 의장의 연임이 부결돼 금융시장에 영향을 주는 것을 가리켜 ( )쇼크라 부른다. 빈 칸에 들어갈 알맞은 말은 무엇인가?','버냉키쇼크:닉슨쇼크:리먼쇼크:소버린쇼크',0,'버냉키쇼크. 실제로 버냉키 의장이 연임에 실패할 수도 있다는 전망이 확산될 때 뉴욕증시가 급락하기도 했다.'),(14,'( )이 발생하면 그 주가는 신주 배정에 따른 기대 이익만큼 하락하는 것이 보통이다. ( )에 들어갈 말로 적절한 것은?','배당락:현금 배당:액면 분할:권리락',3,'신주를 발행할 때에는 일정한 시점에 그 회사의 주주명부에 기재되어 있는 주주가 우선적으로 신주를 받을 권리가 주어진다. 권리락이란 주식을 사더라도 주주에게 부여되는 신주인수권 또는 신주의 무상 교부를 받을 권리가 없어진 상태를 말한다.'),(15,'일정 기간 동안 투자 심리의 변화를 파악하여 주식 시장의 상태를 진단하는 기준이 되는 수치는 무엇인가?','이동평균선:투자심리선:볼린저 밴드:이격도',1,'투자심리선은 단기적으로 심리가 과열한 상태인지 아니면 침체상태인지를 판단하여 과열상태일 때는 매수보다는 매도의 전략을 취하고 침체상태일 때는 매도보다 매수의 전략을 취하여 장세 대응을 객관적으로 하려는 데 있다.'),(16,'수익성이 안정적이고 재무구조가 건전한 기업의 주식으로 대형 우량주를 의미하는 것은?','레드칩:옐로우칩:화이트칩:블루칩',3,'블루칩은 오랜 시간동안 안정적인 이익을 창출하고 배당을 지급해온 수익성과 재무구조가 건전한 기업의 주식으로 대형 우량주를 의미한다.'),(17,'증권사가 제공하는 조사분석 서비스에 대하여 간접적으로 지급하는 거래수수료 형태의 비용을 무엇이라고 하는가?','소프트 달러:하드 달러:소프트 위안:하드 위안',0,'소프트 달러에 관한 설명이다. 소프트 달러는 자산운용사가 증권사에게 지급하는 위탁매매수수료의 한 형태를 말한다. 2번 하드 달러는 소프트 달러와 달리 재화나 서비스의 대가를 화폐로 직접 지급하는 금액이다.'),(18,'주식시장에서 대형 우량주 반열에는 들지 못하지만 양호한 실적에 기초한 주가상승의 기회가 있는 종목을 일컫는 말은 무엇인가?','블루칩:레드칩:그린칩:옐로우칩',3,'블루칩이 기업규모가 크고 실적이 우수하며 성장성도 밝은 기업의 초대형 우량주라면 옐로칩은 대기업의 중가권 주식, 경기변동에 민감한 업종 대표주 등 블루칩보다 조금 못한 중저가 우량주를 말한다.'),(19,'다음 중 코스피200에 대한 설명으로 옳지 않은 것은 무엇인가?','지수 산출 기준시점은 1990년 1월 3일이다.:코스피지수의 문제점을 극복하기 위해 개발되었다.:코스피200은 대형주의 시세를 주로 반영하는 경향이 있다.:중소형주의 시장 동향을 파악하기 수월한 지수이다.',3,'코스피지수(종합주가지수)는 거래량이 적은 종목들까지 모두 포함하기 때문에 시장 대표성이 떨어지는 문제가 있었다. 이 같은 문제를 해결하기 위해 만들어진 지수가 코스피200이다. 그러나 코스피200은 시가총액 비중이 큰 대형주의 시세를 주로 반영하고 중소형주의 시장 동향을 파악하기엔 미미하여 개인투자자들의 체감 장세와는 다소간의 거리가 있을 수 있다.'),(20,'증권사와 같은 금융기관에서 시행하는 것으로, 투자자의 성향에 맞추어 고객의 돈을 관리하는 맞춤형 서비스는 무엇인가?','랩 어카운트:주가연계증권(ELS):MMW:방카슈랑스',0,'랩 어카운트는 자산종합관리계좌로, 다양한 자산운용상품을 묶어서 고객의 기호에 따라 여러 서비스를 제공하는 계좌이다.');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-21  0:25:17
