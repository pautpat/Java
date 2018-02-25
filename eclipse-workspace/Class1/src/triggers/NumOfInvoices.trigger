trigger NumOfInvoices on Invoice__c (after insert) {
       List<Invoice__c> lstInvoices = Trigger.new;
       for (Invoice__c inv : lstInvoices)
       {
         List<Customer__c> lstCust = [Select id, Number_of_Invoices__c, (Select id from Invoices__r) from Customer__c where id =:inv.Customer__c];
         if(lstCust!=null && lstCust.size()>0)
         {
             if(lstCust[0].Number_of_Invoices__c == null)
                 lstCust[0].Number_of_Invoices__c = 0;
             lstCust[0].Number_of_Invoices__c = lstCust[0].Invoices__r.size();
             update lstCust[0];
         }
       }

}