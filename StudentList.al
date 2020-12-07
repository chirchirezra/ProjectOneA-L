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
            action(RunDotNet)
            {
                ApplicationArea = All;

                trigger OnAction();
                var
                    VarTextBuilder: TextBuilder;
                    DotNetWrapper: Codeunit DotNetWrappers;

                begin
                    VarTextBuilder.AppendLine('Hello this is a text builder introduction');
                    VarTextBuilder.Append('This is a line append');
                    VarTextBuilder.Replace('Hello', 'Bonjour');
                    //Message(VarTextBuilder.ToText());
                    DotNetWrapper.ListNames();
                    DotNetWrapper.FindLetterCountInName('Chirchir', 'i');

                end;

            }
            action(GetRandomUser)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    GetUserCodeunit: Codeunit GetRandomUser;
                    User: Record "Random Users";
                    No: Integer;
                    LoopCount: Integer;
                begin

                    for LoopCount := 0 to 230 do begin
                        if User.IsEmpty = false then begin
                            IF User.FindLast() then
                                No := User."No." + 10
                            else
                                No := 10;
                        end else begin
                            No := 10;
                        end;
                        GetUserCodeunit.GetUser(No);
                    end;

                end;
            }

        }
    }
}
