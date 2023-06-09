const List<String> initialFruits = [
  "Яблоко",
  "Банан",
  "Апельсин",
  "Груша",
  "Ананас",
  "Манго",
  "Киви",
  "Персик",
  "Виноград",
  "Клубника",
  "Черника",
  "Малина",
  "Голубика",
  "Арбуз",
  "Дыня",
  "Гранат",
  "Лимон",
  "Лайм"
];

const Map<String, Map<String, String>> initialFruitsMap = {
  'Яблоко': {
    'photo': 'assets/apple.png',
    'description':
        'Съедобный плод яблони, сочный, богат витаминами и микроэлементами. Фрукт весом 70-200 граммов, употребляемый в пищу в свежем, квашеном, печеном виде, является сырьем в кулинарии, в производстве детского питания, джемов, повидла, безалкогольных и алкогольных напитков и т.д.'
  },
  'Банан': {
    'photo': 'assets/banana.png',
    'description':
        'Его внешний вид зависит от видовой и сортовой принадлежности. Он может быть продолговатой цилиндрической или треугольной формы и иметь длину от 3 до 40 сантиметров. Цвет кожуры банана может быть зелёным, желтым, красным и с серебристым оттенком. По мере созревания жесткая мякоть становится мягкой и приобретает сочность.'
  },
  'Апельсин': {
    'photo': 'assets/orange.png',
    'description':
        'Шаровидный или вытянутый фрукт, состоящий из нескольких частей, внутри которых находятся семена. Мякоть закрыта толстой коркой оранжевого или оранжево-красного цвета (в некоторых сортах желтого или зеленого цвета).'
  },
  'Груша': {
    'photo': 'assets/pear.png',
    'description':
        'Цветки белые или бледно-розовые (до 3 см в диаметре), собраны в 2-12-цветковые щетковидные соцветия. Чашечка из пяти треугольных листочков, лепестков пять, тычинок много, пестик один, столбиков пять, завязь нижняя. Плоды изменчивы по форме (1,5-4 см в длину, 1,5-2 см в ширину), зеленые или желтоватые.'
  },
  'Ананас': {
    'photo': 'assets/pineapple.png',
    'description':
        'Плоды ананаса (соплодия в виде шишки весом от 0,5 до 15 кг) золотисто-желтые, на верхушке с пучком зеленых листьев, очень вкусны, имеют приятный аромат, богаты витаминами А, В и С; потребляют их свежими и консервированными. Размножают ананасы ростками или укореняют листовую розетку из верхушки плода.'
  },
  'Манго': {
    'photo': 'assets/mango.png',
    'description':
        'Плоды манго индийского (Mangifera indica), растения рода манго семейства сумаховых. Плоды имеют волокнистую структуру и сладкий вкус, кожица окрашена в тона красного, зеленого или желтого цвета, в мякоти цвет желтый или оранжевый.'
  },
  'Киви': {
    'photo': 'assets/kiwi.png',
    'description':
        'Плоды киви имеют зеленый цвет и много специфически расположенных маленьких семян. Вкус можно описать как нечто среднее между крыжовником и клубникой. Фрукт очень богат витаминами, особенно А, В, С, минеральными солями, а также дубильными веществами и ферментами, растворяющими белок.'
  },
  'Персик': {
    'photo': 'assets/peach.png',
    'description':
        'Персик обыкновенный – дерево вывв. 3-6 м или куст семьи розовых (Rosaceae Juss). Кора желтоватая или красновато-коричневая. Листья ланцетные, остропилистые, с короткими черенками, несущие по 3–5 красно-бурых железок.'
  },
  'Виноград': {
    'photo': 'assets/grape.png',
    'description':
        'Ягоды круглой или овальной формы, длиной до 2,5 см, имеют до 4 косточек внутри (существуют сорта, плоды которых вообще не имеют косточек); кожица плодов неотделима от мякоти, цвет плодов от светло-зеленого и янтарного до красного и черного с пурпурным или синим оттенком.'
  },
  'Клубника': {
    'photo': 'assets/strawberry.png',
    'description':
        'Травянистое многолетнее растение, цветущее белыми цветочками и дающее съедобные розово-красные кисло-сладкие сочные ягоды. Название происходит от латинского слова fragaria vesca, что в переводе означает душистый.'
  },
  'Черника': {
    'photo': 'assets/bilberry.png',
    'description':
        'Кустарниковое растение из семейства брусничных, кустик до 0,5 м высоты с синечерными съедобными ягодами; растет по лесам, образуя живое сверхгрунтовое укрытие. Цветет в мае – июне.'
  },
  'Малина': {
    'photo': 'assets/raspberry.png',
    'description':
        'Полукустовое растение, имеющее вегетативные побеги и одревесневшие стебли, образующие укороченные цветоносные веточки. Плоды овальные или почти шаровидные желтого, оранжевого или оранжево-красного цвета.'
  },
  'Голубика': {
    'photo': 'assets/blueberry.png',
    'description':
        'Вид карликовых кустарников семейства вересковых. Плоды довольно крупные, темно-синего цвета, покрытые налетом. В Украине растет рассеяно на севере Правобережного Полесья, в Карпатах в заболоченных сосновых и смешанных лесах и торфяных болотах. Растение морозостойкое, может жить до 100 лет.'
  },
  'Арбуз': {
    'photo': 'assets/watermelon.png',
    'description':
        'Бахчевая культура семьи тыквенных. Выращивается в районах с большим солнечным излучением. В Украине традиционным центром производства бахчевых культур является Херсонская область, где ежегодно собирается более 50% урожая арбузов в стране. Стебли тонкие, гибкие, ползучие или вьющиеся, обычно округло-пятигранные, длиной до 4 м и более, разветвленные. Молодые части стебля густо опушены мягкими оттопыренными волосками.'
  },
  'Дыня': {
    'photo': 'assets/melon.png',
    'description':
        'Плоды дыни имеют шаровидную или цилиндрическую форму, зеленой, желтой, коричневой или белой окраски, как правило с зелеными полосками. Вегетационный период от двух до шести месяцев. Цветение начинается через 25-30 дней после появления всходов. Плоды готовы к съёмке в зависимости от сорта через 30-60 дней после цветения.'
  },
  'Гранат': {
    'photo': 'assets/garnet.png',
    'description':
        'Гранат представляет собой кустарник, или дерево высотой до 5-6 метров. Плоды гранатового дерева – крупные шаровидные ягоды. Диаметр плода может варьироваться от 8 до 18 см, а цвет кожуры – от желто-оранжевого до темно-красного.'
  },
  'Лимон': {
    'photo': 'assets/lemon.png',
    'description':
        'Лимон, лимон или лимонное дерево (Citrus × limon) — искусственный гибрид фруктовых деревьев рода цитрусов (Citrus); также термином «лимон» называют плод этого дерева. Пищевая, ароматическая, декоративная культура.'
  },
  'Лайм': {
    'photo': 'assets/lime.png',
    'description':
        'Гибридный цитрус из семейства рутовых, происходящих из Индии, генетически схож с лимоном.'
  },
};
