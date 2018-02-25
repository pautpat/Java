trigger ItemTrigger on Line_Item__c (after insert, after delete, after update) {

List<Item__c> listOfItemsToUpdate = new List<Item__c>();


if (Trigger.isInsert){
//List<Line_Item__c> lineItemList = Trigger.new;
for(Line_Item__c lineItem : Trigger.new)
{
    List<Item__c> itemList = [Select id, name, Quantity__c from Item__c where id =: lineItem.ItemID__c];
    if(itemList != null && itemList.size()>0)
        {
           // if(itemList[0].Quantity__c == null)
           // itemList[0].Quantity__c=0;
            if(itemList[0].Quantity__c > 0){
            itemList[0].Quantity__c= itemList[0].Quantity__c - lineItem.Quantity__c;
             // update itemList[0];
            listOfItemsToUpdate.add(itemList[0]);
            }
        }

}
}


if(Trigger.isDelete){
//List<Line_Item__c> lineItemList = Trigger.old;
for(Line_Item__c lineItem : Trigger.old)
{
    List<Item__c> itemList = [Select id, name, Quantity__c from Item__c where id =: lineItem.ItemID__c];
    if(itemList != null && itemList.size()>0)
    {
          itemList[0].Quantity__c= itemList[0].Quantity__c + lineItem.Quantity__c;
          listOfItemsToUpdate.add(itemList[0]);
     
     }
}
}

if(Trigger.isUpdate){
for(Line_Item__c lineItem : Trigger.new){
    Line_Item__c line_item_before_update = System.Trigger.oldMap.get(lineItem.Id);
    List<Item__c> itemList = [Select id, name, Quantity__c from Item__c where id =: lineItem.ItemID__c];
    if(itemList!=null && itemList.size()>0){
        if(lineItem.Quantity__c > line_item_before_update.Quantity__c)
        {
           itemList[0].Quantity__c = itemList[0].Quantity__c -(lineItem.Quantity__c - line_item_before_update.Quantity__c);
        
        }
        else if(lineItem.Quantity__c < line_item_before_update.Quantity__c)
        {
            itemList[0].Quantity__c = itemList[0].Quantity__c + (line_item_before_update.Quantity__c - lineItem.Quantity__c);
        }
        listOfItemsToUpdate.add(itemList[0]);           
    }

}
}
if(listOfItemsToUpdate != null && listOfItemsToUpdate.size()>0){
   update listOfItemsToUpdate;     
}

}