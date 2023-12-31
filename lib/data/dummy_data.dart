import 'package:flutter/material.dart';
import 'package:dish_app/models/category.dart';
import 'package:dish_app/models/meal.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'c1',
    title: '발라드',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: '댄스',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: '랩/힙합',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'R&B/Soul',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: '인디음악',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: '록/메탈',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: '트로트',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: '토크/블루스',
    color: Colors.lightGreen,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: '중독',
    score: 4.1,
    good: 23,
    artist: '유림',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/78/847/11278847_20230704140737_1000.jpg',
    duration: 20,
    ingredients: [
      '중독',
      '2023.07.05',
      '지니뮤직',
    ],
    steps: [
      '잊지 말아요 날 기억해줘요 우리 함께한 지난 날 까지',
      '보고 싶어도 볼 수조차 없죠 그댄 아나요 아픔이 가시지 않아',
      '떠나가라고 소리친대도 움직이지 않을 래',
      '내 마음속엔 온통 너라서 아직도 떨리는데',
      '그리워 하다가 죽어도 영원히 널 잊지 못해'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: false,
    isthousand: false,
    isOne: false,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: '마침표',
    score: 2.8,
    good: 3,
    artist: '연희',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/78/917/11278917_20230704142347_1000.jpg',
    duration: 10,
    ingredients: [
      '마침표',
      '2023.07.05',
      '비스킷 사운드',
    ],
    steps: [
      '언젠가부터 느꼈던 건',
      '우린 참 멀어졌다는 거',
      '어쩌다 보니',
      '사는 게 힘들어서',
      '만나는 시간을 멀리하고'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: false,
    isthousand: false,
    isOne: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: '그대를 다시 사랑하게 된다면',
    score: 5.0,
    good: 2,
    artist: '창욱',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/79/385/11279385_20230704181746_1000.jpg',
    duration: 45,
    ingredients: [
      '흔적',
      '2023.07.05',
      '뮤즈플랫폼',
    ],
    steps: [
      '그대 발자국을 남겨줘요',
      '난 그냥 덮으며 따라갈게요',
      '뒤에서만 따라갈 수 있게 해줘요',
      '아무 말도 하지 않을게요',
      '아무 말도 하지 말아요 더는'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: false,
    isthousand: false,
    isOne: false,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: '결말',
    score: 0.0,
    good: 0,
    artist: '이홍희',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/79/126/11279126_20230704151752_1000.jpg',
    duration: 60,
    ingredients: [
      '결말',
      '2023.07.05',
      '광수미디어',
    ],
    steps: [
      '이별은 언제나',
      '후회만 하게 만들고',
      '감당할 만큼의 아픔만',
      '내게 남겨',
      '모자랐던 나의 마음을'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
    isHundred: false,
    isthousand: false,
    isOne: false,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c1'
    ],
    title: '헤어지자 말해요',
    score: 4.9,
    good: 6010,
    artist: '박재정',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/27/533/11227533_20230419162238_1000.jpg',
    duration: 15,
    ingredients: [
      '1집 Alone',
      '2023.04.20',
      '카카오엔터테인먼트',
    ],
    steps: [
      '헤어지자고 말하려 오늘',
      '너에게 가다가 우리 추억 생각해 봤어',
      '처음 본 네 얼굴',
      '마주친 눈동자',
      '가까스로 본 너의 그 미소들'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: true,
    isthousand: true,
    isOne: false,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c2',
    ],
    title: '빵상빵상홍',
    score: 5.0,
    good: 2,
    artist: '최윤',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/79/357/11279357_20230704180049_1000.jpg',
    duration: 240,
    ingredients: [
      '빵상빵상홍',
      '2023.07.05',
      '얼스뮤직',
    ],
    steps: [
      '우리집에 왜 왔니 꽃 찾으러 왔단다',
      '무슨꽃을 찾을까 예쁜꽃을 찾는다',
      '우리 어릴적 부르던 동요',
      '지금도 추억에 젖어 부르네',
      '그리운 동네 옛친구 잘 지내고 있을까'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: false,
    isthousand: false,
    isOne: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c2',
    ],
    title: '슬퍼서 Smile',
    score: 0.0,
    good: 1,
    artist: '이은정',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/78/021/11278021_20230703165058_1000.jpg',
    duration: 20,
    ingredients: [
      '슬퍼서 Smile',
      '2023.07.04',
      '오감엔터테인먼트',
    ],
    steps: [
      '할말 없이 소리쳐',
      '또 바보사랑 안할래',
      '처음 느낀 너의 맘',
      '내 맘 속에 들끓었지',
      '지구 끝에서 빙빙 돌려'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
    isHundred: false,
    isthousand: false,
    isOne: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c2',
    ],
    title: 'FEAR',
    score: 0.0,
    good: 0,
    artist: '김윤하',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/78/020/11278020_20230703165006_1000.jpg',
    duration: 35,
    ingredients: [
      'FEAR',
      '2023.07.04',
      '오감엔터테인먼트',
    ],
    steps: [
      '두려움이 날 찾아 올 때',
      '떠오르는 순간이 난 있지',
      '어릴 적 그 경기장 속',
      'ceiling and the flag',
      'whistle 이 울리고',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
    isHundred: false,
    isthousand: false,
    isOne: true,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c2',
    ],
    title: 'Roller Coaster',
    score: 4.9,
    good: 3500,
    artist: 'NMIXX',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/77/698/11277698_20230703131244_1000.jpg',
    duration: 35,
    ingredients: [
      'FEAR',
      '2023.07.03',
      'Dreamus',
    ],
    steps: [
      'Mm-hmm, so incredible',
      'Can''t you see, can''t you see?',
      '여기 모여봐',
      'Chemistry, chemistry',
      '반응하잖니',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: true,
    isthousand: true,
    isOne: true,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: '다행',
    score: 4.8,
    good: 27,
    artist: 'Mix.audio, unofficialboyy',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/78/671/11278671_20230704114341_1000.jpg',
    duration: 35,
    ingredients: [
      '다행',
      '2023.07.05',
      '뮤직카로마',
    ],
    steps: [
      '그때 나는 그랬다며 웃으면서 말해',
      '그때 내가 그랬냐며 웃기만 한다네',
      '한 마디가 어려운 아빠의 용기에 반갑게',
      '산을 오를줄은 아들처럼 오랜만에',
      '한 마디가 어려운 아빠의 용기에 반갑게'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: false,
    isthousand: false,
    isOne: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'BloodLILY',
    score: 5.0,
    good: 0,
    artist: '릴리',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/79/035/11279035_20230704144812_1000.jpg',
    duration: 35,
    ingredients: [
      'BLOODLILY',
      '2023.07.05',
      'KOBUCO',
    ],
    steps: [
      '뭐 되는 척들 해 내 보기엔 끝 부러진 송곳',
      '상반돼, 보여 내 똑 부러진 성공',
      '잊지 못할 419bro yuh',
      '뚫어부렀으 drilLILY bro yuh',
      '이제는 불러 bloodLILY bro'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: false,
    isthousand: false,
    isOne: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'Really?',
    score: 0.0,
    good: 0,
    artist: 'Narkissa',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/78/770/11278770_20230704134737_1000.jpg',
    duration: 35,
    ingredients: [
      'Really?',
      '2023.07.05',
      'The NIF Music',
    ],
    steps: [
      'When I was 19 years old',
      'I lived with Gothree Now my age is 25 years old',
      'But I can recall when we had strange things ',
      'So easily too easily like in front of my eyes',
      'Oneday friend A came our home'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
    isHundred: false,
    isthousand: false,
    isOne: true,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'Shut Down',
    score: 4.8,
    good: 42827,
    artist: 'BLACKPINK',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/110/33/394/11033394_20220916124707_1000.jpg',
    duration: 35,
    ingredients: [
      'BORN PINK',
      '2022.09.16',
      'YG PLUS',
    ],
    steps: [
      'Blackpink in your area',
      'Blackpink in your area',
      '컴백이 아냐 떠난 적 없으니까',
      '고개들이 돌아 진정해 목 꺾일라',
      '분홍빛의 얼음 drip drip drip'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: true,
    isthousand: true,
    isOne: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c4',
    ],
    title: '기억의 집',
    score: 3.5,
    good: 6,
    artist: 'Izyperry',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/79/190/11279190_20230704163503_1000.jpg',
    duration: 35,
    ingredients: [
      '기억의 집',
      '2023.07.05',
      '워너뮤직/ADA',
    ],
    steps: [
      '기억 속을 넘어',
      '난 마치 travel through a broken time',
      'Like butter butter fly 날아',
      '나쁜 꿈 고이 접어',
      '기억의 집을 지어'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: false,
    isHundred: false,
    isthousand: false,
    isOne: true,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c4',
    ],
    title: '알게 해줘',
    score: 2.8,
    good: 2,
    artist: '히튼',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/79/540/11279540_20230705100440_1000.jpg',
    duration: 35,
    ingredients: [
      '알게 해줘',
      '2023.07.05',
      'Dreamus',
    ],
    steps: [
      '이리 와봐 babe',
      '더 이상 내게 숨기지 마 더 lady',
      '왜 그렇게 애태우는 거야 ah',
      '시간이 부족해 more, 부족해 more',
      '눈 감으면 1, 2, 3'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: false,
    isthousand: false,
    isOne: true,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c4',
    ],
    title: '밤을 헤매',
    score: 0.0,
    good: 2,
    artist: '리브',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/78/503/11278503_20230704112523_1000.jpg',
    duration: 35,
    ingredients: [
      '밤을 헤매',
      '2023.07.05',
      '비스킷 사운드',
    ],
    steps: [
      '나는 어쩜 그래',
      '이렇게 널',
      '떠올리다 보면 난 사실',
      '그때로 돌아가고 싶단 맘에',
      '난 또 밤을 헤매'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
    isHundred: false,
    isthousand: false,
    isOne: true,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c4',
    ],
    title: '빛이 나는 너에게',
    score: 4.8,
    good: 3010,
    artist: '던',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/22/887/11222887_20230412154617_1000.jpg',
    duration: 35,
    ingredients: [
      '빛이 나는 너에게',
      '2023.04.13',
      '카카오엔터테인먼트',
    ],
    steps: [
      '그때 널 만나지 않았더라면',
      '지금의 우린 어디에 있을까',
      '가장 예쁠 때의 너를 만나서',
      '누가 뭐라 해도 뭐든 견딜 수가 있었어',
      '빛이 나는 널 위해 많은 걸'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: true,
    isthousand: true,
    isOne: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c5',
    ],
    title: '왜 이러는지 몰라',
    score: 4.1,
    good: 25,
    artist: '레터 플로우',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/79/353/11279353_20230704175533_1000.jpg',
    duration: 35,
    ingredients: [
      '우편물 보관함 Episode. 5',
      '2023.07.05',
      'NHN벅스',
    ],
    steps: [
      '언제부턴가 내가',
      '조금 이상해졌어',
      '가만있다가도',
      '네가 생각나',
      '한 번도 이런 적이'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: false,
    isthousand: false,
    isOne: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c5',
    ],
    title: '그늘',
    score: 5.0,
    good: 8,
    artist: '네쉬핍',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/78/420/11278420_20230704111303_1000.jpg',
    duration: 35,
    ingredients: [
      '그늘',
      '2023.07.05',
      '미러볼뮤직',
    ],
    steps: [
      '닿을듯한 우리의 마음의 거리는\n아쉽게도 좁혀지지 않았고\n그럴듯하게 포장한 예쁜 말들로\n상처받은 마음 감추며 지냈었지\n설렘으로 가득했던 시간들이',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: false,
    isthousand: false,
    isOne: true,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c5',
    ],
    title: '밤공기가 좋아서',
    score: 0.0,
    good: 5,
    artist: '이다운',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/78/953/11278953_20230704142956_1000.jpg',
    duration: 35,
    ingredients: [
      '밤공기가 좋아서',
      '2023.07.05',
      '뮤직앤뉴',
    ],
    steps: [
      '바람 소리가 들려와\n내 귓가에 스쳐서 귀에 맴돌 때쯤\n네가 내게로 불어와\n좋은 향기가 날 감싸며\n잠이 들 때쯤에',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: false,
    isthousand: false,
    isOne: true,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c5',
    ],
    title: '찬란한 하루',
    score: 4.9,
    good: 2745,
    artist: '멜로망스',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/52/530/11252530_20230526144416_1000.jpg',
    duration: 35,
    ingredients: [
      '찬란한 하루',
      '2023.05.29',
      '카카오엔터테인먼트',
    ],
    steps: [
      '너무나 익숙한 안녕과\n조금은 어색한 침묵들도\n너와 나눴던 평범함들이\n내게는 빛나는 설렘이야\n가끔은 이렇게',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: true,
    isthousand: true,
    isOne: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c6',
    ],
    title: 'Hallelujah',
    score: 5.0,
    good: 10,
    artist: '지프크락',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/78/853/11278853_20230704140942_1000.jpg',
    duration: 35,
    ingredients: [
      'Hallelujah',
      '2023.07.05',
      '지니뮤직',
    ],
    steps: [
      'hey Come into my room\nYou can see all my pain\nAllday, more shape\nI''m like a diamond\nMore press for Me',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: false,
    isthousand: false,
    isOne: true,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c6',
    ],
    title: '녹아내리는 고양이',
    score: 0.5,
    good: 6,
    artist: 'Anna',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/78/777/11278777_20230704134846_1000.jpg',
    duration: 35,
    ingredients: [
      '녹아내리는 고양이',
      '2023.07.05',
      '주식회사 블렌딩',
    ],
    steps: [
      '아이스크림처럼\n녹아버릴 테지\n햇살이 따스해서\n어디로 갈지를 몰라\n\n녹아내리는 고양이',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: false,
    isthousand: false,
    isOne: true,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c6',
    ],
    title: '경주 바다',
    score: 0.0,
    good: 0,
    artist: '소울일렉',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/78/936/11278936_20230704142803_1000.jpg',
    duration: 35,
    ingredients: [
      '경주 바다',
      '2023.07.05',
      '카이오스',
    ],
    steps: [
      '내 맘속 깊은 푸른 바다는\n니 모습 닮은 하늘 품고\n너를 찾아 가고 있는 우리들을\n눈 부신 해와 반겨주네\n\n모처럼 푸른 너를 찾아가',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: false,
    isthousand: false,
    isOne: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c6',
    ],
    title: '사건의 지평선',
    score: 4.9,
    good: 26646,
    artist: '윤하',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/109/03/868/10903868_20220330103544_1000.jpg',
    duration: 35,
    ingredients: [
      'YOUNHA 6th Album Repackage ''END THEORY : Final Edition''',
      '2022.03.30',
      '카카오엔터테인먼트',
    ],
    steps: [
      '생각이 많은 건 말이야\n당연히 해야 할 일이야\n나에겐 우리가 지금 1순위야\n안전한 유리병을 핑계로\n바람을 가둬 둔 것 같지만',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: true,
    isthousand: true,
    isOne: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c7',
    ],
    title: '여백',
    score: 5.0,
    good: 188,
    artist: '손태진',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/79/106/11279106_20230704151154_1000.jpg',
    duration: 35,
    ingredients: [
      '불타는장미단 PART 5',
      '2023.07.05',
      '카카오엔터테인먼트',
    ],
    steps: [
      '처음 만났던 그 순간부터\n우린 서로 마음이 끌려\n\n하얀 가슴에 오색 무지개\n곱게 곱게 그렸었지\n\n우리는 진정 사랑했기에',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: false,
    isthousand: true,
    isOne: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c7',
    ],
    title: '대박인생',
    score: 0.0,
    good: 2,
    artist: '강신비',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/79/455/11279455_20230704185857_1000.jpg',
    duration: 35,
    ingredients: [
      '대박인생',
      '2023.07.05',
      '다날엔터테인먼트',
    ],
    steps: [
      '난다난다 대박난다 대박이구나\n대박대박 대박이야 완전 대박이야-탕탕탕 처주고\n학생은 공부잘해 대박대박\n농부들 풍년들어 대박대박\n장사꾼 손님많아 대박대박',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
    isHundred: false,
    isthousand: false,
    isOne: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c7',
    ],
    title: '청산녹수',
    score: 0.0,
    good: 0,
    artist: '김유지',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/79/379/11279379_20230704181251_1000.jpg',
    duration: 35,
    ingredients: [
      '청산녹수',
      '2023.07.05',
      '빅밴드',
    ],
    steps: [
      '저 구름 흘러가는 곳\n매화꽃은 피고 지는데\n붉게 타오른 노을은 내 맘 알까\n꽃바람에 취한 마음을\n\n사랑이 무어더냐 물어도',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
    isHundred: false,
    isthousand: false,
    isOne: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c7',
    ],
    title: '이제 나만 믿어요',
    score: 4.1,
    good: 55618,
    artist: '임영웅',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/104/12/319/10412319_20200403103006_1000.jpg',
    duration: 35,
    ingredients: [
      '내일은 미스터트롯 우승자 특전곡',
      '2020.04.03',
      '카카오엔터테인먼트',
    ],
    steps: [
      '무얼 믿은 걸까 부족했던 내게서\n나조차 못 믿던 내게 여태 머문 사람\n무얼 봤던 걸까 가진 것도 없던 내게\n무작정 내 손을 잡아 날 이끈 사람\n최고였어',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: true,
    isthousand: true,
    isOne: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: '떠날까',
    score: 4.9,
    good: 390,
    artist: '전진희',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/77/906/11277906_20230703155602_1000.jpg',
    duration: 35,
    ingredients: [
      '아무도 모르게',
      '2023.07.04',
      '포크라노스',
    ],
    steps: [
      '잊고 살았지\n얼마나 아름다운지\n아픔이 잊혀졌던 엄마의 품 같은 것\n\n비로소 알게 된 건\n어느 것도 힘이 없고',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: true,
    isthousand: false,
    isOne: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: '사과반쪽',
    score: 0.0,
    good: 0,
    artist: '박정국',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/79/127/11279127_20230704151856_1000.jpg',
    duration: 35,
    ingredients: [
      '사과',
      '2023.07.05',
      '광수미디어',
    ],
    steps: [
      '때론 웃으며 말하지\n내가 사랑한다고 말을 하여도\n아직 남아있는 시간들은\n너무 아름답게 사라져\n\n어두운 날들은 지나고',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
    isHundred: false,
    isthousand: false,
    isOne: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: '여름을 좋아하는 이유',
    score: 4.4,
    good: 381,
    artist: '윤딴딴',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/112/77/925/11277925_20230703155909_1000.jpg',
    duration: 35,
    ingredients: [
      '여름을 좋아하는 이유',
      '2023.07.04',
      '카카오엔터테인먼트',
    ],
    steps: [
      '그릴 바베큐 여섯 날개 선풍기\n무더위 한줄기 ATM\n괜히 모든 게 낭만 있네\n여름을 내가 좋아하는 이유\n\n한여름 밤의 크리스마스 같은 하얀 눈이',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: true,
    isthousand: false,
    isOne: true,  
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: '그라데이션',
    score: 4.9,
    good: 7497,
    artist: '10CM',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdnimg.melon.co.kr/cm2/album/images/109/95/477/10995477_20220701165440_1000.jpg',
    duration: 35,
    ingredients: [
      '5.3',
      '2022.07.03',
      '카카오엔터테인먼트',
    ],
    steps: [
      '밤은 다시 길고 깊어졌네\n나는 점점 너로 잠 못 들게 돼\n글로 적어내긴 어려운 이 기분을\n너도 느꼈으면 좋겠는데\n너는 아무 생각 없이 몇 번',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    isHundred: true,
    isthousand: true,
    isOne: false,
  ),
];
