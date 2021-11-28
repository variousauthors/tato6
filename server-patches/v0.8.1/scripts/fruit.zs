val listAllFruit = <ore:listAllfruit>;
val listAllBerry = <ore:listAllberry>;
val foodFruit = <ore:foodFruit>;

listAllFruit.addAll(foodFruit);
foodFruit.mirror(listAllFruit);

val juniper = <bewitchment:juniper_berries>;

listAllFruit.add(juniper);
listAllBerry.add(juniper);
foodFruit.add(juniper);