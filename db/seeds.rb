puts "Cleaning database..."

Book.destroy_all
Review.destroy_all
Reward.destroy_all
Family.destroy_all
User.destroy_all
UserBook.destroy_all
UserReward.destroy_all

# Create Families:

family = Family.create(
  name: "Bookids Family"
)

# Create User
user1 = User.create!(
  email: "jessica@lewagon.fr",
  password: "lewagon",
  family_id: family.id
)

user2 = User.create!(
  email: "gaelle@lewagon.fr",
  password: "lewagon",
  family_id: family.id
)

user3 = User.create!(
  email: "seb@lewagon.fr",
  password: "lewagon",
  family_id: family.id
)

user4 = User.create!(
  email: "shaherazade@lewagon.fr",
  password: "lewagon",
  family_id: family.id
)

# Create Book
  book1 = Book.create!(
  name: "Harry Potter t.1: L'école des sorciers",
  description: "Amitié, surprises, dangers, humour, Harry découvre ses pouvoirs et la vie à Poudlard. Le premier volume des aventures du jeune héros vous ensorcelle aussitôt !Le jour de ses onze ans, Harry Potter, un orphelin élevé par un oncle et une tante qui le détestent, voit son existence bouleversée. Un géant vient le chercher pour l'emmener à Poudlard, une école de sorcellerie",
  author: "J.K Rowling",
  image: "https://images.epagine.fr/628/9782070584628_1_75.jpg",
  isbn: "9782070584628",
  score: 70
)

  book2 = Book.create!(
  name:"Le Petit Prince",
  description:"«J'ai ainsi vécu seul, sans personne avec qui parler véritablement, jusqu'à une panne dans le désert du Sahara, il y a six ans. Quelque chose s'était cassé dans mon moteur. Et comme je n'avais avec moi ni mécanicien, ni passagers, je me préparai à essayer de réussir, tout seul, une réparation difficile. C'était pour moi une question de vie ou de mort. J'avais à peine de l'eau à boire pour huit jours. Le premier soir je me suis donc endormi sur le sable à mille milles de toute terre habitée. J'étais bien plus isolé qu'un naufragé sur un radeau au milieu de l'océan. Alors vous imaginez ma surprise, au lever du jour, quand une drôle de petite voix m'a réveillé. Elle disait : ...»",
  author:"Antoine de Saint-Exupéry",
  image:"https://m.media-amazon.com/images/I/41B-d58s3GL._SY291_BO1,204,203,200_QL40_ML2_.jpg",
  isbn:"2070667227",
  score:20
)

  book3 = Book.create!(
  name:"Saute-grenouille",
  description:"Grenouille pense être seule dans la forêt, ce qui est en fait loin d'être le cas. Mais tous ceux qu'elle rencontre veulent la dévorer. Saute Grenouille ! Une promenade sonore et mouvementée, tout en onomatopées, pour ravir les plus petits.",
  author:"Anna Walker",
  image:"https://images.epagine.fr/638/9791035205638_1_75.jpg",
  isbn: "9782840644293",
  score:15
)

  book4 = Book.create!(
  name:"Le Seigneur des Anneaux- Tome 1: La Fraternité de l'Anneau",
  description:"Dans les vertes prairies du Comté, les Hobbits, ou Demi-hommes, vivaient en paix... Jusqu'au jour fatal où l'un d'entre eux, au cours de ses voyages, entra en possession de l'Anneau Unique aux immenses pouvoirs. Pour le reconquérir, Sauron, le seigneur Sombre, va déchaîner toutes les forces du Mal. Frodo, le Porteur de l'Anneau, Gandalf, le magicien, et leurs intrépides compagnons réussiront-ils à écarter la menace qui pèse sur la Terre du Milieu ?",
  author:"J.R.R. Tolkien",
  image:"https://cdn.shopify.com/s/files/1/0474/9718/3388/products/I-Grande-16767-le-seigneur-des-anneaux-1-la-fraternite-de-l-anneau.net_487x700.jpg?v=1640040541",
  isbn:"2070612880",
  score: 100
)

#user_book
user_book1 = UserBook.create!(
  user_id: user1.id,
  book_id: book1.id,
  status: 1,
  wish_validate: true,
  read_validate: false
)

