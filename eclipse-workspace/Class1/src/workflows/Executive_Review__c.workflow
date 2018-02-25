<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Send_Executive_Review_Approval_requests_to_Approvers</fullName>
        <description>Send Executive Review Approval requests to Approvers</description>
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
        <template>unfiled$public/Alert</template>
    </alerts>
</Workflow>
