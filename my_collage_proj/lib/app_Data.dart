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
      yearPub: '1988',
      provinces: 'بغداد',
      description: 'كلية الرافدين الجامعة هي جامعه عرافى',
      image: 'https://telegramchannels.me/storage/media-logo/1911/ruc88.jpg',
      teachersImage: [
        'https://i0.wp.com/ruc.edu.iq/wp-content/uploads/2021/02/ibo-photo.png?w=750&ssl=1',
        'https://i1.wp.com/ruc.edu.iq/wp-content/uploads/2018/10/IMG_5181.jpeg?fit=1280%2C851&ssl=1',
        'https://i2.wp.com/ruc.edu.iq/wp-content/uploads/2021/02/%D8%B3%D8%B9%D8%AF-%D8%AC%D8%A8%D8%A7%D8%B1.jpg?w=750&ssl=1',
        'https://i0.wp.com/ruc.edu.iq/wp-content/uploads/2021/02/my-new-picture.jpg?w=750&ssl=1'
      ],
      rating: 5,
      deanImage:
          'https://i0.wp.com/ruc.edu.iq/wp-content/uploads/2019/01/%D8%A7%D9%84%D8%B3%D9%8A%D8%AF-%D8%A7%D9%84%D8%B9%D9%85%D9%8A%D8%AF.jpg?resize=750%2C458&ssl=1',
      deanName: 'الاستاذ الدكتور محمود جواد ابو الشعير'),
  Universty(
      id: "B2",
      category: ['A1', 'A2'],
      title: 'التراث',
      yearPub: '1988',
      provinces: 'بغداد',
      description: 'كلية التراث  الجامعة هي جامعه عرافى',
      image: 'https://cis.turath.edu.iq/new%20logo.png',
      teachersImage: ['الدكتور صباح النجار'],
      rating: 6,
      deanImage: null,
      deanName: null),
  Universty(
      id: "B3",
      category: ['A1'],
      title: 'البيان',
      yearPub: '2016',
      provinces: 'بغداد',
      description: 'جامعة البيان  هي جامعه عرافى',
      image:
          'https://upload.wikimedia.org/wikipedia/ar/e/e6/%D8%AC%D8%A7%D9%85%D8%B9%D8%A9_%D8%A7%D9%84%D8%A8%D9%8A%D8%A7%D9%86.png',
      teachersImage: ['ا.عبدالجبار احمد عبدالله'],
      rating: 5,
      deanName: null,
      deanImage: null),
  Universty(
      id: "B4",
      category: ['A1', 'A2'],
      title: 'الاسراء',
      yearPub: '2013',
      provinces: 'بغداد',
      description: 'كلية الاسراء الجامعة   هي جامعه عرافى',
      image: 'https://esraa.edu.iq/modules/ahdath/images/5508-logo%20esraa.jpg',
      teachersImage: ['أ.م.د عبدالرزاق جبر الماجدي'],
      rating: 7,
      deanImage: null,
      deanName: null),
  Universty(
      id: "B5",
      category: ['A1', 'A2'],
      title: 'المنصور',
      yearPub: '1988',
      provinces: 'بغداد',
      description: 'كلية المنصور هي جامعه عرافى',
      image: 'https://alahadnews.net/wp-content/uploads/2021/02/unnamed-3.jpg',
      teachersImage: ['أ. د. عبد الستار شاكر سلمان'],
      rating: 5,
      deanImage: null,
      deanName: null),
  Universty(
      id: "B6",
      category: ['A1', 'A2'],
      title: 'اوروك',
      yearPub: '2015',
      provinces: 'بغداد',
      description: 'جامعة اوروك هي جامعه عرافى',
      image: 'https://upload.wikimedia.org/wikipedia/ar/d/d9/Urukcollege.jpg',
      teachersImage: ['ا.د قيس سعيد الصباغ '],
      rating: 4,
      deanImage: null,
      deanName: null)
];
