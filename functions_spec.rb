require ("minitest/autorun")
require_relative("functions")

class TestMyFunctions < MiniTest::Test

def setup
  @stock = [
    {
      name:"rubber band",
      position:"a10"
    },
    {
      name:"glow stick",
      position:"a9"
    },
    {
      name:"model car",
      position:"a8"
    },
    {
      name:"bookmark",
      position:"a7"
     },
    {
      name:"shovel",
      position: "a6"
    },
    {
      name:"rubber duck",
      position:"a5"
    },
   {
      name:"hanger",
      position: "a4"
    },
    {
      name:"blouse",
      position: "a3"
    },{
      name:"stop sign",
      position:"a2"
    },
    {
      name:"needle",
      position: "a1"
    },
    {
      name:"leg warmers",
      position: "c10"
    },
    {
      name:"shoe lace",
      position:"c9"
    },
    {
       name:"candy wrapper",
       position: "c8"
     },
     {
       name:"paint brush",
       position:"c7"
     },
     {
        name:"face wash",
        position: "c6"
      },
    {
       name:"thermometer",
       position: "c5"
     },
     {
       name:"word search",
       position:"c4"
     },
     {
       name:"chalk",
       position: "c3"
     },
     {
       name:"drill press",
       position: "c2"
     },
     {
     name:"rusty nail",
     position:"c1"
     },
    {
       name:"cookie jar",
       position: "b10"
     },
    {
       name:"deodorant",
       position:"b9"
     },
    {
       name:"tissue box",
       position:"b8"
     },
    {
       name:"bath fizzer",
       position:"b7"
     },
    {
       name:"tooth paste",
       position: "b6"
     },
    {
      name:"nail filer",
      position:"b5"
    },
    {
       name:"photo album",
       position: "b4"
     },
    {
       name:"picture frame",
       position: "b3"
     },
     {
       name:"sharpie",
       position:"b2"
     },
     
   {
      name:"tyre swing",
      position:"b1"
    }
  ]

end
 
 def test_name_retrieve
   result = name_retrieve(@stock,"b5")
   assert_equal("nail filer",result)
 end

 def test_bay_retrieve
  result = bay_retrieve(@stock, "nail filer")
  assert_equal("b5", result)
 end

def test_multi_bay
  positions = ["b5","b10", "b6"]
  result = multi_bay(@stock,positions)
  assert_equal(["nail filer","tooth paste","cookie jar"],result)
end
 
 def test_multi_names
    names=["shoe lace", "rusty nail", "leg warmers"]
    result=multi_names(@stock, names)
    assert_equal(["c1","c9","c10"],result)
 end

  # def test_two_appart
  #   names =["nail filer","cookie jar"]
  #   result= two_appart(@stock, names)
  #   assert_equal([1],result)
  # end
end