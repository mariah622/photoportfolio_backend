# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
eos_2000d = Camera.create(brand: 'Canon', name: 'EOS 2000D', camera_type: 'DSLR', overview: 'The EOS 2000D is a 24.0 megapixels digital single-lens.');
rebel_t7 = Camera.create(brand: 'Canon', name: 'Rebel T7', camera_type: 'DSLR', overview: 'This camera is a 24.1 Megapixel camera.');

Review.create(title: 'A great camera overall', description: 'This camera is great for beginners', camera: eos_2000d);
Review.create(title: 'Cant complain!', description: 'It gets the job done! Pretty good quality camera.', camera: eos_2000d);

mountain = Photo.create(image: 'https://upload.wikimedia.org/wikipedia/commons/e/e7/Everest_North_Face_toward_Base_Camp_Tibet_Luca_Galuzzi_2006.jpg', caption: 'The Mountains', likes: 2)
beach = Photo.create(image: 'https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-9/129265465_3611094542339982_1176419513746756074_n.jpg?_nc_cat=1&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=h7nIbzOP4ogAX-L0QjO&tn=2cT7ndW-cwNqNv1Z&_nc_ht=scontent-lga3-1.xx&oh=00_AT83wsJ13hE3ch-hQftPuRcwOSKn-nvLCXV0UzBuk9HEkA&oe=62446096', caption: 'The Beach', likes: 4)

Comment.create(title: "Beautiful", description: "What a beautiful picture", photo: beach);
Comment.create(title: "Good beginner", description: "The lighting is gorgeous", photo: mountain);
