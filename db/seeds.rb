class User < ActiveRecord::Base
list = [
    [ "Admin", "Admin", "Female", "https://avatars2.githubusercontent.com/u/25296117?v=3&s=460", "04/04/1990"  ],
    [ "Alexia Gomez", "Jooolie", "Female", "https://avatars2.githubusercontent.com/u/25296117?v=3&s=460", "04/04/1990"  ],
    [ "Julie Chan", "dxsfung", "Female", "https://avatars2.githubusercontent.com/u/25076720?v=3&s=460", "04/04/1990"  ],
    [ "Tania Sumner", "brianlaw033", "Female", "https://avatars0.githubusercontent.com/u/25007087?v=3&s=460", "04/04/1990"  ],
    [ "Ken", "ken.ng1", "Male", "https://avatars0.githubusercontent.com/u/25297786?v=3&s=460", "04/04/1990"  ],
    [ "Kevin", "kevinch0", "Male", "https://avatars3.githubusercontent.com/u/25047528?v=3&s=460", "04/04/1990"  ],
    [ "Steve", "stevesaf", "Male", "https://avatars3.githubusercontent.com/u/25411585?v=3&s=460", "04/04/1990"  ]
  ]

  list.each do |name, username, gender, image_url, dob|
    User.create( name: name, username: username, gender: gender, image_url: image_url, dob: dob )
  end
end

class Event < ActiveRecord::Base
list = [
    [ "Get fit boxing club practice", "2017-06-26 00:09:00", "Central", "20", "Train alongside boxing olympic medalist Alexia Gomez", "/images/boxing.jpg", "" , "2"],
    [ "Introduction to Rugby - all welcome", "2017-06-24 00:00:00", "Causeway Bay", "25", "Join us in the third intro session to this great sport", "/images/rugby.jpg","https://www.youtube.com/embed/CVpdBCM6VjU" , "3"],
    [ "Introduction all welcome", "2017-06-24 00:00:00", "Causeway Bay", "25", "Join us in the third intro session to this great sport", "/images/rugby2.jpg","https://www.youtube.com/embed/CVpdBCM6VjU" , "3"],
    [ "Track & Field training", "2017-06-25 00:00:00", "Fan Leng", "30", "Training in the run-up to Summer 2017 HK Games", "/images/track.jpg","" , "4"]
  ]

  list.each do |name, date, location, capacity, description, image_url, video_url, user_id|
    Event.create( name: name, date: date, location: location, capacity: capacity, description: description, image_url:image_url, video_url:video_url , user_id:user_id )
  end
end

# create_table "category_events", force: :cascade do |t|
#   t.integer  "category_id"
#   t.integer  "event_id"
# end

class CategoryEvent < ActiveRecord::Base
list = [
  [ "1", "1"] , [ "2", "2"], ["3","2"],["4","3"]
]

  list.each do |category_id, event_id|
    CategoryEvent.create( category_id: category_id, event_id: event_id)
  end
end

class Category < ActiveRecord::Base
list = [
    "Boxing" , "Rugby", "Track", "Cross Fit", "Football" , "Volleyball" , "Netball", "Basketball" , "Ultimate Frisbee" , "Yoga"
  ]

  list.each do |name|
    Category.create( name: name )
  end
end

class EventUser < ActiveRecord::Base
list = [
  [ "1", "4", "5", ],
  [ "1", "2", "5", "true" ],
  [ "1", "3", "5", "false" ]
]

  list.each do |event_id, attendee_id, sender_id, accepted|
    EventUser.create( event_id: event_id, attendee_id: attendee_id, sender_id: sender_id, accepted: accepted )
  end
end

class Supplier < ActiveRecord::Base
list = [
    [ "Partymania", "Entertainment", "100", "Catering for all kinds of parties", "https://s-media-cache-ak0.pinimg.com/736x/46/b4/fd/46b4fdb492e14eaf59c99fce682373b0.jpg" ]
  ]

  list.each do |name, expertise, cost_per_person, description, logo_url|
    Supplier.create( name: name, expertise: expertise, cost_per_person: cost_per_person, description: description, logo_url: logo_url )
  end
end