user_book2 = UserBook.create!(
  user_id: user2.id,
  book_id: book2.id,
  status: 2,
  wish_validate: true,
  read_validate: true
)

user_book3 = UserBook.create!(
  user_id: user3.id,
  book_id: book3.id,
  status: 2,
  wish_validate: true,
  read_validate: true
)

user_book4 = UserBook.create!(
  user_id: user4.id,
  book_id: book4.id,
  status: 0,
  wish_validate: true,
  read_validate: false
)
user_book5 = UserBook.create!(
  user_id: user4.id,
  book_id: book3.id,
  status: 1,
  wish_validate: true,
  read_validate: false
)
#wish_list books
user_book6 = UserBook.create!(
  user_id: user4.id,
  book_id: book2.id,
  status: 0,
  wish_validate: false,
  read_validate: false
)
user_book7 = UserBook.create!(
  user_id: user4.id,
  book_id: book1.id,
  status: 2,
  wish_validate: false,
  read_validate: false
)

#reviews

review1 = Review.create!(
  comment: "This book is amazing !",
  rating: 2.0,
  user_book_id: user_book1.id
)

review2 = Review.create!(
  comment: "Fantastic !",
  rating: 2.0,
  user_book_id: user_book2.id
)

review3 = Review.create!(
  comment: "Incredible!",
  rating: 2.0,
  user_book_id: user_book3.id
)

review4 = Review.create!(
  comment: "Fabulous !",
  rating: 2.0,
  user_book_id: user_book4.id
)

review5 = Review.create!(
  comment: "Read it !",
  rating: 2.0,
  user_book_id: user_book5.id
)

review6 = Review.create!(
  comment: "Not very good",
  rating: 2.0,
  user_book_id: user_book6.id
)

review7 = Review.create!(
  comment: "Disaponting ...",
  rating: 2.0,
  user_book_id: user_book7.id
)

#rewards

reward1 = Reward.create(
  name: "avatar1",
  image: "https://cdn-icons-png.flaticon.com/512/4330/4330500.png"
)

reward2 = Reward.create(
  name: "avatar2",
  image: "https://cdn-icons-png.flaticon.com/512/4330/4330779.png"
)

reward3 = Reward.create(
  name: "avatar3",
  image: "https://cdn-icons-png.flaticon.com/512/728/728880.png"
)

reward4 = Reward.create(
  name: "avatar4",
  image: "https://cdn-icons-png.flaticon.com/512/4474/4474981.png"
)

reward5 = Reward.create(
  name: "avatar5",
  image: "https://cdn-icons-png.flaticon.com/512/4475/4475009.png"
)

reward6 = Reward.create(
  name: "avatar6",
  image: "https://cdn-icons-png.flaticon.com/512/2119/2119279.png"
)

reward7 = Reward.create(
  name: "avatar7",
  image: "https://cdn-icons-png.flaticon.com/512/2119/2119228.png"
)

reward8 = Reward.create(
  name: "avatar8",
  image: "https://cdn-icons-png.flaticon.com/512/3281/3281202.png"
)

reward9 = Reward.create(
  name: "avatar9",
  image: "https://cdn-icons-png.flaticon.com/512/3281/3281606.png"
)

reward10 = Reward.create(
  name: "avatar10",
  image: "https://cdn-icons-png.flaticon.com/512/5169/5169265.png"
)

reward11 = Reward.create(
  name: "avatar11",
  image: "https://cdn-icons-png.flaticon.com/512/5169/5169269.png"
)

reward12 = Reward.create(
  name: "avatar12",
  image: "https://cdn-icons-png.flaticon.com/512/2602/2602982.png"
)

reward13 = Reward.create(
  name: "avatar13",
  image: "https://cdn-icons-png.flaticon.com/512/2603/2603009.png"
)

#user_rewards

user_reward1 = UserReward.create(
  user_id: user1.id,
  reward_id: reward1.id
)

user_reward2 = UserReward.create(
  user_id: user2.id,
  reward_id: reward2.id
)

user_reward3 = UserReward.create(
  user_id: user3.id,
  reward_id: reward3.id
)

user_reward4 = UserReward.create(
  user_id: user4.id,
  reward_id: reward4.id
)
