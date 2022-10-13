class Activity {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double price;
  final double rating;

  const Activity({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.rating,
  });

  static const List<Activity> activities = [
    Activity(
      id: '1',
      title: 'Startup Sidimisoft',
      description:
          'Sidimisoft est une entreprise technologique, qui presente sur le marché tchadien, des produits logiciels sous forme de services SAAS ainsi que des prestations de services web et mobile.Elle vise à accompagner les entreprises vers le digital en améliorant leur image de marque sur le web tout en fidelisant leur clientèle grace aux derniers outils de technologies de l\'information et de la communication.',
      imageUrl:
          'https://scontent.fndj2-1.fna.fbcdn.net/v/t39.30808-6/243774860_285502190081099_5136323234149106814_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=PJifF5Byy6sAX9Ipzz7&_nc_ht=scontent.fndj2-1.fna&oh=00_AT9v_X9TfjYHxcF7ij074A7dcL1rjolyZbyQeXQy4uZLkA&oe=6343AD99',
      price: 550,
      rating: 5,
    ),
    Activity(
      id: '2',
      title: 'Création d\'identité graphique',
      description:
          'Sidimisoft Solutions informatiques digitales mobiles et intégrées aux PME et organisation.Ses solutions modernes sous forme de service en ligne ont pour objectives la transformation digitale des PME.',
      imageUrl:
          'https://www.anthedesign.fr/wp-content/uploads/2017/06/identite-visuelle-entreprise.jpg',
      price: 550.0,
      rating: 2,
    ),
    Activity(
      id: '3',
      title: 'Solutions Saas',
      description:
          'Solutions informatiques digitales mobiles et intégrées aux PME et organisation.Ses solutions modernes sous forme de service en ligne ont pour objectives la transformation digitale des PME.',
      imageUrl:
          'https://media.istockphoto.com/photos/female-ux-architect-has-discussion-with-male-design-engineer-they-on-picture-id846843116?s=612x612',
      price: 550.000,
      rating: 5,
    ),
    Activity(
      id: '4',
      title: 'Solutions Paas',
      description:
          'Solutions informatiques digitales mobiles et intégrées aux PME et organisation.Ses solutions modernes sous forme de service en ligne ont pour objectives la transformation digitale des PME.',
      imageUrl:
          'https://images.unsplash.com/photo-1607252650355-f7fd0460ccdb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      price: 550.0,
      rating: 4,
    ),
    Activity(
      id: '5',
      title: 'Transformation digitale',
      description:
          'La transformation digitale est le processus qui consiste à remplacer complètement les processus métier manuels existants par les toutes dernières alternatives numériques. Sidimisoft opère dans le secteur digital,  sa vision est l\'innovation et la réinvention touche tous les aspects d\'une entreprise, et pas seulement les technologies.',
      imageUrl:
          'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      price: 50050.0,
      rating: 5,
    ),
    Activity(
      id: '6',
      title: 'Intégrations des API metiers',
      description:
          'Solutions informatiques digitales mobiles et intégrées aux PME et organisation.Ses solutions modernes sous forme de service en ligne ont pour objectives la transformation digitale des PME.',
      imageUrl:
          'https://keyword-hero.com/wp-content/uploads/2017/02/keywordheroanalytics2.png',
      price: 550.0,
      rating: 4,
    ),
    Activity(
      id: '7',
      title: 'Conception des applications Multi-plateforme',
      description:
          'Solutions informatiques digitales mobiles et intégrées aux PME et organisation.Ses solutions modernes sous forme de service en ligne ont pour objectives la transformation digitale des PME.',
      imageUrl:
          'https://assets.asana.biz/m/7feab8a9e98e65f6/original/app-thumb-desktop-3-2-fr-1x.png',
      price: 1500.3,
      rating: 4,
    ),
    Activity(
      id: '8',
      title: 'Maintenance applicative',
      description:
          'Solutions informatiques digitales mobiles et intégrées aux PME et organisation.Ses solutions modernes sous forme de service en ligne ont pour objectives la transformation digitale des PME.',
      imageUrl: 'https://miro.medium.com/max/720/1*Tgu7GVQg9b8Es4lGA1Fj4g.png',
      price: 1900.3,
      rating: 4,
    ),
    Activity(
      id: '1',
      title: 'Insertion Professionnelle',
      description:
          'Solutions informatiques digitales mobiles et intégrées aux PME et organisation.Ses solutions modernes sous forme de service en ligne ont pour objectives la transformation digitale des PME.',
      imageUrl:
          'https://groupekyba.com/wp-content/uploads/2020/06/solution-application-web-responsive-desktop-native-mobile-innovation-internet-intranet-iOS-android.png',
      price: 550.0,
      rating: 5,
    ),
  ];
}
