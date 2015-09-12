# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(user_name:'サラシヤ',password:'sarashiya',user_token:'sara_tokenやで',gcm_id:'sara_gcm_idやで')
User.create(user_name:'トクナガ',password:'tokunaga',user_token:'toku_tokenやで',gcm_id:'toku_gcm_idやで')
User.create(user_name:'ハイジ',password:'haijima',user_token:'hai_tokenやで',gcm_id:'hai_gcm_idやで')

Relation.create(sender_id:1,sender_name:'サラシヤ',receiver_id:2,receiver_name:'トクナガ',is_deleted:false,message_count:0)
Relation.create(sender_id:2,sender_name:'トクナガ',receiver_id:1,receiver_name:'サラシヤ',is_deleted:false,message_count:0)
Relation.create(sender_id:3,sender_name:'ハイジマ',receiver_id:1,receiver_name:'サラシヤ',is_deleted:false,message_count:0)
