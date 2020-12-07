page 50100 "Random User List"
{
    Caption = 'Random User List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Random Users";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                }
                field(Title; Rec.Title)
                {
                    ApplicationArea = All;
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }
                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;
                }
                field(Country; Rec.Country)
                {
                    ApplicationArea = All;
                }
                field("User Name"; Rec."User Name")
                {
                    ApplicationArea = All;
                }
                field(Picture; Rec.Picture)
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