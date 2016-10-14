Tip.destroy_all
Suspect.destroy_all

Tip.create!([
  {offense: "Robbery", location: "Columbia Heights", img_url: "http://media2.wxyz.com/photo/2015/01/29/7-11%20robbery,%2006-20-14_1422543137400_12862758_ver1.0_640_480.JPG"}
  ])

instance = Tip.first
instance.suspects.create(img_url:"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ0xwOQXymXsw6jof8BcCJNpkfCjKy8Ik76y7FkyjbK_OS-Kfsl",race:"black",gender:"male",height:"6'",weight: 287,hair:"dreads",clothing:"blue jumpsuit",weapons:"AK-47",vehicle:"",year:"",make:"",model:"",color:"",license:"",state:"",description:"He burst into the 711 with his AK-47 and told me to drop to my knees.")
