User.create!([
  {name: "Tara", email: "tara@gmail.com", password: "password", password_confirmation: "password", image_url: "https://i.pinimg.com/originals/ae/b3/3a/aeb33abccb63cdb879dced6669ea76ae.jpg"},
  {name: "Bear", email: "bear@gmail.com", password: "password", password_confirmation: "password", image_url: "https://i.imgur.com/E852B9q.jpg"},
  {name: "Magic", email: "magic@gmail.com", password: "password", image_url: "https://i.imgur.com/xvBjxrk.jpg"},
  {name: "Alex", email: "alex@gmail.com", password: "password", password_confirmation: "password", image_url: "https://external-preview.redd.it/Nzl6rrMvMflDGDyzzjlb99Ouw5M5OZcOLuoDKoKaxX4.jpg?width=758&auto=webp&s=44691da41f456dfb420f358479d45cbbaa1bbec9"}
])
Favorite.create!([
  {user_id: 1, business_id: "cKZNbMvoqJaUe7n6lf6i7w"},
  {user_id: 1, business_id: "qjnpkS8yZO8xcyEIy5OU9A"},
  {user_id: 1, business_id: "uyUKtGWLYgu-RLjlNImy0A"},
  {user_id: 1, business_id: "m_w5UfOmgAqN4Kgbl_-iFQ"},
  {user_id: 1, business_id: "8vFJH_paXsMocmEO_KAa3w"},
  {user_id: 3, business_id: "boE4Ahsssqic7o5wQLI04w"},
  {user_id: 3, business_id: "o54U2VkQama8FI30qDkWvw"},
  {user_id: 3, business_id: "0fFLUKl71vv3eNV2xhikEw"},
  {user_id: 1, business_id: "Psi34XLTOtVqLYS9StO1hA"},
  {user_id: 2, business_id: "om-vqH8GMpteU9xlSymPaQ"},
  {user_id: 4, business_id: "o54U2VkQama8FI30qDkWvw"},
  {user_id: 4, business_id: "JDNZxz0ud7zhuPo5pqznMA"},
  {user_id: 1, business_id: "o54U2VkQama8FI30qDkWvw"},
  {user_id: 4, business_id: "DXwSYgiXqIVNdO9dazel6w"},
  {user_id: 2, business_id: "8vFJH_paXsMocmEO_KAa3w"},
  {user_id: 4, business_id: "cKZNbMvoqJaUe7n6lf6i7w"}
])
Review.create!([
  {user_id: 1, business_id: "cKZNbMvoqJaUe7n6lf6i7w", overall_rating: 5, veggie_options_rating: 3, recommended_dishes: "Pancakes!", comment: "Worlds best pancakes!!", image_url: "https://images-gmi-pmc.edge-generalmills.com/df109202-f5dd-45a1-99b4-f10939afd509.jpg", menu_vegetarian_labels: 1, menu_vegan_labels: -1, menu_gluten_free_labels: -1},
  {user_id: 2, business_id: "cKZNbMvoqJaUe7n6lf6i7w", overall_rating: 4, veggie_options_rating: 2, recommended_dishes: nil, comment: "There is a gluten free label, but it's really small", image_url: "https://ctl.s6img.com/society6/img/tfIvzDYNWidPtDB5b2s6dK5Q32Q/w_700/prints/~artwork/s6-original-art-uploads/society6/uploads/misc/a0c77d92a01d4ee9a6290e43ee1af763/~~/cute-cup-of-tea-prints.jpg?wait=0&attempt=0", menu_vegetarian_labels: 1, menu_vegan_labels: -1, menu_gluten_free_labels: 1},
  {user_id: 1, business_id: "qjnpkS8yZO8xcyEIy5OU9A", overall_rating: 5, veggie_options_rating: 4, recommended_dishes: "BREAD", comment: "Solely giving it a 5 for the bread", image_url: "https://images.onerichs.com/CIP/preview/thumbnail/uscm/12723", menu_vegetarian_labels: 1, menu_vegan_labels: -1, menu_gluten_free_labels: -1},
  {user_id: 1, business_id: "uyUKtGWLYgu-RLjlNImy0A", overall_rating: 4, veggie_options_rating: 3, recommended_dishes: "Every single dessert", comment: "The desserts are TO DIE FOR", image_url: "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/96117/strawberry-cake.445b3a741563bcb6d4e7cd6156fd4f91.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1&w=3038", menu_vegetarian_labels: -1, menu_vegan_labels: -1, menu_gluten_free_labels: -1},
  {user_id: 1, business_id: "z8G5AfXYbJD2jQpSEF633g", overall_rating: 3, veggie_options_rating: 2, recommended_dishes: nil, comment: "Nothing fancy, but a good bar to hang out at", image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/1b/5c/0f/c2/regular-jack-interior.jpg", menu_vegetarian_labels: -1, menu_vegan_labels: -1, menu_gluten_free_labels: -1},
  {user_id: 1, business_id: "m_w5UfOmgAqN4Kgbl_-iFQ", overall_rating: 5, veggie_options_rating: 3, recommended_dishes: "Everything", comment: "Great Thai food! We went here last weekend and it was delicious", image_url: nil, menu_vegetarian_labels: 1, menu_vegan_labels: 0, menu_gluten_free_labels: -1},
  {user_id: 1, business_id: "8vFJH_paXsMocmEO_KAa3w", overall_rating: 5, veggie_options_rating: 4, recommended_dishes: "Deep dish pizza - it's what they're known for", comment: "It's Lou's. They're iconic!", image_url: "https://media-cdn.tripadvisor.com/media/photo-s/11/c3/ed/2f/personal-deep-dish.jpg", menu_vegetarian_labels: 1, menu_vegan_labels: -1, menu_gluten_free_labels: 1},
  {user_id: 3, business_id: "qjnpkS8yZO8xcyEIy5OU9A", overall_rating: 4, veggie_options_rating: 2, recommended_dishes: "Bread", comment: "Great establishment. I have been here many times and am always treated like priority #1. I wish they had a better veggie menu", image_url: "https://uploads-ssl.webflow.com/5d53106729b8f782d5988252/5e5dc46d2c687c3b09210938_Girl-and-the-goat-01-min.jpg", menu_vegetarian_labels: 1, menu_vegan_labels: -1, menu_gluten_free_labels: -1},
  {user_id: 3, business_id: "o54U2VkQama8FI30qDkWvw", overall_rating: 5, veggie_options_rating: 5, recommended_dishes: "Get the wings to begin with", comment: "The ENTIRE menu is vegan, it's amazing here. They even have their own cookbook", image_url: "https://www.chicagotribune.com/resizer/-hVcheoqyTSA7pG5i2dGkWZI_lI=/800x800/top/arc-anglerfish-arc2-prod-tronc.s3.amazonaws.com/public/FIKQN2MELRAUNCWXDE55A2P2WA.jpg", menu_vegetarian_labels: 1, menu_vegan_labels: 1, menu_gluten_free_labels: 1},
  {user_id: 3, business_id: "uyUKtGWLYgu-RLjlNImy0A", overall_rating: 3, veggie_options_rating: 2, recommended_dishes: "Ravioli was alright", comment: "It's alright. I'd go here again but I'm not too excited for it. Very few veggie items.", image_url: "https://tangosurgrill.com/wp-content/uploads/2015/09/lg6.jpg", menu_vegetarian_labels: -1, menu_vegan_labels: -1, menu_gluten_free_labels: -1},
  {user_id: 3, business_id: "0fFLUKl71vv3eNV2xhikEw", overall_rating: 5, veggie_options_rating: 4, recommended_dishes: "Margarita Pizza", comment: "This is PROPER italian pizza. Definitely give it a try!", image_url: "https://media-cdn.tripadvisor.com/media/photo-p/12/90/dd/04/pizzeria-spacca-napoli.jpg", menu_vegetarian_labels: 1, menu_vegan_labels: -1, menu_gluten_free_labels: 0},
  {user_id: 3, business_id: "Psi34XLTOtVqLYS9StO1hA", overall_rating: 5, veggie_options_rating: 5, recommended_dishes: "Get the coffee cake", comment: "A neighborhood favorite for brunch. Great cocktails, they have a half dozen different bloody Mary's. They have numerous gluten free and vegetarian options. ", image_url: "https://media-cdn.tripadvisor.com/media/photo-p/0f/37/66/e1/photo1jpg.jpg", menu_vegetarian_labels: 1, menu_vegan_labels: 1, menu_gluten_free_labels: 1},
  {user_id: 1, business_id: "Psi34XLTOtVqLYS9StO1hA", overall_rating: 5, veggie_options_rating: 5, recommended_dishes: "Any of their breakfasts", comment: "Fantastic. So many choices including many vegan and gluten free. Very safety conscious- took temp prior to seating and offered hand sanitizer Great food, great service Will go again and again Bring cash they do not take cards", image_url: "https://media-cdn.tripadvisor.com/media/photo-l/07/1f/51/43/tweet.jpg", menu_vegetarian_labels: 1, menu_vegan_labels: 1, menu_gluten_free_labels: 1},
  {user_id: 2, business_id: "0fFLUKl71vv3eNV2xhikEw", overall_rating: 3, veggie_options_rating: 3, recommended_dishes: nil, comment: "Ordered a Margherita Pizza, and it was just ok. Have had better in many different places, so maybe this one just isn't there best. Might give it a second chance with a different pizza.", image_url: "https://media-cdn.tripadvisor.com/media/photo-s/1c/ee/9e/b3/interior.jpg", menu_vegetarian_labels: 1, menu_vegan_labels: -1, menu_gluten_free_labels: -1},
  {user_id: 2, business_id: "om-vqH8GMpteU9xlSymPaQ", overall_rating: 5, veggie_options_rating: 5, recommended_dishes: nil, comment: "5 stars just for the name alone", image_url: nil, menu_vegetarian_labels: 0, menu_vegan_labels: 0, menu_gluten_free_labels: 0},
  {user_id: 4, business_id: "o54U2VkQama8FI30qDkWvw", overall_rating: 5, veggie_options_rating: 5, recommended_dishes: "Get the Reuben", comment: "Went around noon on the 4th of July without making a reservation - we didn't think you would need one for lunch on a Sunday. Wrong! Should have called ahead, but we didn't know this place was so popular. And with good reason!", image_url: "https://media-cdn.tripadvisor.com/media/photo-s/04/6c/35/1d/chicago-diner.jpg", menu_vegetarian_labels: 1, menu_vegan_labels: 1, menu_gluten_free_labels: 1},
  {user_id: 4, business_id: "JDNZxz0ud7zhuPo5pqznMA", overall_rating: 4, veggie_options_rating: 4, recommended_dishes: "Everything", comment: "Great Ethiopian food! I'll be visiting here regularly from now on", image_url: "https://media-cdn.tripadvisor.com/media/photo-f/02/30/4f/8f/demera-ethiopian-restaurant.jpg", menu_vegetarian_labels: 1, menu_vegan_labels: -1, menu_gluten_free_labels: -1},
  {user_id: 1, business_id: "o54U2VkQama8FI30qDkWvw", overall_rating: 5, veggie_options_rating: 5, recommended_dishes: "MILKSHAKES", comment: "They were featured on one of Guy Fieri's shows. Get their milkshakes, they are to die for", image_url: "https://urbanmatter.com/chicago/wp-content/uploads/2020/08/Chicago-Diner-IG.png", menu_vegetarian_labels: 1, menu_vegan_labels: 1, menu_gluten_free_labels: 1},
  {user_id: 1, business_id: "xoi7Cw7FoknAx5p880RtWQ", overall_rating: 1, veggie_options_rating: 1, recommended_dishes: "Nothing", comment: "It's great if you hate everything vegetarianism stands for", image_url: nil, menu_vegetarian_labels: -1, menu_vegan_labels: -1, menu_gluten_free_labels: -1},
  {user_id: 1, business_id: "27cckuU8ONgwWKxf7fUW3g", overall_rating: 5, veggie_options_rating: 5, recommended_dishes: "Deep dish pizza!", comment: "Wonderful, delicious, yes.", image_url: nil, menu_vegetarian_labels: 1, menu_vegan_labels: 1, menu_gluten_free_labels: 1},
  {user_id: 4, business_id: "DXwSYgiXqIVNdO9dazel6w", overall_rating: 5, veggie_options_rating: 3, recommended_dishes: "They're known for their deep dish pizza", comment: "Some of the best pizza in Chicago! There's always plain cheese pizza for vegetarians, though vegans won't have a fun time here.", image_url: "https://pequodspizza.com/wp-content/uploads/2019/01/pequods-pizza.jpg", menu_vegetarian_labels: -1, menu_vegan_labels: -1, menu_gluten_free_labels: 1},
  {user_id: 3, business_id: "xoi7Cw7FoknAx5p880RtWQ", overall_rating: 2, veggie_options_rating: 1, recommended_dishes: "Avoid", comment: "It's great! If you aren't vegetarian...", image_url: "http://clipart-library.com/images/rcLxML7Ri.png", menu_vegetarian_labels: -1, menu_vegan_labels: -1, menu_gluten_free_labels: -1},
  {user_id: 3, business_id: "boE4Ahsssqic7o5wQLI04w", overall_rating: 4, veggie_options_rating: 4, recommended_dishes: "Anything with beans", comment: "If you're visiting Chicago, this is a must-see!", image_url: "https://4.bp.blogspot.com/_GTST65gWxOo/TPyA6nnnDzI/AAAAAAAADRQ/O0xko2k4X8c/s400/Picture%2B020.jpg", menu_vegetarian_labels: 1, menu_vegan_labels: -1, menu_gluten_free_labels: 1},
  {user_id: 2, business_id: "8vFJH_paXsMocmEO_KAa3w", overall_rating: 5, veggie_options_rating: 4, recommended_dishes: "Thin crust margarita pizza", comment: "Fantastic pizza! They have the best deep dish pizza in all of Chicago, sure, but their thin crust is where it's at!", image_url: "https://order.loumalnatis.com/assets/C14802-b9f60f02339a37d9402a4323ae2c0378008db7c0453e782d14a5eb5592dc94d9.jpg", menu_vegetarian_labels: 1, menu_vegan_labels: -1, menu_gluten_free_labels: 1},
  {user_id: 3, business_id: "8vFJH_paXsMocmEO_KAa3w", overall_rating: 4, veggie_options_rating: 3, recommended_dishes: "Any deep dish pizza", comment: "Best pizza in Chicago! Only wish they had vegan cheese", image_url: "https://b.zmtcdn.com/data/pictures/chains/2/16736012/56c162c3b0ad67803908571bc5e79060_featured_v2.jpg?output-format=webp&fit=around|771.75:416.25&crop=771.75:416.25;*,*", menu_vegetarian_labels: 0, menu_vegan_labels: 0, menu_gluten_free_labels: 1},
  {user_id: 3, business_id: "LPwAwxEjetjdNh7Uadro3g", overall_rating: 2, veggie_options_rating: 1, recommended_dishes: nil, comment: "Absolutely not vegetarian friendly. Don't go here!", image_url: "https://www.iconpacks.net/icons/2/free-sad-face-icon-2691-thumb.png", menu_vegetarian_labels: -1, menu_vegan_labels: -1, menu_gluten_free_labels: -1},
  {user_id: 2, business_id: "xoi7Cw7FoknAx5p880RtWQ", overall_rating: 1, veggie_options_rating: 1, recommended_dishes: "Nada", comment: "Avoid at all costs!!!", image_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.clipartmax.com%2Fmiddle%2Fm2H7K9K9G6N4m2Z5_sad-dog-pictures-clip-art-sad-puppy-face-cartoon%2F&psig=AOvVaw0xYc9BgyUsY2ZDNwehC3j_&ust=1648056183404000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJDN6e2d2vYCFQAAAAAdAAAAABAO", menu_vegetarian_labels: -1, menu_vegan_labels: -1, menu_gluten_free_labels: -1},
  {user_id: 2, business_id: "y8jVBaHh8ntYkVqDXpsi1Q", overall_rating: 5, veggie_options_rating: 4, recommended_dishes: "Sangria", comment: "Sangria is the best part. They have a good amount of vegetarian items that can also be made into vegan as long as you request it!", image_url: "https://upload.wikimedia.org/wikipedia/commons/b/b5/Red_Wine_Sangria_with_lemon%2C_lime%2C_apple%2C_and_orange_served_in_a_glass_-_Evan_Swigart.jpg", menu_vegetarian_labels: 1, menu_vegan_labels: -1, menu_gluten_free_labels: 1},
  {user_id: 2, business_id: "rp17Dfjdh7JR4GGZwj6nqg", overall_rating: 3, veggie_options_rating: 3, recommended_dishes: "Chocolate cake", comment: "Not too many veggie options, but the ones they do have are decent enough. The chocolate cake is magnificent", image_url: "https://insanelygoodrecipes.com/wp-content/uploads/2020/10/Gourmet_Chocolate_Cake.webp", menu_vegetarian_labels: -1, menu_vegan_labels: -1, menu_gluten_free_labels: -1}
])

