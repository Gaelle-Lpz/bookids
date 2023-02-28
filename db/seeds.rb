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
  user_name: "Jessica",
  password: "lewagon",
  total_score: 1260,
  family_id: family.id
)

user2 = User.create!(
  email: "gaelle@lewagon.fr",
  user_name: "Gaelle",
  password: "lewagon",
  family_id: family.id,
  total_score: 320
)

user3 = User.create!(
  email: "seb@lewagon.fr",
  user_name: "Sébastien",
  password: "lewagon",
  family_id: family.id,
  total_score: 230
)

user4 = User.create!(
  email: "shaherazade@lewagon.fr",
  user_name: "Shaherazade",
  password: "lewagon",
  family_id: family.id,
  total_score: 670
)

user5 = User.create!(
  email: "parent@lewagon.fr",
  password: "lewagon",
  family_id: family.id,
  parent: true
)

# Create Book
  book1 = Book.create!(
  name: "Harry Potter, volume 1: Harry Potter and the Philosopher's Stone",
  description: "Harry Potter is an ordinary boy who lives in a cupboard under the stairs at his Aunt Petunia and Uncle Vernon's house, which he thinks is normal for someone like him who's parents have been killed in a 'car crash'. He is bullied by them and his fat, spoilt cousin Dudley, and lives a very unremarkable life with only the odd hiccup (like his hair growing back overnight!) to cause him much to think about. That is until an owl turns up with a letter addressed to Harry and all hell breaks loose! He is literally rescued by a world where nothing is as it seems and magic lessons are the order of the day. Read and find out how Harry discovers his true heritage at Hogwarts School of Wizardry and Witchcraft, the reason behind his parents mysterious death, who is out to kill him, and how he uncovers the most amazing secret of all time, the fabled Philosopher's Stone! All this and muggles too. Now, what are they?",
  author: "J.K Rowling",
  image: "https://images.epagine.fr/628/9782070584628_1_75.jpg",
  isbn: "9782070584628",
  score: 70
)

  book2 = Book.create!(
  name:"The Little Prince",
  description:"The Little Prince is a classic tale of equal appeal to children and adults. On one level it is the story of an airman's discovery, in the desert, of a small boy from another planet - the Little Prince of the title - and his stories of intergalactic travel, while on the other hand it is a thought-provoking allegory of the human condition.",
  author:"Antoine de Saint-Exupéry",
  image:"https://m.media-amazon.com/images/I/41B-d58s3GL._SY291_BO1,204,203,200_QL40_ML2_.jpg",
  isbn:"1853261580",
  score:20
)

  book3 = Book.create!(
  name:"Snap",
  description:"Tap, tap tap ...Frog thinks there's no one else in the forest, but you never know what's just around the corner ...Celebrated creator Anna Walker, invites us to hear with our eyes as we follow frog on a rollicking escapade in this pitch-perfect pre-school soundscape.",
  author:"Anna Walker",
  image:"https://images.epagine.fr/638/9791035205638_1_75.jpg",
  isbn: "978-1957363240",
  score:15
)

  book4 = Book.create!(
  name:"The Lord of the Rings, The Fellowship of the Ring",
  description:"The Fellowship of the Ring is the first of three volumes in The Lord of the Rings, an epic set in the fictional world of Middle-earth. The Lord of the Rings is an entity named Sauron, the Dark Lord, who long ago lost the One Ring that contains much of his power. His overriding desire is to reclaim the Ring and use it to enslave all of Middle-earth.The story of The Lord of the Rings begins with several events that take place in The Hobbit. While wandering lost in a deep cave, Bilbo Baggins, a Hobbit—one of a small, kindly race about half the size of Men—stumbles upon a ring and takes it back with him to the Shire, the part of Middle-earth that is the Hobbits’ home. All Bilbo knows of his ring is that wearing it causes him to become invisible. He is unaware that it is the One Ring, and is therefore oblivious to its significance and to the fact that Sauron has been searching for it.?",
  author:"J.R.R. Tolkien",
  image:"https://cdn.shopify.com/s/files/1/0474/9718/3388/products/I-Grande-16767-le-seigneur-des-anneaux-1-la-fraternite-de-l-anneau.net_487x700.jpg?v=1640040541",
  isbn:"0007525540",
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
  status: 1,
  wish_validate: true,
  read_validate: false
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
  wish_validate: false,
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
  wish_validate: true,
  read_validate: true
)

user_book8 = UserBook.create!(
  user_id: user2.id,
  book_id: book1.id,
  status: 1,
  wish_validate: true,
  read_validate: false
)

user_book9 = UserBook.create!(
  user_id: user2.id,
  book_id: book3.id,
  status: 2,
  wish_validate: true,
  read_validate: true
)
user_book10 = UserBook.create!(
  user_id: user1.id,
  book_id: book1.id,
  status: 0,
  wish_validate: false,
  read_validate: false
)

user_book11 = UserBook.create!(
  user_id: user1.id,
  book_id: book3.id,
  status: 0,
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
  name: "Zombie :",
  required_score: 100,
  image: "https://res.cloudinary.com/dotwftnzf/image/upload/v1675797320/zombie_ixltpr.png"
)

reward2 = Reward.create(
  name: "Troll :",
  required_score: 200,
  image: "https://res.cloudinary.com/dotwftnzf/image/upload/v1675797320/troll_w5oxkd.png"
)

reward3 = Reward.create(
  name: "Wizard :",
  required_score: 300,
  image: "https://res.cloudinary.com/dotwftnzf/image/upload/v1675797320/wizard_odums5.png"
)

reward4 = Reward.create(
  name: "Ninja :",
  required_score: 400,
  image: "https://res.cloudinary.com/dotwftnzf/image/upload/v1675797319/ninja_byvs9f.png"
)

reward5 = Reward.create(
  name: "Mutant :",
  required_score: 500,
  image: "https://res.cloudinary.com/dotwftnzf/image/upload/v1675797319/mutant_lukfky.png"
)

reward6 = Reward.create(
  name: "Unicorn :",
  required_score: 600,
  image: "https://res.cloudinary.com/dotwftnzf/image/upload/v1675797319/unicorn_c4y1hx.png"
)

reward7 = Reward.create(
  name: "Pirate :",
  required_score: 700,
  image: "https://res.cloudinary.com/dotwftnzf/image/upload/v1675797319/pirate_liureq.png"
)

reward8 = Reward.create(
  name: "Knight :",
  required_score: 800,
  image: "https://res.cloudinary.com/dotwftnzf/image/upload/v1675797319/knight_q8jaaa.png"
)

reward9 = Reward.create(
  name: "Alien :",
  required_score: 900,
  image: "https://res.cloudinary.com/dotwftnzf/image/upload/v1675797319/alien_ugoa3v.png"
)

reward10 = Reward.create(
  name: "Elf :",
  required_score: 1000,
  image: "https://res.cloudinary.com/dotwftnzf/image/upload/v1675797319/elf_etj8xh.png"
)

reward11 = Reward.create(
  name: "Fairy :",
  required_score: 1100,
  image: "https://res.cloudinary.com/dotwftnzf/image/upload/v1675797319/fairy_qbgz1e.png"
)

reward12 = Reward.create(
  name: "Dragon :",
  required_score: 1200,
  image: "https://res.cloudinary.com/dotwftnzf/image/upload/v1675797319/dragon_zzxmwn.png"
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
