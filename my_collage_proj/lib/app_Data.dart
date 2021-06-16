import 'models/HomePageDef.dart';
import 'models/universties.dart';

const page_Data = const [
  HomeData(
      id: 'A1',
      title: 'جميع الجامعات',
      imgUrl:
          'https://media.istockphoto.com/vectors/graduation-cap-and-education-vector-id1143673268?b=1&k=6&m=1143673268&s=612x612&w=0&h=Kh8SOThoq1ThqsO9vH2uHERDsLWX7Ws_7XJ3h-bq_Bc='),
  HomeData(
      id: 'A2',
      title: 'الجامعات المعروفة',
      imgUrl:
          'https://media.istockphoto.com/vectors/graduation-cap-and-education-vector-id1143673268?b=1&k=6&m=1143673268&s=612x612&w=0&h=Kh8SOThoq1ThqsO9vH2uHERDsLWX7Ws_7XJ3h-bq_Bc='),
  HomeData(
      id: 'A3',
      title: 'ترتيب حسب مساحة الكلية',
      imgUrl:
          'https://media.istockphoto.com/vectors/graduation-cap-and-education-vector-id1143673268?b=1&k=6&m=1143673268&s=612x612&w=0&h=Kh8SOThoq1ThqsO9vH2uHERDsLWX7Ws_7XJ3h-bq_Bc=',
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
      id: 'A4',
      title: 'ترتيب حسب عدد البحوث',
      imgUrl:
          'https://media.istockphoto.com/vectors/graduation-cap-and-education-vector-id1143673268?b=1&k=6&m=1143673268&s=612x612&w=0&h=Kh8SOThoq1ThqsO9vH2uHERDsLWX7Ws_7XJ3h-bq_Bc='),
  HomeData(
      id: 'A5',
      title: 'ترتيب حسب وزاة التعليم',
      imgUrl:
          'https://media.istockphoto.com/vectors/graduation-cap-and-education-vector-id1143673268?b=1&k=6&m=1143673268&s=612x612&w=0&h=Kh8SOThoq1ThqsO9vH2uHERDsLWX7Ws_7XJ3h-bq_Bc='),
  HomeData(
      id: 'A6',
      title: 'ترتيب حسب سنة التأسيس',
      imgUrl:
          'https://media.istockphoto.com/vectors/graduation-cap-and-education-vector-id1143673268?b=1&k=6&m=1143673268&s=612x612&w=0&h=Kh8SOThoq1ThqsO9vH2uHERDsLWX7Ws_7XJ3h-bq_Bc='),
];
const Universty_data = const [
  Universty(
      id: "B1",
      category: ['A1', 'A2', 'A3'],
      title: 'الرافدين',
      yearPub: '1988',
      provinces: 'بغداد',
      description:
          'كلية الرافدين الجامعة وهي كلية عراقية أهلية تم تأسيسها في 23/11/1988. وتعد الجمعية العراقية للعلوم الاحصائية هي الجهة المؤسسة للكلية. وأنطلقت الدراسة بهذه الكلية ابتداءً من العام الدراسي 1988/1989، وتعد من أعرق الكليات الاهلية في العراق، وتمنح شهادة البكالوريوس في مختلف الاختصاصات العلمية وهي تخضع لقوانين وأنظمة وتعليمات وضوابط وزارة التعليم العالي والبحث العلمي من خلال الاشراف العلمي والتربوي المباشر على انشطتها المختلفة وبذلك فان الشهادة التي تمنحها الكلية معترف بها من قبل تلك الوزارة.',
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
      deanName: 'الاستاذ الدكتور محمود جواد ابو الشعير',
      sections: [
        '1- قسم طب الأسنان',
        '2- قسم الصيدلة',
        '3- قسم هندسة اتصالات الحاسوب',
        '4- قسم هندسة التيريد والتكييف',
        '5- قسم هندسة تقنيات الحاسوب',
        '6- قسم هندسة برامجيات الحاسوب',
        '7- قسم علوم الحاسوب',
        '8- قسم علوم المحاسبة',
        '9- قسم الإحصاء والمعلوماتية',
        '10- قسم ادارة الاعمال',
        '11- قسم القانون',
        '12-قسم الهندسة المدنية'
      ],
      sectionsDescription: [
        'تاسس القسم سنة 2009 وجاء التاسيس تلبية لحاجة المجتمع إلى اطباء اسنان مؤهلين بتقديم خدمات علاجية ووقائية وتخريج اطباء اسنان بدرجة بكالوريوس مؤهلين للعمل في دوائر الدولة والقطاع الخاص. جهز القسم بقاعات ومختبرات للعلوم الأساسية وبمستوى متقدم يمتلك القسم الآن مركز صحي في الكلية لتقديم خدمات الرعاية الأولية للتدريسيين والمنتسبين والطلبة وكذلك يمتلك عيادات استشارية في طب الأسنان لتقديم خدمات متطورة من قبل اساتذة متخصصين.',
        'تاسس القسم سنة 2011 وجاء هذا التأسيس استكمالاً للمجموعة الطبية في الكلية ولسد حاجة سوق العمل لتخريج صيادلة بدرجة بكلوريوس مؤهلين للعمل في القطاع الخاص والدولة. يهدف القسم إلى اعداد صيادلة بمستوى علمي ومهني يؤهلهم للعمل كصيدلي في المؤسسات الصحية أو مصانع الادوية والمختبرات البحثية. يؤكد القسم على الاهتمام بالرصانة العلمية والاهتمام بالجانب الفني والعملي لتطوير إمكانات وقدرات الطلبة وتأهيلهم تأهيلاً علمياً لممارسة مهنتهم بكل فاعلية في المجتمع.',
        'تأسس قسم هندسة اتصالات الحاسبات سنة 2003/2004 ويهدف القسم إلى اعداد كوادر متخصصة من المهندسين في مجالات هندسة اتصالات الحاسبات والتي تربط بين علم الحاسبات ومكوناتها المادية وهندسة الاتصالات الرقمية وكافة تقنياتها الحديثة وطرق الاتصالات بين الحاسبات عبر الوسائط المختلفة مثل الكابلات الضوئية والكابلات النحاسية وعبر الأقمار الصناعية، ويعطي هذا القسم شهادة البكالوريوس في هندسة الاتصالات.',
        'تأسس هذا القسم سنة 2005/2006 ويعد أحد التوجهات الحديثة في تخصص الهندسة الميكانيكية، ويعتمد المناهج والمفردات الحديثة وبما معمول به في الجامعات العراقية والعالمية، ويعطي شهادة البكالوريوس في منظومات التبريد والتكييف ويخرج مهندسين تمكنهم من تصميم وتصنيع وإنتاج أجهزة التبريد والتكييف بصورة خاصة وكذلك الأجهزة الميكانيكية بصورة عامة ولهم القدرة على تشغيل وصيانة هذه الأجهزة وكذلك يمكنهم من الألمام بتفاصيل عمل منظومة التبريد والتكييف واكتساب المعرفة المفصلة عن جميع المكائن والمنظومات الخاصة بهذا الموضوع والقابلية على على تصميم وتصنيع بدائل الاجزاء العاطلة في المنظومة.',
        'تأسس هذا القسم سنة 2005/2006 حيث يؤهل خريج هذا القسم ليكون مهندساً في مجال الحاسبات (تصميم، برامجيات، صيانة وتطوير) وفي مجال السيطرة (وحدات سيطرة، خرائط سيطرة)وغيرها من المجالات.',
        'تأسس هذا القسم سنة 1997/1998 ويعد قسم هندسة البرامجيات من أول الأقسام التخصصية في هذا المجال ويعتبر فرع من فروع كلية الهندسة ويعمل على عملية تطوير ومتابعة تنفيذ البرامج حيث يهدف إلى اعداد كوادر متخصصة في مجال هندسة البرامجيات..',
        'يعتبر قسم علوم الحاسبات من الأقسام الرئيسة في الكلية حيث تأسس سنة 1993/1994 ويهدف هذا القسم إلى اعداد متخصصين في تصميم البرامجيات التقنية للحاسبات الإلكترونية كالمترجمات ونظم التشغيل وأنظمة إدارة قواعد البيانات وغيرها فضلاً عن تصميم واعداد وتشغيل الأنظمة والبرامجيات التطبيقية. ويكون خريج هذا القسم مؤهلاً للعمل في تحليل وتقسيم البرامجيات في مختلف المجالات التقنية والتطبيقية والبحثية.',
        'تأسس قسم المحاسبة سنة 1998/1999 ويهدف القسم إلى اعداد محاسبين أكفاء مؤهلين للعمل في المنظمات المختلفة وكذلك مواصلة دراسته العليا في التخصص ويمكن للطالب المتخرج من هذا القسم العمل في كافة مؤسسات ودوائر القطاع العام والقطاع الخاص في اختصاص المحاسبة سواء اكانـت هذه المؤسسات إنتاجية أو خدمية.',
        'تأسس قسم القانون سنة 2007/2008 ويمنح الخريج من القسم شهادة البكالوريوس في القانون ويسعى القسم مستقبلا لتهيئة الكوادر الأكاديمية المتخصصة التي تسهم في الجوانب الأكاديمية والبحثية.',
      ],
      researchs: '306',
      space: 'KM 50'),
];
