<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Huge_email_alert</fullName>
        <description>Huge email alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>pautpatjob@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Huge_Order_Email</template>
    </alerts>
    <fieldUpdates>
        <fullName>Update_the_Item_Quantity</fullName>
        <description>Update the Quantity</description>
        <field>Quantity__c</field>
        <formula>ItemID__r.Quantity__c  -  Quantity__c</formula>
        <name>Update the Item Quantity</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>ItemID__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_the_Unit_Price</fullName>
        <field>Unit_Price__c</field>
        <formula>ItemID__r.ProductCost__c</formula>
        <name>Update the Unit Price</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_the_Unit_Price_for_line_item</fullName>
        <field>Unit_Price__c</field>
        <formula>ItemID__r.ProductCost__c</formula>
        <name>Update the Unit Price</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Fetch the unit price</fullName>
        <actions>
            <name>Update_the_Unit_Price</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Line_Item__c.Quantity__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Huge Order Received</fullName>
        <actions>
            <name>Huge_email_alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Line_Item__c.Total_Amount__c</field>
            <operation>greaterThan</operation>
            <value>120</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update the stock</fullName>
        <actions>
            <name>Update_the_Item_Quantity</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Line_Item__c.Quantity__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
