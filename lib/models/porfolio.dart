class Portfolio {
  Portfolio({
    this.image,
    this.name,
    this.description,
  });

  final image;
  final String name;
  final String description;
}

final portfolioList = [
  Portfolio(
    image: 'assets/portfolio.png',
    name: 'Portfolio',
    description: 'Portfolio website',
  ),
  Portfolio(
    image: 'assets/calculator.png',
    name: 'BMI Calculator',
    description: 'BMI Calculator',
  ),
  Portfolio(
    image: 'assets/flashchat.png',
    name: 'Flash Chat',
    description: 'Chat with firebase cloud firestore.',
  ),
  Portfolio(
    image: 'assets/todoey.png',
    name: 'Todoey',
    description: 'Todo with provider package.',
  ),
  Portfolio(
    image: 'assets/clima.png',
    name: 'Clima',
    description: 'Live web data from api.',
  ),
  Portfolio(
    image: 'assets/bitcoin.png',
    name: 'Bitcoin Ticker',
    description: 'Fetch prices with api.',
  ),
];
