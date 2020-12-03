codeunit 50000 MyStudentCodeunit
{
    local procedure CongratulateStudentOnEnrollment(MyStudent: Record Student; CustMessage: Text)
    begin
        Message('Hello %1 %2', MyStudent.Name, CustMessage);
    end;

    [EventSubscriber(ObjectType::Table, Database::Student, 'OnAfterInsertEvent', '', true, true)]
    local procedure Congratulate(var Rec: Record Student)
    begin
        CongratulateStudentOnEnrollment(Rec, 'Congratulations on enrolling in our school. We wish you all the best');
    end;
}