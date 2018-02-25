<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>A_won_opportunity</fullName>
        <description>A won opportunity</description>
        <protected>false</protected>
        <recipients>
            <recipient>pautpat+user@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>pautpatjob@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Won_Opportunity</template>
    </alerts>
    <alerts>
        <fullName>New_Customer_Welcome</fullName>
        <description>New Customer Welcome</description>
        <protected>false</protected>
        <recipients>
            <recipient>pautpat+user@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Won_Opportunity</template>
    </alerts>
    <fieldUpdates>
        <fullName>Record_Type_Update_To_Won</fullName>
        <description>Update the record type to won</description>
        <field>RecordTypeId</field>
        <lookupValue>Won</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Record Type Update To Won</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Won Opportunity</fullName>
        <actions>
            <name>A_won_opportunity</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Record_Type_Update_To_Won</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Contact_Client</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>Change the record type to Won when the Opportunity Stage is updated to &quot;Closed Won&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>New_Customer_Welcome</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Opportunity.CloseDate</offsetFromField>
            <timeLength>15</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>Contact_Client</fullName>
        <assignedTo>pautpat+user@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Contact client 1 day after the Workflow Rule is triggered</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Contact Client</subject>
    </tasks>
</Workflow>
