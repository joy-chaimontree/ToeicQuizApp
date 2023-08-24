final questions = [
  QuizQuestion(
    'compatible (adj.)',
    [
      'เข้ากันได้',
      'คงทน',
      'อย่างไม่เป็นทางการ',
      'ล้าสมัย',
    ],
  ),
  QuizQuestion(
    'facilitate (v.)',
    [
      'ทำให้ง่ายขึ้น, สะดวกขึ้น',
      'ปรับปรุง, ซ่อมแซม',
      'สาธิต, แสดงให้เห็น',
      'ละไว้, เว้นไว้',
    ],
  ),
  QuizQuestion(
    'reputation (n.)',
    [
      'ชื่อเสียง',
      'ผลที่ตามมา',
      'จดหมายข่าว',
      'ข้อเสนอ',
    ],
  ),
  QuizQuestion(
    'correspondence (n.)',
    [
      'จดหมายทางการหรือธุรกิจ',
      'การรับประกัน',
      'ความพึงพอใจ',
      'กลยุทธ์',
    ],
  ),
  QuizQuestion(
    'compromise (v.)',
    [
      'ประนีประนอม',
      'บรรยาย',
      'เติมเต็ม',
      'จ้างงาน',
    ],
  ),
  QuizQuestion(
    'impartial (adj.)',
    [
      'เป็นกลาง',
      'คล่องแคล่ว',
      'ส่วนบุคคล',
      'พึ่งพาได้',
    ],
  ),
  QuizQuestion(
    'eligible (adj.)',
    [
      'มีคุณสมบัติเหมาะสม',
      'มีประสิทธิภาพ',
      'กระตือรือร้น',
      'ยุติธรรม',
    ],
  ),
  QuizQuestion(
    'alter (v.)',
    [
      'ปรับเปลี่ยน',
      'กระจาย',
      'เปรียบเทียบ',
      'แจกจ่าย',
    ],
  ),
  QuizQuestion(
    'deficit (n.)',
    [
      'การขาดดุล',
      'การฉ้อโกง',
      'ภาวะเงินเฟ้อ',
      'ผลประโยชน์',
    ],
  ),
  QuizQuestion(
    'delegate (v.)',
    [
      'มอบหมายให้ทำแทน',
      'รวมตัวกัน',
      'ก่อให้เกิด',
      'เริ่มนำไปใช้',
    ],
  ),
];

class QuizQuestion {
  QuizQuestion(this.questionText, this.answerChoice);

  final String questionText;
  final List<String> answerChoice;

  List<String> get shuffledAnswer {
    //List.of = create a new list by copying the original list(answerChoice)//
    final shuffledList = List.of(answerChoice); //first, create the copy list//
    shuffledList.shuffle();       //second, store in variable and shuffle it//
    return shuffledList;          //last, return the update list//
  }
}
