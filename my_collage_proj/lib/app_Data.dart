import 'models/HomePageDef.dart';
import 'models/universties.dart';

const page_Data = const [
  HomeData(
      id: 'A1',
      title: 'جميع الجامعات',
      imgUrl: 'https://i.stack.imgur.com/gSbND.png'),
  HomeData(
      id: 'A2',
      title: 'الجامعات المعروفة',
      imgUrl: 'https://i.stack.imgur.com/gSbND.png'),
  HomeData(
      id: 'A3',
      title: 'ترتيب حسب المحافظة',
      imgUrl: 'https://i.stack.imgur.com/gSbND.png',
      provinces: [
        'الأنبار',
        'بابل',
        'بغداد',
        'البصرة',
        'ذي قار',
        'ديالى',
        'دهوك',
        'أربيل',
        'كربلاء',
        'كركوك',
        'ميسان',
        'المثنى',
        'النجف',
        'نينوى',
        'القادسية',
        'صلاح الدين',
        'السليمانية',
        'واسط',
      ]),
  HomeData(
      id: 'A4', title: 'التخصص', imgUrl: 'https://i.stack.imgur.com/gSbND.png'),
];
const Universty_data = const [
  Universty(
      id: "B1",
      category: ['A1', 'A2'],
      title: 'الرافدين',
      yearPub: '2004',
      provinces: 'بغداد',
      description: ['كلية الرافدين الجامعة هي جامعه عرافى'],
      image:
          'https://media.nullpress.net/2020/04/21133019/flutter-credit-card-picker-template-in-flutter_5e9ea812c9414.jpeg',
      teachers: ['دكتور فؤاد'],
      rating: 5)
];
