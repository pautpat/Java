<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Approval_Needed</fullName>
        <description>Approval Needed</description>
        <protected>false</protected>
        <recipients>
            <recipient>pautpatjob@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/New_Item_Creation_Template</template>
    </alerts>
    <alerts>
        <fullName>Used_to_send_the_email_to_Item_Owner</fullName>
        <description>Used to send the email to Item Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/New_Item_Creation_Template</template>
    </alerts>
    <fieldUpdates>
        <fullName>Change_Status_To_Approved</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Change Status To Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_To_Approved</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Change To Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_to_Rejected</fullName>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Change to Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status</fullName>
        <field>Status__c</field>
        <literalValue>Need Approval</literalValue>
        <name>Update Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Free Item Delivery</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Item__c.Free_Delivery__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Notify the item owner</fullName>
        <actions>
            <name>Used_to_send_the_email_to_Item_Owner</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Item__c.ProductCost__c</field>
            <operation>greaterThan</operation>
            <value>10</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
