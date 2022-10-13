class Services {
  final String id;
  final String nom;
  final String category;
  final String description;
  final String imageUrl;

  final double price;
  final double rating;


  const Services({
    required this.nom,
    required this.id,
    required this.category,
    required this.description,
    required this.imageUrl,
    required this.price,

    required this.rating
}
    );
  static const List<Services> services = [
    Services(
      id: '1',
      nom : 'Startup Sidimisoft',
      description: 'Solutions informatiques digitales mobiles et intégrées aux PME et organisation.Ses solutions modernes sous forme de service en ligne ont pour objectives la transformations digitales.',
      imageUrl: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      price: 1000000.36,
      rating: 5,
      category : '',
    ),
    Services(
      id: '2',
      nom: 'Site web Pro',
      description: 'Sidimisoft Solutions informatiques digitales mobiles et intégrées aux PME et organisation.Ses solutions modernes sous forme de service en ligne ont pour objectives la transformations digitales.',
      imageUrl: 'https://cdn.searchenginejournal.com/wp-content/uploads/2019/12/5-ways-seo-web-design-go-together-5e2945dd5df37-760x400.png',
      price: 1000000.36,
      rating: 4,
      category : '',
    ),
    Services(
      id: '3',
      nom: 'Application métier',
      description: 'Solutions informatiques digitales mobiles et intégrées aux PME et organisation.Ses solutions modernes sous forme de service en ligne ont pour objectives la transformations digitales.',
      imageUrl: 'https://media.istockphoto.com/photos/female-ux-architect-has-discussion-with-male-design-engineer-they-on-picture-id846843116?s=612x612',
      price: 1000000.36,
      rating: 4,
      category : '',
    ),
    Services(
      id: '4',
      nom: 'Application Iphone',
      description: 'Solutions informatiques digitales mobiles et intégrées aux PME et organisation.Ses solutions modernes sous forme de service en ligne ont pour objectives la transformations digitales.',
      imageUrl: 'https://images.unsplash.com/photo-1523206489230-c012c64b2b48?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      price: 1000000.36,
      rating: 4,
      category : '',
    ),
    Services(
      id: '5',
      nom: 'Application Android',
      description: 'Solutions informatiques digitales mobiles et intégrées aux PME et organisation.Ses solutions modernes sous forme de service en ligne ont pour objectives la transformations digitales.',
      imageUrl: 'https://images.unsplash.com/photo-1607252650355-f7fd0460ccdb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      price: 1000000.36,
      rating: 4,
      category : '',
    ),


  ];
}
