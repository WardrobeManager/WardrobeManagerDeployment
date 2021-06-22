Deployment Notes

Infrastructure

Start Redis

 brew services restart redis

Start Mongodb

  mongod --dbpath /tmp/mongodb

Services

User Managment

  UserManagerMS --logtostderr=true

WardrobeManagerMS

  WardrobeManagerMS --logtostderr=true

Label To Text

  GOOGLE_APPLICATION_CREDENTIALS=/Users/dev/Projects/Workspaces/LabelToTextMS/credetials/elite-academy-229305-bf9691c2471b.json ./LabelToTextMS --logtostderr=true
