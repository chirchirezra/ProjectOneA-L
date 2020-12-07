codeunit 50005 InstallCode
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    var
        Students: Record Student;
    begin
        IF Students.IsEmpty = false then begin
            Students.DeleteAll();
        end;
        InsertStudents(001, 'John Wangombe', Students.Gender::Male, 23);
        InsertStudents(002, 'Mercy Cherono', Students.Gender::Female, 19);
        InsertStudents(003, 'Faith Wanjiku Macharia', Students.Gender::Female, 24);
        InsertStudents(004, 'Evans Kemboi', Students.Gender::Male, 28);
    end;

    local procedure InsertStudents(AdmNo: Integer; Name: Text; Gender: Option Male,Female,Other; Age: Integer)
    var
        Student: Record Student;
    begin
        if Student.Get(AdmNo) then begin
            exit;
        end else
            Student.Init();
        Student."Admision Number" := AdmNo;
        Student.Name := Name;
        Student.Gender := Gender;
        Student.Age := Age;
        Student.Insert(true);
    end;


}