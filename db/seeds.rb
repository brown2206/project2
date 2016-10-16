Tip.destroy_all
Suspect.destroy_all

Tip.create!([
  {offense: "Robbery", location: "Columbia Heights", img_url: "http://media2.wxyz.com/photo/2015/01/29/7-11%20robbery,%2006-20-14_1422543137400_12862758_ver1.0_640_480.JPG"}
  ])

  Tip.create!([
    {offense: "Murder", location: "Minnesota Ave Metro", img_url: "http://static.lakana.com/media.fox5dc.com/photo/2016/04/12/Metropolitan%20Police%20Department%E2%80%99s%20Homicide%20Branch_1460405860968_1171509_ver1.0_640_360%20_OP_1_CP__1460453271019_1172580_ver1.0_640_360.JPG"}
    ])

instance = Tip.first
instance.suspects.create(img_url:"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ0xwOQXymXsw6jof8BcCJNpkfCjKy8Ik76y7FkyjbK_OS-Kfsl",race:"black",gender:"male",height:"6'",weight: 287,hair:"dreads",clothing:"blue jumpsuit",weapons:"AK-47",vehicle:"",year:"",make:"",model:"",color:"",license:"",state:"",description:"He burst into the 711 with his AK-47 and told me to drop to my knees.")

instance2 = Tip.find_by(offense: "Murder")
instance2.suspects.create(img_url:"http://static.lakana.com/media.fox5dc.com/photo/2016/04/12/Metropolitan%20Police%20Department%E2%80%99s%20Homicide%20Branch_1460405860968_1171509_ver1.0_640_360%20_OP_1_CP__1460453271019_1172580_ver1.0_640_360.JPG",race:"black",gender:"male",height:"5'7",weight: 155,hair:"dreads",clothing:"black skinny jeans",weapons:"45",vehicle:"",year:"",make:"",model:"",color:"",license:"",state:"",description:"Shot man as he rode up escalator.")
