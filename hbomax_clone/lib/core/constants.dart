class HboConstants {
  // Precios
  static const String priceBasicAnual    = 'S/.17.90';
  static const String priceStandardAnual = 'S/.26.90';
  static const String pricePlatinumAnual = 'S/.35.90';
  static const String priceBasicMensual    = 'S/.24.90';
  static const String priceStandardMensual = 'S/.36.90';
  static const String pricePlatinumMensual = 'S/.49.90';

  // Planes
  static const List<Map<String, dynamic>> plansAnual = [
    {
      'title':    'Básico con anuncios',
      'price':    'S/.17.90',
      'period':   '/mes',
      'billing':  'Precio total anual S/214.80',
      'prefix':   '12x',
      'features': [
        '2 dispositivos a la vez',
        'Resolución Full HD',
      ],
    },
    {
      'title':    'Estándar',
      'price':    'S/.26.90',
      'period':   '/mes',
      'billing':  'Precio total anual S/322.80',
      'prefix':   '12x',
      'features': [
        '2 dispositivos a la vez',
        'Resolución Full HD',
        '30 descargas para disfrutar offline',
      ],
    },
    {
      'title':    'Platino',
      'price':    'S/.35.90',
      'period':   '/mes',
      'billing':  'Precio total anual S/430.80',
      'prefix':   '12x',
      'features': [
        '4 dispositivos a la vez',
        'Resolución Full HD y 4K Ultra HD *',
        'Audio Dolby Atmos *',
        '100 descargas para disfrutar offline',
      ],
    },
  ];

  static const List<Map<String, dynamic>> plansMensual = [
    {
      'title':    'Básico con anuncios',
      'price':    'S/.24.90',
      'period':   '/mes',
      'billing':  '',
      'prefix':   '',
      'features': [
        '2 dispositivos a la vez',
        'Resolución Full HD',
      ],
    },
    {
      'title':    'Estándar',
      'price':    'S/.36.90',
      'period':   '/mes',
      'billing':  '',
      'prefix':   '',
      'features': [
        '2 dispositivos a la vez',
        'Resolución Full HD',
        '30 descargas para disfrutar offline',
      ],
    },
    {
      'title':    'Platino',
      'price':    'S/.49.90',
      'period':   '/mes',
      'billing':  '',
      'prefix':   '',
      'features': [
        '4 dispositivos a la vez',
        'Resolución Full HD y 4K Ultra HD *',
        'Audio Dolby Atmos *',
        '100 descargas para disfrutar offline',
      ],
    },
  ];

  // Categorías
  static const List<Map<String, String>> categories = [
    {'label': 'NIÑOS Y FAMILIA', 'sub': 'PEPPA PIG',        'image': 'https://picsum.photos/seed/kids/300/400'},
    {'label': 'REALITY',         'sub': 'TODO EN 90 DÍAS',  'image': 'https://picsum.photos/seed/reality/300/400'},
    {'label': 'ACCIÓN',          'sub': 'THE PITT',         'image': 'https://picsum.photos/seed/action/300/400'},
    {'label': 'DRAMA',           'sub': 'EUPHORIA',         'image': 'https://picsum.photos/seed/drama/300/400'},
  ];

  // Estrenos
  static const List<Map<String, String>> releases = [
    {'title': 'Euphoria',             'image': 'https://picsum.photos/seed/euphoria/300/200'},
    {'title': 'Cumbres Borrascosas',  'image': 'https://picsum.photos/seed/cumbres/300/200'},
    {'title': 'Novia',                'image': 'https://picsum.photos/seed/novia/300/200'},
    {'title': 'Anaconda',             'image': 'https://picsum.photos/seed/anaconda/300/200'},
    {'title': 'La Cabra',             'image': 'https://picsum.photos/seed/cabra/300/200'},
    {'title': 'The Pitt',             'image': 'https://picsum.photos/seed/pitt/300/200'},
  ];

  // Descubre - Tabs
  static const List<String> discoverTabs = [
    'Comedia', 'Crimen', 'Novelas', 'Suspenso',
  ];

  static const List<Map<String, String>> discoverComedia = [
    {'title': 'The Big Bang Theory', 'image': 'https://picsum.photos/seed/bigbang/300/200'},
    {'title': 'Rick and Morty',      'image': 'https://picsum.photos/seed/rick/300/200'},
    {'title': 'Friends',             'image': 'https://picsum.photos/seed/friends/300/200'},
    {'title': 'Hacks',               'image': 'https://picsum.photos/seed/hacks/300/200'},
    {'title': 'Gumball',             'image': 'https://picsum.photos/seed/gumball/300/200'},
    {'title': 'Viudas Negras',       'image': 'https://picsum.photos/seed/viudas/300/200'},
  ];

  // FAQ
  static const List<Map<String, String>> faqItems = [
    {
      'question': '¿Cuánto cuesta HBO Max?',
      'answer':   'Los planes empiezan desde S/.17.90/mes en el plan anual en cuotas. Puedes elegir entre Básico con anuncios, Estándar y Platino.',
    },
    {
      'question': '¿En qué dispositivos funciona HBO Max?',
      'answer':   'HBO Max está disponible en smartphones, tablets, Smart TVs, computadoras y consolas de videojuegos.',
    },
    {
      'question': 'Tengo HBO ¿Tengo acceso a HBO Max?',
      'answer':   'Si tienes HBO a través de tu proveedor de cable o satélite, es posible que tengas acceso a HBO Max sin costo adicional. Verifica con tu proveedor.',
    },
  ];

  // Footer links
  static const List<String> footerMainLinks = [
    'AHORA EN HBO MAX', 'PELÍCULAS', 'SERIES DE TV',
    'VER TRÁILERS Y EXTRAS GRATIS', 'NIÑOS Y FAMILIA', 'AYUDA',
  ];

  static const List<String> footerSubLinks = [
    'Accesibilidad', 'Política De Privacidad', 'Modo Infantil',
    'Términos De Uso', 'Administrar Cookies', 'Comunicados De Prensa',
  ];
}
