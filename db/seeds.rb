# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!([
  {
  first_name: "Michael",
  last_name: "Marie",
  password_digest: "",
  email: "michael.marie@gmail.com",
  artist_name: "KRMA",
  bio: "House music. Palm Springs",
  city: "Chicago",
  country: "United States",
  profile_picture: "https://pbs.twimg.com/media/Dyg-PPzXcAAY5Wv.jpg",
  is_admin: FALSE,
  profile_url: ""
  },
  {
    first_name: "Paul",
    last_name: "Blart",
    password_digest: "",
    email: "paul.blart@gmail.com",
    artist_name: "Mall Cop",
    bio: "Just a mall cop man",
    city: "NYC",
    country: "United States",
    profile_picture: "https://vignette.wikia.nocookie.net/p__/images/7/79/Paul_Blart.png/revision/latest/top-crop/width/360/height/450?cb=20181105183248&path-prefix=protagonist",
    is_admin: FALSE,
    profile_url: ""
    },
  {
    first_name: "Luu",
    last_name: "Dee",
    password_digest: "",
    email: "luke@gmail.com",
    artist_name: "Luu Dee",
    bio: "lalaa",
    city: "901",
    country: "United States",
    profile_picture: "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTQ3NTI2OTA4NzY5MjE2MTI4/drake_photo_by_prince_williams_wireimage_getty_479503454.jpg",
    is_admin: TRUE,
    profile_url: ""
  },

])

songs = Song.create!([
  {
    user_id: 1,
    title: "archive (pre-master)",
    description: "curious if this sounds good in yall's cars/on your speakers/laptops etc lmao",
    keywords: "electronic, spacebass, weird, distortion, hyperpop, bass music, soundcloud bass, trap",
    url: "https://soundcloud.com/morecreativityrecords/krma-archive-mcr",
    img_url: "https://i.ibb.co/cgjqGVh/Screen-Shot-2020-07-11-at-12-53-10-PM.png",
    total_versions: 0
  },
  {
    user_id: 2,
    title: "think you do",
    description: "another attempt at a greenday record",
    keywords: "rock, real rock, punk, pop punk, brickwall",
    url: "https://soundcloud.com/morecreativityrecords/krma-archive-mcr",
    img_url: "https://i.ibb.co/cgjqGVh/Screen-Shot-2020-07-11-at-12-53-10-PM.png",
    total_versions: 0
  },
  {
    user_id: 3,
    title: "DEAD TO ME",
    description: "EMO ANTHEM 2020",
    keywords: "lil peep, xxxtentacion",
    url: "https://soundcloud.com/morecreativityrecords/krma-archive-mcr",
    img_url: "https://i.ibb.co/cgjqGVh/Screen-Shot-2020-07-11-at-12-53-10-PM.png",
    total_versions: 0
  },
])

comments = Comment.create!([
  {
    song_id: 1,
    author: "",
    notes: "this could be a lot louder",
    song_timestamp: "2:23",
    user_id: 1
  },
  {
    song_id: 2,
    author: "",
    notes: "step reverb down a lil",
    song_timestamp: "1:02-1:32",
    user_id: 2
  }
  {
    song_id: 3,
    author: "",
    notes: "cool",
    song_timestamp: ":23",
    user_id: 3
  }
  {
    song_id: 3,
    author: "",
    notes: "thats not loud enough",
    song_timestamp: "0:20-1:30",
    user_id: 3
  }
])

tags = Tag.create!([
  {
    name: "Kick"
  },
  {
    name: "Snare"
  },
  {
    name: "Hi-Hat"
  },
  {
    name: "Percussion"
  },
  {
    name: "Cymbal"
  },
  {
    name: "Brush"
  },
  {
    name: "Sub"
  },
  {
    name: "808"
  },
  {
    name: "Guitar (Electric)"
  },
  {
    name: "Guitar (Acoustic)"
  },
  {
    name: "Keys"
  },
  {
    name: "Synth Bass"
  },
  {
    name: "Synth Lead"
  },
  {
    name: "Synth Pluck"
  },
  {
    name: "Pad"
  },
  {
    name: "Piano"
  },
  {
    name: "Electric Piano"
  },
  {
    name: "Strings"
  },
  {
    name: "Vocal (Main)"
  },
  {
    name: "Vocal (Backing)"
  },
  {
    name: "Vocal (Sample)"
  },
  {
    name: "FX (Foley)"
  },
  {
    name: "FX (Transition)"
  },
  {
    name: "FX (Other)"
  },
  {
    name: "Gain"
  },
  {
    name: "Compression"
  },
  {
    name: "Parallel Compression"
  },
  {
    name: "Sidechain Compression"
  },
  {
    name: "Multiband Compression"
  },
  {
    name: "EQ"
  },
  {
    name: "Low Pass Filter"
  },
  {
    name: "High Pass Filter"
  },
  {
    name: "OTT"
  },
  {
    name: "Delay"
  },
  {
    name: "Panning"
  },
  {
    name: "Automation"
  },
  {
    name: "Distortion"
  },
  {
    name: "Saturation"
  },
  {
    name: "Phaser"
  },
  {
    name: "Flanger"
  },
  {
    name: "Chorus"
  }
])

comment_tags = CommentTag.create!([
  {
    comment_id: 1,
    tag_id: 1
  },
  {
    comment_id: 1,
    tag_id: 2
  },
  {
    comment_id: 2,
    tag_id: 12
  },
  {
    comment_id: 3,
    tag_id: 15
  },
  {
    comment_id: 3,
    tag_id: 20
  }
])

user_relationships = UserRelationship.create!([
  {
    requester: 1,
    recipient: 2,
    type: "Pending_Friends"
  },
  {
    requester: 2,
    recipient: 3,
    type: "Blocked"
  },
  {
    requester: 3,
    recipient: 1,
    type: "Friends"
  }
])
