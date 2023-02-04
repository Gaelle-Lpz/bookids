puts "Cleaning database..."

Book.destroy_all
Review.destroy_all
Reward.destroy_all
User.destroy_all
UserBook.destroy_all
UserReward.destroy_all

# Create Families:

# Create User
user1 = User.create!(
  email: "jessica@lewagon.fr",
  password: "lewagon"
)

user2 = User.create!(
  email: "gaelle@lewagon.fr",
  password: "lewagon"
)

user3 = User.create!(
  email: "seb@lewagon.fr",
  password: "lewagon"
)

user4 = User.create!(
  email: "shaherazade@lewagon.fr",
  password: "lewagon"
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

#user : user1

# #Create reviews:
# Review.create!(
#   comment:"Best book ever, makes me wanna be a with and go to Poudlar",
#   rating:5,
#   user_book: user_book1

# )

# Review.create!(
#   comment:"Love this book, but so sad"
#   rating: 4

# )

# Review.create!(
#   comment:"So cool! Wanna be a frog to an jump everywhere"
#   rating:4

# )

# Review.create!(
#   comment:"hard to read, I prefer the movie"
#   rating: 3

# )

# #Create user_book
