page 50003 "Student List"
{
    Caption = 'Student List';
    PageType = List;
    CardPageId = StudentCard;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = Student;


    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Admision Number"; Rec."Admision Number")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;

                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;

                }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}